use v6.d;

use lib './lib';
use lib '.';

use DSL::English::DataQueryWorkflows;
use DSL::Russian::DataQueryWorkflows::Grammar;
use DSL::English::DataQueryWorkflows::Grammar;

#-----------------------------------------------------------
my $pCOMMAND = DSL::Russian::DataQueryWorkflows::Grammar;

sub dq-parse(Str:D $command, Str:D :$rule = 'TOP') {
    $pCOMMAND.parse($command, :$rule);
}

sub dq-interpret(Str:D $command,
                 Str:D:$rule = 'TOP',
                 :$actions = DSL::Russian::DataQueryWorkflows::Actions::Raku::Reshapers.new) {
    $pCOMMAND.parse($command, :$rule, :$actions).made;
}

say "=" x 10;


my @testCommands = ("
load the dataset iris;
take elements from 1 to 120 with step 3;
group by the column Species;
show counts");

# This is currently not parsed:
#  сгруппировать по столбцу Species;

@testCommands = ("
загрузить набор данных iris;
возьми элементы от 1 до 120 шаг 3;
сгруппировать по столбцу Species;
показать подсчеты");


#my @targets = ('Russian', 'English', 'Russian');
my @targets = ('Python-pandas', 'R-base', 'R-tidyverse', 'Raku-Reshapers', 'WL-System');
#my @targets = ('Raku-Reshapers');

for @testCommands -> $c {
    say "=" x 30;
    say $c;
    for @targets -> $t {
        say '-' x 30;
        say $t;
        say '-' x 30;
        my $start = now;
        # my $res0 = dq-parse($c, rule => 'workflow-commands-list'); say $res0;
        my $res = ToDataQueryWorkflowCode($c, $t, language => 'Russian', format => 'hash');
        #        my $res =
        #                dq-interpret($c,
        #                        rule => 'workflow-commands-list',
        #                        actions => DSL::English::DataQueryWorkflows::Actions::WL::System.new);
        say "time:", now - $start;
        say $res;
    }
};
