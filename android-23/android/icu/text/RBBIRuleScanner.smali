.class Landroid/icu/text/RBBIRuleScanner;
.super Ljava/lang/Object;
.source "RBBIRuleScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;,
        Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;
    }
.end annotation


# static fields
.field static final chLS:I = 0x2028

.field static final chNEL:I = 0x85

.field private static gRuleSet_digit_char_pattern:Ljava/lang/String; = null

.field private static gRuleSet_name_char_pattern:Ljava/lang/String; = null

.field private static gRuleSet_name_start_char_pattern:Ljava/lang/String; = null

.field private static gRuleSet_rule_char_pattern:Ljava/lang/String; = null

.field private static gRuleSet_white_space_pattern:Ljava/lang/String; = null

.field private static kAny:Ljava/lang/String; = null

.field private static final kStackSize:I = 0x64


# instance fields
.field fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

.field fCharNum:I

.field fLastChar:I

.field fLineNum:I

.field fLookAheadRule:Z

.field fNextIndex:I

.field fNodeStack:[Landroid/icu/text/RBBINode;

.field fNodeStackPtr:I

.field fOptionStart:I

.field fQuoteMode:Z

.field fRB:Landroid/icu/text/RBBIRuleBuilder;

.field fReverseRule:Z

.field fRuleNum:I

.field fRuleSets:[Landroid/icu/text/UnicodeSet;

.field fScanIndex:I

.field fSetTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;",
            ">;"
        }
    .end annotation
.end field

.field fStack:[S

.field fStackPtr:I

.field fSymbolTable:Landroid/icu/text/RBBISymbolTable;

.field fVarName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 90
    const-string/jumbo v0, "[^[\\p{Z}\\u0020-\\u007f]-[\\p{L}]-[\\p{N}]]"

    #@3
    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_rule_char_pattern:Ljava/lang/String;

    #@5
    .line 91
    const-string/jumbo v0, "[_\\p{L}\\p{N}]"

    #@8
    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_name_char_pattern:Ljava/lang/String;

    #@a
    .line 92
    const-string/jumbo v0, "[0-9]"

    #@d
    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_digit_char_pattern:Ljava/lang/String;

    #@f
    .line 93
    const-string/jumbo v0, "[_\\p{L}]"

    #@12
    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_name_start_char_pattern:Ljava/lang/String;

    #@14
    .line 94
    const-string/jumbo v0, "[\\p{Pattern_White_Space}]"

    #@17
    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_white_space_pattern:Ljava/lang/String;

    #@19
    .line 95
    const-string/jumbo v0, "any"

    #@1c
    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->kAny:Ljava/lang/String;

    #@1e
    .line 21
    return-void
.end method

.method constructor <init>(Landroid/icu/text/RBBIRuleBuilder;)V
    .locals 4
    .param p1, "rb"    # Landroid/icu/text/RBBIRuleBuilder;

    #@0
    .prologue
    const/16 v1, 0x64

    #@2
    const/4 v3, 0x1

    #@3
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 47
    new-instance v0, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@8
    invoke-direct {v0}, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;-><init>()V

    #@b
    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@d
    .line 53
    new-array v0, v1, [S

    #@f
    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fStack:[S

    #@11
    .line 57
    new-array v0, v1, [Landroid/icu/text/RBBINode;

    #@13
    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@15
    .line 72
    new-instance v0, Ljava/util/HashMap;

    #@17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fSetTable:Ljava/util/HashMap;

    #@1c
    .line 77
    const/16 v0, 0xa

    #@1e
    new-array v0, v0, [Landroid/icu/text/UnicodeSet;

    #@20
    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    #@22
    .line 106
    iput-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@24
    .line 107
    iput v3, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    #@26
    .line 113
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    #@28
    new-instance v1, Landroid/icu/text/UnicodeSet;

    #@2a
    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_rule_char_pattern:Ljava/lang/String;

    #@2c
    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@2f
    const/4 v2, 0x3

    #@30
    aput-object v1, v0, v2

    #@32
    .line 114
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    #@34
    new-instance v1, Landroid/icu/text/UnicodeSet;

    #@36
    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_white_space_pattern:Ljava/lang/String;

    #@38
    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@3b
    const/4 v2, 0x4

    #@3c
    aput-object v1, v0, v2

    #@3e
    .line 115
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    #@40
    new-instance v1, Landroid/icu/text/UnicodeSet;

    #@42
    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_name_char_pattern:Ljava/lang/String;

    #@44
    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@47
    aput-object v1, v0, v3

    #@49
    .line 116
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    #@4b
    new-instance v1, Landroid/icu/text/UnicodeSet;

    #@4d
    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_name_start_char_pattern:Ljava/lang/String;

    #@4f
    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@52
    const/4 v2, 0x2

    #@53
    aput-object v1, v0, v2

    #@55
    .line 117
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    #@57
    new-instance v1, Landroid/icu/text/UnicodeSet;

    #@59
    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_digit_char_pattern:Ljava/lang/String;

    #@5b
    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@5e
    const/4 v2, 0x0

    #@5f
    aput-object v1, v0, v2

    #@61
    .line 119
    new-instance v0, Landroid/icu/text/RBBISymbolTable;

    #@63
    iget-object v1, p1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@65
    invoke-direct {v0, p0, v1}, Landroid/icu/text/RBBISymbolTable;-><init>(Landroid/icu/text/RBBIRuleScanner;Ljava/lang/String;)V

    #@68
    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    #@6a
    .line 105
    return-void
.end method

.method static stripRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "rules"    # Ljava/lang/String;

    #@0
    .prologue
    .line 667
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 668
    .local v4, "strippedRules":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    .line 669
    .local v3, "rulesLength":I
    const/4 v1, 0x0

    #@a
    .local v1, "idx":I
    move v2, v1

    #@b
    .end local v1    # "idx":I
    .local v2, "idx":I
    :goto_0
    if-ge v2, v3, :cond_3

    #@d
    .line 670
    add-int/lit8 v1, v2, 0x1

    #@f
    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v0

    #@13
    .line 671
    .local v0, "ch":C
    const/16 v5, 0x23

    #@15
    if-ne v0, v5, :cond_1

    #@17
    :goto_1
    move v2, v1

    #@18
    .line 672
    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    if-ge v2, v3, :cond_0

    #@1a
    .line 673
    const/16 v5, 0xd

    #@1c
    if-eq v0, v5, :cond_0

    #@1e
    const/16 v5, 0xa

    #@20
    if-eq v0, v5, :cond_0

    #@22
    const/16 v5, 0x85

    #@24
    if-eq v0, v5, :cond_0

    #@26
    .line 674
    add-int/lit8 v1, v2, 0x1

    #@28
    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v0

    #@2c
    goto :goto_1

    #@2d
    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    :cond_0
    move v1, v2

    #@2e
    .line 677
    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    :cond_1
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isISOControl(I)Z

    #@31
    move-result v5

    #@32
    if-nez v5, :cond_2

    #@34
    .line 678
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    :cond_2
    move v2, v1

    #@38
    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_0

    #@39
    .line 681
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    return-object v5
.end method


# virtual methods
.method doParseActions(I)Z
    .locals 24
    .param p1, "action"    # I

    #@0
    .prologue
    .line 131
    const/4 v7, 0x0

    #@1
    .line 133
    .local v7, "n":Landroid/icu/text/RBBINode;
    const/4 v14, 0x1

    #@2
    .line 135
    .local v14, "returnVal":Z
    packed-switch p1, :pswitch_data_0

    #@5
    .line 482
    const v21, 0x10201

    #@8
    move-object/from16 v0, p0

    #@a
    move/from16 v1, v21

    #@c
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@f
    .line 483
    const/4 v14, 0x0

    #@10
    .line 486
    .end local v7    # "n":Landroid/icu/text/RBBINode;
    :cond_0
    :goto_0
    :pswitch_0
    return v14

    #@11
    .line 138
    .restart local v7    # "n":Landroid/icu/text/RBBINode;
    :pswitch_1
    const/16 v21, 0x7

    #@13
    move-object/from16 v0, p0

    #@15
    move/from16 v1, v21

    #@17
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@1a
    .line 139
    move-object/from16 v0, p0

    #@1c
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    #@1e
    move/from16 v21, v0

    #@20
    add-int/lit8 v21, v21, 0x1

    #@22
    move/from16 v0, v21

    #@24
    move-object/from16 v1, p0

    #@26
    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    #@28
    goto :goto_0

    #@29
    .line 143
    :pswitch_2
    const/16 v21, 0x4

    #@2b
    move-object/from16 v0, p0

    #@2d
    move/from16 v1, v21

    #@2f
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    #@32
    .line 144
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@36
    move-object/from16 v21, v0

    #@38
    move-object/from16 v0, p0

    #@3a
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@3c
    move/from16 v22, v0

    #@3e
    add-int/lit8 v23, v22, -0x1

    #@40
    move/from16 v0, v23

    #@42
    move-object/from16 v1, p0

    #@44
    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@46
    aget-object v8, v21, v22

    #@48
    .line 145
    .local v8, "operandNode":Landroid/icu/text/RBBINode;
    const/16 v21, 0x9

    #@4a
    move-object/from16 v0, p0

    #@4c
    move/from16 v1, v21

    #@4e
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@51
    move-result-object v10

    #@52
    .line 146
    .local v10, "orNode":Landroid/icu/text/RBBINode;
    iput-object v8, v10, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@54
    .line 147
    iput-object v10, v8, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@56
    goto :goto_0

    #@57
    .line 158
    .end local v8    # "operandNode":Landroid/icu/text/RBBINode;
    .end local v10    # "orNode":Landroid/icu/text/RBBINode;
    :pswitch_3
    const/16 v21, 0x4

    #@59
    move-object/from16 v0, p0

    #@5b
    move/from16 v1, v21

    #@5d
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    #@60
    .line 159
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@64
    move-object/from16 v21, v0

    #@66
    move-object/from16 v0, p0

    #@68
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@6a
    move/from16 v22, v0

    #@6c
    add-int/lit8 v23, v22, -0x1

    #@6e
    move/from16 v0, v23

    #@70
    move-object/from16 v1, p0

    #@72
    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@74
    aget-object v8, v21, v22

    #@76
    .line 160
    .restart local v8    # "operandNode":Landroid/icu/text/RBBINode;
    const/16 v21, 0x8

    #@78
    move-object/from16 v0, p0

    #@7a
    move/from16 v1, v21

    #@7c
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@7f
    move-result-object v4

    #@80
    .line 161
    .local v4, "catNode":Landroid/icu/text/RBBINode;
    iput-object v8, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@82
    .line 162
    iput-object v4, v8, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@84
    goto :goto_0

    #@85
    .line 173
    .end local v4    # "catNode":Landroid/icu/text/RBBINode;
    .end local v8    # "operandNode":Landroid/icu/text/RBBINode;
    :pswitch_4
    const/16 v21, 0xf

    #@87
    move-object/from16 v0, p0

    #@89
    move/from16 v1, v21

    #@8b
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@8e
    goto :goto_0

    #@8f
    .line 177
    :pswitch_5
    const/16 v21, 0x2

    #@91
    move-object/from16 v0, p0

    #@93
    move/from16 v1, v21

    #@95
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    #@98
    goto/16 :goto_0

    #@9a
    .line 193
    :pswitch_6
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@9e
    move-object/from16 v21, v0

    #@a0
    move-object/from16 v0, p0

    #@a2
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@a4
    move/from16 v22, v0

    #@a6
    add-int/lit8 v22, v22, -0x1

    #@a8
    aget-object v7, v21, v22

    #@aa
    .line 194
    .local v7, "n":Landroid/icu/text/RBBINode;
    move-object/from16 v0, p0

    #@ac
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@ae
    move/from16 v21, v0

    #@b0
    move/from16 v0, v21

    #@b2
    iput v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@b4
    .line 198
    const/16 v21, 0x7

    #@b6
    move-object/from16 v0, p0

    #@b8
    move/from16 v1, v21

    #@ba
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@bd
    goto/16 :goto_0

    #@bf
    .line 207
    .local v7, "n":Landroid/icu/text/RBBINode;
    :pswitch_7
    const/16 v21, 0x1

    #@c1
    move-object/from16 v0, p0

    #@c3
    move/from16 v1, v21

    #@c5
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    #@c8
    .line 209
    move-object/from16 v0, p0

    #@ca
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@cc
    move-object/from16 v21, v0

    #@ce
    move-object/from16 v0, p0

    #@d0
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@d2
    move/from16 v22, v0

    #@d4
    add-int/lit8 v22, v22, -0x2

    #@d6
    aget-object v17, v21, v22

    #@d8
    .line 210
    .local v17, "startExprNode":Landroid/icu/text/RBBINode;
    move-object/from16 v0, p0

    #@da
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@dc
    move-object/from16 v21, v0

    #@de
    move-object/from16 v0, p0

    #@e0
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@e2
    move/from16 v22, v0

    #@e4
    add-int/lit8 v22, v22, -0x1

    #@e6
    aget-object v20, v21, v22

    #@e8
    .line 211
    .local v20, "varRefNode":Landroid/icu/text/RBBINode;
    move-object/from16 v0, p0

    #@ea
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@ec
    move-object/from16 v21, v0

    #@ee
    move-object/from16 v0, p0

    #@f0
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@f2
    move/from16 v22, v0

    #@f4
    aget-object v3, v21, v22

    #@f6
    .line 216
    .local v3, "RHSExprNode":Landroid/icu/text/RBBINode;
    move-object/from16 v0, v17

    #@f8
    iget v0, v0, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@fa
    move/from16 v21, v0

    #@fc
    move/from16 v0, v21

    #@fe
    iput v0, v3, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@100
    .line 217
    move-object/from16 v0, p0

    #@102
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    #@104
    move/from16 v21, v0

    #@106
    move/from16 v0, v21

    #@108
    iput v0, v3, Landroid/icu/text/RBBINode;->fLastPos:I

    #@10a
    .line 220
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@10e
    move-object/from16 v21, v0

    #@110
    move-object/from16 v0, v21

    #@112
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@114
    move-object/from16 v21, v0

    #@116
    iget v0, v3, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@118
    move/from16 v22, v0

    #@11a
    .line 221
    iget v0, v3, Landroid/icu/text/RBBINode;->fLastPos:I

    #@11c
    move/from16 v23, v0

    #@11e
    .line 220
    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@121
    move-result-object v21

    #@122
    move-object/from16 v0, v21

    #@124
    iput-object v0, v3, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@126
    .line 225
    move-object/from16 v0, v20

    #@128
    iput-object v3, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@12a
    .line 226
    move-object/from16 v0, v20

    #@12c
    iput-object v0, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@12e
    .line 229
    move-object/from16 v0, p0

    #@130
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    #@132
    move-object/from16 v21, v0

    #@134
    move-object/from16 v0, v20

    #@136
    iget-object v0, v0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@138
    move-object/from16 v22, v0

    #@13a
    move-object/from16 v0, v21

    #@13c
    move-object/from16 v1, v22

    #@13e
    move-object/from16 v2, v20

    #@140
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/RBBISymbolTable;->addEntry(Ljava/lang/String;Landroid/icu/text/RBBINode;)V

    #@143
    .line 232
    move-object/from16 v0, p0

    #@145
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@147
    move/from16 v21, v0

    #@149
    add-int/lit8 v21, v21, -0x3

    #@14b
    move/from16 v0, v21

    #@14d
    move-object/from16 v1, p0

    #@14f
    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@151
    goto/16 :goto_0

    #@153
    .line 237
    .end local v3    # "RHSExprNode":Landroid/icu/text/RBBINode;
    .end local v17    # "startExprNode":Landroid/icu/text/RBBINode;
    .end local v20    # "varRefNode":Landroid/icu/text/RBBINode;
    :pswitch_8
    const/16 v21, 0x1

    #@155
    move-object/from16 v0, p0

    #@157
    move/from16 v1, v21

    #@159
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    #@15c
    .line 240
    move-object/from16 v0, p0

    #@15e
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@160
    move-object/from16 v21, v0

    #@162
    move-object/from16 v0, v21

    #@164
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@166
    move-object/from16 v21, v0

    #@168
    if-eqz v21, :cond_1

    #@16a
    move-object/from16 v0, p0

    #@16c
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@16e
    move-object/from16 v21, v0

    #@170
    move-object/from16 v0, v21

    #@172
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@174
    move-object/from16 v21, v0

    #@176
    const-string/jumbo v22, "rtree"

    #@179
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@17c
    move-result v21

    #@17d
    if-ltz v21, :cond_1

    #@17f
    .line 241
    const-string/jumbo v21, "end of rule"

    #@182
    move-object/from16 v0, p0

    #@184
    move-object/from16 v1, v21

    #@186
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->printNodeStack(Ljava/lang/String;)V

    #@189
    .line 243
    :cond_1
    move-object/from16 v0, p0

    #@18b
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@18d
    move/from16 v21, v0

    #@18f
    const/16 v22, 0x1

    #@191
    move/from16 v0, v21

    #@193
    move/from16 v1, v22

    #@195
    if-ne v0, v1, :cond_3

    #@197
    const/16 v21, 0x1

    #@199
    :goto_1
    invoke-static/range {v21 .. v21}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@19c
    .line 247
    move-object/from16 v0, p0

    #@19e
    iget-boolean v0, v0, Landroid/icu/text/RBBIRuleScanner;->fLookAheadRule:Z

    #@1a0
    move/from16 v21, v0

    #@1a2
    if-eqz v21, :cond_2

    #@1a4
    .line 248
    move-object/from16 v0, p0

    #@1a6
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@1a8
    move-object/from16 v21, v0

    #@1aa
    move-object/from16 v0, p0

    #@1ac
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@1ae
    move/from16 v22, v0

    #@1b0
    aget-object v18, v21, v22

    #@1b2
    .line 249
    .local v18, "thisRule":Landroid/icu/text/RBBINode;
    const/16 v21, 0x6

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    move/from16 v1, v21

    #@1b8
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@1bb
    move-result-object v6

    #@1bc
    .line 250
    .local v6, "endNode":Landroid/icu/text/RBBINode;
    const/16 v21, 0x8

    #@1be
    move-object/from16 v0, p0

    #@1c0
    move/from16 v1, v21

    #@1c2
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@1c5
    move-result-object v4

    #@1c6
    .line 251
    .restart local v4    # "catNode":Landroid/icu/text/RBBINode;
    move-object/from16 v0, p0

    #@1c8
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@1ca
    move/from16 v21, v0

    #@1cc
    add-int/lit8 v21, v21, -0x2

    #@1ce
    move/from16 v0, v21

    #@1d0
    move-object/from16 v1, p0

    #@1d2
    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@1d4
    .line 252
    move-object/from16 v0, v18

    #@1d6
    iput-object v0, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@1d8
    .line 253
    iput-object v6, v4, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@1da
    .line 254
    move-object/from16 v0, p0

    #@1dc
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@1de
    move-object/from16 v21, v0

    #@1e0
    move-object/from16 v0, p0

    #@1e2
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@1e4
    move/from16 v22, v0

    #@1e6
    aput-object v4, v21, v22

    #@1e8
    .line 255
    move-object/from16 v0, p0

    #@1ea
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    #@1ec
    move/from16 v21, v0

    #@1ee
    move/from16 v0, v21

    #@1f0
    iput v0, v6, Landroid/icu/text/RBBINode;->fVal:I

    #@1f2
    .line 256
    const/16 v21, 0x1

    #@1f4
    move/from16 v0, v21

    #@1f6
    iput-boolean v0, v6, Landroid/icu/text/RBBINode;->fLookAheadEnd:Z

    #@1f8
    .line 269
    .end local v4    # "catNode":Landroid/icu/text/RBBINode;
    .end local v6    # "endNode":Landroid/icu/text/RBBINode;
    .end local v18    # "thisRule":Landroid/icu/text/RBBINode;
    :cond_2
    move-object/from16 v0, p0

    #@1fa
    iget-boolean v0, v0, Landroid/icu/text/RBBIRuleScanner;->fReverseRule:Z

    #@1fc
    move/from16 v21, v0

    #@1fe
    if-eqz v21, :cond_4

    #@200
    const/4 v5, 0x1

    #@201
    .line 271
    .local v5, "destRules":I
    :goto_2
    move-object/from16 v0, p0

    #@203
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@205
    move-object/from16 v21, v0

    #@207
    move-object/from16 v0, v21

    #@209
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@20b
    move-object/from16 v21, v0

    #@20d
    aget-object v21, v21, v5

    #@20f
    if-eqz v21, :cond_5

    #@211
    .line 277
    move-object/from16 v0, p0

    #@213
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@215
    move-object/from16 v21, v0

    #@217
    move-object/from16 v0, p0

    #@219
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@21b
    move/from16 v22, v0

    #@21d
    aget-object v18, v21, v22

    #@21f
    .line 278
    .restart local v18    # "thisRule":Landroid/icu/text/RBBINode;
    move-object/from16 v0, p0

    #@221
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@223
    move-object/from16 v21, v0

    #@225
    move-object/from16 v0, v21

    #@227
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@229
    move-object/from16 v21, v0

    #@22b
    aget-object v12, v21, v5

    #@22d
    .line 279
    .local v12, "prevRules":Landroid/icu/text/RBBINode;
    const/16 v21, 0x9

    #@22f
    move-object/from16 v0, p0

    #@231
    move/from16 v1, v21

    #@233
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@236
    move-result-object v10

    #@237
    .line 280
    .restart local v10    # "orNode":Landroid/icu/text/RBBINode;
    iput-object v12, v10, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@239
    .line 281
    iput-object v10, v12, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@23b
    .line 282
    move-object/from16 v0, v18

    #@23d
    iput-object v0, v10, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@23f
    .line 283
    move-object/from16 v0, v18

    #@241
    iput-object v10, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@243
    .line 284
    move-object/from16 v0, p0

    #@245
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@247
    move-object/from16 v21, v0

    #@249
    move-object/from16 v0, v21

    #@24b
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@24d
    move-object/from16 v21, v0

    #@24f
    aput-object v10, v21, v5

    #@251
    .line 290
    .end local v10    # "orNode":Landroid/icu/text/RBBINode;
    .end local v12    # "prevRules":Landroid/icu/text/RBBINode;
    .end local v18    # "thisRule":Landroid/icu/text/RBBINode;
    :goto_3
    const/16 v21, 0x0

    #@253
    move/from16 v0, v21

    #@255
    move-object/from16 v1, p0

    #@257
    iput-boolean v0, v1, Landroid/icu/text/RBBIRuleScanner;->fReverseRule:Z

    #@259
    .line 291
    const/16 v21, 0x0

    #@25b
    move/from16 v0, v21

    #@25d
    move-object/from16 v1, p0

    #@25f
    iput-boolean v0, v1, Landroid/icu/text/RBBIRuleScanner;->fLookAheadRule:Z

    #@261
    .line 292
    const/16 v21, 0x0

    #@263
    move/from16 v0, v21

    #@265
    move-object/from16 v1, p0

    #@267
    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@269
    goto/16 :goto_0

    #@26b
    .line 243
    .end local v5    # "destRules":I
    :cond_3
    const/16 v21, 0x0

    #@26d
    goto/16 :goto_1

    #@26f
    .line 269
    :cond_4
    move-object/from16 v0, p0

    #@271
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@273
    move-object/from16 v21, v0

    #@275
    move-object/from16 v0, v21

    #@277
    iget v5, v0, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    #@279
    .restart local v5    # "destRules":I
    goto :goto_2

    #@27a
    .line 288
    :cond_5
    move-object/from16 v0, p0

    #@27c
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@27e
    move-object/from16 v21, v0

    #@280
    move-object/from16 v0, v21

    #@282
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@284
    move-object/from16 v21, v0

    #@286
    move-object/from16 v0, p0

    #@288
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@28a
    move-object/from16 v22, v0

    #@28c
    move-object/from16 v0, p0

    #@28e
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@290
    move/from16 v23, v0

    #@292
    aget-object v22, v22, v23

    #@294
    aput-object v22, v21, v5

    #@296
    goto :goto_3

    #@297
    .line 297
    .end local v5    # "destRules":I
    :pswitch_9
    const v21, 0x10204

    #@29a
    move-object/from16 v0, p0

    #@29c
    move/from16 v1, v21

    #@29e
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@2a1
    .line 298
    const/4 v14, 0x0

    #@2a2
    .line 299
    goto/16 :goto_0

    #@2a4
    .line 302
    :pswitch_a
    const v21, 0x10204

    #@2a7
    move-object/from16 v0, p0

    #@2a9
    move/from16 v1, v21

    #@2ab
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@2ae
    goto/16 :goto_0

    #@2b0
    .line 312
    :pswitch_b
    move-object/from16 v0, p0

    #@2b2
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@2b4
    move-object/from16 v21, v0

    #@2b6
    move-object/from16 v0, p0

    #@2b8
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@2ba
    move/from16 v22, v0

    #@2bc
    add-int/lit8 v23, v22, -0x1

    #@2be
    move/from16 v0, v23

    #@2c0
    move-object/from16 v1, p0

    #@2c2
    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@2c4
    aget-object v8, v21, v22

    #@2c6
    .line 313
    .restart local v8    # "operandNode":Landroid/icu/text/RBBINode;
    const/16 v21, 0xb

    #@2c8
    move-object/from16 v0, p0

    #@2ca
    move/from16 v1, v21

    #@2cc
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@2cf
    move-result-object v11

    #@2d0
    .line 314
    .local v11, "plusNode":Landroid/icu/text/RBBINode;
    iput-object v8, v11, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@2d2
    .line 315
    iput-object v11, v8, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@2d4
    goto/16 :goto_0

    #@2d6
    .line 320
    .end local v8    # "operandNode":Landroid/icu/text/RBBINode;
    .end local v11    # "plusNode":Landroid/icu/text/RBBINode;
    :pswitch_c
    move-object/from16 v0, p0

    #@2d8
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@2da
    move-object/from16 v21, v0

    #@2dc
    move-object/from16 v0, p0

    #@2de
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@2e0
    move/from16 v22, v0

    #@2e2
    add-int/lit8 v23, v22, -0x1

    #@2e4
    move/from16 v0, v23

    #@2e6
    move-object/from16 v1, p0

    #@2e8
    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@2ea
    aget-object v8, v21, v22

    #@2ec
    .line 321
    .restart local v8    # "operandNode":Landroid/icu/text/RBBINode;
    const/16 v21, 0xc

    #@2ee
    move-object/from16 v0, p0

    #@2f0
    move/from16 v1, v21

    #@2f2
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@2f5
    move-result-object v13

    #@2f6
    .line 322
    .local v13, "qNode":Landroid/icu/text/RBBINode;
    iput-object v8, v13, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@2f8
    .line 323
    iput-object v13, v8, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@2fa
    goto/16 :goto_0

    #@2fc
    .line 328
    .end local v8    # "operandNode":Landroid/icu/text/RBBINode;
    .end local v13    # "qNode":Landroid/icu/text/RBBINode;
    :pswitch_d
    move-object/from16 v0, p0

    #@2fe
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@300
    move-object/from16 v21, v0

    #@302
    move-object/from16 v0, p0

    #@304
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@306
    move/from16 v22, v0

    #@308
    add-int/lit8 v23, v22, -0x1

    #@30a
    move/from16 v0, v23

    #@30c
    move-object/from16 v1, p0

    #@30e
    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@310
    aget-object v8, v21, v22

    #@312
    .line 329
    .restart local v8    # "operandNode":Landroid/icu/text/RBBINode;
    const/16 v21, 0xa

    #@314
    move-object/from16 v0, p0

    #@316
    move/from16 v1, v21

    #@318
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@31b
    move-result-object v16

    #@31c
    .line 330
    .local v16, "starNode":Landroid/icu/text/RBBINode;
    move-object/from16 v0, v16

    #@31e
    iput-object v8, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@320
    .line 331
    move-object/from16 v0, v16

    #@322
    iput-object v0, v8, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@324
    goto/16 :goto_0

    #@326
    .line 343
    .end local v8    # "operandNode":Landroid/icu/text/RBBINode;
    .end local v16    # "starNode":Landroid/icu/text/RBBINode;
    :pswitch_e
    const/16 v21, 0x0

    #@328
    move-object/from16 v0, p0

    #@32a
    move/from16 v1, v21

    #@32c
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@32f
    move-result-object v7

    #@330
    .line 344
    .local v7, "n":Landroid/icu/text/RBBINode;
    move-object/from16 v0, p0

    #@332
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@334
    move-object/from16 v21, v0

    #@336
    move-object/from16 v0, v21

    #@338
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@33a
    move/from16 v21, v0

    #@33c
    move/from16 v0, v21

    #@33e
    int-to-char v0, v0

    #@33f
    move/from16 v21, v0

    #@341
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@344
    move-result-object v15

    #@345
    .line 345
    .local v15, "s":Ljava/lang/String;
    const/16 v21, 0x0

    #@347
    move-object/from16 v0, p0

    #@349
    move-object/from16 v1, v21

    #@34b
    invoke-virtual {v0, v15, v7, v1}, Landroid/icu/text/RBBIRuleScanner;->findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V

    #@34e
    .line 346
    move-object/from16 v0, p0

    #@350
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    #@352
    move/from16 v21, v0

    #@354
    move/from16 v0, v21

    #@356
    iput v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@358
    .line 347
    move-object/from16 v0, p0

    #@35a
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@35c
    move/from16 v21, v0

    #@35e
    move/from16 v0, v21

    #@360
    iput v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    #@362
    .line 348
    move-object/from16 v0, p0

    #@364
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@366
    move-object/from16 v21, v0

    #@368
    move-object/from16 v0, v21

    #@36a
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@36c
    move-object/from16 v21, v0

    #@36e
    iget v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@370
    move/from16 v22, v0

    #@372
    iget v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    #@374
    move/from16 v23, v0

    #@376
    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@379
    move-result-object v21

    #@37a
    move-object/from16 v0, v21

    #@37c
    iput-object v0, v7, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@37e
    goto/16 :goto_0

    #@380
    .line 355
    .end local v15    # "s":Ljava/lang/String;
    .local v7, "n":Landroid/icu/text/RBBINode;
    :pswitch_f
    const/16 v21, 0x0

    #@382
    move-object/from16 v0, p0

    #@384
    move/from16 v1, v21

    #@386
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@389
    move-result-object v7

    #@38a
    .line 356
    .local v7, "n":Landroid/icu/text/RBBINode;
    sget-object v21, Landroid/icu/text/RBBIRuleScanner;->kAny:Ljava/lang/String;

    #@38c
    const/16 v22, 0x0

    #@38e
    move-object/from16 v0, p0

    #@390
    move-object/from16 v1, v21

    #@392
    move-object/from16 v2, v22

    #@394
    invoke-virtual {v0, v1, v7, v2}, Landroid/icu/text/RBBIRuleScanner;->findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V

    #@397
    .line 357
    move-object/from16 v0, p0

    #@399
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    #@39b
    move/from16 v21, v0

    #@39d
    move/from16 v0, v21

    #@39f
    iput v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@3a1
    .line 358
    move-object/from16 v0, p0

    #@3a3
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@3a5
    move/from16 v21, v0

    #@3a7
    move/from16 v0, v21

    #@3a9
    iput v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    #@3ab
    .line 359
    move-object/from16 v0, p0

    #@3ad
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@3af
    move-object/from16 v21, v0

    #@3b1
    move-object/from16 v0, v21

    #@3b3
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@3b5
    move-object/from16 v21, v0

    #@3b7
    iget v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@3b9
    move/from16 v22, v0

    #@3bb
    iget v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    #@3bd
    move/from16 v23, v0

    #@3bf
    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3c2
    move-result-object v21

    #@3c3
    move-object/from16 v0, v21

    #@3c5
    iput-object v0, v7, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@3c7
    goto/16 :goto_0

    #@3c9
    .line 366
    .local v7, "n":Landroid/icu/text/RBBINode;
    :pswitch_10
    const/16 v21, 0x4

    #@3cb
    move-object/from16 v0, p0

    #@3cd
    move/from16 v1, v21

    #@3cf
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@3d2
    move-result-object v7

    #@3d3
    .line 367
    .local v7, "n":Landroid/icu/text/RBBINode;
    move-object/from16 v0, p0

    #@3d5
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    #@3d7
    move/from16 v21, v0

    #@3d9
    move/from16 v0, v21

    #@3db
    iput v0, v7, Landroid/icu/text/RBBINode;->fVal:I

    #@3dd
    .line 368
    move-object/from16 v0, p0

    #@3df
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    #@3e1
    move/from16 v21, v0

    #@3e3
    move/from16 v0, v21

    #@3e5
    iput v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@3e7
    .line 369
    move-object/from16 v0, p0

    #@3e9
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@3eb
    move/from16 v21, v0

    #@3ed
    move/from16 v0, v21

    #@3ef
    iput v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    #@3f1
    .line 370
    move-object/from16 v0, p0

    #@3f3
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@3f5
    move-object/from16 v21, v0

    #@3f7
    move-object/from16 v0, v21

    #@3f9
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@3fb
    move-object/from16 v21, v0

    #@3fd
    iget v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@3ff
    move/from16 v22, v0

    #@401
    iget v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    #@403
    move/from16 v23, v0

    #@405
    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@408
    move-result-object v21

    #@409
    move-object/from16 v0, v21

    #@40b
    iput-object v0, v7, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@40d
    .line 371
    const/16 v21, 0x1

    #@40f
    move/from16 v0, v21

    #@411
    move-object/from16 v1, p0

    #@413
    iput-boolean v0, v1, Landroid/icu/text/RBBIRuleScanner;->fLookAheadRule:Z

    #@415
    goto/16 :goto_0

    #@417
    .line 377
    .local v7, "n":Landroid/icu/text/RBBINode;
    :pswitch_11
    const/16 v21, 0x5

    #@419
    move-object/from16 v0, p0

    #@41b
    move/from16 v1, v21

    #@41d
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@420
    move-result-object v7

    #@421
    .line 378
    .local v7, "n":Landroid/icu/text/RBBINode;
    const/16 v21, 0x0

    #@423
    move/from16 v0, v21

    #@425
    iput v0, v7, Landroid/icu/text/RBBINode;->fVal:I

    #@427
    .line 379
    move-object/from16 v0, p0

    #@429
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    #@42b
    move/from16 v21, v0

    #@42d
    move/from16 v0, v21

    #@42f
    iput v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@431
    .line 380
    move-object/from16 v0, p0

    #@433
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@435
    move/from16 v21, v0

    #@437
    move/from16 v0, v21

    #@439
    iput v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    #@43b
    goto/16 :goto_0

    #@43d
    .line 386
    .local v7, "n":Landroid/icu/text/RBBINode;
    :pswitch_12
    move-object/from16 v0, p0

    #@43f
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@441
    move-object/from16 v21, v0

    #@443
    move-object/from16 v0, p0

    #@445
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@447
    move/from16 v22, v0

    #@449
    aget-object v7, v21, v22

    #@44b
    .line 387
    .local v7, "n":Landroid/icu/text/RBBINode;
    move-object/from16 v0, p0

    #@44d
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@44f
    move-object/from16 v21, v0

    #@451
    move-object/from16 v0, v21

    #@453
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@455
    move/from16 v21, v0

    #@457
    move/from16 v0, v21

    #@459
    int-to-char v0, v0

    #@45a
    move/from16 v21, v0

    #@45c
    const/16 v22, 0xa

    #@45e
    invoke-static/range {v21 .. v22}, Landroid/icu/lang/UCharacter;->digit(II)I

    #@461
    move-result v19

    #@462
    .line 388
    .local v19, "v":I
    iget v0, v7, Landroid/icu/text/RBBINode;->fVal:I

    #@464
    move/from16 v21, v0

    #@466
    mul-int/lit8 v21, v21, 0xa

    #@468
    add-int v21, v21, v19

    #@46a
    move/from16 v0, v21

    #@46c
    iput v0, v7, Landroid/icu/text/RBBINode;->fVal:I

    #@46e
    goto/16 :goto_0

    #@470
    .line 393
    .end local v19    # "v":I
    .local v7, "n":Landroid/icu/text/RBBINode;
    :pswitch_13
    move-object/from16 v0, p0

    #@472
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@474
    move-object/from16 v21, v0

    #@476
    move-object/from16 v0, p0

    #@478
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@47a
    move/from16 v22, v0

    #@47c
    aget-object v7, v21, v22

    #@47e
    .line 394
    .local v7, "n":Landroid/icu/text/RBBINode;
    move-object/from16 v0, p0

    #@480
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@482
    move/from16 v21, v0

    #@484
    move/from16 v0, v21

    #@486
    iput v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    #@488
    .line 395
    move-object/from16 v0, p0

    #@48a
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@48c
    move-object/from16 v21, v0

    #@48e
    move-object/from16 v0, v21

    #@490
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@492
    move-object/from16 v21, v0

    #@494
    iget v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@496
    move/from16 v22, v0

    #@498
    iget v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    #@49a
    move/from16 v23, v0

    #@49c
    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@49f
    move-result-object v21

    #@4a0
    move-object/from16 v0, v21

    #@4a2
    iput-object v0, v7, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@4a4
    goto/16 :goto_0

    #@4a6
    .line 399
    .local v7, "n":Landroid/icu/text/RBBINode;
    :pswitch_14
    const v21, 0x1020e

    #@4a9
    move-object/from16 v0, p0

    #@4ab
    move/from16 v1, v21

    #@4ad
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@4b0
    .line 400
    const/4 v14, 0x0

    #@4b1
    .line 401
    goto/16 :goto_0

    #@4b3
    .line 405
    :pswitch_15
    move-object/from16 v0, p0

    #@4b5
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    #@4b7
    move/from16 v21, v0

    #@4b9
    move/from16 v0, v21

    #@4bb
    move-object/from16 v1, p0

    #@4bd
    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fOptionStart:I

    #@4bf
    goto/16 :goto_0

    #@4c1
    .line 409
    :pswitch_16
    move-object/from16 v0, p0

    #@4c3
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@4c5
    move-object/from16 v21, v0

    #@4c7
    move-object/from16 v0, v21

    #@4c9
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@4cb
    move-object/from16 v21, v0

    #@4cd
    move-object/from16 v0, p0

    #@4cf
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fOptionStart:I

    #@4d1
    move/from16 v22, v0

    #@4d3
    move-object/from16 v0, p0

    #@4d5
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    #@4d7
    move/from16 v23, v0

    #@4d9
    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4dc
    move-result-object v9

    #@4dd
    .line 410
    .local v9, "opt":Ljava/lang/String;
    const-string/jumbo v21, "chain"

    #@4e0
    move-object/from16 v0, v21

    #@4e2
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e5
    move-result v21

    #@4e6
    if-eqz v21, :cond_6

    #@4e8
    .line 411
    move-object/from16 v0, p0

    #@4ea
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@4ec
    move-object/from16 v21, v0

    #@4ee
    const/16 v22, 0x1

    #@4f0
    move/from16 v0, v22

    #@4f2
    move-object/from16 v1, v21

    #@4f4
    iput-boolean v0, v1, Landroid/icu/text/RBBIRuleBuilder;->fChainRules:Z

    #@4f6
    goto/16 :goto_0

    #@4f8
    .line 412
    :cond_6
    const-string/jumbo v21, "LBCMNoChain"

    #@4fb
    move-object/from16 v0, v21

    #@4fd
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@500
    move-result v21

    #@501
    if-eqz v21, :cond_7

    #@503
    .line 413
    move-object/from16 v0, p0

    #@505
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@507
    move-object/from16 v21, v0

    #@509
    const/16 v22, 0x1

    #@50b
    move/from16 v0, v22

    #@50d
    move-object/from16 v1, v21

    #@50f
    iput-boolean v0, v1, Landroid/icu/text/RBBIRuleBuilder;->fLBCMNoChain:Z

    #@511
    goto/16 :goto_0

    #@513
    .line 414
    :cond_7
    const-string/jumbo v21, "forward"

    #@516
    move-object/from16 v0, v21

    #@518
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51b
    move-result v21

    #@51c
    if-eqz v21, :cond_8

    #@51e
    .line 415
    move-object/from16 v0, p0

    #@520
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@522
    move-object/from16 v21, v0

    #@524
    const/16 v22, 0x0

    #@526
    move/from16 v0, v22

    #@528
    move-object/from16 v1, v21

    #@52a
    iput v0, v1, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    #@52c
    goto/16 :goto_0

    #@52e
    .line 416
    :cond_8
    const-string/jumbo v21, "reverse"

    #@531
    move-object/from16 v0, v21

    #@533
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@536
    move-result v21

    #@537
    if-eqz v21, :cond_9

    #@539
    .line 417
    move-object/from16 v0, p0

    #@53b
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@53d
    move-object/from16 v21, v0

    #@53f
    const/16 v22, 0x1

    #@541
    move/from16 v0, v22

    #@543
    move-object/from16 v1, v21

    #@545
    iput v0, v1, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    #@547
    goto/16 :goto_0

    #@549
    .line 418
    :cond_9
    const-string/jumbo v21, "safe_forward"

    #@54c
    move-object/from16 v0, v21

    #@54e
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@551
    move-result v21

    #@552
    if-eqz v21, :cond_a

    #@554
    .line 419
    move-object/from16 v0, p0

    #@556
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@558
    move-object/from16 v21, v0

    #@55a
    const/16 v22, 0x2

    #@55c
    move/from16 v0, v22

    #@55e
    move-object/from16 v1, v21

    #@560
    iput v0, v1, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    #@562
    goto/16 :goto_0

    #@564
    .line 420
    :cond_a
    const-string/jumbo v21, "safe_reverse"

    #@567
    move-object/from16 v0, v21

    #@569
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56c
    move-result v21

    #@56d
    if-eqz v21, :cond_b

    #@56f
    .line 421
    move-object/from16 v0, p0

    #@571
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@573
    move-object/from16 v21, v0

    #@575
    const/16 v22, 0x3

    #@577
    move/from16 v0, v22

    #@579
    move-object/from16 v1, v21

    #@57b
    iput v0, v1, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    #@57d
    goto/16 :goto_0

    #@57f
    .line 422
    :cond_b
    const-string/jumbo v21, "lookAheadHardBreak"

    #@582
    move-object/from16 v0, v21

    #@584
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@587
    move-result v21

    #@588
    if-eqz v21, :cond_c

    #@58a
    .line 423
    move-object/from16 v0, p0

    #@58c
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@58e
    move-object/from16 v21, v0

    #@590
    const/16 v22, 0x1

    #@592
    move/from16 v0, v22

    #@594
    move-object/from16 v1, v21

    #@596
    iput-boolean v0, v1, Landroid/icu/text/RBBIRuleBuilder;->fLookAheadHardBreak:Z

    #@598
    goto/16 :goto_0

    #@59a
    .line 425
    :cond_c
    const v21, 0x1020d

    #@59d
    move-object/from16 v0, p0

    #@59f
    move/from16 v1, v21

    #@5a1
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@5a4
    goto/16 :goto_0

    #@5a6
    .line 431
    .end local v9    # "opt":Ljava/lang/String;
    :pswitch_17
    const/16 v21, 0x1

    #@5a8
    move/from16 v0, v21

    #@5aa
    move-object/from16 v1, p0

    #@5ac
    iput-boolean v0, v1, Landroid/icu/text/RBBIRuleScanner;->fReverseRule:Z

    #@5ae
    goto/16 :goto_0

    #@5b0
    .line 435
    :pswitch_18
    const/16 v21, 0x2

    #@5b2
    move-object/from16 v0, p0

    #@5b4
    move/from16 v1, v21

    #@5b6
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@5b9
    move-result-object v7

    #@5ba
    .line 436
    .local v7, "n":Landroid/icu/text/RBBINode;
    move-object/from16 v0, p0

    #@5bc
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    #@5be
    move/from16 v21, v0

    #@5c0
    move/from16 v0, v21

    #@5c2
    iput v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@5c4
    goto/16 :goto_0

    #@5c6
    .line 440
    .local v7, "n":Landroid/icu/text/RBBINode;
    :pswitch_19
    move-object/from16 v0, p0

    #@5c8
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@5ca
    move-object/from16 v21, v0

    #@5cc
    move-object/from16 v0, p0

    #@5ce
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@5d0
    move/from16 v22, v0

    #@5d2
    aget-object v7, v21, v22

    #@5d4
    .line 441
    .local v7, "n":Landroid/icu/text/RBBINode;
    if-eqz v7, :cond_d

    #@5d6
    iget v0, v7, Landroid/icu/text/RBBINode;->fType:I

    #@5d8
    move/from16 v21, v0

    #@5da
    const/16 v22, 0x2

    #@5dc
    move/from16 v0, v21

    #@5de
    move/from16 v1, v22

    #@5e0
    if-eq v0, v1, :cond_e

    #@5e2
    .line 442
    :cond_d
    const v21, 0x10201

    #@5e5
    move-object/from16 v0, p0

    #@5e7
    move/from16 v1, v21

    #@5e9
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@5ec
    goto/16 :goto_0

    #@5ee
    .line 445
    :cond_e
    move-object/from16 v0, p0

    #@5f0
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    #@5f2
    move/from16 v21, v0

    #@5f4
    move/from16 v0, v21

    #@5f6
    iput v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    #@5f8
    .line 446
    move-object/from16 v0, p0

    #@5fa
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@5fc
    move-object/from16 v21, v0

    #@5fe
    move-object/from16 v0, v21

    #@600
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@602
    move-object/from16 v21, v0

    #@604
    iget v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@606
    move/from16 v22, v0

    #@608
    add-int/lit8 v22, v22, 0x1

    #@60a
    iget v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    #@60c
    move/from16 v23, v0

    #@60e
    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@611
    move-result-object v21

    #@612
    move-object/from16 v0, v21

    #@614
    iput-object v0, v7, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@616
    .line 454
    move-object/from16 v0, p0

    #@618
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    #@61a
    move-object/from16 v21, v0

    #@61c
    iget-object v0, v7, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@61e
    move-object/from16 v22, v0

    #@620
    invoke-virtual/range {v21 .. v22}, Landroid/icu/text/RBBISymbolTable;->lookupNode(Ljava/lang/String;)Landroid/icu/text/RBBINode;

    #@623
    move-result-object v21

    #@624
    move-object/from16 v0, v21

    #@626
    iput-object v0, v7, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@628
    goto/16 :goto_0

    #@62a
    .line 458
    .local v7, "n":Landroid/icu/text/RBBINode;
    :pswitch_1a
    move-object/from16 v0, p0

    #@62c
    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@62e
    move-object/from16 v21, v0

    #@630
    move-object/from16 v0, p0

    #@632
    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@634
    move/from16 v22, v0

    #@636
    aget-object v7, v21, v22

    #@638
    .line 459
    .local v7, "n":Landroid/icu/text/RBBINode;
    iget-object v0, v7, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@63a
    move-object/from16 v21, v0

    #@63c
    if-nez v21, :cond_0

    #@63e
    .line 460
    const v21, 0x1020a

    #@641
    move-object/from16 v0, p0

    #@643
    move/from16 v1, v21

    #@645
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@648
    .line 461
    const/4 v14, 0x0

    #@649
    goto/16 :goto_0

    #@64b
    .line 469
    .local v7, "n":Landroid/icu/text/RBBINode;
    :pswitch_1b
    const v21, 0x10206

    #@64e
    move-object/from16 v0, p0

    #@650
    move/from16 v1, v21

    #@652
    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@655
    .line 470
    const/4 v14, 0x0

    #@656
    .line 471
    goto/16 :goto_0

    #@658
    .line 474
    :pswitch_1c
    const/4 v14, 0x0

    #@659
    .line 475
    goto/16 :goto_0

    #@65b
    .line 478
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/RBBIRuleScanner;->scanSet()V

    #@65e
    goto/16 :goto_0

    #@660
    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_f
        :pswitch_7
        :pswitch_8
        :pswitch_19
        :pswitch_1c
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_17
        :pswitch_e
        :pswitch_9
        :pswitch_1b
        :pswitch_1d
        :pswitch_10
        :pswitch_6
        :pswitch_11
        :pswitch_18
        :pswitch_12
        :pswitch_14
        :pswitch_13
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method error(I)V
    .locals 4
    .param p1, "e"    # I

    #@0
    .prologue
    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "Error "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    const-string/jumbo v3, " at line "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, " column "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    .line 497
    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    #@26
    .line 496
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 498
    .local v1, "s":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    .line 499
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    throw v0
.end method

.method findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "node"    # Landroid/icu/text/RBBINode;
    .param p3, "setToAdopt"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 604
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fSetTable:Ljava/util/HashMap;

    #@4
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;

    #@a
    .line 605
    .local v1, "el":Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;
    if-eqz v1, :cond_1

    #@c
    .line 606
    iget-object v5, v1, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->val:Landroid/icu/text/RBBINode;

    #@e
    iput-object v5, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@10
    .line 607
    iget-object v5, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@12
    iget v5, v5, Landroid/icu/text/RBBINode;->fType:I

    #@14
    if-ne v5, v3, :cond_0

    #@16
    :goto_0
    invoke-static {v3}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@19
    .line 608
    return-void

    #@1a
    :cond_0
    move v3, v4

    #@1b
    .line 607
    goto :goto_0

    #@1c
    .line 614
    :cond_1
    if-nez p3, :cond_2

    #@1e
    .line 615
    sget-object v5, Landroid/icu/text/RBBIRuleScanner;->kAny:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_3

    #@26
    .line 616
    new-instance p3, Landroid/icu/text/UnicodeSet;

    #@28
    .end local p3    # "setToAdopt":Landroid/icu/text/UnicodeSet;
    const v5, 0x10ffff

    #@2b
    invoke-direct {p3, v4, v5}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    #@2e
    .line 629
    .restart local p3    # "setToAdopt":Landroid/icu/text/UnicodeSet;
    :cond_2
    :goto_1
    new-instance v2, Landroid/icu/text/RBBINode;

    #@30
    invoke-direct {v2, v3}, Landroid/icu/text/RBBINode;-><init>(I)V

    #@33
    .line 630
    .local v2, "usetNode":Landroid/icu/text/RBBINode;
    iput-object p3, v2, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    #@35
    .line 631
    iput-object p2, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@37
    .line 632
    iput-object v2, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@39
    .line 633
    iput-object p1, v2, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@3b
    .line 638
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@3d
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    #@3f
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@42
    .line 643
    new-instance v1, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;

    #@44
    .end local v1    # "el":Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;
    invoke-direct {v1}, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;-><init>()V

    #@47
    .line 644
    .restart local v1    # "el":Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;
    iput-object p1, v1, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->key:Ljava/lang/String;

    #@49
    .line 645
    iput-object v2, v1, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->val:Landroid/icu/text/RBBINode;

    #@4b
    .line 646
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fSetTable:Ljava/util/HashMap;

    #@4d
    iget-object v4, v1, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->key:Ljava/lang/String;

    #@4f
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 648
    return-void

    #@53
    .line 619
    .end local v2    # "usetNode":Landroid/icu/text/RBBINode;
    :cond_3
    invoke-static {p1, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@56
    move-result v0

    #@57
    .line 620
    .local v0, "c":I
    new-instance p3, Landroid/icu/text/UnicodeSet;

    #@59
    .end local p3    # "setToAdopt":Landroid/icu/text/UnicodeSet;
    invoke-direct {p3, v0, v0}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    #@5c
    .restart local p3    # "setToAdopt":Landroid/icu/text/UnicodeSet;
    goto :goto_1
.end method

.method fixOpStack(I)V
    .locals 5
    .param p1, "p"    # I

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 523
    :goto_0
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@3
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@5
    add-int/lit8 v2, v2, -0x1

    #@7
    aget-object v0, v1, v2

    #@9
    .line 524
    .local v0, "n":Landroid/icu/text/RBBINode;
    iget v1, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    #@b
    if-nez v1, :cond_0

    #@d
    .line 525
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    const-string/jumbo v2, "RBBIRuleScanner.fixOpStack, bad operator node"

    #@12
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@15
    .line 526
    const v1, 0x10201

    #@18
    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@1b
    .line 527
    return-void

    #@1c
    .line 530
    :cond_0
    iget v1, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    #@1e
    if-lt v1, p1, :cond_1

    #@20
    iget v1, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    #@22
    if-gt v1, v3, :cond_4

    #@24
    .line 544
    :cond_1
    if-gt p1, v3, :cond_3

    #@26
    .line 550
    iget v1, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    #@28
    if-eq v1, p1, :cond_2

    #@2a
    .line 553
    const v1, 0x10208

    #@2d
    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@30
    .line 555
    :cond_2
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@32
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@34
    add-int/lit8 v2, v2, -0x1

    #@36
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@38
    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@3a
    aget-object v3, v3, v4

    #@3c
    aput-object v3, v1, v2

    #@3e
    .line 556
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@40
    add-int/lit8 v1, v1, -0x1

    #@42
    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@44
    .line 519
    :cond_3
    return-void

    #@45
    .line 538
    :cond_4
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@47
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@49
    aget-object v1, v1, v2

    #@4b
    iput-object v1, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@4d
    .line 539
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@4f
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@51
    aget-object v1, v1, v2

    #@53
    iput-object v0, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@55
    .line 540
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@57
    add-int/lit8 v1, v1, -0x1

    #@59
    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@5b
    goto :goto_0
.end method

.method nextChar(Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;)V
    .locals 7
    .param p1, "c"    # Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@0
    .prologue
    const/16 v6, 0x27

    #@2
    const/4 v5, -0x1

    #@3
    const/4 v1, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 735
    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@7
    iput v3, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    #@9
    .line 736
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    #@c
    move-result v3

    #@d
    iput v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@f
    .line 737
    iput-boolean v2, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    #@11
    .line 743
    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@13
    if-ne v3, v6, :cond_0

    #@15
    .line 744
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@17
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@19
    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@1b
    invoke-static {v3, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@1e
    move-result v3

    #@1f
    if-ne v3, v6, :cond_2

    #@21
    .line 745
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    #@24
    move-result v3

    #@25
    iput v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@27
    .line 746
    iput-boolean v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    #@29
    .line 762
    :cond_0
    iget-boolean v3, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    #@2b
    if-eqz v3, :cond_5

    #@2d
    .line 763
    iput-boolean v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    #@2f
    .line 730
    :cond_1
    :goto_0
    return-void

    #@30
    .line 751
    :cond_2
    iget-boolean v3, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    #@32
    if-eqz v3, :cond_3

    #@34
    move v1, v2

    #@35
    :cond_3
    iput-boolean v1, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    #@37
    .line 752
    iget-boolean v1, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    #@39
    if-eqz v1, :cond_4

    #@3b
    .line 753
    const/16 v1, 0x28

    #@3d
    iput v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@3f
    .line 757
    :goto_1
    iput-boolean v2, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    #@41
    .line 758
    return-void

    #@42
    .line 755
    :cond_4
    const/16 v1, 0x29

    #@44
    iput v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@46
    goto :goto_1

    #@47
    .line 767
    :cond_5
    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@49
    const/16 v4, 0x23

    #@4b
    if-ne v3, v4, :cond_7

    #@4d
    .line 774
    :cond_6
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    #@50
    move-result v3

    #@51
    iput v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@53
    .line 775
    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@55
    if-eq v3, v5, :cond_7

    #@57
    .line 776
    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@59
    const/16 v4, 0xd

    #@5b
    if-ne v3, v4, :cond_8

    #@5d
    .line 785
    :cond_7
    :goto_2
    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@5f
    if-ne v3, v5, :cond_9

    #@61
    .line 786
    return-void

    #@62
    .line 777
    :cond_8
    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@64
    const/16 v4, 0xa

    #@66
    if-eq v3, v4, :cond_7

    #@68
    .line 778
    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@6a
    const/16 v4, 0x85

    #@6c
    if-eq v3, v4, :cond_7

    #@6e
    .line 779
    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@70
    const/16 v4, 0x2028

    #@72
    if-ne v3, v4, :cond_6

    #@74
    goto :goto_2

    #@75
    .line 793
    :cond_9
    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@77
    const/16 v4, 0x5c

    #@79
    if-ne v3, v4, :cond_1

    #@7b
    .line 794
    iput-boolean v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    #@7d
    .line 795
    new-array v0, v1, [I

    #@7f
    .line 796
    .local v0, "unescapeIndex":[I
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@81
    aput v1, v0, v2

    #@83
    .line 797
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@85
    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@87
    invoke-static {v1, v0}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    #@8a
    move-result v1

    #@8b
    iput v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@8d
    .line 798
    aget v1, v0, v2

    #@8f
    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@91
    if-ne v1, v3, :cond_a

    #@93
    .line 799
    const v1, 0x10202

    #@96
    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@99
    .line 802
    :cond_a
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    #@9b
    aget v3, v0, v2

    #@9d
    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@9f
    sub-int/2addr v3, v4

    #@a0
    add-int/2addr v1, v3

    #@a1
    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    #@a3
    .line 803
    aget v1, v0, v2

    #@a5
    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@a7
    goto :goto_0
.end method

.method nextCharLL()I
    .locals 7

    #@0
    .prologue
    const/16 v6, 0xd

    #@2
    const/16 v5, 0xa

    #@4
    const/4 v4, 0x0

    #@5
    .line 694
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@7
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@9
    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@e
    move-result v2

    #@f
    if-lt v1, v2, :cond_0

    #@11
    .line 695
    const/4 v1, -0x1

    #@12
    return v1

    #@13
    .line 697
    :cond_0
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@15
    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@17
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@19
    invoke-static {v1, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@1c
    move-result v0

    #@1d
    .line 698
    .local v0, "ch":I
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@1f
    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@21
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@23
    const/4 v3, 0x1

    #@24
    invoke-static {v1, v2, v3}, Landroid/icu/text/UTF16;->moveCodePointOffset(Ljava/lang/String;II)I

    #@27
    move-result v1

    #@28
    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@2a
    .line 700
    if-eq v0, v6, :cond_1

    #@2c
    .line 701
    const/16 v1, 0x85

    #@2e
    if-ne v0, v1, :cond_3

    #@30
    .line 706
    :cond_1
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    #@32
    add-int/lit8 v1, v1, 0x1

    #@34
    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    #@36
    .line 707
    iput v4, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    #@38
    .line 708
    iget-boolean v1, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    #@3a
    if-eqz v1, :cond_2

    #@3c
    .line 709
    const v1, 0x10209

    #@3f
    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@42
    .line 710
    iput-boolean v4, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    #@44
    .line 719
    :cond_2
    :goto_0
    iput v0, p0, Landroid/icu/text/RBBIRuleScanner;->fLastChar:I

    #@46
    .line 720
    return v0

    #@47
    .line 702
    :cond_3
    const/16 v1, 0x2028

    #@49
    if-eq v0, v1, :cond_1

    #@4b
    .line 703
    if-ne v0, v5, :cond_4

    #@4d
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fLastChar:I

    #@4f
    if-ne v1, v6, :cond_1

    #@51
    .line 715
    :cond_4
    if-eq v0, v5, :cond_2

    #@53
    .line 716
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    #@55
    add-int/lit8 v1, v1, 0x1

    #@57
    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    #@59
    goto :goto_0
.end method

.method parse()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, -0x1

    #@2
    const/4 v10, 0x0

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    .line 821
    const/4 v1, 0x1

    #@6
    .line 822
    .local v1, "state":I
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@8
    invoke-virtual {p0, v5}, Landroid/icu/text/RBBIRuleScanner;->nextChar(Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;)V

    #@b
    .line 834
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    #@d
    .line 938
    :cond_1
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@f
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@11
    aget-object v5, v5, v9

    #@13
    if-nez v5, :cond_2

    #@15
    .line 939
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@17
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@19
    const/16 v6, 0xa

    #@1b
    invoke-virtual {p0, v6}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@1e
    move-result-object v6

    #@1f
    aput-object v6, v5, v9

    #@21
    .line 940
    invoke-virtual {p0, v8}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@24
    move-result-object v0

    #@25
    .line 941
    .local v0, "operand":Landroid/icu/text/RBBINode;
    sget-object v5, Landroid/icu/text/RBBIRuleScanner;->kAny:Ljava/lang/String;

    #@27
    invoke-virtual {p0, v5, v0, v10}, Landroid/icu/text/RBBIRuleScanner;->findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V

    #@2a
    .line 942
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@2c
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@2e
    aget-object v5, v5, v9

    #@30
    iput-object v0, v5, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@32
    .line 943
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@34
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@36
    aget-object v5, v5, v9

    #@38
    iput-object v5, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@3a
    .line 944
    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@3c
    add-int/lit8 v5, v5, -0x2

    #@3e
    iput v5, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@40
    .line 952
    .end local v0    # "operand":Landroid/icu/text/RBBINode;
    :cond_2
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@42
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@44
    if-eqz v5, :cond_3

    #@46
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@48
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@4a
    const-string/jumbo v6, "symbols"

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@50
    move-result v5

    #@51
    if-ltz v5, :cond_3

    #@53
    .line 953
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    #@55
    invoke-virtual {v5}, Landroid/icu/text/RBBISymbolTable;->rbbiSymtablePrint()V

    #@58
    .line 955
    :cond_3
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@5a
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@5c
    if-eqz v5, :cond_4

    #@5e
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@60
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@62
    const-string/jumbo v6, "ptree"

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@68
    move-result v5

    #@69
    if-ltz v5, :cond_4

    #@6b
    .line 956
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6d
    const-string/jumbo v6, "Completed Forward Rules Parse Tree..."

    #@70
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@73
    .line 957
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@75
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@77
    aget-object v5, v5, v8

    #@79
    invoke-virtual {v5, v9}, Landroid/icu/text/RBBINode;->printTree(Z)V

    #@7c
    .line 958
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7e
    const-string/jumbo v6, "\nCompleted Reverse Rules Parse Tree..."

    #@81
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@84
    .line 959
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@86
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@88
    aget-object v5, v5, v9

    #@8a
    invoke-virtual {v5, v9}, Landroid/icu/text/RBBINode;->printTree(Z)V

    #@8d
    .line 960
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8f
    const-string/jumbo v6, "\nCompleted Safe Point Forward Rules Parse Tree..."

    #@92
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@95
    .line 961
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@97
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@99
    aget-object v5, v5, v12

    #@9b
    if-nez v5, :cond_13

    #@9d
    .line 962
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9f
    const-string/jumbo v6, "  -- null -- "

    #@a2
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a5
    .line 966
    :goto_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a7
    const-string/jumbo v6, "\nCompleted Safe Point Reverse Rules Parse Tree..."

    #@aa
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ad
    .line 967
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@af
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@b1
    const/4 v6, 0x3

    #@b2
    aget-object v5, v5, v6

    #@b4
    if-nez v5, :cond_14

    #@b6
    .line 968
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b8
    const-string/jumbo v6, "  -- null -- "

    #@bb
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@be
    .line 817
    :cond_4
    :goto_2
    return-void

    #@bf
    .line 844
    :cond_5
    sget-object v5, Landroid/icu/text/RBBIRuleParseTable;->gRuleParseStateTable:[Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    #@c1
    aget-object v2, v5, v1

    #@c3
    .line 845
    .local v2, "tableEl":Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@c5
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@c7
    if-eqz v5, :cond_6

    #@c9
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@cb
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@cd
    const-string/jumbo v6, "scan"

    #@d0
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@d3
    move-result v5

    #@d4
    if-ltz v5, :cond_6

    #@d6
    .line 846
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@d8
    new-instance v6, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v7, "char, line, col = (\'"

    #@e0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v6

    #@e4
    iget-object v7, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@e6
    iget v7, v7, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@e8
    int-to-char v7, v7

    #@e9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v6

    #@ed
    .line 847
    const-string/jumbo v7, "\', "

    #@f0
    .line 846
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v6

    #@f4
    .line 847
    iget v7, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    #@f6
    .line 846
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v6

    #@fa
    .line 847
    const-string/jumbo v7, ", "

    #@fd
    .line 846
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v6

    #@101
    .line 847
    iget v7, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    #@103
    .line 846
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@106
    move-result-object v6

    #@107
    .line 847
    const-string/jumbo v7, "    state = "

    #@10a
    .line 846
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v6

    #@10e
    .line 848
    iget-object v7, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fStateName:Ljava/lang/String;

    #@110
    .line 846
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v6

    #@114
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@117
    move-result-object v6

    #@118
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@11b
    .line 851
    :cond_6
    move v3, v1

    #@11c
    .line 852
    .local v3, "tableRow":I
    :goto_3
    sget-object v5, Landroid/icu/text/RBBIRuleParseTable;->gRuleParseStateTable:[Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    #@11e
    aget-object v2, v5, v3

    #@120
    .line 853
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@122
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@124
    if-eqz v5, :cond_7

    #@126
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@128
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@12a
    const-string/jumbo v6, "scan"

    #@12d
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@130
    move-result v5

    #@131
    if-ltz v5, :cond_7

    #@133
    .line 854
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@135
    const-string/jumbo v6, "."

    #@138
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@13b
    .line 856
    :cond_7
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    #@13d
    const/16 v6, 0x7f

    #@13f
    if-ge v5, v6, :cond_d

    #@141
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@143
    iget-boolean v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    #@145
    if-nez v5, :cond_d

    #@147
    .line 857
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    #@149
    iget-object v6, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@14b
    iget v6, v6, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@14d
    if-ne v5, v6, :cond_d

    #@14f
    .line 893
    :cond_8
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@151
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@153
    if-eqz v5, :cond_9

    #@155
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@157
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@159
    const-string/jumbo v6, "scan"

    #@15c
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@15f
    move-result v5

    #@160
    if-ltz v5, :cond_9

    #@162
    .line 894
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@164
    const-string/jumbo v6, ""

    #@167
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@16a
    .line 900
    :cond_9
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fAction:S

    #@16c
    invoke-virtual {p0, v5}, Landroid/icu/text/RBBIRuleScanner;->doParseActions(I)Z

    #@16f
    move-result v5

    #@170
    if-eqz v5, :cond_1

    #@172
    .line 907
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fPushState:S

    #@174
    if-eqz v5, :cond_b

    #@176
    .line 908
    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    #@178
    add-int/lit8 v5, v5, 0x1

    #@17a
    iput v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    #@17c
    .line 909
    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    #@17e
    const/16 v6, 0x64

    #@180
    if-lt v5, v6, :cond_a

    #@182
    .line 910
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@184
    const-string/jumbo v6, "RBBIRuleScanner.parse() - state stack overflow."

    #@187
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18a
    .line 911
    const v5, 0x10201

    #@18d
    invoke-virtual {p0, v5}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@190
    .line 913
    :cond_a
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStack:[S

    #@192
    iget v6, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    #@194
    iget-short v7, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fPushState:S

    #@196
    aput-short v7, v5, v6

    #@198
    .line 916
    :cond_b
    iget-boolean v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextChar:Z

    #@19a
    if-eqz v5, :cond_c

    #@19c
    .line 917
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@19e
    invoke-virtual {p0, v5}, Landroid/icu/text/RBBIRuleScanner;->nextChar(Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;)V

    #@1a1
    .line 922
    :cond_c
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextState:S

    #@1a3
    const/16 v6, 0xff

    #@1a5
    if-eq v5, v6, :cond_12

    #@1a7
    .line 923
    iget-short v1, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextState:S

    #@1a9
    goto/16 :goto_0

    #@1ab
    .line 863
    :cond_d
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    #@1ad
    const/16 v6, 0xff

    #@1af
    if-eq v5, v6, :cond_8

    #@1b1
    .line 867
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    #@1b3
    const/16 v6, 0xfe

    #@1b5
    if-ne v5, v6, :cond_e

    #@1b7
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@1b9
    iget-boolean v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    #@1bb
    if-nez v5, :cond_8

    #@1bd
    .line 871
    :cond_e
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    #@1bf
    const/16 v6, 0xfd

    #@1c1
    if-ne v5, v6, :cond_f

    #@1c3
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@1c5
    iget-boolean v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    #@1c7
    if-eqz v5, :cond_f

    #@1c9
    .line 872
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@1cb
    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@1cd
    const/16 v6, 0x50

    #@1cf
    if-eq v5, v6, :cond_8

    #@1d1
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@1d3
    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@1d5
    const/16 v6, 0x70

    #@1d7
    if-eq v5, v6, :cond_8

    #@1d9
    .line 876
    :cond_f
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    #@1db
    const/16 v6, 0xfc

    #@1dd
    if-ne v5, v6, :cond_10

    #@1df
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@1e1
    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@1e3
    if-eq v5, v11, :cond_8

    #@1e5
    .line 881
    :cond_10
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    #@1e7
    const/16 v6, 0x80

    #@1e9
    if-lt v5, v6, :cond_11

    #@1eb
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    #@1ed
    const/16 v6, 0xf0

    #@1ef
    if-ge v5, v6, :cond_11

    #@1f1
    .line 882
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@1f3
    iget-boolean v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    #@1f5
    if-nez v5, :cond_11

    #@1f7
    .line 883
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@1f9
    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@1fb
    if-eq v5, v11, :cond_11

    #@1fd
    .line 884
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    #@1ff
    iget-short v6, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    #@201
    add-int/lit8 v6, v6, -0x80

    #@203
    aget-object v4, v5, v6

    #@205
    .line 885
    .local v4, "uniset":Landroid/icu/text/UnicodeSet;
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    #@207
    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    #@209
    invoke-virtual {v4, v5}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@20c
    move-result v5

    #@20d
    if-nez v5, :cond_8

    #@20f
    .line 851
    .end local v4    # "uniset":Landroid/icu/text/UnicodeSet;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    #@211
    goto/16 :goto_3

    #@213
    .line 925
    :cond_12
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStack:[S

    #@215
    iget v6, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    #@217
    aget-short v1, v5, v6

    #@219
    .line 926
    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    #@21b
    add-int/lit8 v5, v5, -0x1

    #@21d
    iput v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    #@21f
    .line 927
    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    #@221
    if-gez v5, :cond_0

    #@223
    .line 928
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@225
    const-string/jumbo v6, "RBBIRuleScanner.parse() - state stack underflow."

    #@228
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22b
    .line 929
    const v5, 0x10201

    #@22e
    invoke-virtual {p0, v5}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@231
    goto/16 :goto_0

    #@233
    .line 964
    .end local v2    # "tableEl":Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;
    .end local v3    # "tableRow":I
    :cond_13
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@235
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@237
    aget-object v5, v5, v12

    #@239
    invoke-virtual {v5, v9}, Landroid/icu/text/RBBINode;->printTree(Z)V

    #@23c
    goto/16 :goto_1

    #@23e
    .line 970
    :cond_14
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@240
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@242
    const/4 v6, 0x3

    #@243
    aget-object v5, v5, v6

    #@245
    invoke-virtual {v5, v9}, Landroid/icu/text/RBBINode;->printTree(Z)V

    #@248
    goto/16 :goto_2
.end method

.method printNodeStack(Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    #@0
    .prologue
    .line 983
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v2

    #@b
    const-string/jumbo v3, ".  Dumping node stack...\n"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19
    .line 984
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@1b
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    #@1d
    .line 985
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@1f
    aget-object v1, v1, v0

    #@21
    const/4 v2, 0x1

    #@22
    invoke-virtual {v1, v2}, Landroid/icu/text/RBBINode;->printTree(Z)V

    #@25
    .line 984
    add-int/lit8 v0, v0, -0x1

    #@27
    goto :goto_0

    #@28
    .line 981
    :cond_0
    return-void
.end method

.method pushNewNode(I)Landroid/icu/text/RBBINode;
    .locals 3
    .param p1, "nodeType"    # I

    #@0
    .prologue
    .line 997
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@6
    .line 998
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@8
    const/16 v1, 0x64

    #@a
    if-lt v0, v1, :cond_0

    #@c
    .line 999
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@e
    const-string/jumbo v1, "RBBIRuleScanner.pushNewNode - stack overflow."

    #@11
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@14
    .line 1000
    const v0, 0x10201

    #@17
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@1a
    .line 1002
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@1c
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@1e
    new-instance v2, Landroid/icu/text/RBBINode;

    #@20
    invoke-direct {v2, p1}, Landroid/icu/text/RBBINode;-><init>(I)V

    #@23
    aput-object v2, v0, v1

    #@25
    .line 1003
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    #@27
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    #@29
    aget-object v0, v0, v1

    #@2b
    return-object v0
.end method

.method scanSet()V
    .locals 10

    #@0
    .prologue
    .line 1021
    const/4 v5, 0x0

    #@1
    .line 1023
    .local v5, "uset":Landroid/icu/text/UnicodeSet;
    new-instance v3, Ljava/text/ParsePosition;

    #@3
    iget v7, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    #@5
    invoke-direct {v3, v7}, Ljava/text/ParsePosition;-><init>(I)V

    #@8
    .line 1026
    .local v3, "pos":Ljava/text/ParsePosition;
    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    #@a
    .line 1028
    .local v4, "startPos":I
    :try_start_0
    new-instance v6, Landroid/icu/text/UnicodeSet;

    #@c
    iget-object v7, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@e
    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@10
    iget-object v8, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    #@12
    const/4 v9, 0x1

    #@13
    invoke-direct {v6, v7, v3, v8, v9}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .local v6, "uset":Landroid/icu/text/UnicodeSet;
    move-object v5, v6

    #@17
    .line 1036
    .end local v5    # "uset":Landroid/icu/text/UnicodeSet;
    .end local v6    # "uset":Landroid/icu/text/UnicodeSet;
    :goto_0
    invoke-virtual {v5}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_0

    #@1d
    .line 1042
    const v7, 0x1020c

    #@20
    invoke-virtual {p0, v7}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@23
    .line 1048
    :cond_0
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    #@26
    move-result v1

    #@27
    .line 1050
    .local v1, "i":I
    :goto_1
    iget v7, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@29
    if-lt v7, v1, :cond_1

    #@2b
    .line 1058
    const/4 v7, 0x0

    #@2c
    invoke-virtual {p0, v7}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    #@2f
    move-result-object v2

    #@30
    .line 1059
    .local v2, "n":Landroid/icu/text/RBBINode;
    iput v4, v2, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@32
    .line 1060
    iget v7, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    #@34
    iput v7, v2, Landroid/icu/text/RBBINode;->fLastPos:I

    #@36
    .line 1061
    iget-object v7, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@38
    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    #@3a
    iget v8, v2, Landroid/icu/text/RBBINode;->fFirstPos:I

    #@3c
    iget v9, v2, Landroid/icu/text/RBBINode;->fLastPos:I

    #@3e
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    iput-object v7, v2, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@44
    .line 1068
    iget-object v7, v2, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@46
    invoke-virtual {p0, v7, v2, v5}, Landroid/icu/text/RBBIRuleScanner;->findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V

    #@49
    .line 1020
    return-void

    #@4a
    .line 1029
    .end local v1    # "i":I
    .end local v2    # "n":Landroid/icu/text/RBBINode;
    .restart local v5    # "uset":Landroid/icu/text/UnicodeSet;
    :catch_0
    move-exception v0

    #@4b
    .line 1031
    .local v0, "e":Ljava/lang/Exception;
    const v7, 0x1020f

    #@4e
    invoke-virtual {p0, v7}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    #@51
    goto :goto_0

    #@52
    .line 1053
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "uset":Landroid/icu/text/UnicodeSet;
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    #@55
    goto :goto_1
.end method
