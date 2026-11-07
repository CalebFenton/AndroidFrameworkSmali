.class Landroid/icu/text/TransliteratorParser;
.super Ljava/lang/Object;
.source "TransliteratorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TransliteratorParser$RuleArray;,
        Landroid/icu/text/TransliteratorParser$RuleBody;,
        Landroid/icu/text/TransliteratorParser$ParseData;,
        Landroid/icu/text/TransliteratorParser$RuleHalf;
    }
.end annotation


# static fields
.field private static final blacklist ALT_FORWARD_RULE_OP:C = '\u2192'

.field private static final blacklist ALT_FUNCTION:C = '\u2206'

.field private static final blacklist ALT_FWDREV_RULE_OP:C = '\u2194'

.field private static final blacklist ALT_REVERSE_RULE_OP:C = '\u2190'

.field private static final blacklist ANCHOR_START:C = '^'

.field private static final blacklist CONTEXT_ANTE:C = '{'

.field private static final blacklist CONTEXT_POST:C = '}'

.field private static final blacklist CURSOR_OFFSET:C = '@'

.field private static final blacklist CURSOR_POS:C = '|'

.field private static final blacklist DOT:C = '.'

.field private static final blacklist DOT_SET:Ljava/lang/String; = "[^[:Zp:][:Zl:]\\r\\n$]"

.field private static final blacklist END_OF_RULE:C = ';'

.field private static final blacklist ESCAPE:C = '\\'

.field private static final blacklist FORWARD_RULE_OP:C = '>'

.field private static final blacklist FUNCTION:C = '&'

.field private static final blacklist FWDREV_RULE_OP:C = '~'

.field private static final blacklist HALF_ENDERS:Ljava/lang/String; = "=><\u2190\u2192\u2194;"

.field private static final blacklist ID_TOKEN:Ljava/lang/String; = "::"

.field private static final blacklist ID_TOKEN_LEN:I = 0x2

.field private static blacklist ILLEGAL_FUNC:Landroid/icu/text/UnicodeSet; = null

.field private static blacklist ILLEGAL_SEG:Landroid/icu/text/UnicodeSet; = null

.field private static blacklist ILLEGAL_TOP:Landroid/icu/text/UnicodeSet; = null

.field private static final blacklist KLEENE_STAR:C = '*'

.field private static final blacklist ONE_OR_MORE:C = '+'

.field private static final blacklist OPERATORS:Ljava/lang/String; = "=><\u2190\u2192\u2194"

.field private static final blacklist QUOTE:C = '\''

.field private static final blacklist REVERSE_RULE_OP:C = '<'

.field private static final blacklist RULE_COMMENT_CHAR:C = '#'

.field private static final blacklist SEGMENT_CLOSE:C = ')'

.field private static final blacklist SEGMENT_OPEN:C = '('

.field private static final blacklist VARIABLE_DEF_OP:C = '='

.field private static final blacklist ZERO_OR_ONE:C = '?'


# instance fields
.field public blacklist compoundFilter:Landroid/icu/text/UnicodeSet;

.field private blacklist curData:Landroid/icu/text/RuleBasedTransliterator$Data;

.field public blacklist dataVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/RuleBasedTransliterator$Data;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist direction:I

.field private blacklist dotStandIn:I

.field public blacklist idBlockVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist parseData:Landroid/icu/text/TransliteratorParser$ParseData;

.field private blacklist segmentObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/StringMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist segmentStandins:Ljava/lang/StringBuffer;

.field private blacklist undefinedVariableName:Ljava/lang/String;

.field private blacklist variableLimit:C

.field private blacklist variableNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field private blacklist variableNext:C

.field private blacklist variablesVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcurData(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetparseData(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/TransliteratorParser$ParseData;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/TransliteratorParser;->parseData:Landroid/icu/text/TransliteratorParser$ParseData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvariableNames(Landroid/icu/text/TransliteratorParser;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvariablesVector(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mappendVariableDef(Landroid/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/icu/text/TransliteratorParser;->appendVariableDef(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckVariableRange(Landroid/icu/text/TransliteratorParser;ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorParser;->checkVariableRange(ILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mparseSet(Landroid/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/text/ParsePosition;)C
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/icu/text/TransliteratorParser;->parseSet(Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetILLEGAL_FUNC()Landroid/icu/text/UnicodeSet;
    .registers 1

    sget-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_FUNC:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetILLEGAL_SEG()Landroid/icu/text/UnicodeSet;
    .registers 1

    sget-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_SEG:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetILLEGAL_TOP()Landroid/icu/text/UnicodeSet;
    .registers 1

    sget-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_TOP:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 185
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[\\)]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_TOP:Landroid/icu/text/UnicodeSet;

    .line 188
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[\\{\\}\\|\\@]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_SEG:Landroid/icu/text/UnicodeSet;

    .line 191
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[\\^\\(\\.\\*\\+\\?\\{\\}\\|\\@]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_FUNC:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    .line 867
    return-void
.end method

.method private blacklist appendVariableDef(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 1543
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 1544
    .local v0, "ch":[C
    if-nez v0, :cond_42

    .line 1549
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    if-nez v1, :cond_29

    .line 1550
    iput-object p1, p0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    .line 1551
    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    iget-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-ge v1, v2, :cond_21

    .line 1554
    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    add-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    iput-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_45

    .line 1552
    :cond_21
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Private use variables exhausted"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1556
    :cond_29
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefined variable $"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1560
    :cond_42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 1562
    :goto_45
    return-void
.end method

.method private blacklist checkVariableRange(ILjava/lang/String;I)V
    .registers 5
    .param p1, "ch"    # I
    .param p2, "rule"    # Ljava/lang/String;
    .param p3, "start"    # I

    .line 1333
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-char v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    if-lt p1, v0, :cond_f

    iget-char v0, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-ge p1, v0, :cond_f

    .line 1334
    const-string v0, "Variable range character in rule"

    invoke-static {v0, p2, p3}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1336
    :cond_f
    return-void
.end method

.method private blacklist parsePragma(Ljava/lang/String;II)I
    .registers 8
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1387
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1392
    .local v0, "array":[I
    add-int/lit8 p2, p2, 0x4

    .line 1398
    const-string v1, "~variable range # #~;"

    invoke-static {p1, p2, p3, v1, v0}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    .line 1399
    .local v1, "p":I
    const/4 v2, 0x0

    if-ltz v1, :cond_17

    .line 1400
    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {p0, v2, v3}, Landroid/icu/text/TransliteratorParser;->setVariableRange(II)V

    .line 1401
    return v1

    .line 1404
    :cond_17
    const-string v3, "~maximum backup #~;"

    invoke-static {p1, p2, p3, v3, v0}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    .line 1405
    if-ltz v1, :cond_25

    .line 1406
    aget v2, v0, v2

    invoke-direct {p0, v2}, Landroid/icu/text/TransliteratorParser;->pragmaMaximumBackup(I)V

    .line 1407
    return v1

    .line 1410
    :cond_25
    const-string v2, "~nfd rules~;"

    const/4 v3, 0x0

    invoke-static {p1, p2, p3, v2, v3}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    .line 1411
    if-ltz v1, :cond_34

    .line 1412
    sget-object v2, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    invoke-direct {p0, v2}, Landroid/icu/text/TransliteratorParser;->pragmaNormalizeRules(Landroid/icu/text/Normalizer$Mode;)V

    .line 1413
    return v1

    .line 1416
    :cond_34
    const-string v2, "~nfc rules~;"

    invoke-static {p1, p2, p3, v2, v3}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    .line 1417
    if-ltz v1, :cond_42

    .line 1418
    sget-object v2, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    invoke-direct {p0, v2}, Landroid/icu/text/TransliteratorParser;->pragmaNormalizeRules(Landroid/icu/text/Normalizer$Mode;)V

    .line 1419
    return v1

    .line 1423
    :cond_42
    const/4 v2, -0x1

    return v2
.end method

.method private blacklist parseRule(Ljava/lang/String;II)I
    .registers 25
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    .line 1143
    .local v3, "start":I
    const/4 v4, 0x0

    .line 1146
    .local v4, "operator":C
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    .line 1147
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    .line 1149
    new-instance v5, Landroid/icu/text/TransliteratorParser$RuleHalf;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/icu/text/TransliteratorParser$RuleHalf;-><init>(Landroid/icu/text/TransliteratorParser-IA;)V

    .line 1150
    .local v5, "left":Landroid/icu/text/TransliteratorParser$RuleHalf;
    new-instance v7, Landroid/icu/text/TransliteratorParser$RuleHalf;

    invoke-direct {v7, v6}, Landroid/icu/text/TransliteratorParser$RuleHalf;-><init>(Landroid/icu/text/TransliteratorParser-IA;)V

    .line 1152
    .local v7, "right":Landroid/icu/text/TransliteratorParser$RuleHalf;
    iput-object v6, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    .line 1153
    move/from16 v6, p2

    invoke-virtual {v5, v1, v6, v2, v0}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parse(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;)I

    move-result v6

    .line 1155
    .end local p2    # "pos":I
    .local v6, "pos":I
    if-eq v6, v2, :cond_3b

    add-int/lit8 v6, v6, -0x1

    .line 1156
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v4, v8

    const-string v9, "=><\u2190\u2192\u2194"

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_51

    .line 1157
    :cond_3b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No operator pos="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v3}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1159
    :cond_51
    const/4 v8, 0x1

    add-int/2addr v6, v8

    .line 1162
    const/16 v9, 0x3c

    const/16 v10, 0x3e

    if-ne v4, v9, :cond_65

    if-ge v6, v2, :cond_65

    .line 1163
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_65

    .line 1164
    add-int/lit8 v6, v6, 0x1

    .line 1165
    const/16 v4, 0x7e

    .line 1169
    :cond_65
    packed-switch v4, :pswitch_data_1ea

    :pswitch_68
    goto :goto_72

    .line 1177
    :pswitch_69
    const/16 v4, 0x7e

    goto :goto_72

    .line 1171
    :pswitch_6c
    const/16 v4, 0x3e

    .line 1172
    goto :goto_72

    .line 1174
    :pswitch_6f
    const/16 v4, 0x3c

    .line 1175
    nop

    .line 1181
    :goto_72
    invoke-virtual {v7, v1, v6, v2, v0}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parse(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;)I

    move-result v6

    .line 1183
    if-ge v6, v2, :cond_8a

    .line 1184
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x3b

    if-ne v9, v11, :cond_85

    .line 1185
    add-int/lit8 v6, v6, 0x1

    goto :goto_8a

    .line 1188
    :cond_85
    const-string v9, "Unquoted operator"

    invoke-static {v9, v1, v3}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1192
    :cond_8a
    :goto_8a
    const/16 v9, 0x3d

    const/4 v11, 0x0

    if-ne v4, v9, :cond_df

    .line 1200
    iget-object v9, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    if-nez v9, :cond_98

    .line 1201
    const-string v9, "Missing \'$\' or duplicate definition"

    invoke-static {v9, v1, v3}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1203
    :cond_98
    iget-object v9, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v8, :cond_aa

    iget-object v9, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    iget-char v10, v0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-eq v9, v10, :cond_af

    .line 1204
    :cond_aa
    const-string v9, "Malformed LHS"

    invoke-static {v9, v1, v3}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1206
    :cond_af
    iget-boolean v9, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    if-nez v9, :cond_bf

    iget-boolean v9, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    if-nez v9, :cond_bf

    iget-boolean v9, v7, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    if-nez v9, :cond_bf

    iget-boolean v9, v7, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    if-eqz v9, :cond_c4

    .line 1208
    :cond_bf
    const-string v9, "Malformed variable def"

    invoke-static {v9, v1, v3}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1211
    :cond_c4
    iget-object v9, v7, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 1212
    .local v9, "n":I
    new-array v10, v9, [C

    .line 1213
    .local v10, "value":[C
    iget-object v12, v7, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v12, v11, v9, v10, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 1214
    iget-object v11, v0, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    iget-object v12, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    iget-char v11, v0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    add-int/2addr v11, v8

    int-to-char v8, v11

    iput-char v8, v0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    .line 1217
    return v6

    .line 1222
    .end local v9    # "n":I
    .end local v10    # "value":[C
    :cond_df
    iget-object v9, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    if-eqz v9, :cond_fb

    .line 1223
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Undefined variable $"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1, v3}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1228
    :cond_fb
    iget-object v9, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    iget-object v12, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-le v9, v12, :cond_10e

    .line 1229
    const-string v9, "Undefined segment reference"

    invoke-static {v9, v1, v3}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1231
    :cond_10e
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_10f
    iget-object v12, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    const-string v13, "Internal error"

    if-ge v9, v12, :cond_127

    .line 1232
    iget-object v12, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v12

    if-nez v12, :cond_124

    .line 1233
    invoke-static {v13, v1, v3}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1231
    :cond_124
    add-int/lit8 v9, v9, 0x1

    goto :goto_10f

    .line 1236
    .end local v9    # "i":I
    :cond_127
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_128
    iget-object v12, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_13e

    .line 1237
    iget-object v12, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_13b

    .line 1238
    invoke-static {v13, v1, v3}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1236
    :cond_13b
    add-int/lit8 v9, v9, 0x1

    goto :goto_128

    .line 1244
    .end local v9    # "i":I
    :cond_13e
    const/16 v9, 0x7e

    if-eq v4, v9, :cond_151

    iget v12, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v12, :cond_148

    move v12, v8

    goto :goto_149

    :cond_148
    move v12, v11

    :goto_149
    if-ne v4, v10, :cond_14d

    move v10, v8

    goto :goto_14e

    :cond_14d
    move v10, v11

    :goto_14e
    if-eq v12, v10, :cond_151

    .line 1246
    return v6

    .line 1251
    :cond_151
    iget v10, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    if-ne v10, v8, :cond_158

    .line 1252
    move-object v8, v5

    .line 1253
    .local v8, "temp":Landroid/icu/text/TransliteratorParser$RuleHalf;
    move-object v5, v7

    .line 1254
    move-object v7, v8

    .line 1260
    .end local v8    # "temp":Landroid/icu/text/TransliteratorParser$RuleHalf;
    :cond_158
    if-ne v4, v9, :cond_162

    .line 1261
    invoke-virtual {v7}, Landroid/icu/text/TransliteratorParser$RuleHalf;->removeContext()V

    .line 1262
    const/4 v8, -0x1

    iput v8, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    .line 1263
    iput v11, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    .line 1267
    :cond_162
    iget v8, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    if-gez v8, :cond_168

    .line 1268
    iput v11, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    .line 1270
    :cond_168
    iget v8, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-gez v8, :cond_174

    .line 1271
    iget-object v8, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    .line 1280
    :cond_174
    iget v8, v7, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    if-gez v8, :cond_1a2

    iget v8, v7, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-gez v8, :cond_1a2

    iget v8, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-gez v8, :cond_1a2

    iget v8, v7, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    if-eqz v8, :cond_188

    iget v8, v7, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-ltz v8, :cond_1a2

    :cond_188
    iget-boolean v8, v7, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    if-nez v8, :cond_1a2

    iget-boolean v8, v7, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    if-nez v8, :cond_1a2

    .line 1289
    invoke-virtual {v5, v0}, Landroid/icu/text/TransliteratorParser$RuleHalf;->isValidInput(Landroid/icu/text/TransliteratorParser;)Z

    move-result v8

    if-eqz v8, :cond_1a2

    invoke-virtual {v7, v0}, Landroid/icu/text/TransliteratorParser$RuleHalf;->isValidOutput(Landroid/icu/text/TransliteratorParser;)Z

    move-result v8

    if-eqz v8, :cond_1a2

    iget v8, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    iget v9, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-le v8, v9, :cond_1a7

    .line 1291
    :cond_1a2
    const-string v8, "Malformed rule"

    invoke-static {v8, v1, v3}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1295
    :cond_1a7
    const/4 v8, 0x0

    .line 1296
    .local v8, "segmentsArray":[Landroid/icu/text/UnicodeMatcher;
    iget-object v9, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1c0

    .line 1297
    iget-object v9, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v8, v9, [Landroid/icu/text/UnicodeMatcher;

    .line 1298
    iget-object v9, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v17, v8

    goto :goto_1c2

    .line 1296
    :cond_1c0
    move-object/from16 v17, v8

    .line 1301
    .end local v8    # "segmentsArray":[Landroid/icu/text/UnicodeMatcher;
    .local v17, "segmentsArray":[Landroid/icu/text/UnicodeMatcher;
    :goto_1c2
    iget-object v8, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object v8, v8, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    new-instance v10, Landroid/icu/text/TransliterationRule;

    iget-object v11, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    iget v12, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    iget v13, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    iget-object v14, v7, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    iget v15, v7, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    iget v9, v7, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    iget-boolean v1, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    move/from16 v18, v1

    iget-boolean v1, v5, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    move/from16 v19, v1

    iget-object v1, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    move-object/from16 v20, v1

    move/from16 v16, v9

    invoke-direct/range {v10 .. v20}, Landroid/icu/text/TransliterationRule;-><init>(Ljava/lang/String;IILjava/lang/String;II[Landroid/icu/text/UnicodeMatcher;ZZLandroid/icu/text/RuleBasedTransliterator$Data;)V

    invoke-virtual {v8, v10}, Landroid/icu/text/TransliterationRuleSet;->addRule(Landroid/icu/text/TransliterationRule;)V

    .line 1308
    return v6

    nop

    :pswitch_data_1ea
    .packed-switch 0x2190
        :pswitch_6f
        :pswitch_68
        :pswitch_6c
        :pswitch_68
        :pswitch_69
    .end packed-switch
.end method

.method private final blacklist parseSet(Ljava/lang/String;Ljava/text/ParsePosition;)C
    .registers 6
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 1454
    new-instance v0, Landroid/icu/text/UnicodeSet;

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->parseData:Landroid/icu/text/TransliteratorParser$ParseData;

    invoke-direct {v0, p1, p2, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V

    .line 1455
    .local v0, "set":Landroid/icu/text/UnicodeSet;
    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    iget-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-ge v1, v2, :cond_15

    .line 1458
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 1459
    invoke-virtual {p0, v0}, Landroid/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    move-result v1

    return v1

    .line 1456
    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Private use variables exhausted"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist pragmaMaximumBackup(I)V
    .registers 4
    .param p1, "backup"    # I

    .line 1348
    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string v1, "use maximum backup pragma not implemented yet"

    invoke-direct {v0, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist pragmaNormalizeRules(Landroid/icu/text/Normalizer$Mode;)V
    .registers 4
    .param p1, "mode"    # Landroid/icu/text/Normalizer$Mode;

    .line 1362
    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string v1, "use normalize rules pragma not implemented yet"

    invoke-direct {v0, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist resemblesPragma(Ljava/lang/String;II)Z
    .registers 5
    .param p0, "rule"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1374
    const-string v0, "use "

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method static final blacklist ruleEnd(Ljava/lang/String;II)I
    .registers 4
    .param p0, "rule"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 1442
    const-string v0, ";"

    invoke-static {p0, p1, p2, v0}, Landroid/icu/impl/Utility;->quotedIndexOf(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 1443
    .local v0, "end":I
    if-gez v0, :cond_9

    .line 1444
    move v0, p2

    .line 1446
    :cond_9
    return v0
.end method

.method private blacklist setVariableRange(II)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1315
    if-gt p1, p2, :cond_1f

    if-ltz p1, :cond_1f

    const v0, 0xffff

    if-gt p2, v0, :cond_1f

    .line 1319
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    int-to-char v1, p1

    iput-char v1, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    .line 1321
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1322
    int-to-char v0, p1

    iput-char v0, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    .line 1323
    add-int/lit8 v0, p2, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    .line 1325
    :cond_1e
    return-void

    .line 1316
    :cond_1f
    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid variable range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final blacklist syntaxError(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 1436
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/icu/text/TransliteratorParser;->ruleEnd(Ljava/lang/String;II)I

    move-result v0

    .line 1437
    .local v0, "end":I
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1438
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method blacklist generateStandInFor(Ljava/lang/Object;)C
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1471
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1472
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_18

    .line 1473
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-char v1, v1, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    add-int/2addr v1, v0

    int-to-char v1, v1

    return v1

    .line 1471
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1477
    .end local v0    # "i":I
    :cond_1b
    iget-char v0, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-ge v0, v1, :cond_2e

    .line 1480
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    iget-char v0, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    iput-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    return v0

    .line 1478
    :cond_2e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Variable range exhausted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getDotStandIn()C
    .registers 3

    .line 1531
    iget v0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 1532
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[^[:Zp:][:Zl:]\\r\\n$]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    move-result v0

    iput v0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    .line 1534
    :cond_12
    iget v0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    int-to-char v0, v0

    return v0
.end method

.method public blacklist getSegmentStandin(I)C
    .registers 5
    .param p1, "seg"    # I

    .line 1488
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-ge v0, p1, :cond_d

    .line 1489
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1491
    :cond_d
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 1492
    .local v0, "c":C
    if-nez v0, :cond_3b

    .line 1493
    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    iget-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-ge v1, v2, :cond_33

    .line 1496
    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    add-int/lit8 v2, v1, 0x1

    int-to-char v2, v2

    iput-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    move v0, v1

    .line 1500
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1501
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_3b

    .line 1494
    :cond_33
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Variable range exhausted"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1503
    :cond_3b
    :goto_3b
    return v0
.end method

.method public blacklist parse(Ljava/lang/String;I)V
    .registers 5
    .param p1, "rules"    # Ljava/lang/String;
    .param p2, "dir"    # I

    .line 874
    new-instance v0, Landroid/icu/text/TransliteratorParser$RuleArray;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/TransliteratorParser$RuleArray;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Landroid/icu/text/TransliteratorParser;->parseRules(Landroid/icu/text/TransliteratorParser$RuleBody;I)V

    .line 875
    return-void
.end method

.method blacklist parseRules(Landroid/icu/text/TransliteratorParser$RuleBody;I)V
    .registers 25
    .param p1, "ruleArray"    # Landroid/icu/text/TransliteratorParser$RuleBody;
    .param p2, "dir"    # I

    .line 903
    move-object/from16 v1, p0

    const/4 v0, 0x1

    .line 904
    .local v0, "parsingIDs":Z
    const/4 v2, 0x0

    .line 906
    .local v2, "ruleCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    .line 907
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    .line 908
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 909
    move/from16 v4, p2

    iput v4, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    .line 910
    iput-object v3, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    .line 911
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    .line 912
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    .line 913
    new-instance v5, Landroid/icu/text/TransliteratorParser$ParseData;

    invoke-direct {v5, v1, v3}, Landroid/icu/text/TransliteratorParser$ParseData;-><init>(Landroid/icu/text/TransliteratorParser;Landroid/icu/text/TransliteratorParser-IA;)V

    iput-object v5, v1, Landroid/icu/text/TransliteratorParser;->parseData:Landroid/icu/text/TransliteratorParser$ParseData;

    .line 915
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .local v5, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/RuntimeException;>;"
    const/4 v6, 0x0

    .line 918
    .local v6, "errorCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/TransliteratorParser$RuleBody;->reset()V

    .line 920
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    .local v7, "idBlockResult":Ljava/lang/StringBuilder;
    iput-object v3, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    .line 928
    const/4 v8, -0x1

    .line 932
    .local v8, "compoundFilterOffset":I
    :goto_41
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/TransliteratorParser$RuleBody;->nextLine()Ljava/lang/String;

    move-result-object v9

    .line 933
    .local v9, "rule":Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_4d

    .line 934
    move v3, v2

    move v2, v0

    goto/16 :goto_1c3

    .line 936
    :cond_4d
    const/4 v12, 0x0

    .line 937
    .local v12, "pos":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    move/from16 v21, v2

    move v2, v0

    move/from16 v0, v21

    .line 938
    .local v0, "ruleCount":I
    .local v2, "parsingIDs":Z
    .local v13, "limit":I
    :goto_57
    if-ge v12, v13, :cond_2e5

    .line 939
    add-int/lit8 v14, v12, 0x1

    .end local v12    # "pos":I
    .local v14, "pos":I
    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 940
    .local v12, "c":C
    invoke-static {v12}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v15

    if-eqz v15, :cond_66

    .line 941
    goto :goto_7e

    .line 944
    :cond_66
    const/16 v15, 0x23

    if-ne v12, v15, :cond_79

    .line 945
    const-string v15, "\n"

    invoke-virtual {v9, v15, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v15

    add-int/lit8 v14, v15, 0x1

    .line 946
    if-nez v14, :cond_77

    .line 947
    move-object v10, v3

    goto/16 :goto_2e6

    .line 946
    :cond_77
    move v12, v14

    goto :goto_57

    .line 953
    :cond_79
    const/16 v15, 0x3b

    if-ne v12, v15, :cond_80

    .line 954
    nop

    .line 938
    .end local v12    # "c":C
    :goto_7e
    move v12, v14

    goto :goto_57

    .line 961
    .restart local v12    # "c":C
    :cond_80
    add-int/lit8 v16, v0, 0x1

    .line 965
    .end local v0    # "ruleCount":I
    .local v16, "ruleCount":I
    add-int/lit8 v14, v14, -0x1

    .line 968
    add-int/lit8 v0, v14, 0x2

    add-int/2addr v0, v11

    if-gt v0, v13, :cond_15a

    :try_start_89
    const-string v0, "::"

    .line 969
    const/4 v11, 0x2

    invoke-virtual {v9, v14, v0, v10, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 970
    add-int/lit8 v14, v14, 0x2

    .line 971
    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .end local v12    # "c":C
    .local v0, "c":C
    move v12, v0

    .line 972
    .end local v0    # "c":C
    .restart local v12    # "c":C
    :goto_99
    invoke-static {v12}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0
    :try_end_9d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_89 .. :try_end_9d} :catch_156

    if-eqz v0, :cond_a9

    if-ge v14, v13, :cond_a9

    .line 973
    add-int/lit8 v14, v14, 0x1

    .line 974
    :try_start_a3
    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_a7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a3 .. :try_end_a7} :catch_1af

    move v12, v0

    goto :goto_99

    .line 976
    :cond_a9
    :try_start_a9
    filled-new-array {v14}, [I

    move-result-object v0
    :try_end_ad
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a9 .. :try_end_ad} :catch_156

    .line 978
    .local v0, "p":[I
    if-nez v2, :cond_c9

    .line 979
    :try_start_af
    iget-object v11, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    if-eqz v11, :cond_c8

    .line 980
    iget v11, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v11, :cond_bf

    .line 981
    iget-object v11, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    iget-object v15, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c6

    .line 983
    :cond_bf
    iget-object v11, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    iget-object v15, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-interface {v11, v10, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 984
    :goto_c6
    iput-object v3, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;
    :try_end_c8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_af .. :try_end_c8} :catch_1af

    .line 986
    :cond_c8
    const/4 v2, 0x1

    .line 989
    :cond_c9
    :try_start_c9
    iget v11, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    .line 990
    invoke-static {v9, v0, v11}, Landroid/icu/text/TransliteratorIDParser;->parseSingleID(Ljava/lang/String;[II)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v11

    .line 992
    .local v11, "id":Landroid/icu/text/TransliteratorIDParser$SingleID;
    aget v15, v0, v10
    :try_end_d1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c9 .. :try_end_d1} :catch_156

    if-eq v15, v14, :cond_10c

    const/16 v15, 0x3b

    :try_start_d5
    invoke-static {v9, v0, v15}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v19

    if-eqz v19, :cond_10c

    .line 995
    iget v15, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v15, :cond_ef

    .line 996
    iget-object v15, v11, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v3, 0x3b

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    move/from16 v20, v10

    goto :goto_150

    .line 998
    :cond_ef
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v11, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v15, 0x3b

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v10, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_107
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d5 .. :try_end_107} :catch_1af

    move-object/from16 v18, v0

    move/from16 v20, v10

    goto :goto_150

    .line 1003
    :cond_10c
    const/4 v3, -0x1

    :try_start_10d
    filled-new-array {v3}, [I

    move-result-object v3

    .line 1004
    .local v3, "withParens":[I
    iget v15, v1, Landroid/icu/text/TransliteratorParser;->direction:I
    :try_end_113
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10d .. :try_end_113} :catch_156

    move/from16 v20, v10

    const/4 v10, 0x0

    :try_start_116
    invoke-static {v9, v0, v15, v3, v10}, Landroid/icu/text/TransliteratorIDParser;->parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;

    move-result-object v15

    .line 1005
    .local v15, "f":Landroid/icu/text/UnicodeSet;
    if-eqz v15, :cond_149

    const/16 v10, 0x3b

    invoke-static {v9, v0, v10}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v10

    if-eqz v10, :cond_149

    .line 1006
    iget v10, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v10, :cond_12a

    const/4 v10, 0x1

    goto :goto_12c

    :cond_12a
    move/from16 v10, v20

    :goto_12c
    aget v18, v3, v20

    if-nez v18, :cond_134

    move-object/from16 v18, v0

    const/4 v0, 0x1

    goto :goto_138

    :cond_134
    move-object/from16 v18, v0

    move/from16 v0, v20

    .end local v0    # "p":[I
    .local v18, "p":[I
    :goto_138
    if-ne v10, v0, :cond_150

    .line 1008
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    if-eqz v0, :cond_143

    .line 1010
    const-string v0, "Multiple global filters"

    invoke-static {v0, v9, v14}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1012
    :cond_143
    iput-object v15, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    .line 1013
    move/from16 v0, v16

    move v8, v0

    .end local v8    # "compoundFilterOffset":I
    .local v0, "compoundFilterOffset":I
    goto :goto_150

    .line 1005
    .end local v18    # "p":[I
    .local v0, "p":[I
    .restart local v8    # "compoundFilterOffset":I
    :cond_149
    move-object/from16 v18, v0

    .line 1018
    .end local v0    # "p":[I
    .restart local v18    # "p":[I
    const-string v0, "Invalid ::ID"

    invoke-static {v0, v9, v14}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1022
    .end local v3    # "withParens":[I
    .end local v15    # "f":Landroid/icu/text/UnicodeSet;
    :cond_150
    :goto_150
    aget v0, v18, v20

    .line 1023
    .end local v11    # "id":Landroid/icu/text/TransliteratorIDParser$SingleID;
    .end local v14    # "pos":I
    .end local v18    # "p":[I
    .local v0, "pos":I
    goto :goto_1a8

    .line 969
    .end local v0    # "pos":I
    .restart local v14    # "pos":I
    :cond_153
    move/from16 v20, v10

    goto :goto_15c

    .line 1051
    :catch_156
    move-exception v0

    move/from16 v20, v10

    goto :goto_1b0

    .line 968
    :cond_15a
    move/from16 v20, v10

    .line 1024
    :goto_15c
    if-eqz v2, :cond_191

    .line 1025
    iget v0, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v0, :cond_16e

    .line 1026
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v10, v20

    goto :goto_179

    .line 1028
    :cond_16e
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v10, v20

    invoke-interface {v0, v10, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1029
    :goto_179
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v7, v10, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1030
    const/4 v2, 0x0

    .line 1031
    new-instance v0, Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedTransliterator$Data;-><init>()V

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 1037
    const v0, 0xf000

    const v3, 0xf8ff

    invoke-direct {v1, v0, v3}, Landroid/icu/text/TransliteratorParser;->setVariableRange(II)V

    .line 1040
    :cond_191
    invoke-static {v9, v14, v13}, Landroid/icu/text/TransliteratorParser;->resemblesPragma(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 1041
    invoke-direct {v1, v9, v14, v13}, Landroid/icu/text/TransliteratorParser;->parsePragma(Ljava/lang/String;II)I

    move-result v0

    .line 1042
    .local v0, "ppp":I
    if-gez v0, :cond_1a2

    .line 1043
    const-string v3, "Unrecognized pragma"

    invoke-static {v3, v9, v14}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1045
    :cond_1a2
    nop

    .line 1047
    .end local v14    # "pos":I
    .local v0, "pos":I
    goto :goto_1a8

    .line 1048
    .end local v0    # "pos":I
    .restart local v14    # "pos":I
    :cond_1a4
    invoke-direct {v1, v9, v14, v13}, Landroid/icu/text/TransliteratorParser;->parseRule(Ljava/lang/String;II)I

    move-result v0
    :try_end_1a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_116 .. :try_end_1a8} :catch_1af

    .line 1062
    .end local v14    # "pos":I
    .restart local v0    # "pos":I
    :goto_1a8
    move v12, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x1

    goto/16 :goto_2dd

    .line 1051
    .end local v0    # "pos":I
    .restart local v14    # "pos":I
    :catch_1af
    move-exception v0

    .line 1052
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_1b0
    const/16 v3, 0x1e

    if-ne v6, v3, :cond_2ca

    .line 1053
    new-instance v3, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string v10, "\nMore than 30 errors; further messages squelched"

    invoke-direct {v3, v10}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    .line 1054
    .local v3, "icuEx":Landroid/icu/impl/IllegalIcuArgumentException;
    invoke-virtual {v3, v0}, Landroid/icu/impl/IllegalIcuArgumentException;->initCause(Ljava/lang/Throwable;)Landroid/icu/impl/IllegalIcuArgumentException;

    .line 1055
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    move/from16 v3, v16

    .line 1065
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "rule":Ljava/lang/String;
    .end local v12    # "c":C
    .end local v13    # "limit":I
    .end local v14    # "pos":I
    .end local v16    # "ruleCount":I
    .local v3, "ruleCount":I
    :goto_1c3
    if-eqz v2, :cond_1e4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1e4

    .line 1066
    iget v0, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v0, :cond_1d9

    .line 1067
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1fe

    .line 1069
    :cond_1d9
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v0, v10, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1fe

    .line 1071
    :cond_1e4
    if-nez v2, :cond_1fe

    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    if-eqz v0, :cond_1fe

    .line 1072
    iget v0, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v0, :cond_1f6

    .line 1073
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    iget-object v9, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1fe

    .line 1075
    :cond_1f6
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    iget-object v9, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    const/4 v10, 0x0

    invoke-interface {v0, v10, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1079
    :cond_1fe
    :goto_1fe
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1ff
    iget-object v9, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_231

    .line 1080
    iget-object v9, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 1081
    .local v9, "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    iget-object v10, v1, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/Object;

    iput-object v10, v9, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    .line 1082
    iget-object v10, v1, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    iget-object v11, v9, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1083
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v9, Landroid/icu/text/RuleBasedTransliterator$Data;->variableNames:Ljava/util/Map;

    .line 1084
    iget-object v10, v9, Landroid/icu/text/RuleBasedTransliterator$Data;->variableNames:Ljava/util/Map;

    iget-object v11, v1, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    invoke-interface {v10, v11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1079
    .end local v9    # "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ff

    .line 1086
    .end local v0    # "i":I
    :cond_231
    const/4 v10, 0x0

    iput-object v10, v1, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    .line 1090
    :try_start_234
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    if-eqz v0, :cond_250

    .line 1091
    iget v0, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v0, :cond_240

    const/4 v9, 0x1

    if-ne v8, v9, :cond_248

    goto :goto_241

    :cond_240
    const/4 v9, 0x1

    :goto_241
    iget v0, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-ne v0, v9, :cond_250

    if-ne v8, v3, :cond_248

    goto :goto_250

    .line 1095
    :cond_248
    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string v9, "Compound filters misplaced"

    invoke-direct {v0, v9}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "parsingIDs":Z
    .end local v3    # "ruleCount":I
    .end local v5    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/RuntimeException;>;"
    .end local v6    # "errorCount":I
    .end local v7    # "idBlockResult":Ljava/lang/StringBuilder;
    .end local v8    # "compoundFilterOffset":I
    .end local p0    # "this":Landroid/icu/text/TransliteratorParser;
    .end local p1    # "ruleArray":Landroid/icu/text/TransliteratorParser$RuleBody;
    .end local p2    # "dir":I
    throw v0

    .line 1099
    .restart local v2    # "parsingIDs":Z
    .restart local v3    # "ruleCount":I
    .restart local v5    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/RuntimeException;>;"
    .restart local v6    # "errorCount":I
    .restart local v7    # "idBlockResult":Ljava/lang/StringBuilder;
    .restart local v8    # "compoundFilterOffset":I
    .restart local p0    # "this":Landroid/icu/text/TransliteratorParser;
    .restart local p1    # "ruleArray":Landroid/icu/text/TransliteratorParser$RuleBody;
    .restart local p2    # "dir":I
    :cond_250
    :goto_250
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_251
    iget-object v9, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_269

    .line 1100
    iget-object v9, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 1101
    .restart local v9    # "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    iget-object v10, v9, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    invoke-virtual {v10}, Landroid/icu/text/TransliterationRuleSet;->freeze()V

    .line 1099
    .end local v9    # "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    add-int/lit8 v0, v0, 0x1

    goto :goto_251

    .line 1104
    .end local v0    # "i":I
    :cond_269
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_287

    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_287

    .line 1105
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_287
    .catch Ljava/lang/IllegalArgumentException; {:try_start_234 .. :try_end_287} :catch_288

    .line 1110
    :cond_287
    goto :goto_28f

    .line 1107
    :catch_288
    move-exception v0

    .line 1108
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1109
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_28f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2c9

    .line 1113
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_29d
    if-lez v0, :cond_2c1

    .line 1114
    add-int/lit8 v9, v0, -0x1

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/RuntimeException;

    .line 1115
    .local v9, "previous":Ljava/lang/RuntimeException;
    :goto_2a7
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    if-eqz v10, :cond_2b5

    .line 1116
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    move-object v9, v10

    check-cast v9, Ljava/lang/RuntimeException;

    goto :goto_2a7

    .line 1118
    :cond_2b5
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1113
    .end local v9    # "previous":Ljava/lang/RuntimeException;
    add-int/lit8 v0, v0, -0x1

    goto :goto_29d

    .line 1120
    .end local v0    # "i":I
    :cond_2c1
    const/4 v11, 0x0

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 1123
    :cond_2c9
    return-void

    .line 1058
    .end local v3    # "ruleCount":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .local v9, "rule":Ljava/lang/String;
    .restart local v12    # "c":C
    .restart local v13    # "limit":I
    .restart local v14    # "pos":I
    .restart local v16    # "ruleCount":I
    :cond_2ca
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1059
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    add-int/lit8 v6, v6, 0x1

    .line 1061
    invoke-static {v9, v14, v13}, Landroid/icu/text/TransliteratorParser;->ruleEnd(Ljava/lang/String;II)I

    move-result v3

    const/16 v17, 0x1

    add-int/lit8 v3, v3, 0x1

    move v12, v3

    .line 1063
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v14    # "pos":I
    .local v12, "pos":I
    :goto_2dd
    move-object v3, v10

    move v10, v11

    move/from16 v0, v16

    move/from16 v11, v17

    goto/16 :goto_57

    .line 938
    .end local v16    # "ruleCount":I
    .local v0, "ruleCount":I
    :cond_2e5
    move-object v10, v3

    .line 1064
    .end local v9    # "rule":Ljava/lang/String;
    .end local v12    # "pos":I
    .end local v13    # "limit":I
    :goto_2e6
    move v3, v2

    move v2, v0

    move v0, v3

    move-object v3, v10

    goto/16 :goto_41
.end method

.method public blacklist setSegmentObject(ILandroid/icu/text/StringMatcher;)V
    .registers 6
    .param p1, "seg"    # I
    .param p2, "obj"    # Landroid/icu/text/StringMatcher;

    .line 1514
    nop

    :goto_1
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_10

    .line 1515
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1517
    :cond_10
    invoke-virtual {p0, p1}, Landroid/icu/text/TransliteratorParser;->getSegmentStandin(I)C

    move-result v0

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-char v1, v1, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int/2addr v0, v1

    .line 1518
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_38

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    .line 1519
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_38

    .line 1522
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1523
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1524
    return-void

    .line 1520
    :cond_38
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method
