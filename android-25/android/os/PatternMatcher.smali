.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PatternMatcher$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PATTERN_STORAGE:I = 0x800

.field private static final NO_MATCH:I = -0x1

.field private static final PARSED_MODIFIER_ONE_OR_MORE:I = -0x8

.field private static final PARSED_MODIFIER_RANGE_START:I = -0x5

.field private static final PARSED_MODIFIER_RANGE_STOP:I = -0x6

.field private static final PARSED_MODIFIER_ZERO_OR_MORE:I = -0x7

.field private static final PARSED_TOKEN_CHAR_ANY:I = -0x4

.field private static final PARSED_TOKEN_CHAR_SET_INVERSE_START:I = -0x2

.field private static final PARSED_TOKEN_CHAR_SET_START:I = -0x1

.field private static final PARSED_TOKEN_CHAR_SET_STOP:I = -0x3

.field public static final PATTERN_ADVANCED_GLOB:I = 0x3

.field public static final PATTERN_LITERAL:I = 0x0

.field public static final PATTERN_PREFIX:I = 0x1

.field public static final PATTERN_SIMPLE_GLOB:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PatternMatcher"

.field private static final TOKEN_TYPE_ANY:I = 0x1

.field private static final TOKEN_TYPE_INVERSE_SET:I = 0x3

.field private static final TOKEN_TYPE_LITERAL:I = 0x0

.field private static final TOKEN_TYPE_SET:I = 0x2

.field private static final sParsedPatternScratch:[I


# instance fields
.field private final mParsedPattern:[I

.field private final mPattern:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 94
    const/16 v0, 0x800

    #@2
    new-array v0, v0, [I

    #@4
    sput-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@6
    .line 154
    new-instance v0, Landroid/os/PatternMatcher$1;

    #@8
    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    #@b
    .line 153
    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    #@9
    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    #@f
    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    #@15
    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 97
    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    #@5
    .line 98
    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    #@7
    .line 99
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    #@9
    const/4 v1, 0x3

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 100
    invoke-static {p1}, Landroid/os/PatternMatcher;->parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    #@12
    .line 96
    :goto_0
    return-void

    #@13
    .line 102
    :cond_0
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    #@16
    goto :goto_0
.end method

.method private static isParsedModifier(I)Z
    .locals 2
    .param p0, "parsedChar"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 423
    const/4 v1, -0x8

    #@2
    if-eq p0, v1, :cond_0

    #@4
    .line 424
    const/4 v1, -0x7

    #@5
    if-ne p0, v1, :cond_1

    #@7
    .line 423
    :cond_0
    :goto_0
    return v0

    #@8
    .line 425
    :cond_1
    const/4 v1, -0x6

    #@9
    if-eq p0, v1, :cond_0

    #@b
    .line 426
    const/4 v1, -0x5

    #@c
    if-eq p0, v1, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method static matchAdvancedPattern([ILjava/lang/String;)Z
    .locals 13
    .param p0, "parsedPattern"    # [I
    .param p1, "match"    # Ljava/lang/String;

    #@0
    .prologue
    .line 432
    const/4 v10, 0x0

    #@1
    .local v10, "ip":I
    const/4 v1, 0x0

    #@2
    .line 435
    .local v1, "im":I
    array-length v9, p0

    #@3
    .local v9, "LP":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    .line 442
    .local v2, "LM":I
    const/4 v7, 0x0

    #@8
    .local v7, "charSetStart":I
    const/4 v8, 0x0

    #@9
    .line 444
    .local v8, "charSetEnd":I
    :goto_0
    if-ge v10, v9, :cond_6

    #@b
    .line 446
    aget v12, p0, v10

    #@d
    .line 449
    .local v12, "patternChar":I
    packed-switch v12, :pswitch_data_0

    #@10
    .line 465
    :pswitch_0
    move v7, v10

    #@11
    .line 466
    const/4 v3, 0x0

    #@12
    .line 467
    .local v3, "tokenType":I
    add-int/lit8 v10, v10, 0x1

    #@14
    .line 475
    :goto_1
    if-lt v10, v9, :cond_3

    #@16
    .line 476
    const/4 v5, 0x1

    #@17
    .local v5, "maxRepetition":I
    const/4 v4, 0x1

    #@18
    .line 500
    .local v4, "minRepetition":I
    :goto_2
    if-le v4, v5, :cond_4

    #@1a
    .line 501
    const/4 v0, 0x0

    #@1b
    return v0

    #@1c
    .line 451
    .end local v3    # "tokenType":I
    .end local v4    # "minRepetition":I
    .end local v5    # "maxRepetition":I
    :pswitch_1
    const/4 v3, 0x1

    #@1d
    .line 452
    .restart local v3    # "tokenType":I
    add-int/lit8 v10, v10, 0x1

    #@1f
    .line 453
    goto :goto_1

    #@20
    .line 456
    .end local v3    # "tokenType":I
    :pswitch_2
    const/4 v0, -0x1

    #@21
    if-ne v12, v0, :cond_2

    #@23
    .line 457
    const/4 v3, 0x2

    #@24
    .line 459
    .restart local v3    # "tokenType":I
    :goto_3
    add-int/lit8 v7, v10, 0x1

    #@26
    .line 460
    :cond_0
    add-int/lit8 v10, v10, 0x1

    #@28
    if-ge v10, v9, :cond_1

    #@2a
    aget v0, p0, v10

    #@2c
    const/4 v6, -0x3

    #@2d
    if-ne v0, v6, :cond_0

    #@2f
    .line 461
    :cond_1
    add-int/lit8 v8, v10, -0x1

    #@31
    .line 462
    add-int/lit8 v10, v10, 0x1

    #@33
    .line 463
    goto :goto_1

    #@34
    .line 458
    .end local v3    # "tokenType":I
    :cond_2
    const/4 v3, 0x3

    #@35
    .restart local v3    # "tokenType":I
    goto :goto_3

    #@36
    .line 478
    :cond_3
    aget v12, p0, v10

    #@38
    .line 479
    packed-switch v12, :pswitch_data_1

    #@3b
    .line 496
    :pswitch_3
    const/4 v5, 0x1

    #@3c
    .restart local v5    # "maxRepetition":I
    const/4 v4, 0x1

    #@3d
    .line 497
    .restart local v4    # "minRepetition":I
    goto :goto_2

    #@3e
    .line 481
    .end local v4    # "minRepetition":I
    .end local v5    # "maxRepetition":I
    :pswitch_4
    const/4 v4, 0x0

    #@3f
    .line 482
    .restart local v4    # "minRepetition":I
    const v5, 0x7fffffff

    #@42
    .line 483
    .restart local v5    # "maxRepetition":I
    add-int/lit8 v10, v10, 0x1

    #@44
    .line 484
    goto :goto_2

    #@45
    .line 486
    .end local v4    # "minRepetition":I
    .end local v5    # "maxRepetition":I
    :pswitch_5
    const/4 v4, 0x1

    #@46
    .line 487
    .restart local v4    # "minRepetition":I
    const v5, 0x7fffffff

    #@49
    .line 488
    .restart local v5    # "maxRepetition":I
    add-int/lit8 v10, v10, 0x1

    #@4b
    .line 489
    goto :goto_2

    #@4c
    .line 491
    .end local v4    # "minRepetition":I
    .end local v5    # "maxRepetition":I
    :pswitch_6
    add-int/lit8 v10, v10, 0x1

    #@4e
    aget v4, p0, v10

    #@50
    .line 492
    .restart local v4    # "minRepetition":I
    add-int/lit8 v10, v10, 0x1

    #@52
    aget v5, p0, v10

    #@54
    .line 493
    .restart local v5    # "maxRepetition":I
    add-int/lit8 v10, v10, 0x2

    #@56
    .line 494
    goto :goto_2

    #@57
    :cond_4
    move-object v0, p1

    #@58
    move-object v6, p0

    #@59
    .line 505
    invoke-static/range {v0 .. v8}, Landroid/os/PatternMatcher;->matchChars(Ljava/lang/String;IIIII[III)I

    #@5c
    move-result v11

    #@5d
    .line 509
    .local v11, "matched":I
    const/4 v0, -0x1

    #@5e
    if-ne v11, v0, :cond_5

    #@60
    .line 510
    const/4 v0, 0x0

    #@61
    return v0

    #@62
    .line 514
    :cond_5
    add-int/2addr v1, v11

    #@63
    goto :goto_0

    #@64
    .line 516
    .end local v3    # "tokenType":I
    .end local v4    # "minRepetition":I
    .end local v5    # "maxRepetition":I
    .end local v11    # "matched":I
    .end local v12    # "patternChar":I
    :cond_6
    if-lt v10, v9, :cond_7

    #@66
    if-lt v1, v2, :cond_7

    #@68
    const/4 v0, 0x1

    #@69
    :goto_4
    return v0

    #@6a
    :cond_7
    const/4 v0, 0x0

    #@6b
    goto :goto_4

    #@6c
    .line 449
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    #@78
    .line 479
    :pswitch_data_1
    .packed-switch -0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private static matchChar(Ljava/lang/String;III[III)Z
    .locals 6
    .param p0, "match"    # Ljava/lang/String;
    .param p1, "im"    # I
    .param p2, "lm"    # I
    .param p3, "tokenType"    # I
    .param p4, "parsedPattern"    # [I
    .param p5, "tokenStart"    # I
    .param p6, "tokenEnd"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 535
    if-lt p1, p2, :cond_0

    #@4
    .line 536
    return v3

    #@5
    .line 538
    :cond_0
    packed-switch p3, :pswitch_data_0

    #@8
    .line 560
    return v3

    #@9
    .line 540
    :pswitch_0
    return v2

    #@a
    .line 542
    :pswitch_1
    move v0, p5

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_2

    #@d
    .line 543
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v1

    #@11
    .line 544
    .local v1, "matchChar":C
    aget v4, p4, v0

    #@13
    if-lt v1, v4, :cond_1

    #@15
    add-int/lit8 v4, v0, 0x1

    #@17
    aget v4, p4, v4

    #@19
    if-gt v1, v4, :cond_1

    #@1b
    .line 545
    return v2

    #@1c
    .line 542
    :cond_1
    add-int/lit8 v0, v0, 0x2

    #@1e
    goto :goto_0

    #@1f
    .line 548
    .end local v1    # "matchChar":C
    :cond_2
    return v3

    #@20
    .line 550
    .end local v0    # "i":I
    :pswitch_2
    move v0, p5

    #@21
    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p6, :cond_4

    #@23
    .line 551
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v1

    #@27
    .line 552
    .restart local v1    # "matchChar":C
    aget v4, p4, v0

    #@29
    if-lt v1, v4, :cond_3

    #@2b
    add-int/lit8 v4, v0, 0x1

    #@2d
    aget v4, p4, v4

    #@2f
    if-gt v1, v4, :cond_3

    #@31
    .line 553
    return v3

    #@32
    .line 550
    :cond_3
    add-int/lit8 v0, v0, 0x2

    #@34
    goto :goto_1

    #@35
    .line 556
    .end local v1    # "matchChar":C
    :cond_4
    return v2

    #@36
    .line 558
    .end local v0    # "i":I
    :pswitch_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@39
    move-result v4

    #@3a
    aget v5, p4, p5

    #@3c
    if-ne v4, v5, :cond_5

    #@3e
    :goto_2
    return v2

    #@3f
    :cond_5
    move v2, v3

    #@40
    goto :goto_2

    #@41
    .line 538
    nop

    #@42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static matchChars(Ljava/lang/String;IIIII[III)I
    .locals 8
    .param p0, "match"    # Ljava/lang/String;
    .param p1, "im"    # I
    .param p2, "lm"    # I
    .param p3, "tokenType"    # I
    .param p4, "minRepetition"    # I
    .param p5, "maxRepetition"    # I
    .param p6, "parsedPattern"    # [I
    .param p7, "tokenStart"    # I
    .param p8, "tokenEnd"    # I

    #@0
    .prologue
    .line 522
    const/4 v7, 0x0

    #@1
    .line 524
    .local v7, "matched":I
    :goto_0
    if-ge v7, p5, :cond_0

    #@3
    .line 525
    add-int v1, p1, v7

    #@5
    move-object v0, p0

    #@6
    move v2, p2

    #@7
    move v3, p3

    #@8
    move-object v4, p6

    #@9
    move v5, p7

    #@a
    move/from16 v6, p8

    #@c
    invoke-static/range {v0 .. v6}, Landroid/os/PatternMatcher;->matchChar(Ljava/lang/String;III[III)Z

    #@f
    move-result v0

    #@10
    .line 524
    if-eqz v0, :cond_0

    #@12
    .line 527
    add-int/lit8 v7, v7, 0x1

    #@14
    goto :goto_0

    #@15
    .line 530
    :cond_0
    if-ge v7, p4, :cond_1

    #@17
    const/4 v7, -0x1

    #@18
    .end local v7    # "matched":I
    :cond_1
    return v7
.end method

.method static matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "match"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v12, 0x5c

    #@2
    const/16 v11, 0x2a

    #@4
    const/16 v10, 0x2e

    #@6
    const/4 v7, 0x1

    #@7
    const/4 v8, 0x0

    #@8
    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v1

    #@c
    .line 180
    .local v1, "NP":I
    if-gtz v1, :cond_1

    #@e
    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@11
    move-result v9

    #@12
    if-gtz v9, :cond_0

    #@14
    :goto_0
    return v7

    #@15
    :cond_0
    move v7, v8

    #@16
    goto :goto_0

    #@17
    .line 183
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1a
    move-result v0

    #@1b
    .line 184
    .local v0, "NM":I
    const/4 v5, 0x0

    #@1c
    .local v5, "ip":I
    const/4 v4, 0x0

    #@1d
    .line 185
    .local v4, "im":I
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v6

    #@21
    .line 186
    :goto_1
    if-ge v5, v1, :cond_13

    #@23
    if-ge v4, v0, :cond_13

    #@25
    .line 187
    move v2, v6

    #@26
    .line 188
    .local v2, "c":C
    add-int/lit8 v5, v5, 0x1

    #@28
    .line 189
    if-ge v5, v1, :cond_3

    #@2a
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v6

    #@2e
    .line 190
    :goto_2
    if-ne v2, v12, :cond_4

    #@30
    move v3, v7

    #@31
    .line 191
    .local v3, "escaped":Z
    :goto_3
    if-eqz v3, :cond_2

    #@33
    .line 192
    move v2, v6

    #@34
    .line 193
    add-int/lit8 v5, v5, 0x1

    #@36
    .line 194
    if-ge v5, v1, :cond_5

    #@38
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@3b
    move-result v6

    #@3c
    .line 196
    :cond_2
    :goto_4
    if-ne v6, v11, :cond_11

    #@3e
    .line 197
    if-nez v3, :cond_e

    #@40
    if-ne v2, v10, :cond_e

    #@42
    .line 198
    add-int/lit8 v9, v1, -0x1

    #@44
    if-lt v5, v9, :cond_6

    #@46
    .line 201
    return v7

    #@47
    .line 189
    .end local v3    # "escaped":Z
    :cond_3
    const/4 v6, 0x0

    #@48
    .local v6, "nextChar":C
    goto :goto_2

    #@49
    .end local v6    # "nextChar":C
    :cond_4
    move v3, v8

    #@4a
    .line 190
    goto :goto_3

    #@4b
    .line 194
    .restart local v3    # "escaped":Z
    :cond_5
    const/4 v6, 0x0

    #@4c
    .restart local v6    # "nextChar":C
    goto :goto_4

    #@4d
    .line 203
    .end local v6    # "nextChar":C
    :cond_6
    add-int/lit8 v5, v5, 0x1

    #@4f
    .line 204
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@52
    move-result v6

    #@53
    .line 207
    .local v6, "nextChar":C
    if-ne v6, v12, :cond_7

    #@55
    .line 208
    add-int/lit8 v5, v5, 0x1

    #@57
    .line 209
    if-ge v5, v1, :cond_9

    #@59
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@5c
    move-result v6

    #@5d
    .line 212
    .end local v6    # "nextChar":C
    :cond_7
    :goto_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@60
    move-result v9

    #@61
    if-ne v9, v6, :cond_a

    #@63
    .line 217
    :cond_8
    if-ne v4, v0, :cond_b

    #@65
    .line 220
    return v8

    #@66
    .line 209
    .restart local v6    # "nextChar":C
    :cond_9
    const/4 v6, 0x0

    #@67
    .local v6, "nextChar":C
    goto :goto_5

    #@68
    .line 215
    .end local v6    # "nextChar":C
    :cond_a
    add-int/lit8 v4, v4, 0x1

    #@6a
    .line 216
    if-ge v4, v0, :cond_8

    #@6c
    goto :goto_5

    #@6d
    .line 222
    :cond_b
    add-int/lit8 v5, v5, 0x1

    #@6f
    .line 223
    if-ge v5, v1, :cond_c

    #@71
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@74
    move-result v6

    #@75
    .line 224
    :goto_6
    add-int/lit8 v4, v4, 0x1

    #@77
    goto :goto_1

    #@78
    .line 223
    :cond_c
    const/4 v6, 0x0

    #@79
    .restart local v6    # "nextChar":C
    goto :goto_6

    #@7a
    .line 231
    .end local v6    # "nextChar":C
    :cond_d
    add-int/lit8 v4, v4, 0x1

    #@7c
    .line 232
    if-ge v4, v0, :cond_f

    #@7e
    .line 228
    :cond_e
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@81
    move-result v9

    #@82
    if-eq v9, v2, :cond_d

    #@84
    .line 233
    :cond_f
    add-int/lit8 v5, v5, 0x1

    #@86
    .line 234
    if-ge v5, v1, :cond_10

    #@88
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@8b
    move-result v6

    #@8c
    .local v6, "nextChar":C
    goto :goto_1

    #@8d
    .end local v6    # "nextChar":C
    :cond_10
    const/4 v6, 0x0

    #@8e
    .local v6, "nextChar":C
    goto :goto_1

    #@8f
    .line 237
    .end local v6    # "nextChar":C
    :cond_11
    if-eq v2, v10, :cond_12

    #@91
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@94
    move-result v9

    #@95
    if-eq v9, v2, :cond_12

    #@97
    return v8

    #@98
    .line 238
    :cond_12
    add-int/lit8 v4, v4, 0x1

    #@9a
    goto :goto_1

    #@9b
    .line 242
    .end local v2    # "c":C
    .end local v3    # "escaped":Z
    :cond_13
    if-lt v5, v1, :cond_14

    #@9d
    if-lt v4, v0, :cond_14

    #@9f
    .line 244
    return v7

    #@a0
    .line 250
    :cond_14
    add-int/lit8 v9, v1, -0x2

    #@a2
    if-ne v5, v9, :cond_15

    #@a4
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@a7
    move-result v9

    #@a8
    if-ne v9, v10, :cond_15

    #@aa
    .line 251
    add-int/lit8 v9, v5, 0x1

    #@ac
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    #@af
    move-result v9

    #@b0
    if-ne v9, v11, :cond_15

    #@b2
    .line 252
    return v7

    #@b3
    .line 255
    :cond_15
    return v8
.end method

.method static matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z
    .locals 2
    .param p0, "match"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "parsedPattern"    # [I
    .param p3, "type"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 165
    if-nez p0, :cond_0

    #@3
    return v1

    #@4
    .line 166
    :cond_0
    if-nez p3, :cond_1

    #@6
    .line 167
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 168
    :cond_1
    const/4 v0, 0x1

    #@c
    if-ne p3, v0, :cond_2

    #@e
    .line 169
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 170
    :cond_2
    const/4 v0, 0x2

    #@14
    if-ne p3, v0, :cond_3

    #@16
    .line 171
    invoke-static {p1, p0}, Landroid/os/PatternMatcher;->matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    return v0

    #@1b
    .line 172
    :cond_3
    const/4 v0, 0x3

    #@1c
    if-ne p3, v0, :cond_4

    #@1e
    .line 173
    invoke-static {p2, p0}, Landroid/os/PatternMatcher;->matchAdvancedPattern([ILjava/lang/String;)Z

    #@21
    move-result v0

    #@22
    return v0

    #@23
    .line 175
    :cond_4
    return v1
.end method

.method static declared-synchronized parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I
    .locals 22
    .param p0, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v20, Landroid/os/PatternMatcher;

    #@2
    monitor-enter v20

    #@3
    .line 264
    const/4 v11, 0x0

    #@4
    .line 265
    .local v11, "ip":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    .line 267
    .local v2, "LP":I
    const/4 v12, 0x0

    #@9
    .line 269
    .local v12, "it":I
    const/4 v10, 0x0

    #@a
    .line 270
    .local v10, "inSet":Z
    const/4 v9, 0x0

    #@b
    .line 271
    .local v9, "inRange":Z
    const/4 v8, 0x0

    #@c
    .local v8, "inCharClass":Z
    move v13, v12

    #@d
    .line 275
    .end local v12    # "it":I
    .local v13, "it":I
    :goto_0
    if-ge v11, v2, :cond_15

    #@f
    .line 276
    const/16 v19, 0x7fd

    #@11
    move/from16 v0, v19

    #@13
    if-le v13, v0, :cond_0

    #@15
    .line 277
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v21, "Pattern is too large!"

    #@1a
    move-object/from16 v0, v19

    #@1c
    move-object/from16 v1, v21

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .end local v2    # "LP":I
    .end local v8    # "inCharClass":Z
    .end local v9    # "inRange":Z
    .end local v10    # "inSet":Z
    .end local v13    # "it":I
    :catchall_0
    move-exception v19

    #@23
    monitor-exit v20

    #@24
    throw v19

    #@25
    .line 280
    .restart local v2    # "LP":I
    .restart local v8    # "inCharClass":Z
    .restart local v9    # "inRange":Z
    .restart local v10    # "inSet":Z
    .restart local v13    # "it":I
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v4

    #@2b
    .line 281
    .local v4, "c":C
    const/4 v3, 0x0

    #@2c
    .line 283
    .local v3, "addToParsedPattern":Z
    sparse-switch v4, :sswitch_data_0

    #@2f
    .line 359
    const/4 v3, 0x1

    #@30
    .line 362
    :goto_1
    if-eqz v10, :cond_f

    #@32
    .line 363
    if-eqz v8, :cond_d

    #@34
    .line 364
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@36
    add-int/lit8 v12, v13, 0x1

    #@38
    .end local v13    # "it":I
    .restart local v12    # "it":I
    aput v4, v19, v13

    #@3a
    .line 365
    const/4 v8, 0x0

    #@3b
    .line 414
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@3d
    move v13, v12

    #@3e
    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto :goto_0

    #@3f
    .line 285
    :sswitch_0
    if-eqz v10, :cond_1

    #@41
    .line 286
    const/4 v3, 0x1

    #@42
    goto :goto_1

    #@43
    .line 288
    :cond_1
    add-int/lit8 v19, v11, 0x1

    #@45
    move-object/from16 v0, p0

    #@47
    move/from16 v1, v19

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@4c
    move-result v19

    #@4d
    const/16 v21, 0x5e

    #@4f
    move/from16 v0, v19

    #@51
    move/from16 v1, v21

    #@53
    if-ne v0, v1, :cond_2

    #@55
    .line 289
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@57
    add-int/lit8 v12, v13, 0x1

    #@59
    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x2

    #@5b
    aput v21, v19, v13

    #@5d
    .line 290
    add-int/lit8 v11, v11, 0x1

    #@5f
    .line 294
    :goto_3
    add-int/lit8 v11, v11, 0x1

    #@61
    .line 295
    const/4 v10, 0x1

    #@62
    move v13, v12

    #@63
    .line 296
    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto :goto_0

    #@64
    .line 292
    :cond_2
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@66
    add-int/lit8 v12, v13, 0x1

    #@68
    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x1

    #@6a
    aput v21, v19, v13

    #@6c
    goto :goto_3

    #@6d
    .line 300
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :sswitch_1
    if-nez v10, :cond_3

    #@6f
    .line 301
    const/4 v3, 0x1

    #@70
    move v12, v13

    #@71
    .end local v13    # "it":I
    .restart local v12    # "it":I
    :goto_4
    move v13, v12

    #@72
    .line 313
    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto :goto_1

    #@73
    .line 303
    :cond_3
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@75
    add-int/lit8 v21, v13, -0x1

    #@77
    aget v15, v19, v21

    #@79
    .line 304
    .local v15, "parsedToken":I
    const/16 v19, -0x1

    #@7b
    move/from16 v0, v19

    #@7d
    if-eq v15, v0, :cond_4

    #@7f
    .line 305
    const/16 v19, -0x2

    #@81
    move/from16 v0, v19

    #@83
    if-ne v15, v0, :cond_5

    #@85
    .line 306
    :cond_4
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@87
    .line 307
    const-string/jumbo v21, "You must define characters in a set."

    #@8a
    .line 306
    move-object/from16 v0, v19

    #@8c
    move-object/from16 v1, v21

    #@8e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@91
    throw v19

    #@92
    .line 309
    :cond_5
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@94
    add-int/lit8 v12, v13, 0x1

    #@96
    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x3

    #@98
    aput v21, v19, v13

    #@9a
    .line 310
    const/4 v10, 0x0

    #@9b
    .line 311
    const/4 v8, 0x0

    #@9c
    goto :goto_4

    #@9d
    .line 315
    .end local v12    # "it":I
    .end local v15    # "parsedToken":I
    .restart local v13    # "it":I
    :sswitch_2
    if-nez v10, :cond_1c

    #@9f
    .line 316
    if-eqz v13, :cond_6

    #@a1
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@a3
    add-int/lit8 v21, v13, -0x1

    #@a5
    aget v19, v19, v21

    #@a7
    invoke-static/range {v19 .. v19}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    #@aa
    move-result v19

    #@ab
    if-eqz v19, :cond_7

    #@ad
    .line 317
    :cond_6
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@af
    const-string/jumbo v21, "Modifier must follow a token."

    #@b2
    move-object/from16 v0, v19

    #@b4
    move-object/from16 v1, v21

    #@b6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b9
    throw v19

    #@ba
    .line 319
    :cond_7
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@bc
    add-int/lit8 v12, v13, 0x1

    #@be
    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x5

    #@c0
    aput v21, v19, v13

    #@c2
    .line 320
    add-int/lit8 v11, v11, 0x1

    #@c4
    .line 321
    const/4 v9, 0x1

    #@c5
    :goto_5
    move v13, v12

    #@c6
    .line 323
    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto/16 :goto_1

    #@c8
    .line 325
    :sswitch_3
    if-eqz v9, :cond_1b

    #@ca
    .line 326
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@cc
    add-int/lit8 v12, v13, 0x1

    #@ce
    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x6

    #@d0
    aput v21, v19, v13

    #@d2
    .line 327
    const/4 v9, 0x0

    #@d3
    :goto_6
    move v13, v12

    #@d4
    .line 329
    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto/16 :goto_1

    #@d6
    .line 331
    :sswitch_4
    if-nez v10, :cond_1a

    #@d8
    .line 332
    if-eqz v13, :cond_8

    #@da
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@dc
    add-int/lit8 v21, v13, -0x1

    #@de
    aget v19, v19, v21

    #@e0
    invoke-static/range {v19 .. v19}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    #@e3
    move-result v19

    #@e4
    if-eqz v19, :cond_9

    #@e6
    .line 333
    :cond_8
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@e8
    const-string/jumbo v21, "Modifier must follow a token."

    #@eb
    move-object/from16 v0, v19

    #@ed
    move-object/from16 v1, v21

    #@ef
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f2
    throw v19

    #@f3
    .line 335
    :cond_9
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@f5
    add-int/lit8 v12, v13, 0x1

    #@f7
    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x7

    #@f9
    aput v21, v19, v13

    #@fb
    :goto_7
    move v13, v12

    #@fc
    .line 337
    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto/16 :goto_1

    #@fe
    .line 339
    :sswitch_5
    if-nez v10, :cond_19

    #@100
    .line 340
    if-eqz v13, :cond_a

    #@102
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@104
    add-int/lit8 v21, v13, -0x1

    #@106
    aget v19, v19, v21

    #@108
    invoke-static/range {v19 .. v19}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    #@10b
    move-result v19

    #@10c
    if-eqz v19, :cond_b

    #@10e
    .line 341
    :cond_a
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@110
    const-string/jumbo v21, "Modifier must follow a token."

    #@113
    move-object/from16 v0, v19

    #@115
    move-object/from16 v1, v21

    #@117
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11a
    throw v19

    #@11b
    .line 343
    :cond_b
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@11d
    add-int/lit8 v12, v13, 0x1

    #@11f
    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x8

    #@121
    aput v21, v19, v13

    #@123
    :goto_8
    move v13, v12

    #@124
    .line 345
    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto/16 :goto_1

    #@126
    .line 347
    :sswitch_6
    if-nez v10, :cond_18

    #@128
    .line 348
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@12a
    add-int/lit8 v12, v13, 0x1

    #@12c
    .end local v13    # "it":I
    .restart local v12    # "it":I
    const/16 v21, -0x4

    #@12e
    aput v21, v19, v13

    #@130
    :goto_9
    move v13, v12

    #@131
    .line 350
    .end local v12    # "it":I
    .restart local v13    # "it":I
    goto/16 :goto_1

    #@133
    .line 352
    :sswitch_7
    add-int/lit8 v19, v11, 0x1

    #@135
    move/from16 v0, v19

    #@137
    if-lt v0, v2, :cond_c

    #@139
    .line 353
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@13b
    const-string/jumbo v21, "Escape found at end of pattern!"

    #@13e
    move-object/from16 v0, v19

    #@140
    move-object/from16 v1, v21

    #@142
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@145
    throw v19

    #@146
    .line 355
    :cond_c
    add-int/lit8 v11, v11, 0x1

    #@148
    move-object/from16 v0, p0

    #@14a
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    #@14d
    move-result v4

    #@14e
    .line 356
    const/4 v3, 0x1

    #@14f
    .line 357
    goto/16 :goto_1

    #@151
    .line 368
    :cond_d
    add-int/lit8 v19, v11, 0x2

    #@153
    move/from16 v0, v19

    #@155
    if-ge v0, v2, :cond_e

    #@157
    .line 369
    add-int/lit8 v19, v11, 0x1

    #@159
    move-object/from16 v0, p0

    #@15b
    move/from16 v1, v19

    #@15d
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@160
    move-result v19

    #@161
    const/16 v21, 0x2d

    #@163
    move/from16 v0, v19

    #@165
    move/from16 v1, v21

    #@167
    if-ne v0, v1, :cond_e

    #@169
    .line 370
    add-int/lit8 v19, v11, 0x2

    #@16b
    move-object/from16 v0, p0

    #@16d
    move/from16 v1, v19

    #@16f
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@172
    move-result v19

    #@173
    const/16 v21, 0x5d

    #@175
    move/from16 v0, v19

    #@177
    move/from16 v1, v21

    #@179
    if-eq v0, v1, :cond_e

    #@17b
    .line 371
    const/4 v8, 0x1

    #@17c
    .line 372
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@17e
    add-int/lit8 v12, v13, 0x1

    #@180
    .end local v13    # "it":I
    .restart local v12    # "it":I
    aput v4, v19, v13

    #@182
    .line 373
    add-int/lit8 v11, v11, 0x1

    #@184
    goto/16 :goto_2

    #@186
    .line 375
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_e
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@188
    add-int/lit8 v12, v13, 0x1

    #@18a
    .end local v13    # "it":I
    .restart local v12    # "it":I
    aput v4, v19, v13

    #@18c
    .line 376
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@18e
    add-int/lit8 v13, v12, 0x1

    #@190
    .end local v12    # "it":I
    .restart local v13    # "it":I
    aput v4, v19, v12

    #@192
    move v12, v13

    #@193
    .end local v13    # "it":I
    .restart local v12    # "it":I
    goto/16 :goto_2

    #@195
    .line 379
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_f
    if-eqz v9, :cond_14

    #@197
    .line 380
    const/16 v19, 0x7d

    #@199
    move-object/from16 v0, p0

    #@19b
    move/from16 v1, v19

    #@19d
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->indexOf(II)I

    #@1a0
    move-result v7

    #@1a1
    .line 381
    .local v7, "endOfSet":I
    if-gez v7, :cond_10

    #@1a3
    .line 382
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@1a5
    const-string/jumbo v21, "Range not ended with \'}\'"

    #@1a8
    move-object/from16 v0, v19

    #@1aa
    move-object/from16 v1, v21

    #@1ac
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1af
    throw v19

    #@1b0
    .line 384
    :cond_10
    move-object/from16 v0, p0

    #@1b2
    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b5
    move-result-object v18

    #@1b6
    .line 385
    .local v18, "rangeString":Ljava/lang/String;
    const/16 v19, 0x2c

    #@1b8
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1bb
    move-result v5

    #@1bc
    .line 389
    .local v5, "commaIndex":I
    if-gez v5, :cond_11

    #@1be
    .line 390
    :try_start_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1c1
    move-result v14

    #@1c2
    .line 391
    .local v14, "parsedRange":I
    move/from16 v16, v14

    #@1c4
    .local v16, "rangeMax":I
    move/from16 v17, v14

    #@1c6
    .line 400
    .end local v14    # "parsedRange":I
    .local v17, "rangeMin":I
    :goto_a
    move/from16 v0, v17

    #@1c8
    move/from16 v1, v16

    #@1ca
    if-le v0, v1, :cond_13

    #@1cc
    .line 401
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@1ce
    .line 402
    const-string/jumbo v21, "Range quantifier minimum is greater than maximum"

    #@1d1
    .line 401
    move-object/from16 v0, v19

    #@1d3
    move-object/from16 v1, v21

    #@1d5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d8
    throw v19
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d9
    .line 406
    .end local v16    # "rangeMax":I
    .end local v17    # "rangeMin":I
    :catch_0
    move-exception v6

    #@1da
    .local v6, "e":Ljava/lang/NumberFormatException;
    move v12, v13

    #@1db
    .line 407
    .end local v13    # "it":I
    .restart local v12    # "it":I
    :goto_b
    :try_start_3
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@1dd
    const-string/jumbo v21, "Range number format incorrect"

    #@1e0
    move-object/from16 v0, v19

    #@1e2
    move-object/from16 v1, v21

    #@1e4
    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1e7
    throw v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1e8
    .line 393
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_11
    const/16 v19, 0x0

    #@1ea
    :try_start_4
    move-object/from16 v0, v18

    #@1ec
    move/from16 v1, v19

    #@1ee
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f1
    move-result-object v19

    #@1f2
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f5
    move-result v17

    #@1f6
    .line 394
    .restart local v17    # "rangeMin":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    #@1f9
    move-result v19

    #@1fa
    add-int/lit8 v19, v19, -0x1

    #@1fc
    move/from16 v0, v19

    #@1fe
    if-ne v5, v0, :cond_12

    #@200
    .line 395
    const v16, 0x7fffffff

    #@203
    .restart local v16    # "rangeMax":I
    goto :goto_a

    #@204
    .line 397
    .end local v16    # "rangeMax":I
    :cond_12
    add-int/lit8 v19, v5, 0x1

    #@206
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@209
    move-result-object v19

    #@20a
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@20d
    move-result v16

    #@20e
    .restart local v16    # "rangeMax":I
    goto :goto_a

    #@20f
    .line 404
    :cond_13
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@211
    add-int/lit8 v12, v13, 0x1

    #@213
    .end local v13    # "it":I
    .restart local v12    # "it":I
    :try_start_5
    aput v17, v19, v13

    #@215
    .line 405
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@217
    add-int/lit8 v13, v12, 0x1

    #@219
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :try_start_6
    aput v16, v19, v12
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@21b
    .line 409
    move v11, v7

    #@21c
    goto/16 :goto_0

    #@21e
    .line 411
    .end local v5    # "commaIndex":I
    .end local v7    # "endOfSet":I
    .end local v16    # "rangeMax":I
    .end local v17    # "rangeMin":I
    .end local v18    # "rangeString":Ljava/lang/String;
    :cond_14
    if-eqz v3, :cond_17

    #@220
    .line 412
    :try_start_7
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@222
    add-int/lit8 v12, v13, 0x1

    #@224
    .end local v13    # "it":I
    .restart local v12    # "it":I
    aput v4, v19, v13

    #@226
    goto/16 :goto_2

    #@228
    .line 416
    .end local v3    # "addToParsedPattern":Z
    .end local v4    # "c":C
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_15
    if-eqz v10, :cond_16

    #@22a
    .line 417
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@22c
    const-string/jumbo v21, "Set was not terminated!"

    #@22f
    move-object/from16 v0, v19

    #@231
    move-object/from16 v1, v21

    #@233
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@236
    throw v19

    #@237
    .line 419
    :cond_16
    sget-object v19, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    #@239
    move-object/from16 v0, v19

    #@23b
    invoke-static {v0, v13}, Ljava/util/Arrays;->copyOf([II)[I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@23e
    move-result-object v19

    #@23f
    monitor-exit v20

    #@240
    return-object v19

    #@241
    .line 406
    .end local v13    # "it":I
    .restart local v3    # "addToParsedPattern":Z
    .restart local v4    # "c":C
    .restart local v5    # "commaIndex":I
    .restart local v7    # "endOfSet":I
    .restart local v12    # "it":I
    .restart local v16    # "rangeMax":I
    .restart local v17    # "rangeMin":I
    .restart local v18    # "rangeString":Ljava/lang/String;
    :catch_1
    move-exception v6

    #@242
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    goto :goto_b

    #@243
    .end local v5    # "commaIndex":I
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "endOfSet":I
    .end local v12    # "it":I
    .end local v16    # "rangeMax":I
    .end local v17    # "rangeMin":I
    .end local v18    # "rangeString":Ljava/lang/String;
    .restart local v13    # "it":I
    :cond_17
    move v12, v13

    #@244
    .end local v13    # "it":I
    .restart local v12    # "it":I
    goto/16 :goto_2

    #@246
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_18
    move v12, v13

    #@247
    .end local v13    # "it":I
    .restart local v12    # "it":I
    goto/16 :goto_9

    #@249
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_19
    move v12, v13

    #@24a
    .end local v13    # "it":I
    .restart local v12    # "it":I
    goto/16 :goto_8

    #@24c
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_1a
    move v12, v13

    #@24d
    .end local v13    # "it":I
    .restart local v12    # "it":I
    goto/16 :goto_7

    #@24f
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_1b
    move v12, v13

    #@250
    .end local v13    # "it":I
    .restart local v12    # "it":I
    goto/16 :goto_6

    #@252
    .end local v12    # "it":I
    .restart local v13    # "it":I
    :cond_1c
    move v12, v13

    #@253
    .end local v13    # "it":I
    .restart local v12    # "it":I
    goto/16 :goto_5

    #@255
    .line 283
    nop

    #@256
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_4
        0x2b -> :sswitch_5
        0x2e -> :sswitch_6
        0x5b -> :sswitch_0
        0x5c -> :sswitch_7
        0x5d -> :sswitch_1
        0x7b -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 138
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getType()I
    .locals 1

    #@0
    .prologue
    .line 111
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    #@2
    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    #@2
    iget-object v1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    #@4
    iget v2, p0, Landroid/os/PatternMatcher;->mType:I

    #@6
    invoke-static {p1, v0, v1, v2}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 119
    const-string/jumbo v0, "? "

    #@3
    .line 120
    .local v0, "type":Ljava/lang/String;
    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    #@5
    packed-switch v1, :pswitch_data_0

    #@8
    .line 134
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "PatternMatcher{"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "}"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1

    #@2a
    .line 122
    :pswitch_0
    const-string/jumbo v0, "LITERAL: "

    #@2d
    goto :goto_0

    #@2e
    .line 125
    :pswitch_1
    const-string/jumbo v0, "PREFIX: "

    #@31
    goto :goto_0

    #@32
    .line 128
    :pswitch_2
    const-string/jumbo v0, "GLOB: "

    #@35
    goto :goto_0

    #@36
    .line 131
    :pswitch_3
    const-string/jumbo v0, "ADVANCED: "

    #@39
    goto :goto_0

    #@3a
    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 143
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 144
    iget-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@f
    .line 141
    return-void
.end method
