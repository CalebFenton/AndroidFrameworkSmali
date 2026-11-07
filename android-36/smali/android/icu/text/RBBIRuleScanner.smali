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
.field static final blacklist chLS:I = 0x2028

.field static final blacklist chNEL:I = 0x85

.field private static blacklist gRuleSet_digit_char_pattern:Ljava/lang/String; = null

.field private static blacklist gRuleSet_name_char_pattern:Ljava/lang/String; = null

.field private static blacklist gRuleSet_name_start_char_pattern:Ljava/lang/String; = null

.field private static blacklist gRuleSet_rule_char_pattern:Ljava/lang/String; = null

.field private static blacklist gRuleSet_white_space_pattern:Ljava/lang/String; = null

.field private static blacklist kAny:Ljava/lang/String; = null

.field private static final blacklist kStackSize:I = 0x64


# instance fields
.field blacklist fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

.field blacklist fCharNum:I

.field blacklist fLastChar:I

.field blacklist fLineNum:I

.field blacklist fLookAheadRule:Z

.field blacklist fNextIndex:I

.field blacklist fNoChainInRule:Z

.field blacklist fNodeStack:[Landroid/icu/text/RBBINode;

.field blacklist fNodeStackPtr:I

.field blacklist fOptionStart:I

.field blacklist fQuoteMode:Z

.field blacklist fRB:Landroid/icu/text/RBBIRuleBuilder;

.field blacklist fReverseRule:Z

.field blacklist fRuleNum:I

.field blacklist fRuleSets:[Landroid/icu/text/UnicodeSet;

.field blacklist fScanIndex:I

.field blacklist fSetTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;",
            ">;"
        }
    .end annotation
.end field

.field blacklist fStack:[S

.field blacklist fStackPtr:I

.field blacklist fSymbolTable:Landroid/icu/text/RBBISymbolTable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 95
    const-string v0, "[^[\\p{Z}\\u0020-\\u007f]-[\\p{L}]-[\\p{N}]]"

    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_rule_char_pattern:Ljava/lang/String;

    .line 96
    const-string v0, "[_\\p{L}\\p{N}]"

    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_name_char_pattern:Ljava/lang/String;

    .line 97
    const-string v0, "[0-9]"

    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_digit_char_pattern:Ljava/lang/String;

    .line 98
    const-string v0, "[_\\p{L}]"

    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_name_start_char_pattern:Ljava/lang/String;

    .line 99
    const-string v0, "[\\p{Pattern_White_Space}]"

    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_white_space_pattern:Ljava/lang/String;

    .line 100
    const-string v0, "any"

    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->kAny:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/text/RBBIRuleBuilder;)V
    .registers 6
    .param p1, "rb"    # Landroid/icu/text/RBBIRuleBuilder;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    invoke-direct {v0}, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    .line 55
    const/16 v0, 0x64

    new-array v1, v0, [S

    iput-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fStack:[S

    .line 59
    new-array v0, v0, [Landroid/icu/text/RBBINode;

    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fSetTable:Ljava/util/HashMap;

    .line 82
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    .line 111
    iput-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    .line 118
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    new-instance v2, Landroid/icu/text/UnicodeSet;

    sget-object v3, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_rule_char_pattern:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 119
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    new-instance v2, Landroid/icu/text/UnicodeSet;

    sget-object v3, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_white_space_pattern:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 120
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    new-instance v2, Landroid/icu/text/UnicodeSet;

    sget-object v3, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_name_char_pattern:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 121
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_name_start_char_pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 122
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_digit_char_pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 124
    new-instance v0, Landroid/icu/text/RBBISymbolTable;

    invoke-direct {v0, p0}, Landroid/icu/text/RBBISymbolTable;-><init>(Landroid/icu/text/RBBIRuleScanner;)V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    .line 125
    return-void
.end method

.method static blacklist stripRules(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "rules"    # Ljava/lang/String;

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .local v0, "strippedRules":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 704
    .local v1, "rulesLength":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_a
    if-ge v2, v1, :cond_22

    .line 705
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 706
    .local v3, "cp":I
    const/16 v4, 0x2b

    invoke-static {v3, v4}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v4

    .line 707
    .local v4, "whiteSpace":Z
    if-eqz v4, :cond_19

    .line 708
    goto :goto_1c

    .line 710
    :cond_19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 704
    .end local v3    # "cp":I
    .end local v4    # "whiteSpace":Z
    :goto_1c
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    goto :goto_a

    .line 712
    .end local v2    # "idx":I
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method blacklist doParseActions(I)Z
    .registers 16
    .param p1, "action"    # I

    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "n":Landroid/icu/text/RBBINode;
    const/4 v1, 0x1

    .line 140
    .local v1, "returnVal":Z
    const v2, 0x10201

    const/16 v3, 0xa

    const/4 v4, 0x7

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x0

    const v8, 0x10204

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    packed-switch p1, :pswitch_data_35c

    .line 516
    invoke-virtual {p0, v2}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 517
    const/4 v1, 0x0

    goto/16 :goto_35a

    .line 330
    :pswitch_1e
    invoke-virtual {p0, v8}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 331
    goto/16 :goto_35a

    .line 356
    :pswitch_23
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v2, v2, v4

    .line 357
    .local v2, "operandNode":Landroid/icu/text/RBBINode;
    invoke-virtual {p0, v3}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v3

    .line 358
    .local v3, "starNode":Landroid/icu/text/RBBINode;
    iput-object v2, v3, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 359
    iput-object v3, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 361
    .end local v2    # "operandNode":Landroid/icu/text/RBBINode;
    .end local v3    # "starNode":Landroid/icu/text/RBBINode;
    goto/16 :goto_35a

    .line 348
    :pswitch_37
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v2, v2, v3

    .line 349
    .restart local v2    # "operandNode":Landroid/icu/text/RBBINode;
    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v3

    .line 350
    .local v3, "qNode":Landroid/icu/text/RBBINode;
    iput-object v2, v3, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 351
    iput-object v3, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 353
    .end local v2    # "operandNode":Landroid/icu/text/RBBINode;
    .end local v3    # "qNode":Landroid/icu/text/RBBINode;
    goto/16 :goto_35a

    .line 340
    :pswitch_4d
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v2, v2, v3

    .line 341
    .restart local v2    # "operandNode":Landroid/icu/text/RBBINode;
    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v3

    .line 342
    .local v3, "plusNode":Landroid/icu/text/RBBINode;
    iput-object v2, v3, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 343
    iput-object v3, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 345
    .end local v2    # "operandNode":Landroid/icu/text/RBBINode;
    .end local v3    # "plusNode":Landroid/icu/text/RBBINode;
    goto/16 :goto_35a

    .line 425
    :pswitch_63
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v0, v2, v3

    .line 426
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v2, v0, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 427
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v3, v0, Landroid/icu/text/RBBINode;->fFirstPos:I

    iget v4, v0, Landroid/icu/text/RBBINode;->fLastPos:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 428
    goto/16 :goto_35a

    .line 431
    :pswitch_7d
    const v2, 0x1020e

    invoke-virtual {p0, v2}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 432
    const/4 v1, 0x0

    .line 433
    goto/16 :goto_35a

    .line 414
    :pswitch_86
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v0, v2, v4

    .line 415
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v2, v2, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    int-to-char v2, v2

    invoke-static {v2, v3}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v2

    .line 416
    .local v2, "v":I
    iget v3, v0, Landroid/icu/text/RBBINode;->fVal:I

    int-to-long v3, v3

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    int-to-long v5, v2

    add-long/2addr v3, v5

    .line 417
    .local v3, "update":J
    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-lez v5, :cond_a7

    .line 418
    invoke-virtual {p0, v8}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 420
    :cond_a7
    long-to-int v5, v3

    iput v5, v0, Landroid/icu/text/RBBINode;->fVal:I

    .line 421
    goto/16 :goto_35a

    .line 469
    .end local v2    # "v":I
    .end local v3    # "update":J
    :pswitch_ac
    invoke-virtual {p0, v11}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v0

    .line 470
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput v2, v0, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 471
    goto/16 :goto_35a

    .line 405
    :pswitch_b6
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v0

    .line 406
    iput v12, v0, Landroid/icu/text/RBBINode;->fVal:I

    .line 407
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput v2, v0, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 408
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v2, v0, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 409
    goto/16 :goto_35a

    .line 204
    :pswitch_c7
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    sub-int/2addr v3, v13

    aget-object v0, v2, v3

    .line 205
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v2, v0, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 209
    invoke-virtual {p0, v4}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    .line 210
    goto/16 :goto_35a

    .line 394
    :pswitch_d7
    invoke-virtual {p0, v9}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v0

    .line 395
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    iput v2, v0, Landroid/icu/text/RBBINode;->fVal:I

    .line 396
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput v2, v0, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 397
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v2, v0, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 398
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v3, v0, Landroid/icu/text/RBBINode;->fFirstPos:I

    iget v4, v0, Landroid/icu/text/RBBINode;->fLastPos:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 399
    iput-boolean v13, p0, Landroid/icu/text/RBBIRuleScanner;->fLookAheadRule:Z

    .line 400
    goto/16 :goto_35a

    .line 512
    :pswitch_f9
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->scanSet()V

    .line 513
    goto/16 :goto_35a

    .line 503
    :pswitch_fe
    const v2, 0x10206

    invoke-virtual {p0, v2}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 504
    const/4 v1, 0x0

    .line 505
    goto/16 :goto_35a

    .line 325
    :pswitch_107
    invoke-virtual {p0, v8}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 326
    const/4 v1, 0x0

    .line 327
    goto/16 :goto_35a

    .line 371
    :pswitch_10d
    invoke-virtual {p0, v12}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v0

    .line 372
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v2, v2, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v2, v0, v7}, Landroid/icu/text/RBBIRuleScanner;->findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V

    .line 374
    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput v3, v0, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 375
    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v3, v0, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 376
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v4, v0, Landroid/icu/text/RBBINode;->fFirstPos:I

    iget v5, v0, Landroid/icu/text/RBBINode;->fLastPos:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 377
    goto/16 :goto_35a

    .line 465
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_135
    iput-boolean v13, p0, Landroid/icu/text/RBBIRuleScanner;->fReverseRule:Z

    .line 466
    goto/16 :goto_35a

    .line 437
    :pswitch_139
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput v2, p0, Landroid/icu/text/RBBIRuleScanner;->fOptionStart:I

    .line 438
    goto/16 :goto_35a

    .line 441
    :pswitch_13f
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fOptionStart:I

    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "opt":Ljava/lang/String;
    const-string v3, "chain"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_159

    .line 443
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iput-boolean v13, v3, Landroid/icu/text/RBBIRuleBuilder;->fChainRules:Z

    goto/16 :goto_35a

    .line 444
    :cond_159
    const-string v3, "forward"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_167

    .line 445
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iput v12, v3, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    goto/16 :goto_35a

    .line 446
    :cond_167
    const-string v3, "reverse"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_175

    .line 447
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iput v13, v3, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    goto/16 :goto_35a

    .line 448
    :cond_175
    const-string v3, "safe_forward"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_183

    .line 449
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iput v11, v3, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    goto/16 :goto_35a

    .line 450
    :cond_183
    const-string v3, "safe_reverse"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_191

    .line 451
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iput v10, v3, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    goto/16 :goto_35a

    .line 452
    :cond_191
    const-string v3, "lookAheadHardBreak"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19f

    .line 453
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iput-boolean v13, v3, Landroid/icu/text/RBBIRuleBuilder;->fLookAheadHardBreak:Z

    goto/16 :goto_35a

    .line 454
    :cond_19f
    const-string v3, "quoted_literals_only"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    .line 455
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    goto/16 :goto_35a

    .line 456
    :cond_1b0
    const-string v3, "unquoted_literals"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 457
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    aget-object v3, v3, v10

    sget-object v4, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_rule_char_pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    goto/16 :goto_35a

    .line 459
    :cond_1c3
    const v3, 0x1020d

    invoke-virtual {p0, v3}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 461
    goto/16 :goto_35a

    .line 149
    .end local v2    # "opt":Ljava/lang/String;
    :pswitch_1cb
    iput-boolean v13, p0, Landroid/icu/text/RBBIRuleScanner;->fNoChainInRule:Z

    .line 150
    goto/16 :goto_35a

    .line 192
    :pswitch_1cf
    goto/16 :goto_35a

    .line 184
    :pswitch_1d1
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    .line 185
    goto/16 :goto_35a

    .line 143
    :pswitch_1d8
    invoke-virtual {p0, v4}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    .line 144
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    add-int/2addr v2, v13

    iput v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    .line 145
    goto/16 :goto_35a

    .line 188
    :pswitch_1e2
    invoke-virtual {p0, v11}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    .line 189
    goto/16 :goto_35a

    .line 154
    :pswitch_1e7
    invoke-virtual {p0, v9}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    .line 155
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v2, v2, v3

    .line 156
    .local v2, "operandNode":Landroid/icu/text/RBBINode;
    invoke-virtual {p0, v5}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v3

    .line 157
    .local v3, "orNode":Landroid/icu/text/RBBINode;
    iput-object v2, v3, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 158
    iput-object v3, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 160
    .end local v2    # "operandNode":Landroid/icu/text/RBBINode;
    .end local v3    # "orNode":Landroid/icu/text/RBBINode;
    goto/16 :goto_35a

    .line 500
    :pswitch_1fe
    goto/16 :goto_35a

    .line 169
    :pswitch_200
    invoke-virtual {p0, v9}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    .line 170
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v2, v2, v3

    .line 171
    .restart local v2    # "operandNode":Landroid/icu/text/RBBINode;
    invoke-virtual {p0, v6}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v3

    .line 172
    .local v3, "catNode":Landroid/icu/text/RBBINode;
    iput-object v2, v3, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 173
    iput-object v3, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 175
    .end local v2    # "operandNode":Landroid/icu/text/RBBINode;
    .end local v3    # "catNode":Landroid/icu/text/RBBINode;
    goto/16 :goto_35a

    .line 508
    :pswitch_217
    const/4 v1, 0x0

    .line 509
    goto/16 :goto_35a

    .line 474
    :pswitch_21a
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v0, v3, v4

    .line 475
    if-eqz v0, :cond_246

    iget v3, v0, Landroid/icu/text/RBBINode;->fType:I

    if-eq v3, v11, :cond_227

    goto :goto_246

    .line 479
    :cond_227
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput v2, v0, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 480
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v3, v0, Landroid/icu/text/RBBINode;->fFirstPos:I

    add-int/2addr v3, v13

    iget v4, v0, Landroid/icu/text/RBBINode;->fLastPos:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 488
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    iget-object v3, v0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/icu/text/RBBISymbolTable;->lookupNode(Ljava/lang/String;)Landroid/icu/text/RBBINode;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 489
    goto/16 :goto_35a

    .line 476
    :cond_246
    :goto_246
    invoke-virtual {p0, v2}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 477
    goto/16 :goto_35a

    .line 248
    :pswitch_24b
    invoke-virtual {p0, v13}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    .line 251
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v2, :cond_265

    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v3, "rtree"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_265

    .line 252
    const-string v2, "end of rule"

    invoke-virtual {p0, v2}, Landroid/icu/text/RBBIRuleScanner;->printNodeStack(Ljava/lang/String;)V

    .line 254
    :cond_265
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    if-ne v2, v13, :cond_26b

    move v2, v13

    goto :goto_26c

    :cond_26b
    move v2, v12

    :goto_26c
    invoke-static {v2}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 255
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v2, v2, v3

    .line 259
    .local v2, "thisRule":Landroid/icu/text/RBBINode;
    iget-boolean v3, p0, Landroid/icu/text/RBBIRuleScanner;->fLookAheadRule:Z

    if-eqz v3, :cond_298

    .line 260
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v3

    .line 261
    .local v3, "endNode":Landroid/icu/text/RBBINode;
    invoke-virtual {p0, v6}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v4

    .line 262
    .local v4, "catNode":Landroid/icu/text/RBBINode;
    iget v6, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    sub-int/2addr v6, v11

    iput v6, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    .line 263
    iput-object v2, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 264
    iput-object v3, v4, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 265
    iget-object v6, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v7, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aput-object v4, v6, v7

    .line 266
    iget v6, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    iput v6, v3, Landroid/icu/text/RBBINode;->fVal:I

    .line 267
    iput-boolean v13, v3, Landroid/icu/text/RBBINode;->fLookAheadEnd:Z

    .line 268
    move-object v2, v4

    .line 276
    .end local v3    # "endNode":Landroid/icu/text/RBBINode;
    .end local v4    # "catNode":Landroid/icu/text/RBBINode;
    :cond_298
    iput-boolean v13, v2, Landroid/icu/text/RBBINode;->fRuleRoot:Z

    .line 280
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-boolean v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fChainRules:Z

    if-eqz v3, :cond_2a6

    iget-boolean v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNoChainInRule:Z

    if-nez v3, :cond_2a6

    .line 282
    iput-boolean v13, v2, Landroid/icu/text/RBBINode;->fChainIn:Z

    .line 296
    :cond_2a6
    iget-boolean v3, p0, Landroid/icu/text/RBBIRuleScanner;->fReverseRule:Z

    if-eqz v3, :cond_2ab

    goto :goto_2af

    :cond_2ab
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget v10, v3, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    .line 298
    .local v10, "destRules":I
    :goto_2af
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v3, v3, v10

    if-eqz v3, :cond_2d6

    .line 304
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v2, v3, v4

    .line 305
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v3, v3, v10

    .line 306
    .local v3, "prevRules":Landroid/icu/text/RBBINode;
    invoke-virtual {p0, v5}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v4

    .line 307
    .local v4, "orNode":Landroid/icu/text/RBBINode;
    iput-object v3, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 308
    iput-object v4, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 309
    iput-object v2, v4, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 310
    iput-object v4, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 311
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aput-object v4, v5, v10

    .line 312
    .end local v3    # "prevRules":Landroid/icu/text/RBBINode;
    .end local v4    # "orNode":Landroid/icu/text/RBBINode;
    goto :goto_2e2

    .line 315
    :cond_2d6
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget-object v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v4, v4, v5

    aput-object v4, v3, v10

    .line 317
    :goto_2e2
    iput-boolean v12, p0, Landroid/icu/text/RBBIRuleScanner;->fReverseRule:Z

    .line 318
    iput-boolean v12, p0, Landroid/icu/text/RBBIRuleScanner;->fLookAheadRule:Z

    .line 319
    iput-boolean v12, p0, Landroid/icu/text/RBBIRuleScanner;->fNoChainInRule:Z

    .line 320
    iput v12, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    .line 322
    .end local v2    # "thisRule":Landroid/icu/text/RBBINode;
    .end local v10    # "destRules":I
    goto :goto_35a

    .line 218
    :pswitch_2eb
    invoke-virtual {p0, v13}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    .line 220
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    sub-int/2addr v3, v11

    aget-object v2, v2, v3

    .line 221
    .local v2, "startExprNode":Landroid/icu/text/RBBINode;
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    sub-int/2addr v4, v13

    aget-object v3, v3, v4

    .line 222
    .local v3, "varRefNode":Landroid/icu/text/RBBINode;
    iget-object v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v4, v4, v5

    .line 227
    .local v4, "RHSExprNode":Landroid/icu/text/RBBINode;
    iget v5, v2, Landroid/icu/text/RBBINode;->fFirstPos:I

    iput v5, v4, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 228
    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput v5, v4, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 231
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v6, v4, Landroid/icu/text/RBBINode;->fFirstPos:I

    iget v7, v4, Landroid/icu/text/RBBINode;->fLastPos:I

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 236
    iput-object v4, v3, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 237
    iput-object v3, v4, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 240
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    iget-object v6, v3, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Landroid/icu/text/RBBISymbolTable;->addEntry(Ljava/lang/String;Landroid/icu/text/RBBINode;)V

    .line 243
    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    sub-int/2addr v5, v10

    iput v5, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    .line 244
    goto :goto_35a

    .line 383
    .end local v2    # "startExprNode":Landroid/icu/text/RBBINode;
    .end local v3    # "varRefNode":Landroid/icu/text/RBBINode;
    .end local v4    # "RHSExprNode":Landroid/icu/text/RBBINode;
    :pswitch_329
    invoke-virtual {p0, v12}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v0

    .line 384
    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->kAny:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v7}, Landroid/icu/text/RBBIRuleScanner;->findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V

    .line 385
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput v2, v0, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 386
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v2, v0, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 387
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v3, v0, Landroid/icu/text/RBBINode;->fFirstPos:I

    iget v4, v0, Landroid/icu/text/RBBINode;->fLastPos:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 388
    goto :goto_35a

    .line 492
    :pswitch_349
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v0, v2, v3

    .line 493
    iget-object v2, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-nez v2, :cond_35a

    .line 494
    const v2, 0x1020a

    invoke-virtual {p0, v2}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 495
    const/4 v1, 0x0

    .line 520
    :cond_35a
    :goto_35a
    return v1

    nop

    :pswitch_data_35c
    .packed-switch 0x1
        :pswitch_349
        :pswitch_329
        :pswitch_2eb
        :pswitch_24b
        :pswitch_21a
        :pswitch_217
        :pswitch_200
        :pswitch_1fe
        :pswitch_1e7
        :pswitch_1e2
        :pswitch_1d8
        :pswitch_1d1
        :pswitch_1cf
        :pswitch_1cb
        :pswitch_13f
        :pswitch_139
        :pswitch_135
        :pswitch_10d
        :pswitch_107
        :pswitch_fe
        :pswitch_f9
        :pswitch_d7
        :pswitch_c7
        :pswitch_b6
        :pswitch_ac
        :pswitch_86
        :pswitch_7d
        :pswitch_63
        :pswitch_4d
        :pswitch_37
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method

.method blacklist error(I)V
    .registers 4
    .param p1, "e"    # I

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 533
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    throw v1
.end method

.method blacklist findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V
    .registers 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "node"    # Landroid/icu/text/RBBINode;
    .param p3, "setToAdopt"    # Landroid/icu/text/UnicodeSet;

    .line 638
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fSetTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;

    .line 639
    .local v0, "el":Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    .line 640
    iget-object v3, v0, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->val:Landroid/icu/text/RBBINode;

    iput-object v3, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 641
    iget-object v3, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget v3, v3, Landroid/icu/text/RBBINode;->fType:I

    if-ne v3, v2, :cond_17

    move v1, v2

    :cond_17
    invoke-static {v1}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 642
    return-void

    .line 648
    :cond_1b
    if-nez p3, :cond_39

    .line 649
    sget-object v3, Landroid/icu/text/RBBIRuleScanner;->kAny:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 650
    new-instance v3, Landroid/icu/text/UnicodeSet;

    const v4, 0x10ffff

    invoke-direct {v3, v1, v4}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    move-object p3, v3

    goto :goto_39

    .line 653
    :cond_2f
    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 654
    .local v1, "c":I
    new-instance v3, Landroid/icu/text/UnicodeSet;

    invoke-direct {v3, v1, v1}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    move-object p3, v3

    .line 663
    .end local v1    # "c":I
    :cond_39
    :goto_39
    new-instance v1, Landroid/icu/text/RBBINode;

    invoke-direct {v1, v2}, Landroid/icu/text/RBBINode;-><init>(I)V

    .line 664
    .local v1, "usetNode":Landroid/icu/text/RBBINode;
    iput-object p3, v1, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    .line 665
    iput-object p2, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 666
    iput-object v1, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 667
    iput-object p1, v1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 672
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    new-instance v2, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;

    invoke-direct {v2}, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;-><init>()V

    .line 678
    .end local v0    # "el":Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;
    .local v2, "el":Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;
    iput-object p1, v2, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->key:Ljava/lang/String;

    .line 679
    iput-object v1, v2, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->val:Landroid/icu/text/RBBINode;

    .line 680
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fSetTable:Ljava/util/HashMap;

    iget-object v3, v2, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->key:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    return-void
.end method

.method blacklist fixOpStack(I)V
    .registers 7
    .param p1, "p"    # I

    .line 557
    nop

    :goto_1
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 558
    .local v0, "n":Landroid/icu/text/RBBINode;
    iget v1, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    if-nez v1, :cond_1b

    .line 559
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "RBBIRuleScanner.fixOpStack, bad operator node"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 560
    const v1, 0x10201

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 561
    return-void

    .line 564
    :cond_1b
    iget v1, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    const/4 v2, 0x2

    if-lt v1, p1, :cond_3c

    iget v1, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    if-gt v1, v2, :cond_25

    .line 567
    goto :goto_3c

    .line 572
    :cond_25
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v1, v1, v2

    iput-object v1, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 573
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v1, v1, v2

    iput-object v0, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 574
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    goto :goto_1

    .line 578
    :cond_3c
    :goto_3c
    if-gt p1, v2, :cond_5c

    .line 584
    iget v1, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    if-eq v1, p1, :cond_48

    .line 587
    const v1, 0x10208

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 589
    :cond_48
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 590
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    .line 595
    :cond_5c
    return-void
.end method

.method blacklist nextChar(Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;)V
    .registers 8
    .param p1, "c"    # Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    .line 769
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v0, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    .line 770
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    move-result v0

    iput v0, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    .line 777
    iget v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/4 v2, 0x1

    const/16 v3, 0x27

    if-ne v1, v3, :cond_4a

    .line 778
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iget-object v4, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_35

    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    invoke-static {v1, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_35

    .line 779
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    move-result v0

    iput v0, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    .line 780
    iput-boolean v2, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    goto :goto_4a

    .line 785
    :cond_35
    iget-boolean v1, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    .line 786
    iget-boolean v1, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    if-ne v1, v2, :cond_43

    .line 787
    const/16 v1, 0x28

    iput v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    goto :goto_47

    .line 789
    :cond_43
    const/16 v1, 0x29

    iput v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    .line 791
    :goto_47
    iput-boolean v0, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    .line 792
    return-void

    .line 795
    :cond_4a
    :goto_4a
    iget v0, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_50

    .line 796
    return-void

    .line 799
    :cond_50
    iget-boolean v0, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    if-eqz v0, :cond_58

    .line 800
    iput-boolean v2, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    goto/16 :goto_c8

    .line 804
    :cond_58
    iget v0, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v3, 0x23

    if-ne v0, v3, :cond_95

    .line 810
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    .line 812
    .local v0, "commentStart":I
    :cond_60
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    move-result v3

    iput v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    .line 813
    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-eq v3, v1, :cond_83

    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v4, 0xd

    if-eq v3, v4, :cond_83

    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_83

    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v4, 0x85

    if-eq v3, v4, :cond_83

    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v4, 0x2028

    if-ne v3, v4, :cond_60

    .line 819
    nop

    .line 822
    :cond_83
    move v3, v0

    .local v3, "i":I
    :goto_84
    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_95

    .line 823
    iget-object v4, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fStrippedRules:Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v3, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 822
    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    .line 826
    .end local v0    # "commentStart":I
    .end local v3    # "i":I
    :cond_95
    iget v0, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-ne v0, v1, :cond_9a

    .line 827
    return-void

    .line 833
    :cond_9a
    iget v0, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_c8

    .line 834
    iput-boolean v2, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    .line 835
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->unescapeAndLengthAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 836
    .local v0, "cpAndLength":I
    if-gez v0, :cond_b4

    .line 837
    const v1, 0x10202

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 839
    :cond_b4
    invoke-static {v0}, Landroid/icu/impl/Utility;->cpFromCodePointAndLength(I)I

    move-result v1

    iput v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    .line 840
    invoke-static {v0}, Landroid/icu/impl/Utility;->lengthFromCodePointAndLength(I)I

    move-result v1

    .line 842
    .local v1, "length":I
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    .line 843
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    .line 847
    .end local v0    # "cpAndLength":I
    .end local v1    # "length":I
    :cond_c8
    :goto_c8
    return-void
.end method

.method blacklist nextCharLL()I
    .registers 6

    .line 725
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 726
    const/4 v0, -0x1

    return v0

    .line 728
    :cond_e
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    invoke-static {v0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 729
    .local v0, "ch":I
    invoke-static {v0}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 730
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 732
    :cond_2a
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/icu/text/UTF16;->moveCodePointOffset(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    .line 734
    const/16 v1, 0xd

    if-eq v0, v1, :cond_54

    const/16 v2, 0x85

    if-eq v0, v2, :cond_54

    const/16 v2, 0x2028

    if-eq v0, v2, :cond_54

    const/16 v2, 0xa

    if-ne v0, v2, :cond_4c

    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fLastChar:I

    if-eq v4, v1, :cond_4c

    goto :goto_54

    .line 749
    :cond_4c
    if-eq v0, v2, :cond_68

    .line 750
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    goto :goto_68

    .line 740
    :cond_54
    :goto_54
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    .line 741
    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    .line 742
    iget-boolean v2, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    if-eqz v2, :cond_68

    .line 743
    const v2, 0x10209

    invoke-virtual {p0, v2}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 744
    iput-boolean v1, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    .line 753
    :cond_68
    :goto_68
    iput v0, p0, Landroid/icu/text/RBBIRuleScanner;->fLastChar:I

    .line 754
    return v0
.end method

.method blacklist numRules()I
    .registers 2

    .line 1113
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    return v0
.end method

.method blacklist parse()V
    .registers 11

    .line 861
    const/4 v0, 0x1

    .line 862
    .local v0, "state":I
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->nextChar(Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;)V

    .line 874
    :cond_6
    :goto_6
    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 875
    goto/16 :goto_11d

    .line 884
    :cond_b
    sget-object v2, Landroid/icu/text/RBBIRuleParseTable;->gRuleParseStateTable:[Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    aget-object v2, v2, v0

    .line 885
    .local v2, "tableEl":Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v4, "scan"

    if-eqz v3, :cond_62

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_62

    .line 886
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "char, line, col = (\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v6, v6, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fStateName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 891
    :cond_62
    move v3, v0

    .line 892
    .local v3, "tableRow":I
    :goto_63
    sget-object v5, Landroid/icu/text/RBBIRuleParseTable;->gRuleParseStateTable:[Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    aget-object v2, v5, v3

    .line 893
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v5, :cond_7e

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_7e

    .line 894
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 896
    :cond_7e
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v6, 0x7f

    const/16 v7, 0xff

    if-ge v5, v6, :cond_96

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget-boolean v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    if-nez v5, :cond_96

    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    iget-object v6, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v6, v6, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-ne v5, v6, :cond_96

    .line 901
    goto/16 :goto_fd

    .line 903
    :cond_96
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    if-ne v5, v7, :cond_9b

    .line 905
    goto :goto_fd

    .line 907
    :cond_9b
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v6, 0xfe

    if-ne v5, v6, :cond_a8

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget-boolean v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    if-eqz v5, :cond_a8

    .line 909
    goto :goto_fd

    .line 911
    :cond_a8
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v6, 0xfd

    if-ne v5, v6, :cond_c5

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget-boolean v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    if-eqz v5, :cond_c5

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v6, 0x50

    if-eq v5, v6, :cond_fd

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v6, 0x70

    if-ne v5, v6, :cond_c5

    .line 914
    goto :goto_fd

    .line 916
    :cond_c5
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v6, 0xfc

    const/4 v8, -0x1

    if-ne v5, v6, :cond_d3

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-ne v5, v8, :cond_d3

    .line 918
    goto :goto_fd

    .line 921
    :cond_d3
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v6, 0x80

    if-lt v5, v6, :cond_206

    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v9, 0xf0

    if-ge v5, v9, :cond_206

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget-boolean v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    if-nez v5, :cond_206

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-eq v5, v8, :cond_206

    .line 924
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    iget-short v8, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    sub-int/2addr v8, v6

    aget-object v5, v5, v8

    .line 925
    .local v5, "uniset":Landroid/icu/text/UnicodeSet;
    iget-object v6, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v6, v6, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_206

    .line 928
    nop

    .line 933
    .end local v3    # "tableRow":I
    .end local v5    # "uniset":Landroid/icu/text/UnicodeSet;
    :cond_fd
    :goto_fd
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v3, :cond_114

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_114

    .line 934
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 940
    :cond_114
    iget-short v3, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fAction:S

    invoke-virtual {p0, v3}, Landroid/icu/text/RBBIRuleScanner;->doParseActions(I)Z

    move-result v3

    if-nez v3, :cond_1b6

    .line 944
    nop

    .line 977
    .end local v2    # "tableEl":Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;
    :goto_11d
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_12c

    .line 978
    const v2, 0x10204

    invoke-virtual {p0, v2}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 986
    :cond_12c
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v2, :cond_143

    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v4, "symbols"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_143

    .line 987
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    invoke-virtual {v2}, Landroid/icu/text/RBBISymbolTable;->rbbiSymtablePrint()V

    .line 989
    :cond_143
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v2, :cond_1b5

    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v4, "ptree"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1b5

    .line 990
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Completed Forward Rules Parse Tree..."

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 991
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 992
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\nCompleted Reverse Rules Parse Tree..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 993
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v2, v2, v1

    invoke-virtual {v2, v1}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 994
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\nCompleted Safe Point Forward Rules Parse Tree..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 995
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const-string v4, "  -- null -- "

    if-nez v2, :cond_18d

    .line 996
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_196

    .line 998
    :cond_18d
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 1000
    :goto_196
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\nCompleted Safe Point Reverse Rules Parse Tree..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1001
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-nez v2, :cond_1ac

    .line 1002
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1b5

    .line 1004
    :cond_1ac
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 1007
    :cond_1b5
    :goto_1b5
    return-void

    .line 947
    .restart local v2    # "tableEl":Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;
    :cond_1b6
    iget-short v3, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fPushState:S

    const v4, 0x10201

    if-eqz v3, :cond_1da

    .line 948
    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    .line 949
    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    const/16 v5, 0x64

    if-lt v3, v5, :cond_1d2

    .line 950
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "RBBIRuleScanner.parse() - state stack overflow."

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0, v4}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 953
    :cond_1d2
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fStack:[S

    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    iget-short v6, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fPushState:S

    aput-short v6, v3, v5

    .line 956
    :cond_1da
    iget-boolean v3, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextChar:Z

    if-eqz v3, :cond_1e3

    .line 957
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    invoke-virtual {p0, v3}, Landroid/icu/text/RBBIRuleScanner;->nextChar(Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;)V

    .line 962
    :cond_1e3
    iget-short v3, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextState:S

    if-eq v3, v7, :cond_1eb

    .line 963
    iget-short v0, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextState:S

    goto/16 :goto_6

    .line 965
    :cond_1eb
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fStack:[S

    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    aget-short v0, v3, v5

    .line 966
    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    sub-int/2addr v3, v1

    iput v3, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    .line 967
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    if-gez v1, :cond_6

    .line 968
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "RBBIRuleScanner.parse() - state stack underflow."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0, v4}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    goto/16 :goto_6

    .line 891
    .restart local v3    # "tableRow":I
    :cond_206
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_63
.end method

.method blacklist printNodeStack(Ljava/lang/String;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/String;

    .line 1017
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  Dumping node stack...\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1018
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    .local v0, "i":I
    :goto_1a
    if-lez v0, :cond_27

    .line 1019
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 1018
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    .line 1021
    :cond_27
    return-void
.end method

.method blacklist pushNewNode(I)Landroid/icu/text/RBBINode;
    .registers 5
    .param p1, "nodeType"    # I

    .line 1031
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    .line 1032
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_19

    .line 1033
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "RBBIRuleScanner.pushNewNode - stack overflow."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1034
    const v0, 0x10201

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 1036
    :cond_19
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    new-instance v2, Landroid/icu/text/RBBINode;

    invoke-direct {v2, p1}, Landroid/icu/text/RBBINode;-><init>(I)V

    aput-object v2, v0, v1

    .line 1037
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method blacklist scanSet()V
    .registers 10

    .line 1055
    const/4 v0, 0x0

    .line 1057
    .local v0, "uset":Landroid/icu/text/UnicodeSet;
    new-instance v1, Ljava/text/ParsePosition;

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1060
    .local v1, "pos":Ljava/text/ParsePosition;
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    .line 1062
    .local v2, "startPos":I
    :try_start_a
    new-instance v3, Landroid/icu/text/UnicodeSet;

    iget-object v4, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    const/4 v6, 0x1

    invoke-direct {v3, v4, v1, v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_18

    move-object v0, v3

    .line 1066
    goto :goto_1f

    .line 1063
    :catch_18
    move-exception v3

    .line 1065
    .local v3, "e":Ljava/lang/Exception;
    const v4, 0x1020f

    invoke-virtual {p0, v4}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 1072
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1f
    new-instance v3, Landroid/icu/text/UnicodeSet;

    invoke-direct {v3, v0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 1073
    .local v3, "tempSet":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->removeAllStrings()Landroid/icu/text/UnicodeSet;

    .line 1074
    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1080
    const v4, 0x1020c

    invoke-virtual {p0, v4}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 1086
    :cond_33
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 1088
    .local v4, "i":I
    :goto_37
    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    if-lt v5, v4, :cond_5b

    .line 1089
    nop

    .line 1096
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v5

    .line 1097
    .local v5, "n":Landroid/icu/text/RBBINode;
    iput v2, v5, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 1098
    iget v6, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v6, v5, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 1099
    iget-object v6, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v6, v6, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v7, v5, Landroid/icu/text/RBBINode;->fFirstPos:I

    iget v8, v5, Landroid/icu/text/RBBINode;->fLastPos:I

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 1106
    iget-object v6, v5, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v0}, Landroid/icu/text/RBBIRuleScanner;->findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V

    .line 1107
    return-void

    .line 1091
    .end local v5    # "n":Landroid/icu/text/RBBINode;
    :cond_5b
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    goto :goto_37
.end method
