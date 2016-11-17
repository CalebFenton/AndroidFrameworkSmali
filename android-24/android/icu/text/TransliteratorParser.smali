.class Landroid/icu/text/TransliteratorParser;
.super Ljava/lang/Object;
.source "TransliteratorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TransliteratorParser$ParseData;,
        Landroid/icu/text/TransliteratorParser$RuleArray;,
        Landroid/icu/text/TransliteratorParser$RuleBody;,
        Landroid/icu/text/TransliteratorParser$RuleHalf;
    }
.end annotation


# static fields
.field private static final ALT_FORWARD_RULE_OP:C = '\u2192'

.field private static final ALT_FUNCTION:C = '\u2206'

.field private static final ALT_FWDREV_RULE_OP:C = '\u2194'

.field private static final ALT_REVERSE_RULE_OP:C = '\u2190'

.field private static final ANCHOR_START:C = '^'

.field private static final CONTEXT_ANTE:C = '{'

.field private static final CONTEXT_POST:C = '}'

.field private static final CURSOR_OFFSET:C = '@'

.field private static final CURSOR_POS:C = '|'

.field private static final DOT:C = '.'

.field private static final DOT_SET:Ljava/lang/String; = "[^[:Zp:][:Zl:]\\r\\n$]"

.field private static final END_OF_RULE:C = ';'

.field private static final ESCAPE:C = '\\'

.field private static final FORWARD_RULE_OP:C = '>'

.field private static final FUNCTION:C = '&'

.field private static final FWDREV_RULE_OP:C = '~'

.field private static final HALF_ENDERS:Ljava/lang/String; = "=><\u2190\u2192\u2194;"

.field private static final ID_TOKEN:Ljava/lang/String; = "::"

.field private static final ID_TOKEN_LEN:I = 0x2

.field private static ILLEGAL_FUNC:Landroid/icu/text/UnicodeSet; = null

.field private static ILLEGAL_SEG:Landroid/icu/text/UnicodeSet; = null

.field private static ILLEGAL_TOP:Landroid/icu/text/UnicodeSet; = null

.field private static final KLEENE_STAR:C = '*'

.field private static final ONE_OR_MORE:C = '+'

.field private static final OPERATORS:Ljava/lang/String; = "=><\u2190\u2192\u2194"

.field private static final QUOTE:C = '\''

.field private static final REVERSE_RULE_OP:C = '<'

.field private static final RULE_COMMENT_CHAR:C = '#'

.field private static final SEGMENT_CLOSE:C = ')'

.field private static final SEGMENT_OPEN:C = '('

.field private static final VARIABLE_DEF_OP:C = '='

.field private static final ZERO_OR_ONE:C = '?'


# instance fields
.field public compoundFilter:Landroid/icu/text/UnicodeSet;

.field private curData:Landroid/icu/text/RuleBasedTransliterator$Data;

.field public dataVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RuleBasedTransliterator$Data;",
            ">;"
        }
    .end annotation
.end field

.field private direction:I

.field private dotStandIn:I

.field public idBlockVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parseData:Landroid/icu/text/TransliteratorParser$ParseData;

.field private segmentObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/StringMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private segmentStandins:Ljava/lang/StringBuffer;

.field private undefinedVariableName:Ljava/lang/String;

.field private variableLimit:C

.field private variableNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field private variableNext:C

.field private variablesVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Landroid/icu/text/UnicodeSet;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_FUNC:Landroid/icu/text/UnicodeSet;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Landroid/icu/text/UnicodeSet;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_SEG:Landroid/icu/text/UnicodeSet;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Landroid/icu/text/UnicodeSet;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_TOP:Landroid/icu/text/UnicodeSet;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/TransliteratorParser$ParseData;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->parseData:Landroid/icu/text/TransliteratorParser$ParseData;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/icu/text/TransliteratorParser;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/text/ParsePosition;)C
    .locals 1
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/icu/text/TransliteratorParser;->parseSet(Ljava/lang/String;Ljava/text/ParsePosition;)C

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/icu/text/TransliteratorParser;->appendVariableDef(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/icu/text/TransliteratorParser;ILjava/lang/String;I)V
    .locals 0
    .param p1, "ch"    # I
    .param p2, "rule"    # Ljava/lang/String;
    .param p3, "start"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorParser;->checkVariableRange(ILjava/lang/String;I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 183
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    const-string/jumbo v1, "[\\)]"

    #@5
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_TOP:Landroid/icu/text/UnicodeSet;

    #@a
    .line 186
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@c
    const-string/jumbo v1, "[\\{\\}\\|\\@]"

    #@f
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_SEG:Landroid/icu/text/UnicodeSet;

    #@14
    .line 189
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@16
    const-string/jumbo v1, "[\\^\\(\\.\\*\\+\\?\\{\\}\\|\\@]"

    #@19
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_FUNC:Landroid/icu/text/UnicodeSet;

    #@1e
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 117
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    #@6
    .line 860
    return-void
.end method

.method private appendVariableDef(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 1537
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [C

    #@8
    .line 1538
    .local v0, "ch":[C
    if-nez v0, :cond_2

    #@a
    .line 1543
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    #@c
    if-nez v1, :cond_1

    #@e
    .line 1544
    iput-object p1, p0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    #@10
    .line 1545
    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    #@12
    iget-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    #@14
    if-lt v1, v2, :cond_0

    #@16
    .line 1546
    new-instance v1, Ljava/lang/RuntimeException;

    #@18
    const-string/jumbo v2, "Private use variables exhausted"

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 1548
    :cond_0
    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    #@21
    add-int/lit8 v1, v1, -0x1

    #@23
    int-to-char v1, v1

    #@24
    iput-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    #@26
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@29
    .line 1536
    :goto_0
    return-void

    #@2a
    .line 1550
    :cond_1
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "Undefined variable $"

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-direct {v1, v2}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v1

    #@44
    .line 1554
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    #@47
    goto :goto_0
.end method

.method private checkVariableRange(ILjava/lang/String;I)V
    .locals 1
    .param p1, "ch"    # I
    .param p2, "rule"    # Ljava/lang/String;
    .param p3, "start"    # I

    #@0
    .prologue
    .line 1327
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@2
    iget-char v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    #@4
    if-lt p1, v0, :cond_0

    #@6
    iget-char v0, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    #@8
    if-ge p1, v0, :cond_0

    #@a
    .line 1328
    const-string/jumbo v0, "Variable range character in rule"

    #@d
    invoke-static {v0, p2, p3}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@10
    .line 1326
    :cond_0
    return-void
.end method

.method private parsePragma(Ljava/lang/String;II)I
    .locals 5
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1381
    const/4 v2, 0x2

    #@3
    new-array v0, v2, [I

    #@5
    .line 1386
    .local v0, "array":[I
    add-int/lit8 p2, p2, 0x4

    #@7
    .line 1392
    const-string/jumbo v2, "~variable range # #~;"

    #@a
    invoke-static {p1, p2, p3, v2, v0}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    #@d
    move-result v1

    #@e
    .line 1393
    .local v1, "p":I
    if-ltz v1, :cond_0

    #@10
    .line 1394
    aget v2, v0, v3

    #@12
    const/4 v3, 0x1

    #@13
    aget v3, v0, v3

    #@15
    invoke-direct {p0, v2, v3}, Landroid/icu/text/TransliteratorParser;->setVariableRange(II)V

    #@18
    .line 1395
    return v1

    #@19
    .line 1398
    :cond_0
    const-string/jumbo v2, "~maximum backup #~;"

    #@1c
    invoke-static {p1, p2, p3, v2, v0}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    #@1f
    move-result v1

    #@20
    .line 1399
    if-ltz v1, :cond_1

    #@22
    .line 1400
    aget v2, v0, v3

    #@24
    invoke-direct {p0, v2}, Landroid/icu/text/TransliteratorParser;->pragmaMaximumBackup(I)V

    #@27
    .line 1401
    return v1

    #@28
    .line 1404
    :cond_1
    const-string/jumbo v2, "~nfd rules~;"

    #@2b
    invoke-static {p1, p2, p3, v2, v4}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    #@2e
    move-result v1

    #@2f
    .line 1405
    if-ltz v1, :cond_2

    #@31
    .line 1406
    sget-object v2, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    #@33
    invoke-direct {p0, v2}, Landroid/icu/text/TransliteratorParser;->pragmaNormalizeRules(Landroid/icu/text/Normalizer$Mode;)V

    #@36
    .line 1407
    return v1

    #@37
    .line 1410
    :cond_2
    const-string/jumbo v2, "~nfc rules~;"

    #@3a
    invoke-static {p1, p2, p3, v2, v4}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    #@3d
    move-result v1

    #@3e
    .line 1411
    if-ltz v1, :cond_3

    #@40
    .line 1412
    sget-object v2, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    #@42
    invoke-direct {p0, v2}, Landroid/icu/text/TransliteratorParser;->pragmaNormalizeRules(Landroid/icu/text/Normalizer$Mode;)V

    #@45
    .line 1413
    return v1

    #@46
    .line 1417
    :cond_3
    const/4 v2, -0x1

    #@47
    return v2
.end method

.method private parseRule(Ljava/lang/String;II)I
    .locals 26
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 1136
    move/from16 v22, p2

    #@2
    .line 1137
    .local v22, "start":I
    const/16 v20, 0x0

    #@4
    .line 1140
    .local v20, "operator":C
    new-instance v5, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    #@9
    move-object/from16 v0, p0

    #@b
    iput-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    #@d
    .line 1141
    new-instance v5, Ljava/util/ArrayList;

    #@f
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@12
    move-object/from16 v0, p0

    #@14
    iput-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    #@16
    .line 1143
    new-instance v17, Landroid/icu/text/TransliteratorParser$RuleHalf;

    #@18
    const/4 v5, 0x0

    #@19
    move-object/from16 v0, v17

    #@1b
    invoke-direct {v0, v5}, Landroid/icu/text/TransliteratorParser$RuleHalf;-><init>(Landroid/icu/text/TransliteratorParser$RuleHalf;)V

    #@1e
    .line 1144
    .local v17, "left":Landroid/icu/text/TransliteratorParser$RuleHalf;
    new-instance v21, Landroid/icu/text/TransliteratorParser$RuleHalf;

    #@20
    const/4 v5, 0x0

    #@21
    move-object/from16 v0, v21

    #@23
    invoke-direct {v0, v5}, Landroid/icu/text/TransliteratorParser$RuleHalf;-><init>(Landroid/icu/text/TransliteratorParser$RuleHalf;)V

    #@26
    .line 1146
    .local v21, "right":Landroid/icu/text/TransliteratorParser$RuleHalf;
    const/4 v5, 0x0

    #@27
    move-object/from16 v0, p0

    #@29
    iput-object v5, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    #@2b
    .line 1147
    move-object/from16 v0, v17

    #@2d
    move-object/from16 v1, p1

    #@2f
    move/from16 v2, p2

    #@31
    move/from16 v3, p3

    #@33
    move-object/from16 v4, p0

    #@35
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parse(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;)I

    #@38
    move-result p2

    #@39
    .line 1149
    move/from16 v0, p2

    #@3b
    move/from16 v1, p3

    #@3d
    if-eq v0, v1, :cond_0

    #@3f
    .line 1150
    const-string/jumbo v5, "=><\u2190\u2192\u2194"

    #@42
    add-int/lit8 p2, p2, -0x1

    #@44
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    #@47
    move-result v20

    #@48
    .local v20, "operator":C
    move/from16 v0, v20

    #@4a
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    #@4d
    move-result v5

    #@4e
    if-gez v5, :cond_1

    #@50
    .line 1151
    .end local v20    # "operator":C
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v6, "No operator pos="

    #@58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v5

    #@5c
    move/from16 v0, p2

    #@5e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    move-object/from16 v0, p1

    #@68
    move/from16 v1, v22

    #@6a
    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@6d
    .line 1153
    :cond_1
    add-int/lit8 p2, p2, 0x1

    #@6f
    .line 1156
    const/16 v5, 0x3c

    #@71
    move/from16 v0, v20

    #@73
    if-ne v0, v5, :cond_2

    #@75
    .line 1157
    move/from16 v0, p2

    #@77
    move/from16 v1, p3

    #@79
    if-ge v0, v1, :cond_2

    #@7b
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    #@7e
    move-result v5

    #@7f
    const/16 v6, 0x3e

    #@81
    if-ne v5, v6, :cond_2

    #@83
    .line 1158
    add-int/lit8 p2, p2, 0x1

    #@85
    .line 1159
    const/16 v20, 0x7e

    #@87
    .line 1163
    :cond_2
    packed-switch v20, :pswitch_data_0

    #@8a
    .line 1175
    :goto_0
    :pswitch_0
    move-object/from16 v0, v21

    #@8c
    move-object/from16 v1, p1

    #@8e
    move/from16 v2, p2

    #@90
    move/from16 v3, p3

    #@92
    move-object/from16 v4, p0

    #@94
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parse(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;)I

    #@97
    move-result p2

    #@98
    .line 1177
    move/from16 v0, p2

    #@9a
    move/from16 v1, p3

    #@9c
    if-ge v0, v1, :cond_3

    #@9e
    .line 1178
    add-int/lit8 p2, p2, -0x1

    #@a0
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    #@a3
    move-result v5

    #@a4
    const/16 v6, 0x3b

    #@a6
    if-ne v5, v6, :cond_9

    #@a8
    .line 1179
    add-int/lit8 p2, p2, 0x1

    #@aa
    .line 1186
    :cond_3
    :goto_1
    const/16 v5, 0x3d

    #@ac
    move/from16 v0, v20

    #@ae
    if-ne v0, v5, :cond_a

    #@b0
    .line 1194
    move-object/from16 v0, p0

    #@b2
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    #@b4
    if-nez v5, :cond_4

    #@b6
    .line 1195
    const-string/jumbo v5, "Missing \'$\' or duplicate definition"

    #@b9
    move-object/from16 v0, p1

    #@bb
    move/from16 v1, v22

    #@bd
    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@c0
    .line 1197
    :cond_4
    move-object/from16 v0, v17

    #@c2
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    #@c4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@c7
    move-result v5

    #@c8
    const/4 v6, 0x1

    #@c9
    if-ne v5, v6, :cond_5

    #@cb
    move-object/from16 v0, v17

    #@cd
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    #@cf
    const/4 v6, 0x0

    #@d0
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    #@d3
    move-result v5

    #@d4
    move-object/from16 v0, p0

    #@d6
    iget-char v6, v0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    #@d8
    if-eq v5, v6, :cond_6

    #@da
    .line 1198
    :cond_5
    const-string/jumbo v5, "Malformed LHS"

    #@dd
    move-object/from16 v0, p1

    #@df
    move/from16 v1, v22

    #@e1
    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@e4
    .line 1200
    :cond_6
    move-object/from16 v0, v17

    #@e6
    iget-boolean v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    #@e8
    if-nez v5, :cond_7

    #@ea
    move-object/from16 v0, v17

    #@ec
    iget-boolean v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    #@ee
    if-nez v5, :cond_7

    #@f0
    .line 1201
    move-object/from16 v0, v21

    #@f2
    iget-boolean v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    #@f4
    .line 1200
    if-nez v5, :cond_7

    #@f6
    .line 1201
    move-object/from16 v0, v21

    #@f8
    iget-boolean v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    #@fa
    .line 1200
    if-eqz v5, :cond_8

    #@fc
    .line 1202
    :cond_7
    const-string/jumbo v5, "Malformed variable def"

    #@ff
    move-object/from16 v0, p1

    #@101
    move/from16 v1, v22

    #@103
    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@106
    .line 1205
    :cond_8
    move-object/from16 v0, v21

    #@108
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    #@10a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@10d
    move-result v19

    #@10e
    .line 1206
    .local v19, "n":I
    move/from16 v0, v19

    #@110
    new-array v0, v0, [C

    #@112
    move-object/from16 v24, v0

    #@114
    .line 1207
    .local v24, "value":[C
    move-object/from16 v0, v21

    #@116
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    #@118
    const/4 v6, 0x0

    #@119
    const/4 v7, 0x0

    #@11a
    move/from16 v0, v19

    #@11c
    move-object/from16 v1, v24

    #@11e
    invoke-virtual {v5, v6, v0, v1, v7}, Ljava/lang/String;->getChars(II[CI)V

    #@121
    .line 1208
    move-object/from16 v0, p0

    #@123
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    #@125
    move-object/from16 v0, p0

    #@127
    iget-object v6, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    #@129
    move-object/from16 v0, v24

    #@12b
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12e
    .line 1210
    move-object/from16 v0, p0

    #@130
    iget-char v5, v0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    #@132
    add-int/lit8 v5, v5, 0x1

    #@134
    int-to-char v5, v5

    #@135
    move-object/from16 v0, p0

    #@137
    iput-char v5, v0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    #@139
    .line 1211
    return p2

    #@13a
    .line 1165
    .end local v19    # "n":I
    .end local v24    # "value":[C
    :pswitch_1
    const/16 v20, 0x3e

    #@13c
    .line 1166
    .local v20, "operator":C
    goto/16 :goto_0

    #@13e
    .line 1168
    .end local v20    # "operator":C
    :pswitch_2
    const/16 v20, 0x3c

    #@140
    .line 1169
    .restart local v20    # "operator":C
    goto/16 :goto_0

    #@142
    .line 1171
    .end local v20    # "operator":C
    :pswitch_3
    const/16 v20, 0x7e

    #@144
    .line 1172
    .restart local v20    # "operator":C
    goto/16 :goto_0

    #@146
    .line 1182
    .end local v20    # "operator":C
    :cond_9
    const-string/jumbo v5, "Unquoted operator"

    #@149
    move-object/from16 v0, p1

    #@14b
    move/from16 v1, v22

    #@14d
    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@150
    goto/16 :goto_1

    #@152
    .line 1216
    :cond_a
    move-object/from16 v0, p0

    #@154
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    #@156
    if-eqz v5, :cond_b

    #@158
    .line 1217
    new-instance v5, Ljava/lang/StringBuilder;

    #@15a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15d
    const-string/jumbo v6, "Undefined variable $"

    #@160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v5

    #@164
    move-object/from16 v0, p0

    #@166
    iget-object v6, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    #@168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v5

    #@16c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16f
    move-result-object v5

    #@170
    move-object/from16 v0, p1

    #@172
    move/from16 v1, v22

    #@174
    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@177
    .line 1222
    :cond_b
    move-object/from16 v0, p0

    #@179
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    #@17b
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    #@17e
    move-result v5

    #@17f
    move-object/from16 v0, p0

    #@181
    iget-object v6, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    #@183
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@186
    move-result v6

    #@187
    if-le v5, v6, :cond_c

    #@189
    .line 1223
    const-string/jumbo v5, "Undefined segment reference"

    #@18c
    move-object/from16 v0, p1

    #@18e
    move/from16 v1, v22

    #@190
    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@193
    .line 1225
    :cond_c
    const/16 v16, 0x0

    #@195
    .local v16, "i":I
    :goto_2
    move-object/from16 v0, p0

    #@197
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    #@199
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    #@19c
    move-result v5

    #@19d
    move/from16 v0, v16

    #@19f
    if-ge v0, v5, :cond_e

    #@1a1
    .line 1226
    move-object/from16 v0, p0

    #@1a3
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    #@1a5
    move/from16 v0, v16

    #@1a7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    #@1aa
    move-result v5

    #@1ab
    if-nez v5, :cond_d

    #@1ad
    .line 1227
    const-string/jumbo v5, "Internal error"

    #@1b0
    move-object/from16 v0, p1

    #@1b2
    move/from16 v1, v22

    #@1b4
    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@1b7
    .line 1225
    :cond_d
    add-int/lit8 v16, v16, 0x1

    #@1b9
    goto :goto_2

    #@1ba
    .line 1230
    :cond_e
    const/16 v16, 0x0

    #@1bc
    :goto_3
    move-object/from16 v0, p0

    #@1be
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    #@1c0
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@1c3
    move-result v5

    #@1c4
    move/from16 v0, v16

    #@1c6
    if-ge v0, v5, :cond_10

    #@1c8
    .line 1231
    move-object/from16 v0, p0

    #@1ca
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    #@1cc
    move/from16 v0, v16

    #@1ce
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d1
    move-result-object v5

    #@1d2
    if-nez v5, :cond_f

    #@1d4
    .line 1232
    const-string/jumbo v5, "Internal error"

    #@1d7
    move-object/from16 v0, p1

    #@1d9
    move/from16 v1, v22

    #@1db
    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@1de
    .line 1230
    :cond_f
    add-int/lit8 v16, v16, 0x1

    #@1e0
    goto :goto_3

    #@1e1
    .line 1238
    :cond_10
    const/16 v5, 0x7e

    #@1e3
    move/from16 v0, v20

    #@1e5
    if-eq v0, v5, :cond_13

    #@1e7
    .line 1239
    move-object/from16 v0, p0

    #@1e9
    iget v5, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    #@1eb
    if-nez v5, :cond_11

    #@1ed
    const/4 v5, 0x1

    #@1ee
    move v6, v5

    #@1ef
    :goto_4
    const/16 v5, 0x3e

    #@1f1
    move/from16 v0, v20

    #@1f3
    if-ne v0, v5, :cond_12

    #@1f5
    const/4 v5, 0x1

    #@1f6
    :goto_5
    if-eq v6, v5, :cond_13

    #@1f8
    .line 1240
    return p2

    #@1f9
    .line 1239
    :cond_11
    const/4 v5, 0x0

    #@1fa
    move v6, v5

    #@1fb
    goto :goto_4

    #@1fc
    :cond_12
    const/4 v5, 0x0

    #@1fd
    goto :goto_5

    #@1fe
    .line 1245
    :cond_13
    move-object/from16 v0, p0

    #@200
    iget v5, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    #@202
    const/4 v6, 0x1

    #@203
    if-ne v5, v6, :cond_14

    #@205
    .line 1246
    move-object/from16 v23, v17

    #@207
    .line 1247
    .local v23, "temp":Landroid/icu/text/TransliteratorParser$RuleHalf;
    move-object/from16 v18, v21

    #@209
    .line 1248
    .end local v17    # "left":Landroid/icu/text/TransliteratorParser$RuleHalf;
    .local v18, "left":Landroid/icu/text/TransliteratorParser$RuleHalf;
    move-object/from16 v21, v17

    #@20b
    move-object/from16 v17, v18

    #@20d
    .line 1254
    .end local v18    # "left":Landroid/icu/text/TransliteratorParser$RuleHalf;
    .end local v23    # "temp":Landroid/icu/text/TransliteratorParser$RuleHalf;
    .restart local v17    # "left":Landroid/icu/text/TransliteratorParser$RuleHalf;
    :cond_14
    const/16 v5, 0x7e

    #@20f
    move/from16 v0, v20

    #@211
    if-ne v0, v5, :cond_15

    #@213
    .line 1255
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/TransliteratorParser$RuleHalf;->removeContext()V

    #@216
    .line 1256
    const/4 v5, -0x1

    #@217
    move-object/from16 v0, v17

    #@219
    iput v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    #@21b
    .line 1257
    const/4 v5, 0x0

    #@21c
    move-object/from16 v0, v17

    #@21e
    iput v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    #@220
    .line 1261
    :cond_15
    move-object/from16 v0, v17

    #@222
    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    #@224
    if-gez v5, :cond_16

    #@226
    .line 1262
    const/4 v5, 0x0

    #@227
    move-object/from16 v0, v17

    #@229
    iput v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    #@22b
    .line 1264
    :cond_16
    move-object/from16 v0, v17

    #@22d
    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    #@22f
    if-gez v5, :cond_17

    #@231
    .line 1265
    move-object/from16 v0, v17

    #@233
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    #@235
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@238
    move-result v5

    #@239
    move-object/from16 v0, v17

    #@23b
    iput v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    #@23d
    .line 1274
    :cond_17
    move-object/from16 v0, v21

    #@23f
    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    #@241
    if-gez v5, :cond_18

    #@243
    move-object/from16 v0, v21

    #@245
    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    #@247
    if-ltz v5, :cond_1b

    #@249
    .line 1285
    :cond_18
    :goto_6
    const-string/jumbo v5, "Malformed rule"

    #@24c
    move-object/from16 v0, p1

    #@24e
    move/from16 v1, v22

    #@250
    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@253
    .line 1289
    :cond_19
    const/4 v12, 0x0

    #@254
    .line 1290
    .local v12, "segmentsArray":[Landroid/icu/text/UnicodeMatcher;
    move-object/from16 v0, p0

    #@256
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    #@258
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@25b
    move-result v5

    #@25c
    if-lez v5, :cond_1a

    #@25e
    .line 1291
    move-object/from16 v0, p0

    #@260
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    #@262
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@265
    move-result v5

    #@266
    new-array v12, v5, [Landroid/icu/text/UnicodeMatcher;

    #@268
    .line 1292
    .local v12, "segmentsArray":[Landroid/icu/text/UnicodeMatcher;
    move-object/from16 v0, p0

    #@26a
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    #@26c
    invoke-interface {v5, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@26f
    .line 1295
    .end local v12    # "segmentsArray":[Landroid/icu/text/UnicodeMatcher;
    :cond_1a
    move-object/from16 v0, p0

    #@271
    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@273
    iget-object v0, v5, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    #@275
    move-object/from16 v25, v0

    #@277
    new-instance v5, Landroid/icu/text/TransliterationRule;

    #@279
    .line 1296
    move-object/from16 v0, v17

    #@27b
    iget-object v6, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    #@27d
    move-object/from16 v0, v17

    #@27f
    iget v7, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    #@281
    move-object/from16 v0, v17

    #@283
    iget v8, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    #@285
    .line 1297
    move-object/from16 v0, v21

    #@287
    iget-object v9, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    #@289
    move-object/from16 v0, v21

    #@28b
    iget v10, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    #@28d
    move-object/from16 v0, v21

    #@28f
    iget v11, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    #@291
    .line 1299
    move-object/from16 v0, v17

    #@293
    iget-boolean v13, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    #@295
    move-object/from16 v0, v17

    #@297
    iget-boolean v14, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    #@299
    .line 1300
    move-object/from16 v0, p0

    #@29b
    iget-object v15, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@29d
    .line 1295
    invoke-direct/range {v5 .. v15}, Landroid/icu/text/TransliterationRule;-><init>(Ljava/lang/String;IILjava/lang/String;II[Landroid/icu/text/UnicodeMatcher;ZZLandroid/icu/text/RuleBasedTransliterator$Data;)V

    #@2a0
    move-object/from16 v0, v25

    #@2a2
    invoke-virtual {v0, v5}, Landroid/icu/text/TransliterationRuleSet;->addRule(Landroid/icu/text/TransliterationRule;)V

    #@2a5
    .line 1302
    return p2

    #@2a6
    .line 1274
    :cond_1b
    move-object/from16 v0, v17

    #@2a8
    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    #@2aa
    if-gez v5, :cond_18

    #@2ac
    .line 1275
    move-object/from16 v0, v21

    #@2ae
    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    #@2b0
    if-eqz v5, :cond_1c

    #@2b2
    move-object/from16 v0, v21

    #@2b4
    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    #@2b6
    if-ltz v5, :cond_18

    #@2b8
    .line 1282
    :cond_1c
    move-object/from16 v0, v21

    #@2ba
    iget-boolean v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    #@2bc
    .line 1274
    if-nez v5, :cond_18

    #@2be
    .line 1282
    move-object/from16 v0, v21

    #@2c0
    iget-boolean v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    #@2c2
    .line 1274
    if-nez v5, :cond_18

    #@2c4
    .line 1283
    move-object/from16 v0, v17

    #@2c6
    move-object/from16 v1, p0

    #@2c8
    invoke-virtual {v0, v1}, Landroid/icu/text/TransliteratorParser$RuleHalf;->isValidInput(Landroid/icu/text/TransliteratorParser;)Z

    #@2cb
    move-result v5

    #@2cc
    if-eqz v5, :cond_18

    #@2ce
    move-object/from16 v0, v21

    #@2d0
    move-object/from16 v1, p0

    #@2d2
    invoke-virtual {v0, v1}, Landroid/icu/text/TransliteratorParser$RuleHalf;->isValidOutput(Landroid/icu/text/TransliteratorParser;)Z

    #@2d5
    move-result v5

    #@2d6
    if-eqz v5, :cond_18

    #@2d8
    .line 1284
    move-object/from16 v0, v17

    #@2da
    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    #@2dc
    move-object/from16 v0, v17

    #@2de
    iget v6, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    #@2e0
    if-le v5, v6, :cond_19

    #@2e2
    goto/16 :goto_6

    #@2e4
    .line 1163
    :pswitch_data_0
    .packed-switch 0x2190
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final parseSet(Ljava/lang/String;Ljava/text/ParsePosition;)C
    .locals 3
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 1448
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->parseData:Landroid/icu/text/TransliteratorParser$ParseData;

    #@4
    invoke-direct {v0, p1, p2, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V

    #@7
    .line 1449
    .local v0, "set":Landroid/icu/text/UnicodeSet;
    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    #@9
    iget-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    #@b
    if-lt v1, v2, :cond_0

    #@d
    .line 1450
    new-instance v1, Ljava/lang/RuntimeException;

    #@f
    const-string/jumbo v2, "Private use variables exhausted"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 1452
    :cond_0
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    #@19
    .line 1453
    invoke-virtual {p0, v0}, Landroid/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    #@1c
    move-result v1

    #@1d
    return v1
.end method

.method private pragmaMaximumBackup(I)V
    .locals 2
    .param p1, "backup"    # I

    #@0
    .prologue
    .line 1342
    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    #@2
    const-string/jumbo v1, "use maximum backup pragma not implemented yet"

    #@5
    invoke-direct {v0, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method private pragmaNormalizeRules(Landroid/icu/text/Normalizer$Mode;)V
    .locals 2
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;

    #@0
    .prologue
    .line 1356
    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    #@2
    const-string/jumbo v1, "use normalize rules pragma not implemented yet"

    #@5
    invoke-direct {v0, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method static resemblesPragma(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "rule"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1368
    const-string/jumbo v1, "use "

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {p0, p1, p2, v1, v2}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    #@8
    move-result v1

    #@9
    if-ltz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method static final ruleEnd(Ljava/lang/String;II)I
    .locals 2
    .param p0, "rule"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 1436
    const-string/jumbo v1, ";"

    #@3
    invoke-static {p0, p1, p2, v1}, Landroid/icu/impl/Utility;->quotedIndexOf(Ljava/lang/String;IILjava/lang/String;)I

    #@6
    move-result v0

    #@7
    .line 1437
    .local v0, "end":I
    if-gez v0, :cond_0

    #@9
    .line 1438
    move v0, p2

    #@a
    .line 1440
    :cond_0
    return v0
.end method

.method private setVariableRange(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1309
    if-gt p1, p2, :cond_0

    #@2
    if-gez p1, :cond_1

    #@4
    .line 1310
    :cond_0
    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Invalid variable range "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ", "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 1309
    :cond_1
    const v0, 0xffff

    #@2c
    if-gt p2, v0, :cond_0

    #@2e
    .line 1313
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@30
    int-to-char v1, p1

    #@31
    iput-char v1, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    #@33
    .line 1315
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@35
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@38
    move-result v0

    #@39
    if-nez v0, :cond_2

    #@3b
    .line 1316
    int-to-char v0, p1

    #@3c
    iput-char v0, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    #@3e
    .line 1317
    add-int/lit8 v0, p2, 0x1

    #@40
    int-to-char v0, v0

    #@41
    iput-char v0, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    #@43
    .line 1308
    :cond_2
    return-void
.end method

.method static final syntaxError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "start"    # I

    #@0
    .prologue
    .line 1430
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    invoke-static {p1, p2, v1}, Landroid/icu/text/TransliteratorParser;->ruleEnd(Ljava/lang/String;II)I

    #@7
    move-result v0

    #@8
    .line 1431
    .local v0, "end":I
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, " in \""

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    .line 1432
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v3}, Landroid/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 1431
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 1432
    const/16 v3, 0x22

    #@28
    .line 1431
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v1, v2}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v1
.end method


# virtual methods
.method generateStandInFor(Ljava/lang/Object;)C
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1465
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    #@3
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_1

    #@9
    .line 1466
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    #@b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    if-ne v1, p1, :cond_0

    #@11
    .line 1467
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@13
    iget-char v1, v1, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    #@15
    add-int/2addr v1, v0

    #@16
    int-to-char v1, v1

    #@17
    return v1

    #@18
    .line 1465
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1471
    :cond_1
    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    #@1d
    iget-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    #@1f
    if-lt v1, v2, :cond_2

    #@21
    .line 1472
    new-instance v1, Ljava/lang/RuntimeException;

    #@23
    const-string/jumbo v2, "Variable range exhausted"

    #@26
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 1474
    :cond_2
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    #@2c
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    .line 1475
    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    #@31
    add-int/lit8 v2, v1, 0x1

    #@33
    int-to-char v2, v2

    #@34
    iput-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    #@36
    int-to-char v1, v1

    #@37
    return v1
.end method

.method getDotStandIn()C
    .locals 2

    #@0
    .prologue
    .line 1525
    iget v0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 1526
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@7
    const-string/jumbo v1, "[^[:Zp:][:Zl:]\\r\\n$]"

    #@a
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {p0, v0}, Landroid/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    #@13
    .line 1528
    :cond_0
    iget v0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    #@15
    int-to-char v0, v0

    #@16
    return v0
.end method

.method public getSegmentStandin(I)C
    .locals 3
    .param p1, "seg"    # I

    #@0
    .prologue
    .line 1482
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    #@5
    move-result v1

    #@6
    if-ge v1, p1, :cond_0

    #@8
    .line 1483
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    #@a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    #@d
    .line 1485
    :cond_0
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    #@f
    add-int/lit8 v2, p1, -0x1

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 1486
    .local v0, "c":C
    if-nez v0, :cond_2

    #@17
    .line 1487
    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    #@19
    iget-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    #@1b
    if-lt v1, v2, :cond_1

    #@1d
    .line 1488
    new-instance v1, Ljava/lang/RuntimeException;

    #@1f
    const-string/jumbo v2, "Variable range exhausted"

    #@22
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 1490
    :cond_1
    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    #@28
    add-int/lit8 v2, v1, 0x1

    #@2a
    int-to-char v2, v2

    #@2b
    iput-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    #@2d
    int-to-char v0, v1

    #@2e
    .line 1494
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    #@30
    const/4 v2, 0x0

    #@31
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@34
    .line 1495
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    #@36
    add-int/lit8 v2, p1, -0x1

    #@38
    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    #@3b
    .line 1497
    :cond_2
    return v0
.end method

.method public parse(Ljava/lang/String;I)V
    .locals 3
    .param p1, "rules"    # Ljava/lang/String;
    .param p2, "dir"    # I

    #@0
    .prologue
    .line 868
    new-instance v0, Landroid/icu/text/TransliteratorParser$RuleArray;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object p1, v1, v2

    #@8
    invoke-direct {v0, v1}, Landroid/icu/text/TransliteratorParser$RuleArray;-><init>([Ljava/lang/String;)V

    #@b
    invoke-virtual {p0, v0, p2}, Landroid/icu/text/TransliteratorParser;->parseRules(Landroid/icu/text/TransliteratorParser$RuleBody;I)V

    #@e
    .line 867
    return-void
.end method

.method parseRules(Landroid/icu/text/TransliteratorParser$RuleBody;I)V
    .locals 29
    .param p1, "ruleArray"    # Landroid/icu/text/TransliteratorParser$RuleBody;
    .param p2, "dir"    # I

    #@0
    .prologue
    .line 897
    const/16 v18, 0x1

    #@2
    .line 898
    .local v18, "parsingIDs":Z
    const/16 v24, 0x0

    #@4
    .line 900
    .local v24, "ruleCount":I
    new-instance v26, Ljava/util/ArrayList;

    #@6
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    #@9
    move-object/from16 v0, v26

    #@b
    move-object/from16 v1, p0

    #@d
    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@f
    .line 901
    new-instance v26, Ljava/util/ArrayList;

    #@11
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    #@14
    move-object/from16 v0, v26

    #@16
    move-object/from16 v1, p0

    #@18
    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@1a
    .line 902
    const/16 v26, 0x0

    #@1c
    move-object/from16 v0, v26

    #@1e
    move-object/from16 v1, p0

    #@20
    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@22
    .line 903
    move/from16 v0, p2

    #@24
    move-object/from16 v1, p0

    #@26
    iput v0, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    #@28
    .line 904
    const/16 v26, 0x0

    #@2a
    move-object/from16 v0, v26

    #@2c
    move-object/from16 v1, p0

    #@2e
    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@30
    .line 905
    new-instance v26, Ljava/util/ArrayList;

    #@32
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    #@35
    move-object/from16 v0, v26

    #@37
    move-object/from16 v1, p0

    #@39
    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    #@3b
    .line 906
    new-instance v26, Ljava/util/HashMap;

    #@3d
    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    #@40
    move-object/from16 v0, v26

    #@42
    move-object/from16 v1, p0

    #@44
    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    #@46
    .line 907
    new-instance v26, Landroid/icu/text/TransliteratorParser$ParseData;

    #@48
    const/16 v27, 0x0

    #@4a
    move-object/from16 v0, v26

    #@4c
    move-object/from16 v1, p0

    #@4e
    move-object/from16 v2, v27

    #@50
    invoke-direct {v0, v1, v2}, Landroid/icu/text/TransliteratorParser$ParseData;-><init>(Landroid/icu/text/TransliteratorParser;Landroid/icu/text/TransliteratorParser$ParseData;)V

    #@53
    move-object/from16 v0, v26

    #@55
    move-object/from16 v1, p0

    #@57
    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->parseData:Landroid/icu/text/TransliteratorParser$ParseData;

    #@59
    .line 909
    new-instance v10, Ljava/util/ArrayList;

    #@5b
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@5e
    .line 910
    .local v10, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/RuntimeException;>;"
    const/4 v9, 0x0

    #@5f
    .line 912
    .local v9, "errorCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/TransliteratorParser$RuleBody;->reset()V

    #@62
    .line 914
    new-instance v15, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    .line 921
    .local v15, "idBlockResult":Ljava/lang/StringBuilder;
    const/16 v26, 0x0

    #@69
    move-object/from16 v0, v26

    #@6b
    move-object/from16 v1, p0

    #@6d
    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@6f
    .line 922
    const/4 v6, -0x1

    #@70
    .line 926
    .local v6, "compoundFilterOffset":I
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/TransliteratorParser$RuleBody;->nextLine()Ljava/lang/String;

    #@73
    move-result-object v23

    #@74
    .line 927
    .local v23, "rule":Ljava/lang/String;
    if-nez v23, :cond_2

    #@76
    .line 1059
    :goto_1
    if-eqz v18, :cond_18

    #@78
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    #@7b
    move-result v26

    #@7c
    if-lez v26, :cond_18

    #@7e
    .line 1060
    move-object/from16 v0, p0

    #@80
    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    #@82
    move/from16 v26, v0

    #@84
    if-nez v26, :cond_17

    #@86
    .line 1061
    move-object/from16 v0, p0

    #@88
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@8a
    move-object/from16 v26, v0

    #@8c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v27

    #@90
    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@93
    .line 1073
    :cond_1
    :goto_2
    const/4 v12, 0x0

    #@94
    .local v12, "i":I
    :goto_3
    move-object/from16 v0, p0

    #@96
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@98
    move-object/from16 v26, v0

    #@9a
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    #@9d
    move-result v26

    #@9e
    move/from16 v0, v26

    #@a0
    if-ge v12, v0, :cond_1a

    #@a2
    .line 1074
    move-object/from16 v0, p0

    #@a4
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@a6
    move-object/from16 v26, v0

    #@a8
    move-object/from16 v0, v26

    #@aa
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@ad
    move-result-object v7

    #@ae
    check-cast v7, Landroid/icu/text/RuleBasedTransliterator$Data;

    #@b0
    .line 1075
    .local v7, "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    move-object/from16 v0, p0

    #@b2
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    #@b4
    move-object/from16 v26, v0

    #@b6
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    #@b9
    move-result v26

    #@ba
    move/from16 v0, v26

    #@bc
    new-array v0, v0, [Ljava/lang/Object;

    #@be
    move-object/from16 v26, v0

    #@c0
    move-object/from16 v0, v26

    #@c2
    iput-object v0, v7, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    #@c4
    .line 1076
    move-object/from16 v0, p0

    #@c6
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    #@c8
    move-object/from16 v26, v0

    #@ca
    iget-object v0, v7, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    #@cc
    move-object/from16 v27, v0

    #@ce
    invoke-interface/range {v26 .. v27}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d1
    .line 1077
    new-instance v26, Ljava/util/HashMap;

    #@d3
    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    #@d6
    move-object/from16 v0, v26

    #@d8
    iput-object v0, v7, Landroid/icu/text/RuleBasedTransliterator$Data;->variableNames:Ljava/util/Map;

    #@da
    .line 1078
    iget-object v0, v7, Landroid/icu/text/RuleBasedTransliterator$Data;->variableNames:Ljava/util/Map;

    #@dc
    move-object/from16 v26, v0

    #@de
    move-object/from16 v0, p0

    #@e0
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    #@e2
    move-object/from16 v27, v0

    #@e4
    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@e7
    .line 1073
    add-int/lit8 v12, v12, 0x1

    #@e9
    goto :goto_3

    #@ea
    .line 930
    .end local v7    # "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    .end local v12    # "i":I
    :cond_2
    const/16 v19, 0x0

    #@ec
    .line 931
    .local v19, "pos":I
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    #@ef
    move-result v16

    #@f0
    .local v16, "limit":I
    move/from16 v20, v19

    #@f2
    .line 932
    .end local v19    # "pos":I
    .local v20, "pos":I
    :goto_4
    move/from16 v0, v20

    #@f4
    move/from16 v1, v16

    #@f6
    if-ge v0, v1, :cond_23

    #@f8
    .line 933
    add-int/lit8 v19, v20, 0x1

    #@fa
    .end local v20    # "pos":I
    .restart local v19    # "pos":I
    move-object/from16 v0, v23

    #@fc
    move/from16 v1, v20

    #@fe
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@101
    move-result v5

    #@102
    .line 934
    .local v5, "c":C
    invoke-static {v5}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@105
    move-result v26

    #@106
    if-eqz v26, :cond_3

    #@108
    move/from16 v20, v19

    #@10a
    .line 935
    .end local v19    # "pos":I
    .restart local v20    # "pos":I
    goto :goto_4

    #@10b
    .line 938
    .end local v20    # "pos":I
    .restart local v19    # "pos":I
    :cond_3
    const/16 v26, 0x23

    #@10d
    move/from16 v0, v26

    #@10f
    if-ne v5, v0, :cond_4

    #@111
    .line 939
    const-string/jumbo v26, "\n"

    #@114
    move-object/from16 v0, v23

    #@116
    move-object/from16 v1, v26

    #@118
    move/from16 v2, v19

    #@11a
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@11d
    move-result v26

    #@11e
    add-int/lit8 v19, v26, 0x1

    #@120
    .line 940
    if-eqz v19, :cond_0

    #@122
    move/from16 v20, v19

    #@124
    .line 943
    .end local v19    # "pos":I
    .restart local v20    # "pos":I
    goto :goto_4

    #@125
    .line 947
    .end local v20    # "pos":I
    .restart local v19    # "pos":I
    :cond_4
    const/16 v26, 0x3b

    #@127
    move/from16 v0, v26

    #@129
    if-ne v5, v0, :cond_5

    #@12b
    move/from16 v20, v19

    #@12d
    .line 948
    .end local v19    # "pos":I
    .restart local v20    # "pos":I
    goto :goto_4

    #@12e
    .line 955
    .end local v20    # "pos":I
    .restart local v19    # "pos":I
    :cond_5
    add-int/lit8 v24, v24, 0x1

    #@130
    .line 959
    add-int/lit8 v19, v19, -0x1

    #@132
    .line 962
    add-int/lit8 v26, v19, 0x2

    #@134
    add-int/lit8 v26, v26, 0x1

    #@136
    move/from16 v0, v26

    #@138
    move/from16 v1, v16

    #@13a
    if-gt v0, v1, :cond_11

    #@13c
    .line 963
    :try_start_0
    const-string/jumbo v26, "::"

    #@13f
    const/16 v27, 0x0

    #@141
    const/16 v28, 0x2

    #@143
    move-object/from16 v0, v23

    #@145
    move/from16 v1, v19

    #@147
    move-object/from16 v2, v26

    #@149
    move/from16 v3, v27

    #@14b
    move/from16 v4, v28

    #@14d
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@150
    move-result v26

    #@151
    .line 962
    if-eqz v26, :cond_11

    #@153
    .line 964
    add-int/lit8 v19, v19, 0x2

    #@155
    .line 965
    move-object/from16 v0, v23

    #@157
    move/from16 v1, v19

    #@159
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@15c
    move-result v5

    #@15d
    .line 966
    :goto_5
    invoke-static {v5}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@160
    move-result v26

    #@161
    if-eqz v26, :cond_6

    #@163
    move/from16 v0, v19

    #@165
    move/from16 v1, v16

    #@167
    if-ge v0, v1, :cond_6

    #@169
    .line 967
    add-int/lit8 v19, v19, 0x1

    #@16b
    .line 968
    move-object/from16 v0, v23

    #@16d
    move/from16 v1, v19

    #@16f
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@172
    move-result v5

    #@173
    goto :goto_5

    #@174
    .line 970
    :cond_6
    const/16 v26, 0x1

    #@176
    move/from16 v0, v26

    #@178
    new-array v0, v0, [I

    #@17a
    move-object/from16 v17, v0

    #@17c
    const/16 v26, 0x0

    #@17e
    aput v19, v17, v26

    #@180
    .line 972
    .local v17, "p":[I
    if-nez v18, :cond_8

    #@182
    .line 973
    move-object/from16 v0, p0

    #@184
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@186
    move-object/from16 v26, v0

    #@188
    if-eqz v26, :cond_7

    #@18a
    .line 974
    move-object/from16 v0, p0

    #@18c
    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    #@18e
    move/from16 v26, v0

    #@190
    if-nez v26, :cond_a

    #@192
    .line 975
    move-object/from16 v0, p0

    #@194
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@196
    move-object/from16 v26, v0

    #@198
    move-object/from16 v0, p0

    #@19a
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@19c
    move-object/from16 v27, v0

    #@19e
    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1a1
    .line 978
    :goto_6
    const/16 v26, 0x0

    #@1a3
    move-object/from16 v0, v26

    #@1a5
    move-object/from16 v1, p0

    #@1a7
    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@1a9
    .line 980
    :cond_7
    const/16 v18, 0x1

    #@1ab
    .line 985
    :cond_8
    move-object/from16 v0, p0

    #@1ad
    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    #@1af
    move/from16 v26, v0

    #@1b1
    .line 984
    move-object/from16 v0, v23

    #@1b3
    move-object/from16 v1, v17

    #@1b5
    move/from16 v2, v26

    #@1b7
    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorIDParser;->parseSingleID(Ljava/lang/String;[II)Landroid/icu/text/TransliteratorIDParser$SingleID;

    #@1ba
    move-result-object v14

    #@1bb
    .line 986
    .local v14, "id":Landroid/icu/text/TransliteratorIDParser$SingleID;
    const/16 v26, 0x0

    #@1bd
    aget v26, v17, v26

    #@1bf
    move/from16 v0, v26

    #@1c1
    move/from16 v1, v19

    #@1c3
    if-eq v0, v1, :cond_c

    #@1c5
    const/16 v26, 0x3b

    #@1c7
    move-object/from16 v0, v23

    #@1c9
    move-object/from16 v1, v17

    #@1cb
    move/from16 v2, v26

    #@1cd
    invoke-static {v0, v1, v2}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    #@1d0
    move-result v26

    #@1d1
    if-eqz v26, :cond_c

    #@1d3
    .line 989
    move-object/from16 v0, p0

    #@1d5
    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    #@1d7
    move/from16 v26, v0

    #@1d9
    if-nez v26, :cond_b

    #@1db
    .line 990
    iget-object v0, v14, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    #@1dd
    move-object/from16 v26, v0

    #@1df
    move-object/from16 v0, v26

    #@1e1
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v26

    #@1e5
    const/16 v27, 0x3b

    #@1e7
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1ea
    .line 1016
    :cond_9
    :goto_7
    const/16 v26, 0x0

    #@1ec
    aget v19, v17, v26

    #@1ee
    .end local v14    # "id":Landroid/icu/text/TransliteratorIDParser$SingleID;
    .end local v17    # "p":[I
    :goto_8
    move/from16 v20, v19

    #@1f0
    .end local v19    # "pos":I
    .restart local v20    # "pos":I
    goto/16 :goto_4

    #@1f2
    .line 977
    .end local v20    # "pos":I
    .restart local v17    # "p":[I
    .restart local v19    # "pos":I
    :cond_a
    move-object/from16 v0, p0

    #@1f4
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@1f6
    move-object/from16 v26, v0

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@1fc
    move-object/from16 v27, v0

    #@1fe
    const/16 v28, 0x0

    #@200
    move-object/from16 v0, v26

    #@202
    move/from16 v1, v28

    #@204
    move-object/from16 v2, v27

    #@206
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@209
    goto :goto_6

    #@20a
    .line 1045
    .end local v17    # "p":[I
    :catch_0
    move-exception v8

    #@20b
    .line 1046
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const/16 v26, 0x1e

    #@20d
    move/from16 v0, v26

    #@20f
    if-ne v9, v0, :cond_16

    #@211
    .line 1047
    new-instance v13, Landroid/icu/impl/IllegalIcuArgumentException;

    #@213
    const-string/jumbo v26, "\nMore than 30 errors; further messages squelched"

    #@216
    move-object/from16 v0, v26

    #@218
    invoke-direct {v13, v0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    #@21b
    .line 1048
    .local v13, "icuEx":Landroid/icu/impl/IllegalIcuArgumentException;
    invoke-virtual {v13, v8}, Landroid/icu/impl/IllegalIcuArgumentException;->initCause(Ljava/lang/Throwable;)Landroid/icu/impl/IllegalIcuArgumentException;

    #@21e
    .line 1049
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@221
    goto/16 :goto_1

    #@223
    .line 992
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v13    # "icuEx":Landroid/icu/impl/IllegalIcuArgumentException;
    .restart local v14    # "id":Landroid/icu/text/TransliteratorIDParser$SingleID;
    .restart local v17    # "p":[I
    :cond_b
    :try_start_1
    new-instance v26, Ljava/lang/StringBuilder;

    #@225
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@228
    iget-object v0, v14, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    #@22a
    move-object/from16 v27, v0

    #@22c
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22f
    move-result-object v26

    #@230
    const/16 v27, 0x3b

    #@232
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@235
    move-result-object v26

    #@236
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@239
    move-result-object v26

    #@23a
    const/16 v27, 0x0

    #@23c
    move/from16 v0, v27

    #@23e
    move-object/from16 v1, v26

    #@240
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@243
    goto :goto_7

    #@244
    .line 997
    :cond_c
    const/16 v26, 0x1

    #@246
    move/from16 v0, v26

    #@248
    new-array v0, v0, [I

    #@24a
    move-object/from16 v25, v0

    #@24c
    const/16 v26, -0x1

    #@24e
    const/16 v27, 0x0

    #@250
    aput v26, v25, v27

    #@252
    .line 998
    .local v25, "withParens":[I
    move-object/from16 v0, p0

    #@254
    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    #@256
    move/from16 v26, v0

    #@258
    const/16 v27, 0x0

    #@25a
    move-object/from16 v0, v23

    #@25c
    move-object/from16 v1, v17

    #@25e
    move/from16 v2, v26

    #@260
    move-object/from16 v3, v25

    #@262
    move-object/from16 v4, v27

    #@264
    invoke-static {v0, v1, v2, v3, v4}, Landroid/icu/text/TransliteratorIDParser;->parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;

    #@267
    move-result-object v11

    #@268
    .line 999
    .local v11, "f":Landroid/icu/text/UnicodeSet;
    if-eqz v11, :cond_10

    #@26a
    const/16 v26, 0x3b

    #@26c
    move-object/from16 v0, v23

    #@26e
    move-object/from16 v1, v17

    #@270
    move/from16 v2, v26

    #@272
    invoke-static {v0, v1, v2}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    #@275
    move-result v26

    #@276
    if-eqz v26, :cond_10

    #@278
    .line 1000
    move-object/from16 v0, p0

    #@27a
    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    #@27c
    move/from16 v26, v0

    #@27e
    if-nez v26, :cond_e

    #@280
    const/16 v26, 0x1

    #@282
    move/from16 v27, v26

    #@284
    .line 1001
    :goto_9
    const/16 v26, 0x0

    #@286
    aget v26, v25, v26

    #@288
    if-nez v26, :cond_f

    #@28a
    const/16 v26, 0x1

    #@28c
    .line 1000
    :goto_a
    move/from16 v0, v27

    #@28e
    move/from16 v1, v26

    #@290
    if-ne v0, v1, :cond_9

    #@292
    .line 1002
    move-object/from16 v0, p0

    #@294
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@296
    move-object/from16 v26, v0

    #@298
    if-eqz v26, :cond_d

    #@29a
    .line 1004
    const-string/jumbo v26, "Multiple global filters"

    #@29d
    move-object/from16 v0, v26

    #@29f
    move-object/from16 v1, v23

    #@2a1
    move/from16 v2, v19

    #@2a3
    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@2a6
    .line 1006
    :cond_d
    move-object/from16 v0, p0

    #@2a8
    iput-object v11, v0, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@2aa
    .line 1007
    move/from16 v6, v24

    #@2ac
    goto/16 :goto_7

    #@2ae
    .line 1000
    :cond_e
    const/16 v26, 0x0

    #@2b0
    move/from16 v27, v26

    #@2b2
    goto :goto_9

    #@2b3
    .line 1001
    :cond_f
    const/16 v26, 0x0

    #@2b5
    goto :goto_a

    #@2b6
    .line 1012
    :cond_10
    const-string/jumbo v26, "Invalid ::ID"

    #@2b9
    move-object/from16 v0, v26

    #@2bb
    move-object/from16 v1, v23

    #@2bd
    move/from16 v2, v19

    #@2bf
    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@2c2
    goto/16 :goto_7

    #@2c4
    .line 1018
    .end local v11    # "f":Landroid/icu/text/UnicodeSet;
    .end local v14    # "id":Landroid/icu/text/TransliteratorIDParser$SingleID;
    .end local v17    # "p":[I
    .end local v25    # "withParens":[I
    :cond_11
    if-eqz v18, :cond_12

    #@2c6
    .line 1019
    move-object/from16 v0, p0

    #@2c8
    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    #@2ca
    move/from16 v26, v0

    #@2cc
    if-nez v26, :cond_14

    #@2ce
    .line 1020
    move-object/from16 v0, p0

    #@2d0
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@2d2
    move-object/from16 v26, v0

    #@2d4
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d7
    move-result-object v27

    #@2d8
    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2db
    .line 1023
    :goto_b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    #@2de
    move-result v26

    #@2df
    const/16 v27, 0x0

    #@2e1
    move/from16 v0, v27

    #@2e3
    move/from16 v1, v26

    #@2e5
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@2e8
    .line 1024
    const/16 v18, 0x0

    #@2ea
    .line 1025
    new-instance v26, Landroid/icu/text/RuleBasedTransliterator$Data;

    #@2ec
    invoke-direct/range {v26 .. v26}, Landroid/icu/text/RuleBasedTransliterator$Data;-><init>()V

    #@2ef
    move-object/from16 v0, v26

    #@2f1
    move-object/from16 v1, p0

    #@2f3
    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@2f5
    .line 1031
    const v26, 0xf000

    #@2f8
    const v27, 0xf8ff

    #@2fb
    move-object/from16 v0, p0

    #@2fd
    move/from16 v1, v26

    #@2ff
    move/from16 v2, v27

    #@301
    invoke-direct {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->setVariableRange(II)V

    #@304
    .line 1034
    :cond_12
    move-object/from16 v0, v23

    #@306
    move/from16 v1, v19

    #@308
    move/from16 v2, v16

    #@30a
    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->resemblesPragma(Ljava/lang/String;II)Z

    #@30d
    move-result v26

    #@30e
    if-eqz v26, :cond_15

    #@310
    .line 1035
    move-object/from16 v0, p0

    #@312
    move-object/from16 v1, v23

    #@314
    move/from16 v2, v19

    #@316
    move/from16 v3, v16

    #@318
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TransliteratorParser;->parsePragma(Ljava/lang/String;II)I

    #@31b
    move-result v21

    #@31c
    .line 1036
    .local v21, "ppp":I
    if-gez v21, :cond_13

    #@31e
    .line 1037
    const-string/jumbo v26, "Unrecognized pragma"

    #@321
    move-object/from16 v0, v26

    #@323
    move-object/from16 v1, v23

    #@325
    move/from16 v2, v19

    #@327
    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    #@32a
    .line 1039
    :cond_13
    move/from16 v19, v21

    #@32c
    goto/16 :goto_8

    #@32e
    .line 1022
    .end local v21    # "ppp":I
    :cond_14
    move-object/from16 v0, p0

    #@330
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@332
    move-object/from16 v26, v0

    #@334
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@337
    move-result-object v27

    #@338
    const/16 v28, 0x0

    #@33a
    move-object/from16 v0, v26

    #@33c
    move/from16 v1, v28

    #@33e
    move-object/from16 v2, v27

    #@340
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@343
    goto :goto_b

    #@344
    .line 1042
    :cond_15
    move-object/from16 v0, p0

    #@346
    move-object/from16 v1, v23

    #@348
    move/from16 v2, v19

    #@34a
    move/from16 v3, v16

    #@34c
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TransliteratorParser;->parseRule(Ljava/lang/String;II)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    #@34f
    move-result v19

    #@350
    goto/16 :goto_8

    #@352
    .line 1052
    .restart local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_16
    invoke-virtual {v8}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    #@355
    .line 1053
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@358
    .line 1054
    add-int/lit8 v9, v9, 0x1

    #@35a
    .line 1055
    move-object/from16 v0, v23

    #@35c
    move/from16 v1, v19

    #@35e
    move/from16 v2, v16

    #@360
    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->ruleEnd(Ljava/lang/String;II)I

    #@363
    move-result v26

    #@364
    add-int/lit8 v19, v26, 0x1

    #@366
    goto/16 :goto_8

    #@368
    .line 1063
    .end local v5    # "c":C
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v16    # "limit":I
    .end local v19    # "pos":I
    :cond_17
    move-object/from16 v0, p0

    #@36a
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@36c
    move-object/from16 v26, v0

    #@36e
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@371
    move-result-object v27

    #@372
    const/16 v28, 0x0

    #@374
    move-object/from16 v0, v26

    #@376
    move/from16 v1, v28

    #@378
    move-object/from16 v2, v27

    #@37a
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@37d
    goto/16 :goto_2

    #@37f
    .line 1065
    :cond_18
    if-nez v18, :cond_1

    #@381
    move-object/from16 v0, p0

    #@383
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@385
    move-object/from16 v26, v0

    #@387
    if-eqz v26, :cond_1

    #@389
    .line 1066
    move-object/from16 v0, p0

    #@38b
    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    #@38d
    move/from16 v26, v0

    #@38f
    if-nez v26, :cond_19

    #@391
    .line 1067
    move-object/from16 v0, p0

    #@393
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@395
    move-object/from16 v26, v0

    #@397
    move-object/from16 v0, p0

    #@399
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@39b
    move-object/from16 v27, v0

    #@39d
    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a0
    goto/16 :goto_2

    #@3a2
    .line 1069
    :cond_19
    move-object/from16 v0, p0

    #@3a4
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@3a6
    move-object/from16 v26, v0

    #@3a8
    move-object/from16 v0, p0

    #@3aa
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@3ac
    move-object/from16 v27, v0

    #@3ae
    const/16 v28, 0x0

    #@3b0
    move-object/from16 v0, v26

    #@3b2
    move/from16 v1, v28

    #@3b4
    move-object/from16 v2, v27

    #@3b6
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@3b9
    goto/16 :goto_2

    #@3bb
    .line 1080
    .restart local v12    # "i":I
    :cond_1a
    const/16 v26, 0x0

    #@3bd
    move-object/from16 v0, v26

    #@3bf
    move-object/from16 v1, p0

    #@3c1
    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    #@3c3
    .line 1084
    :try_start_2
    move-object/from16 v0, p0

    #@3c5
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@3c7
    move-object/from16 v26, v0

    #@3c9
    if-eqz v26, :cond_1e

    #@3cb
    .line 1085
    move-object/from16 v0, p0

    #@3cd
    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    #@3cf
    move/from16 v26, v0

    #@3d1
    if-nez v26, :cond_1d

    #@3d3
    .line 1086
    const/16 v26, 0x1

    #@3d5
    move/from16 v0, v26

    #@3d7
    if-eq v6, v0, :cond_1d

    #@3d9
    .line 1089
    :cond_1b
    new-instance v26, Landroid/icu/impl/IllegalIcuArgumentException;

    #@3db
    const-string/jumbo v27, "Compound filters misplaced"

    #@3de
    invoke-direct/range {v26 .. v27}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    #@3e1
    throw v26
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    #@3e2
    .line 1101
    :catch_1
    move-exception v8

    #@3e3
    .line 1102
    .restart local v8    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    #@3e6
    .line 1103
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3e9
    .line 1106
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1c
    :goto_c
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@3ec
    move-result v26

    #@3ed
    if-eqz v26, :cond_22

    #@3ef
    .line 1107
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@3f2
    move-result v26

    #@3f3
    add-int/lit8 v12, v26, -0x1

    #@3f5
    :goto_d
    if-lez v12, :cond_21

    #@3f7
    .line 1108
    add-int/lit8 v26, v12, -0x1

    #@3f9
    move/from16 v0, v26

    #@3fb
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3fe
    move-result-object v22

    #@3ff
    check-cast v22, Ljava/lang/RuntimeException;

    #@401
    .line 1109
    .local v22, "previous":Ljava/lang/RuntimeException;
    :goto_e
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@404
    move-result-object v26

    #@405
    if-eqz v26, :cond_20

    #@407
    .line 1110
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@40a
    move-result-object v22

    #@40b
    .end local v22    # "previous":Ljava/lang/RuntimeException;
    check-cast v22, Ljava/lang/RuntimeException;

    #@40d
    .restart local v22    # "previous":Ljava/lang/RuntimeException;
    goto :goto_e

    #@40e
    .line 1087
    .end local v22    # "previous":Ljava/lang/RuntimeException;
    :cond_1d
    :try_start_3
    move-object/from16 v0, p0

    #@410
    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    #@412
    move/from16 v26, v0

    #@414
    const/16 v27, 0x1

    #@416
    move/from16 v0, v26

    #@418
    move/from16 v1, v27

    #@41a
    if-ne v0, v1, :cond_1e

    #@41c
    .line 1088
    move/from16 v0, v24

    #@41e
    if-ne v6, v0, :cond_1b

    #@420
    .line 1093
    :cond_1e
    const/4 v12, 0x0

    #@421
    :goto_f
    move-object/from16 v0, p0

    #@423
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@425
    move-object/from16 v26, v0

    #@427
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    #@42a
    move-result v26

    #@42b
    move/from16 v0, v26

    #@42d
    if-ge v12, v0, :cond_1f

    #@42f
    .line 1094
    move-object/from16 v0, p0

    #@431
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    #@433
    move-object/from16 v26, v0

    #@435
    move-object/from16 v0, v26

    #@437
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@43a
    move-result-object v7

    #@43b
    check-cast v7, Landroid/icu/text/RuleBasedTransliterator$Data;

    #@43d
    .line 1095
    .restart local v7    # "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    iget-object v0, v7, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    #@43f
    move-object/from16 v26, v0

    #@441
    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/TransliterationRuleSet;->freeze()V

    #@444
    .line 1093
    add-int/lit8 v12, v12, 0x1

    #@446
    goto :goto_f

    #@447
    .line 1098
    .end local v7    # "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    :cond_1f
    move-object/from16 v0, p0

    #@449
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@44b
    move-object/from16 v26, v0

    #@44d
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    #@450
    move-result v26

    #@451
    const/16 v27, 0x1

    #@453
    move/from16 v0, v26

    #@455
    move/from16 v1, v27

    #@457
    if-ne v0, v1, :cond_1c

    #@459
    move-object/from16 v0, p0

    #@45b
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@45d
    move-object/from16 v26, v0

    #@45f
    const/16 v27, 0x0

    #@461
    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@464
    move-result-object v26

    #@465
    check-cast v26, Ljava/lang/String;

    #@467
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    #@46a
    move-result v26

    #@46b
    if-nez v26, :cond_1c

    #@46d
    .line 1099
    move-object/from16 v0, p0

    #@46f
    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    #@471
    move-object/from16 v26, v0

    #@473
    const/16 v27, 0x0

    #@475
    invoke-interface/range {v26 .. v27}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    #@478
    goto/16 :goto_c

    #@47a
    .line 1112
    .restart local v22    # "previous":Ljava/lang/RuntimeException;
    :cond_20
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@47d
    move-result-object v26

    #@47e
    check-cast v26, Ljava/lang/Throwable;

    #@480
    move-object/from16 v0, v22

    #@482
    move-object/from16 v1, v26

    #@484
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@487
    .line 1107
    add-int/lit8 v12, v12, -0x1

    #@489
    goto/16 :goto_d

    #@48b
    .line 1114
    .end local v22    # "previous":Ljava/lang/RuntimeException;
    :cond_21
    const/16 v26, 0x0

    #@48d
    move/from16 v0, v26

    #@48f
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@492
    move-result-object v26

    #@493
    check-cast v26, Ljava/lang/RuntimeException;

    #@495
    throw v26

    #@496
    .line 896
    :cond_22
    return-void

    #@497
    .end local v12    # "i":I
    .restart local v16    # "limit":I
    .restart local v20    # "pos":I
    :cond_23
    move/from16 v19, v20

    #@499
    .end local v20    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_0
.end method

.method public setSegmentObject(ILandroid/icu/text/StringMatcher;)V
    .locals 3
    .param p1, "seg"    # I
    .param p2, "obj"    # Landroid/icu/text/StringMatcher;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1508
    :goto_0
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    #@3
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@6
    move-result v1

    #@7
    if-ge v1, p1, :cond_0

    #@9
    .line 1509
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    #@b
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e
    goto :goto_0

    #@f
    .line 1511
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/text/TransliteratorParser;->getSegmentStandin(I)C

    #@12
    move-result v1

    #@13
    iget-object v2, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    #@15
    iget-char v2, v2, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    #@17
    sub-int v0, v1, v2

    #@19
    .line 1512
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    #@1b
    add-int/lit8 v2, p1, -0x1

    #@1d
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    if-nez v1, :cond_1

    #@23
    .line 1513
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    #@25
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    if-eqz v1, :cond_2

    #@2b
    .line 1514
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    #@2d
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    #@30
    throw v1

    #@31
    .line 1516
    :cond_2
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    #@33
    add-int/lit8 v2, p1, -0x1

    #@35
    invoke-interface {v1, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 1517
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    #@3a
    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 1503
    return-void
.end method
