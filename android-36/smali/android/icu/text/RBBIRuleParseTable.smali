.class Landroid/icu/text/RBBIRuleParseTable;
.super Ljava/lang/Object;
.source "RBBIRuleParseTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;
    }
.end annotation


# static fields
.field static final blacklist doCheckVarDef:S = 0x1s

.field static final blacklist doDotAny:S = 0x2s

.field static final blacklist doEndAssign:S = 0x3s

.field static final blacklist doEndOfRule:S = 0x4s

.field static final blacklist doEndVariableName:S = 0x5s

.field static final blacklist doExit:S = 0x6s

.field static final blacklist doExprCatOperator:S = 0x7s

.field static final blacklist doExprFinished:S = 0x8s

.field static final blacklist doExprOrOperator:S = 0x9s

.field static final blacklist doExprRParen:S = 0xas

.field static final blacklist doExprStart:S = 0xbs

.field static final blacklist doLParen:S = 0xcs

.field static final blacklist doNOP:S = 0xds

.field static final blacklist doNoChain:S = 0xes

.field static final blacklist doOptionEnd:S = 0xfs

.field static final blacklist doOptionStart:S = 0x10s

.field static final blacklist doReverseDir:S = 0x11s

.field static final blacklist doRuleChar:S = 0x12s

.field static final blacklist doRuleError:S = 0x13s

.field static final blacklist doRuleErrorAssignExpr:S = 0x14s

.field static final blacklist doScanUnicodeSet:S = 0x15s

.field static final blacklist doSlash:S = 0x16s

.field static final blacklist doStartAssign:S = 0x17s

.field static final blacklist doStartTagValue:S = 0x18s

.field static final blacklist doStartVariableName:S = 0x19s

.field static final blacklist doTagDigit:S = 0x1as

.field static final blacklist doTagExpectedError:S = 0x1bs

.field static final blacklist doTagValue:S = 0x1cs

.field static final blacklist doUnaryOpPlus:S = 0x1ds

.field static final blacklist doUnaryOpQuestion:S = 0x1es

.field static final blacklist doUnaryOpStar:S = 0x1fs

.field static final blacklist doVariableNameExpectedErr:S = 0x20s

.field static blacklist gRuleParseStateTable:[Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement; = null

.field static final blacklist kRuleSet_default:S = 0xffs

.field static final blacklist kRuleSet_digit_char:S = 0x80s

.field static final blacklist kRuleSet_eof:S = 0xfcs

.field static final blacklist kRuleSet_escaped:S = 0xfes

.field static final blacklist kRuleSet_name_char:S = 0x81s

.field static final blacklist kRuleSet_name_start_char:S = 0x82s

.field static final blacklist kRuleSet_rule_char:S = 0x83s

.field static final blacklist kRuleSet_white_space:S = 0x84s


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 84
    const/16 v0, 0x68

    new-array v0, v0, [Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v3, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v8, 0x0

    const-string v9, "start"

    const/16 v4, 0xb

    const/16 v5, 0xfe

    const/16 v6, 0x1d

    const/16 v7, 0x9

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v1, 0x1

    aput-object v3, v0, v1

    new-instance v4, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v5, 0xd

    const/16 v6, 0x84

    const/4 v7, 0x1

    invoke-direct/range {v4 .. v10}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v1, 0x2

    aput-object v4, v0, v1

    new-instance v5, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v6, 0xe

    const/16 v7, 0x5e

    const/16 v8, 0xc

    const/16 v9, 0x9

    invoke-direct/range {v5 .. v11}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v1, 0x3

    aput-object v5, v0, v1

    new-instance v6, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v7, 0xb

    const/16 v8, 0x24

    const/16 v9, 0x58

    const/16 v10, 0x62

    invoke-direct/range {v6 .. v12}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v1, 0x4

    aput-object v6, v0, v1

    new-instance v7, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v8, 0xd

    const/16 v9, 0x21

    const/16 v10, 0x13

    invoke-direct/range {v7 .. v13}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v1, 0x5

    aput-object v7, v0, v1

    new-instance v8, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v9, 0xd

    const/16 v10, 0x3b

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v14}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v1, 0x6

    aput-object v8, v0, v1

    new-instance v9, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v10, 0xd

    const/16 v11, 0xfc

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v1, 0x7

    aput-object v9, v0, v1

    new-instance v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0xb

    const/16 v4, 0xff

    const/16 v5, 0x1d

    const/16 v6, 0x9

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x8

    aput-object v2, v0, v1

    new-instance v3, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v8, 0x1

    const-string v9, "break-rule-end"

    const/4 v4, 0x4

    const/16 v5, 0x3b

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x9

    aput-object v3, v0, v1

    new-instance v4, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v5, 0xd

    const/16 v6, 0x84

    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0xa

    aput-object v4, v0, v1

    new-instance v5, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v6, 0x13

    const/16 v7, 0xff

    const/16 v8, 0x67

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0xb

    aput-object v5, v0, v1

    new-instance v6, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v11, 0x0

    const-string v12, "start-after-caret"

    const/16 v7, 0xb

    const/16 v8, 0xfe

    const/16 v9, 0x1d

    invoke-direct/range {v6 .. v12}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0xc

    aput-object v6, v0, v1

    new-instance v7, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v8, 0xd

    const/16 v9, 0x84

    const/16 v10, 0xc

    invoke-direct/range {v7 .. v13}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0xd

    aput-object v7, v0, v1

    new-instance v8, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v9, 0x13

    const/16 v10, 0x5e

    const/16 v11, 0x67

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v14}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0xe

    aput-object v8, v0, v1

    new-instance v9, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v14, 0x0

    const/16 v10, 0xb

    const/16 v11, 0x24

    const/16 v12, 0x58

    const/16 v13, 0x25

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0xf

    aput-object v9, v0, v1

    new-instance v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x13

    const/16 v4, 0x3b

    const/16 v5, 0x67

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x10

    aput-object v2, v0, v1

    new-instance v3, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v4, 0x13

    const/16 v5, 0xfc

    const/16 v6, 0x67

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x11

    aput-object v3, v0, v1

    new-instance v4, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v5, 0xb

    const/16 v6, 0xff

    const/16 v7, 0x1d

    invoke-direct/range {v4 .. v10}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x12

    aput-object v4, v0, v1

    new-instance v5, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v10, 0x1

    const-string v11, "rev-option"

    const/16 v6, 0xd

    const/16 v7, 0x21

    const/16 v8, 0x15

    invoke-direct/range {v5 .. v11}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x13

    aput-object v5, v0, v1

    new-instance v6, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v7, 0x11

    const/16 v8, 0xff

    const/16 v9, 0x1c

    const/16 v10, 0x9

    invoke-direct/range {v6 .. v12}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x14

    aput-object v6, v0, v1

    new-instance v7, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v12, 0x1

    const-string v13, "option-scan1"

    const/16 v8, 0x10

    const/16 v9, 0x82

    const/16 v10, 0x17

    invoke-direct/range {v7 .. v13}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x15

    aput-object v7, v0, v1

    new-instance v8, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v9, 0x13

    const/16 v10, 0xff

    const/16 v11, 0x67

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v14}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x16

    aput-object v8, v0, v1

    new-instance v9, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v14, 0x1

    const-string v15, "option-scan2"

    const/16 v10, 0xd

    const/16 v11, 0x81

    const/16 v12, 0x17

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x17

    aput-object v9, v0, v1

    new-instance v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0xf

    const/16 v4, 0xff

    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x18

    aput-object v2, v0, v1

    new-instance v3, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v8, 0x1

    const-string v9, "option-scan3"

    const/16 v4, 0xd

    const/16 v5, 0x3b

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x19

    aput-object v3, v0, v1

    new-instance v4, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v5, 0xd

    const/16 v6, 0x84

    const/16 v7, 0x19

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x1a

    aput-object v4, v0, v1

    new-instance v5, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v6, 0x13

    const/16 v7, 0xff

    const/16 v8, 0x67

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x1b

    aput-object v5, v0, v1

    new-instance v6, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v11, 0x0

    const-string v12, "reverse-rule"

    const/16 v7, 0xb

    const/16 v8, 0xff

    const/16 v9, 0x1d

    const/16 v10, 0x9

    invoke-direct/range {v6 .. v12}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x1c

    aput-object v6, v0, v1

    new-instance v7, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v12, 0x1

    const-string v13, "term"

    const/16 v8, 0x12

    const/16 v9, 0xfe

    const/16 v10, 0x26

    invoke-direct/range {v7 .. v13}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x1d

    aput-object v7, v0, v1

    new-instance v8, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v9, 0xd

    const/16 v10, 0x84

    const/16 v11, 0x1d

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v14}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x1e

    aput-object v8, v0, v1

    new-instance v9, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v10, 0x12

    const/16 v11, 0x83

    const/16 v12, 0x26

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x1f

    aput-object v9, v0, v1

    new-instance v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0xd

    const/16 v4, 0x5b

    const/16 v5, 0x5e

    const/16 v6, 0x26

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x20

    aput-object v2, v0, v1

    new-instance v3, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v4, 0xc

    const/16 v5, 0x28

    const/16 v6, 0x1d

    const/16 v7, 0x26

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x21

    aput-object v3, v0, v1

    new-instance v4, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v5, 0xd

    const/16 v6, 0x24

    const/16 v7, 0x58

    const/16 v8, 0x25

    invoke-direct/range {v4 .. v10}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x22

    aput-object v4, v0, v1

    new-instance v5, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x2e

    const/16 v8, 0x26

    invoke-direct/range {v5 .. v11}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x23

    aput-object v5, v0, v1

    new-instance v6, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v7, 0x13

    const/16 v8, 0xff

    const/16 v9, 0x67

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x24

    aput-object v6, v0, v1

    new-instance v7, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v12, 0x0

    const-string v13, "term-var-ref"

    const/4 v8, 0x1

    const/16 v9, 0xff

    const/16 v10, 0x26

    invoke-direct/range {v7 .. v13}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x25

    aput-object v7, v0, v1

    new-instance v8, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v13, 0x1

    const-string v14, "expr-mod"

    const/16 v9, 0xd

    const/16 v10, 0x84

    const/16 v11, 0x26

    invoke-direct/range {v8 .. v14}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x26

    aput-object v8, v0, v1

    new-instance v9, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v14, 0x1

    const/16 v10, 0x1f

    const/16 v11, 0x2a

    const/16 v12, 0x2b

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x27

    aput-object v9, v0, v1

    new-instance v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v3, 0x1d

    const/16 v4, 0x2b

    const/16 v5, 0x2b

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x28

    aput-object v2, v0, v1

    new-instance v3, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v4, 0x1e

    const/16 v5, 0x3f

    const/16 v6, 0x2b

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x29

    aput-object v3, v0, v1

    new-instance v4, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v5, 0xd

    const/16 v6, 0xff

    const/16 v7, 0x2b

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x2a

    aput-object v4, v0, v1

    new-instance v5, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v10, 0x0

    const-string v11, "expr-cont"

    const/4 v6, 0x7

    const/16 v7, 0xfe

    const/16 v8, 0x1d

    invoke-direct/range {v5 .. v11}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x2b

    aput-object v5, v0, v1

    new-instance v6, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v7, 0xd

    const/16 v8, 0x84

    const/16 v9, 0x2b

    invoke-direct/range {v6 .. v12}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x2c

    aput-object v6, v0, v1

    new-instance v7, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x83

    const/16 v10, 0x1d

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x2d

    aput-object v7, v0, v1

    new-instance v8, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x7

    const/16 v10, 0x5b

    const/16 v11, 0x1d

    invoke-direct/range {v8 .. v14}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x2e

    aput-object v8, v0, v1

    new-instance v9, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v14, 0x0

    const/4 v10, 0x7

    const/16 v11, 0x28

    const/16 v12, 0x1d

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x2f

    aput-object v9, v0, v1

    new-instance v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x7

    const/16 v4, 0x24

    const/16 v5, 0x1d

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x30

    aput-object v2, v0, v1

    new-instance v3, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x7

    const/16 v5, 0x2e

    const/16 v6, 0x1d

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x31

    aput-object v3, v0, v1

    new-instance v4, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x7

    const/16 v6, 0x2f

    const/16 v7, 0x37

    invoke-direct/range {v4 .. v10}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x32

    aput-object v4, v0, v1

    new-instance v5, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x7

    const/16 v7, 0x7b

    const/16 v8, 0x43

    invoke-direct/range {v5 .. v11}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x33

    aput-object v5, v0, v1

    new-instance v6, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v7, 0x9

    const/16 v8, 0x7c

    const/16 v9, 0x1d

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x34

    aput-object v6, v0, v1

    new-instance v7, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v8, 0xa

    const/16 v9, 0x29

    const/16 v10, 0xff

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x35

    aput-object v7, v0, v1

    new-instance v8, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v9, 0x8

    const/16 v11, 0xff

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v14}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x36

    aput-object v8, v0, v1

    new-instance v9, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v14, 0x1

    const-string v15, "look-ahead"

    const/16 v10, 0x16

    const/16 v11, 0x2f

    const/16 v12, 0x39

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x37

    aput-object v9, v0, v1

    new-instance v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0xd

    const/16 v4, 0xff

    const/16 v5, 0x67

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x38

    aput-object v2, v0, v1

    new-instance v3, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v8, 0x0

    const-string v9, "expr-cont-no-slash"

    const/4 v4, 0x7

    const/16 v5, 0xfe

    const/16 v6, 0x1d

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x39

    aput-object v3, v0, v1

    new-instance v4, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v5, 0xd

    const/16 v6, 0x84

    const/16 v7, 0x2b

    invoke-direct/range {v4 .. v10}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x3a

    aput-object v4, v0, v1

    new-instance v5, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x7

    const/16 v7, 0x83

    const/16 v8, 0x1d

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x3b

    aput-object v5, v0, v1

    new-instance v6, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x7

    const/16 v8, 0x5b

    const/16 v9, 0x1d

    invoke-direct/range {v6 .. v12}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x3c

    aput-object v6, v0, v1

    new-instance v7, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x7

    const/16 v9, 0x28

    const/16 v10, 0x1d

    invoke-direct/range {v7 .. v13}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x3d

    aput-object v7, v0, v1

    new-instance v8, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x7

    const/16 v10, 0x24

    const/16 v11, 0x1d

    invoke-direct/range {v8 .. v14}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x3e

    aput-object v8, v0, v1

    new-instance v9, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x7

    const/16 v11, 0x2e

    const/16 v12, 0x1d

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x3f

    aput-object v9, v0, v1

    new-instance v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v3, 0x9

    const/16 v4, 0x7c

    const/16 v5, 0x1d

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x40

    aput-object v2, v0, v1

    new-instance v3, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v4, 0xa

    const/16 v5, 0x29

    const/16 v6, 0xff

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x41

    aput-object v3, v0, v1

    new-instance v4, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v5, 0x8

    const/16 v7, 0xff

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x42

    aput-object v4, v0, v1

    new-instance v5, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v10, 0x1

    const-string v11, "tag-open"

    const/16 v6, 0xd

    const/16 v7, 0x84

    const/16 v8, 0x43

    invoke-direct/range {v5 .. v11}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x43

    aput-object v5, v0, v1

    new-instance v6, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v7, 0x18

    const/16 v8, 0x80

    const/16 v9, 0x46

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x44

    aput-object v6, v0, v1

    new-instance v7, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v8, 0x1b

    const/16 v9, 0xff

    const/16 v10, 0x67

    invoke-direct/range {v7 .. v13}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x45

    aput-object v7, v0, v1

    new-instance v8, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v13, 0x1

    const-string v14, "tag-value"

    const/16 v9, 0xd

    const/16 v10, 0x84

    const/16 v11, 0x4a

    invoke-direct/range {v8 .. v14}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x46

    aput-object v8, v0, v1

    new-instance v9, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v14, 0x0

    const/16 v10, 0xd

    const/16 v11, 0x7d

    const/16 v12, 0x4a

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x47

    aput-object v9, v0, v1

    new-instance v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v3, 0x1a

    const/16 v4, 0x80

    const/16 v5, 0x46

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x48

    aput-object v2, v0, v1

    new-instance v3, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v4, 0x1b

    const/16 v5, 0xff

    const/16 v6, 0x67

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x49

    aput-object v3, v0, v1

    new-instance v4, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v9, 0x1

    const-string v10, "tag-close"

    const/16 v5, 0xd

    const/16 v6, 0x84

    const/16 v7, 0x4a

    invoke-direct/range {v4 .. v10}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x4a

    aput-object v4, v0, v1

    new-instance v5, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v6, 0x1c

    const/16 v7, 0x7d

    const/16 v8, 0x4d

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x4b

    aput-object v5, v0, v1

    new-instance v6, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v7, 0x1b

    const/16 v8, 0xff

    const/16 v9, 0x67

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x4c

    aput-object v6, v0, v1

    new-instance v7, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v12, 0x0

    const-string v13, "expr-cont-no-tag"

    const/4 v8, 0x7

    const/16 v9, 0xfe

    const/16 v10, 0x1d

    invoke-direct/range {v7 .. v13}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x4d

    aput-object v7, v0, v1

    new-instance v8, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v9, 0xd

    const/16 v10, 0x84

    const/16 v11, 0x4d

    invoke-direct/range {v8 .. v14}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x4e

    aput-object v8, v0, v1

    new-instance v9, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v14, 0x0

    const/4 v10, 0x7

    const/16 v11, 0x83

    const/16 v12, 0x1d

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x4f

    aput-object v9, v0, v1

    new-instance v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x7

    const/16 v4, 0x5b

    const/16 v5, 0x1d

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x50

    aput-object v2, v0, v1

    new-instance v3, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x7

    const/16 v5, 0x28

    const/16 v6, 0x1d

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x51

    aput-object v3, v0, v1

    new-instance v4, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x7

    const/16 v6, 0x24

    const/16 v7, 0x1d

    invoke-direct/range {v4 .. v10}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x52

    aput-object v4, v0, v1

    new-instance v5, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x7

    const/16 v7, 0x2e

    const/16 v8, 0x1d

    invoke-direct/range {v5 .. v11}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x53

    aput-object v5, v0, v1

    new-instance v6, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x7

    const/16 v8, 0x2f

    const/16 v9, 0x37

    invoke-direct/range {v6 .. v12}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x54

    aput-object v6, v0, v1

    new-instance v7, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v8, 0x9

    const/16 v9, 0x7c

    const/16 v10, 0x1d

    invoke-direct/range {v7 .. v13}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x55

    aput-object v7, v0, v1

    new-instance v8, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v9, 0xa

    const/16 v10, 0x29

    const/16 v11, 0xff

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v14}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x56

    aput-object v8, v0, v1

    new-instance v9, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v14, 0x0

    const/16 v10, 0x8

    const/16 v12, 0xff

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x57

    aput-object v9, v0, v1

    new-instance v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v7, 0x1

    const-string v8, "scan-var-name"

    const/16 v3, 0x19

    const/16 v4, 0x24

    const/16 v5, 0x5a

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x58

    aput-object v2, v0, v1

    new-instance v3, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v4, 0xd

    const/16 v5, 0xff

    const/16 v6, 0x67

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x59

    aput-object v3, v0, v1

    new-instance v4, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v9, 0x1

    const-string v10, "scan-var-start"

    const/16 v5, 0xd

    const/16 v6, 0x82

    const/16 v7, 0x5c

    invoke-direct/range {v4 .. v10}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x5a

    aput-object v4, v0, v1

    new-instance v5, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v6, 0x20

    const/16 v7, 0xff

    const/16 v8, 0x67

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x5b

    aput-object v5, v0, v1

    new-instance v6, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v11, 0x1

    const-string v12, "scan-var-body"

    const/16 v7, 0xd

    const/16 v8, 0x81

    const/16 v9, 0x5c

    invoke-direct/range {v6 .. v12}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x5c

    aput-object v6, v0, v1

    new-instance v7, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x5

    const/16 v9, 0xff

    const/16 v10, 0xff

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x5d

    aput-object v7, v0, v1

    new-instance v8, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v13, 0x1

    const-string v14, "scan-unicode-set"

    const/16 v9, 0x15

    const/16 v10, 0x5b

    const/16 v11, 0xff

    invoke-direct/range {v8 .. v14}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x5e

    aput-object v8, v0, v1

    new-instance v9, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v14, 0x1

    const/16 v10, 0x15

    const/16 v11, 0x70

    const/16 v12, 0xff

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x5f

    aput-object v9, v0, v1

    new-instance v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v3, 0x15

    const/16 v4, 0x50

    const/16 v5, 0xff

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x60

    aput-object v2, v0, v1

    new-instance v3, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v4, 0xd

    const/16 v6, 0x67

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x61

    aput-object v3, v0, v1

    new-instance v4, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v9, 0x1

    const-string v10, "assign-or-rule"

    const/16 v5, 0xd

    const/16 v6, 0x84

    const/16 v7, 0x62

    invoke-direct/range {v4 .. v10}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x62

    aput-object v4, v0, v1

    new-instance v5, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v6, 0x17

    const/16 v7, 0x3d

    const/16 v8, 0x1d

    const/16 v9, 0x65

    invoke-direct/range {v5 .. v11}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x63

    aput-object v5, v0, v1

    new-instance v6, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v7, 0xd

    const/16 v8, 0xff

    const/16 v9, 0x25

    const/16 v10, 0x9

    invoke-direct/range {v6 .. v12}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x64

    aput-object v6, v0, v1

    new-instance v7, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v12, 0x1

    const-string v13, "assign-end"

    const/4 v8, 0x3

    const/16 v9, 0x3b

    const/4 v10, 0x1

    invoke-direct/range {v7 .. v13}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x65

    aput-object v7, v0, v1

    new-instance v8, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v9, 0x14

    const/16 v10, 0xff

    const/16 v11, 0x67

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v14}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x66

    aput-object v8, v0, v1

    new-instance v9, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v14, 0x1

    const-string v15, "errorDeath"

    const/4 v10, 0x6

    const/16 v11, 0xff

    const/16 v12, 0x67

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v1, 0x67

    aput-object v9, v0, v1

    sput-object v0, Landroid/icu/text/RBBIRuleParseTable;->gRuleParseStateTable:[Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
