.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PatternMatcher$PatternType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_PATTERN_STORAGE:I = 0x800

.field private static final greylist-max-o NO_MATCH:I = -0x1

.field private static final greylist-max-o PARSED_MODIFIER_ONE_OR_MORE:I = -0x8

.field private static final greylist-max-o PARSED_MODIFIER_RANGE_START:I = -0x5

.field private static final greylist-max-o PARSED_MODIFIER_RANGE_STOP:I = -0x6

.field private static final greylist-max-o PARSED_MODIFIER_ZERO_OR_MORE:I = -0x7

.field private static final greylist-max-o PARSED_TOKEN_CHAR_ANY:I = -0x4

.field private static final greylist-max-o PARSED_TOKEN_CHAR_SET_INVERSE_START:I = -0x2

.field private static final greylist-max-o PARSED_TOKEN_CHAR_SET_START:I = -0x1

.field private static final greylist-max-o PARSED_TOKEN_CHAR_SET_STOP:I = -0x3

.field public static final whitelist PATTERN_ADVANCED_GLOB:I = 0x3

.field public static final whitelist PATTERN_LITERAL:I = 0x0

.field public static final whitelist PATTERN_PREFIX:I = 0x1

.field public static final whitelist PATTERN_SIMPLE_GLOB:I = 0x2

.field public static final whitelist PATTERN_SUFFIX:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PatternMatcher"

.field private static final greylist-max-o TOKEN_TYPE_ANY:I = 0x1

.field private static final greylist-max-o TOKEN_TYPE_INVERSE_SET:I = 0x3

.field private static final greylist-max-o TOKEN_TYPE_LITERAL:I = 0x0

.field private static final greylist-max-o TOKEN_TYPE_SET:I = 0x2

.field private static final greylist-max-o sParsedPatternScratch:[I


# instance fields
.field private final greylist-max-o mParsedPattern:[I

.field private final greylist-max-o mPattern:Ljava/lang/String;

.field private final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    const/16 v0, 0x800

    new-array v0, v0, [I

    sput-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    .line 203
    new-instance v0, Landroid/os/PatternMatcher$1;

    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    .line 201
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 118
    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    .line 119
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    .line 120
    invoke-static {p1}, Landroid/os/PatternMatcher;->parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    goto :goto_16

    .line 122
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    .line 124
    :goto_16
    return-void
.end method

.method private static greylist-max-o isParsedModifier(I)Z
    .registers 2
    .param p0, "parsedChar"    # I

    .line 475
    const/4 v0, -0x8

    if-eq p0, v0, :cond_f

    const/4 v0, -0x7

    if-eq p0, v0, :cond_f

    const/4 v0, -0x6

    if-eq p0, v0, :cond_f

    const/4 v0, -0x5

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method static greylist-max-o matchAdvancedPattern([ILjava/lang/String;)Z
    .registers 17
    .param p0, "parsedPattern"    # [I
    .param p1, "match"    # Ljava/lang/String;

    .line 484
    const/4 v0, 0x0

    .local v0, "ip":I
    const/4 v1, 0x0

    .line 487
    .local v1, "im":I
    array-length v9, p0

    .local v9, "LP":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 494
    .local v2, "LM":I
    const/4 v3, 0x0

    .local v3, "charSetStart":I
    const/4 v4, 0x0

    .line 496
    .local v4, "charSetEnd":I
    :goto_9
    const/4 v10, 0x0

    const/4 v5, 0x1

    if-ge v0, v9, :cond_78

    .line 498
    aget v7, p0, v0

    .line 501
    .local v7, "patternChar":I
    const/4 v8, 0x2

    const/4 v11, -0x1

    packed-switch v7, :pswitch_data_7e

    .line 517
    :pswitch_14
    move v3, v0

    .line 518
    const/4 v12, 0x0

    .line 519
    .local v12, "tokenType":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 508
    .end local v12    # "tokenType":I
    :pswitch_19
    if-ne v7, v11, :cond_1d

    .line 509
    move v12, v8

    goto :goto_1e

    .line 510
    :cond_1d
    const/4 v12, 0x3

    :goto_1e
    nop

    .line 511
    .restart local v12    # "tokenType":I
    add-int/lit8 v3, v0, 0x1

    .line 512
    :goto_21
    add-int/2addr v0, v5

    if-ge v0, v9, :cond_2a

    aget v13, p0, v0

    const/4 v14, -0x3

    if-eq v13, v14, :cond_2a

    goto :goto_21

    .line 513
    :cond_2a
    add-int/lit8 v4, v0, -0x1

    .line 514
    add-int/lit8 v0, v0, 0x1

    .line 515
    goto :goto_33

    .line 503
    .end local v12    # "tokenType":I
    :pswitch_2f
    const/4 v12, 0x1

    .line 504
    .restart local v12    # "tokenType":I
    add-int/lit8 v0, v0, 0x1

    .line 505
    nop

    .line 527
    :goto_33
    if-lt v0, v9, :cond_39

    .line 528
    move v8, v5

    .local v8, "maxRepetition":I
    move v13, v0

    move v14, v7

    .local v5, "minRepetition":I
    goto :goto_60

    .line 530
    .end local v5    # "minRepetition":I
    .end local v8    # "maxRepetition":I
    :cond_39
    aget v7, p0, v0

    .line 531
    packed-switch v7, :pswitch_data_8a

    .line 548
    :pswitch_3e
    move v8, v5

    .restart local v8    # "maxRepetition":I
    move v13, v0

    move v14, v7

    .restart local v5    # "minRepetition":I
    goto :goto_60

    .line 543
    .end local v5    # "minRepetition":I
    .end local v8    # "maxRepetition":I
    :pswitch_42
    add-int/lit8 v0, v0, 0x1

    aget v13, p0, v0

    .line 544
    .local v13, "minRepetition":I
    add-int/2addr v0, v5

    aget v5, p0, v0

    .line 545
    .local v5, "maxRepetition":I
    add-int/2addr v0, v8

    .line 546
    move v8, v5

    move v14, v7

    move v5, v13

    move v13, v0

    goto :goto_60

    .line 533
    .end local v5    # "maxRepetition":I
    .end local v13    # "minRepetition":I
    :pswitch_4f
    const/4 v5, 0x0

    .line 534
    .local v5, "minRepetition":I
    const v8, 0x7fffffff

    .line 535
    .restart local v8    # "maxRepetition":I
    add-int/lit8 v0, v0, 0x1

    .line 536
    move v13, v0

    move v14, v7

    goto :goto_60

    .line 538
    .end local v5    # "minRepetition":I
    .end local v8    # "maxRepetition":I
    :pswitch_58
    const/4 v5, 0x1

    .line 539
    .restart local v5    # "minRepetition":I
    const v8, 0x7fffffff

    .line 540
    .restart local v8    # "maxRepetition":I
    add-int/lit8 v0, v0, 0x1

    .line 541
    move v13, v0

    move v14, v7

    .line 552
    .end local v0    # "ip":I
    .end local v7    # "patternChar":I
    .local v13, "ip":I
    .local v14, "patternChar":I
    :goto_60
    if-le v5, v8, :cond_63

    .line 553
    return v10

    .line 557
    :cond_63
    move v0, v8

    move v8, v4

    move v4, v5

    move v5, v0

    move-object v6, p0

    move-object/from16 v0, p1

    move v7, v3

    move v3, v12

    .end local v12    # "tokenType":I
    .local v3, "tokenType":I
    .local v4, "minRepetition":I
    .local v5, "maxRepetition":I
    .local v7, "charSetStart":I
    .local v8, "charSetEnd":I
    invoke-static/range {v0 .. v8}, Landroid/os/PatternMatcher;->matchChars(Ljava/lang/String;IIIII[III)I

    move-result v12

    .line 561
    .local v12, "matched":I
    if-ne v12, v11, :cond_73

    .line 562
    return v10

    .line 566
    :cond_73
    add-int/2addr v1, v12

    .line 567
    .end local v4    # "minRepetition":I
    .end local v5    # "maxRepetition":I
    .end local v12    # "matched":I
    move v3, v7

    move v4, v8

    move v0, v13

    goto :goto_9

    .line 568
    .end local v7    # "charSetStart":I
    .end local v8    # "charSetEnd":I
    .end local v13    # "ip":I
    .end local v14    # "patternChar":I
    .restart local v0    # "ip":I
    .local v3, "charSetStart":I
    .local v4, "charSetEnd":I
    :cond_78
    if-lt v0, v9, :cond_7d

    if-lt v1, v2, :cond_7d

    move v10, v5

    :cond_7d
    return v10

    :pswitch_data_7e
    .packed-switch -0x4
        :pswitch_2f
        :pswitch_14
        :pswitch_19
        :pswitch_19
    .end packed-switch

    :pswitch_data_8a
    .packed-switch -0x8
        :pswitch_58
        :pswitch_4f
        :pswitch_3e
        :pswitch_42
    .end packed-switch
.end method

.method private static greylist-max-o matchChar(Ljava/lang/String;III[III)Z
    .registers 12
    .param p0, "match"    # Ljava/lang/String;
    .param p1, "im"    # I
    .param p2, "lm"    # I
    .param p3, "tokenType"    # I
    .param p4, "parsedPattern"    # [I
    .param p5, "tokenStart"    # I
    .param p6, "tokenEnd"    # I

    .line 587
    const/4 v0, 0x0

    if-lt p1, p2, :cond_4

    .line 588
    return v0

    .line 590
    :cond_4
    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_40

    .line 612
    return v0

    .line 602
    :pswitch_9
    move v2, p5

    .local v2, "i":I
    :goto_a
    if-ge v2, p6, :cond_1e

    .line 603
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 604
    .local v3, "matchChar":C
    aget v4, p4, v2

    if-lt v3, v4, :cond_1b

    add-int/lit8 v4, v2, 0x1

    aget v4, p4, v4

    if-gt v3, v4, :cond_1b

    .line 605
    return v0

    .line 602
    .end local v3    # "matchChar":C
    :cond_1b
    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    .line 608
    .end local v2    # "i":I
    :cond_1e
    return v1

    .line 594
    :pswitch_1f
    move v2, p5

    .restart local v2    # "i":I
    :goto_20
    if-ge v2, p6, :cond_34

    .line 595
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 596
    .restart local v3    # "matchChar":C
    aget v4, p4, v2

    if-lt v3, v4, :cond_31

    add-int/lit8 v4, v2, 0x1

    aget v4, p4, v4

    if-gt v3, v4, :cond_31

    .line 597
    return v1

    .line 594
    .end local v3    # "matchChar":C
    :cond_31
    add-int/lit8 v2, v2, 0x2

    goto :goto_20

    .line 600
    .end local v2    # "i":I
    :cond_34
    return v0

    .line 592
    :pswitch_35
    return v1

    .line 610
    :pswitch_36
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v3, p4, p5

    if-ne v2, v3, :cond_3f

    move v0, v1

    :cond_3f
    return v0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_36
        :pswitch_35
        :pswitch_1f
        :pswitch_9
    .end packed-switch
.end method

.method private static greylist-max-o matchChars(Ljava/lang/String;IIIII[III)I
    .registers 17
    .param p0, "match"    # Ljava/lang/String;
    .param p1, "im"    # I
    .param p2, "lm"    # I
    .param p3, "tokenType"    # I
    .param p4, "minRepetition"    # I
    .param p5, "maxRepetition"    # I
    .param p6, "parsedPattern"    # [I
    .param p7, "tokenStart"    # I
    .param p8, "tokenEnd"    # I

    .line 574
    const/4 v0, 0x0

    .line 576
    .local v0, "matched":I
    :goto_1
    if-ge v0, p5, :cond_15

    add-int v2, p1, v0

    .line 577
    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-static/range {v1 .. v7}, Landroid/os/PatternMatcher;->matchChar(Ljava/lang/String;III[III)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 582
    :cond_15
    if-ge v0, p4, :cond_19

    const/4 v1, -0x1

    goto :goto_1a

    :cond_19
    move v1, v0

    :goto_1a
    return v1
.end method

.method static greylist-max-o matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "match"    # Ljava/lang/String;

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 232
    .local v0, "NP":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_10

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_f

    move v1, v2

    :cond_f
    return v1

    .line 235
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 236
    .local v3, "NM":I
    const/4 v4, 0x0

    .local v4, "ip":I
    const/4 v5, 0x0

    .line 237
    .local v5, "im":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 238
    .local v6, "nextChar":C
    :goto_1a
    const/16 v7, 0x2a

    const/16 v8, 0x2e

    if-ge v4, v0, :cond_9f

    if-ge v5, v3, :cond_9f

    .line 239
    move v9, v6

    .line 240
    .local v9, "c":C
    add-int/lit8 v4, v4, 0x1

    .line 241
    if-ge v4, v0, :cond_2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_2d

    :cond_2c
    move v10, v1

    .line 242
    .end local v6    # "nextChar":C
    .local v10, "nextChar":C
    :goto_2d
    const/16 v6, 0x5c

    if-ne v9, v6, :cond_33

    move v11, v2

    goto :goto_34

    :cond_33
    move v11, v1

    .line 243
    .local v11, "escaped":Z
    :goto_34
    if-eqz v11, :cond_42

    .line 244
    move v9, v10

    .line 245
    add-int/lit8 v4, v4, 0x1

    .line 246
    if-ge v4, v0, :cond_40

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    goto :goto_41

    :cond_40
    move v12, v1

    :goto_41
    move v10, v12

    .line 248
    :cond_42
    if-ne v10, v7, :cond_91

    .line 249
    if-nez v11, :cond_7b

    if-ne v9, v8, :cond_7b

    .line 250
    add-int/lit8 v7, v0, -0x1

    if-lt v4, v7, :cond_4d

    .line 253
    return v2

    .line 255
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    .line 256
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 259
    .end local v10    # "nextChar":C
    .local v7, "nextChar":C
    if-ne v7, v6, :cond_60

    .line 260
    add-int/lit8 v4, v4, 0x1

    .line 261
    if-ge v4, v0, :cond_5e

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_5f

    :cond_5e
    move v6, v1

    :goto_5f
    move v7, v6

    .line 264
    :cond_60
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_67

    .line 265
    goto :goto_6b

    .line 267
    :cond_67
    add-int/lit8 v5, v5, 0x1

    .line 268
    if-lt v5, v3, :cond_60

    .line 269
    :goto_6b
    if-ne v5, v3, :cond_6e

    .line 272
    return v1

    .line 274
    :cond_6e
    add-int/lit8 v4, v4, 0x1

    .line 275
    if-ge v4, v0, :cond_77

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_78

    :cond_77
    move v6, v1

    .line 276
    .end local v7    # "nextChar":C
    .restart local v6    # "nextChar":C
    :goto_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_9d

    .line 280
    .end local v6    # "nextChar":C
    .restart local v10    # "nextChar":C
    :cond_7b
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_82

    .line 281
    goto :goto_86

    .line 283
    :cond_82
    add-int/lit8 v5, v5, 0x1

    .line 284
    if-lt v5, v3, :cond_7b

    .line 285
    :goto_86
    add-int/lit8 v4, v4, 0x1

    .line 286
    if-ge v4, v0, :cond_8f

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_90

    :cond_8f
    move v6, v1

    .end local v10    # "nextChar":C
    .restart local v6    # "nextChar":C
    :goto_90
    goto :goto_9d

    .line 289
    .end local v6    # "nextChar":C
    .restart local v10    # "nextChar":C
    :cond_91
    if-eq v9, v8, :cond_9a

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_9a

    return v1

    .line 290
    :cond_9a
    add-int/lit8 v5, v5, 0x1

    move v6, v10

    .line 292
    .end local v9    # "c":C
    .end local v10    # "nextChar":C
    .end local v11    # "escaped":Z
    .restart local v6    # "nextChar":C
    :goto_9d
    goto/16 :goto_1a

    .line 294
    :cond_9f
    if-lt v4, v0, :cond_a4

    if-lt v5, v3, :cond_a4

    .line 296
    return v2

    .line 302
    :cond_a4
    add-int/lit8 v9, v0, -0x2

    if-ne v4, v9, :cond_b7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_b7

    add-int/lit8 v8, v4, 0x1

    .line 303
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_b7

    .line 304
    return v2

    .line 307
    :cond_b7
    return v1
.end method

.method static greylist-max-o matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z
    .registers 6
    .param p0, "match"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "parsedPattern"    # [I
    .param p3, "type"    # I

    .line 215
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 216
    :cond_4
    if-nez p3, :cond_b

    .line 217
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 218
    :cond_b
    const/4 v1, 0x1

    if-ne p3, v1, :cond_13

    .line 219
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 220
    :cond_13
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1b

    .line 221
    invoke-static {p1, p0}, Landroid/os/PatternMatcher;->matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 222
    :cond_1b
    const/4 v1, 0x3

    if-ne p3, v1, :cond_23

    .line 223
    invoke-static {p2, p0}, Landroid/os/PatternMatcher;->matchAdvancedPattern([ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 224
    :cond_23
    const/4 v1, 0x4

    if-ne p3, v1, :cond_2b

    .line 225
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 227
    :cond_2b
    return v0
.end method

.method static declared-synchronized greylist-max-o parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I
    .registers 18
    .param p0, "pattern"    # Ljava/lang/String;

    move-object/from16 v1, p0

    const-class v2, Landroid/os/PatternMatcher;

    monitor-enter v2

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "ip":I
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 319
    .local v3, "LP":I
    const/4 v4, 0x0

    .line 321
    .local v4, "it":I
    const/4 v5, 0x0

    .line 322
    .local v5, "inSet":Z
    const/4 v6, 0x0

    .line 323
    .local v6, "inRange":Z
    const/4 v7, 0x0

    .line 327
    .local v7, "inCharClass":Z
    :goto_e
    if-ge v0, v3, :cond_1d8

    .line 328
    const/16 v8, 0x7fd

    if-gt v4, v8, :cond_1d0

    .line 332
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 333
    .local v8, "c":C
    const/4 v9, 0x0

    .line 335
    .local v9, "addToParsedPattern":Z
    const/4 v10, -0x2

    const/4 v11, -0x1

    sparse-switch v8, :sswitch_data_1ee

    .line 411
    const/4 v9, 0x1

    move v11, v4

    move v4, v0

    goto/16 :goto_10c

    .line 377
    :sswitch_23
    if-eqz v6, :cond_10a

    .line 378
    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "it":I
    .local v11, "it":I
    const/4 v12, -0x6

    aput v12, v10, v4

    .line 379
    const/4 v4, 0x0

    move v6, v4

    move v4, v0

    .end local v6    # "inRange":Z
    .local v4, "inRange":Z
    goto/16 :goto_10c

    .line 367
    .end local v11    # "it":I
    .local v4, "it":I
    .restart local v6    # "inRange":Z
    :sswitch_31
    if-nez v5, :cond_10a

    .line 368
    if-eqz v4, :cond_4f

    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v4, -0x1

    aget v10, v10, v11

    invoke-static {v10}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v10

    if-nez v10, :cond_4f

    .line 371
    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "it":I
    .restart local v11    # "it":I
    const/4 v12, -0x5

    aput v12, v10, v4

    .line 372
    add-int/lit8 v0, v0, 0x1

    .line 373
    const/4 v4, 0x1

    move v6, v4

    move v4, v0

    .end local v6    # "inRange":Z
    .local v4, "inRange":Z
    goto/16 :goto_10c

    .line 369
    .end local v11    # "it":I
    .local v4, "it":I
    .restart local v6    # "inRange":Z
    :cond_4f
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Modifier must follow a token."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 352
    :sswitch_57
    if-nez v5, :cond_5e

    .line 353
    const/4 v9, 0x1

    move v11, v4

    move v4, v0

    goto/16 :goto_10c

    .line 355
    :cond_5e
    sget-object v12, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v13, v4, -0x1

    aget v12, v12, v13

    .line 356
    .local v12, "parsedToken":I
    if-eq v12, v11, :cond_76

    if-eq v12, v10, :cond_76

    .line 361
    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "it":I
    .restart local v11    # "it":I
    const/4 v13, -0x3

    aput v13, v10, v4

    .line 362
    const/4 v4, 0x0

    .line 363
    .end local v5    # "inSet":Z
    .local v4, "inSet":Z
    const/4 v5, 0x0

    .line 365
    .end local v7    # "inCharClass":Z
    .end local v12    # "parsedToken":I
    .local v5, "inCharClass":Z
    move v7, v5

    move v5, v4

    move v4, v0

    goto/16 :goto_10c

    .line 358
    .end local v11    # "it":I
    .local v4, "it":I
    .local v5, "inSet":Z
    .restart local v7    # "inCharClass":Z
    .restart local v12    # "parsedToken":I
    :cond_76
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "You must define characters in a set."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 404
    .end local v12    # "parsedToken":I
    :sswitch_7e
    add-int/lit8 v10, v0, 0x1

    if-ge v10, v3, :cond_8e

    .line 407
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v8, v10

    .line 408
    const/4 v9, 0x1

    .line 409
    move v11, v4

    move v4, v0

    goto/16 :goto_10c

    .line 405
    :cond_8e
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Escape found at end of pattern!"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 337
    :sswitch_96
    if-eqz v5, :cond_9d

    .line 338
    const/4 v9, 0x1

    move v11, v4

    move v4, v0

    goto/16 :goto_10c

    .line 340
    :cond_9d
    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5e

    if-ne v12, v13, :cond_b1

    .line 341
    sget-object v11, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v4, 0x1

    .end local v4    # "it":I
    .local v12, "it":I
    aput v10, v11, v4

    .line 342
    add-int/lit8 v0, v0, 0x1

    move v4, v12

    goto :goto_b8

    .line 344
    .end local v12    # "it":I
    .restart local v4    # "it":I
    :cond_b1
    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v4, 0x1

    .end local v4    # "it":I
    .restart local v12    # "it":I
    aput v11, v10, v4

    move v4, v12

    .line 346
    .end local v12    # "it":I
    .restart local v4    # "it":I
    :goto_b8
    add-int/lit8 v0, v0, 0x1

    .line 347
    const/4 v5, 0x1

    .line 348
    goto/16 :goto_e

    .line 399
    :sswitch_bd
    if-nez v5, :cond_10a

    .line 400
    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "it":I
    .restart local v11    # "it":I
    const/4 v12, -0x4

    aput v12, v10, v4

    move v4, v0

    goto :goto_10c

    .line 391
    .end local v11    # "it":I
    .restart local v4    # "it":I
    :sswitch_c8
    if-nez v5, :cond_10a

    .line 392
    if-eqz v4, :cond_e1

    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v4, -0x1

    aget v10, v10, v11

    invoke-static {v10}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v10

    if-nez v10, :cond_e1

    .line 395
    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "it":I
    .restart local v11    # "it":I
    const/4 v12, -0x8

    aput v12, v10, v4

    move v4, v0

    goto :goto_10c

    .line 393
    .end local v11    # "it":I
    .restart local v4    # "it":I
    :cond_e1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Modifier must follow a token."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 383
    :sswitch_e9
    if-nez v5, :cond_10a

    .line 384
    if-eqz v4, :cond_102

    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v4, -0x1

    aget v10, v10, v11

    invoke-static {v10}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v10

    if-nez v10, :cond_102

    .line 387
    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v4, 0x1

    .end local v4    # "it":I
    .restart local v11    # "it":I
    const/4 v12, -0x7

    aput v12, v10, v4

    move v4, v0

    goto :goto_10c

    .line 385
    .end local v11    # "it":I
    .restart local v4    # "it":I
    :cond_102
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Modifier must follow a token."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 414
    :cond_10a
    move v11, v4

    move v4, v0

    .end local v0    # "ip":I
    .local v4, "ip":I
    .restart local v11    # "it":I
    :goto_10c
    if-eqz v5, :cond_14d

    .line 415
    if-eqz v7, :cond_11a

    .line 416
    sget-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "it":I
    .local v10, "it":I
    aput v8, v0, v11

    .line 417
    const/4 v0, 0x0

    move v7, v0

    .end local v7    # "inCharClass":Z
    .local v0, "inCharClass":Z
    goto/16 :goto_1ca

    .line 420
    .end local v0    # "inCharClass":Z
    .end local v10    # "it":I
    .restart local v7    # "inCharClass":Z
    .restart local v11    # "it":I
    :cond_11a
    add-int/lit8 v0, v4, 0x2

    if-ge v0, v3, :cond_13e

    add-int/lit8 v0, v4, 0x1

    .line 421
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v10, 0x2d

    if-ne v0, v10, :cond_13e

    add-int/lit8 v0, v4, 0x2

    .line 422
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v10, 0x5d

    if-eq v0, v10, :cond_13e

    .line 423
    const/4 v0, 0x1

    .line 424
    .end local v7    # "inCharClass":Z
    .restart local v0    # "inCharClass":Z
    sget-object v7, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "it":I
    .restart local v10    # "it":I
    aput v8, v7, v11

    .line 425
    add-int/lit8 v4, v4, 0x1

    move v7, v0

    goto/16 :goto_1ca

    .line 427
    .end local v0    # "inCharClass":Z
    .end local v10    # "it":I
    .restart local v7    # "inCharClass":Z
    .restart local v11    # "it":I
    :cond_13e
    sget-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "it":I
    .restart local v10    # "it":I
    aput v8, v0, v11

    .line 428
    sget-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "it":I
    .restart local v11    # "it":I
    aput v8, v0, v10

    move v10, v11

    goto/16 :goto_1ca

    .line 431
    :cond_14d
    if-eqz v6, :cond_1c0

    .line 432
    const/16 v0, 0x7d

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v10, v0

    .line 433
    .local v10, "endOfSet":I
    if-ltz v10, :cond_1b8

    .line 436
    invoke-virtual {v1, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 437
    .local v12, "rangeString":Ljava/lang/String;
    const/16 v0, 0x2c

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0
    :try_end_163
    .catchall {:try_start_6 .. :try_end_163} :catchall_1ea

    move v13, v0

    .line 441
    .local v13, "commaIndex":I
    if-gez v13, :cond_16c

    .line 442
    :try_start_166
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 443
    .local v0, "parsedRange":I
    move v14, v0

    .line 444
    .local v0, "rangeMin":I
    .local v14, "rangeMax":I
    goto :goto_18b

    .line 445
    .end local v0    # "rangeMin":I
    .end local v14    # "rangeMax":I
    :cond_16c
    const/4 v0, 0x0

    invoke-virtual {v12, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 446
    .restart local v0    # "rangeMin":I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_181

    .line 447
    const v14, 0x7fffffff

    .restart local v14    # "rangeMax":I
    goto :goto_18b

    .line 449
    .end local v14    # "rangeMax":I
    :cond_181
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 452
    .restart local v14    # "rangeMax":I
    :goto_18b
    if-gt v0, v14, :cond_1a5

    .line 456
    sget-object v15, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I
    :try_end_18f
    .catch Ljava/lang/NumberFormatException; {:try_start_166 .. :try_end_18f} :catch_1af
    .catchall {:try_start_166 .. :try_end_18f} :catchall_1ea

    add-int/lit8 v16, v11, 0x1

    .end local v11    # "it":I
    .local v16, "it":I
    :try_start_191
    aput v0, v15, v11

    .line 457
    sget-object v11, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I
    :try_end_195
    .catch Ljava/lang/NumberFormatException; {:try_start_191 .. :try_end_195} :catch_1a1
    .catchall {:try_start_191 .. :try_end_195} :catchall_1ea

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "it":I
    .local v15, "it":I
    :try_start_197
    aput v14, v11, v16
    :try_end_199
    .catch Ljava/lang/NumberFormatException; {:try_start_197 .. :try_end_199} :catch_19e
    .catchall {:try_start_197 .. :try_end_199} :catchall_1ea

    .line 460
    .end local v0    # "rangeMin":I
    .end local v14    # "rangeMax":I
    nop

    .line 461
    move v0, v10

    .line 462
    .end local v4    # "ip":I
    .local v0, "ip":I
    move v4, v15

    goto/16 :goto_e

    .line 458
    .end local v0    # "ip":I
    .restart local v4    # "ip":I
    :catch_19e
    move-exception v0

    move v11, v15

    goto :goto_1b0

    .end local v15    # "it":I
    .restart local v16    # "it":I
    :catch_1a1
    move-exception v0

    move/from16 v11, v16

    goto :goto_1b0

    .line 453
    .end local v16    # "it":I
    .local v0, "rangeMin":I
    .restart local v11    # "it":I
    .restart local v14    # "rangeMax":I
    :cond_1a5
    :try_start_1a5
    new-instance v15, Ljava/lang/IllegalArgumentException;

    move/from16 v16, v0

    .end local v0    # "rangeMin":I
    .local v16, "rangeMin":I
    const-string v0, "Range quantifier minimum is greater than maximum"

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "LP":I
    .end local v4    # "ip":I
    .end local v5    # "inSet":Z
    .end local v6    # "inRange":Z
    .end local v7    # "inCharClass":Z
    .end local v8    # "c":C
    .end local v9    # "addToParsedPattern":Z
    .end local v10    # "endOfSet":I
    .end local v11    # "it":I
    .end local v12    # "rangeString":Ljava/lang/String;
    .end local v13    # "commaIndex":I
    .end local p0    # "pattern":Ljava/lang/String;
    throw v15
    :try_end_1af
    .catch Ljava/lang/NumberFormatException; {:try_start_1a5 .. :try_end_1af} :catch_1af
    .catchall {:try_start_1a5 .. :try_end_1af} :catchall_1ea

    .line 458
    .end local v14    # "rangeMax":I
    .end local v16    # "rangeMin":I
    .restart local v3    # "LP":I
    .restart local v4    # "ip":I
    .restart local v5    # "inSet":Z
    .restart local v6    # "inRange":Z
    .restart local v7    # "inCharClass":Z
    .restart local v8    # "c":C
    .restart local v9    # "addToParsedPattern":Z
    .restart local v10    # "endOfSet":I
    .restart local v11    # "it":I
    .restart local v12    # "rangeString":Ljava/lang/String;
    .restart local v13    # "commaIndex":I
    .restart local p0    # "pattern":Ljava/lang/String;
    :catch_1af
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_1b0
    :try_start_1b0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Range number format incorrect"

    invoke-direct {v14, v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 434
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "rangeString":Ljava/lang/String;
    .end local v13    # "commaIndex":I
    :cond_1b8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v12, "Range not ended with \'}\'"

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    .end local v10    # "endOfSet":I
    :cond_1c0
    if-eqz v9, :cond_1c9

    .line 464
    sget-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "it":I
    .local v10, "it":I
    aput v8, v0, v11

    goto :goto_1ca

    .line 463
    .end local v10    # "it":I
    .restart local v11    # "it":I
    :cond_1c9
    move v10, v11

    .line 466
    .end local v11    # "it":I
    .restart local v10    # "it":I
    :goto_1ca
    nop

    .end local v8    # "c":C
    add-int/lit8 v0, v4, 0x1

    .line 467
    .end local v4    # "ip":I
    .local v0, "ip":I
    move v4, v10

    goto/16 :goto_e

    .line 329
    .end local v9    # "addToParsedPattern":Z
    .end local v10    # "it":I
    .local v4, "it":I
    :cond_1d0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Pattern is too large!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 468
    :cond_1d8
    if-nez v5, :cond_1e2

    .line 471
    sget-object v8, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8
    :try_end_1e0
    .catchall {:try_start_1b0 .. :try_end_1e0} :catchall_1ea

    monitor-exit v2

    return-object v8

    .line 469
    :cond_1e2
    :try_start_1e2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Set was not terminated!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 315
    .end local v0    # "ip":I
    .end local v3    # "LP":I
    .end local v4    # "it":I
    .end local v5    # "inSet":Z
    .end local v6    # "inRange":Z
    .end local v7    # "inCharClass":Z
    .end local p0    # "pattern":Ljava/lang/String;
    :catchall_1ea
    move-exception v0

    monitor-exit v2
    :try_end_1ec
    .catchall {:try_start_1e2 .. :try_end_1ec} :catchall_1ea

    throw v0

    nop

    :sswitch_data_1ee
    .sparse-switch
        0x2a -> :sswitch_e9
        0x2b -> :sswitch_c8
        0x2e -> :sswitch_bd
        0x5b -> :sswitch_96
        0x5c -> :sswitch_7e
        0x5d -> :sswitch_57
        0x7b -> :sswitch_31
        0x7d -> :sswitch_23
    .end sparse-switch
.end method


# virtual methods
.method public blacklist check()Z
    .registers 4

    .line 177
    :try_start_0
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 178
    iget-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    iget-object v1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/PatternMatcher;->parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_15

    return v0

    .line 183
    :cond_12
    nop

    .line 184
    const/4 v0, 0x1

    return v0

    .line 180
    :catch_15
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to verify advanced pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PatternMatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 162
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 163
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    iget-object v4, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 164
    const-wide v2, 0x10e00000002L

    iget v4, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 167
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 168
    return-void
.end method

.method public final whitelist getPath()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getType()I
    .registers 2

    .line 131
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    return v0
.end method

.method public whitelist match(Ljava/lang/String;)Z
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    iget v2, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-static {p1, v0, v1, v2}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 139
    const-string v0, "? "

    .line 140
    .local v0, "type":Ljava/lang/String;
    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    packed-switch v1, :pswitch_data_38

    goto :goto_17

    .line 154
    :pswitch_8
    const-string v0, "SUFFIX: "

    goto :goto_17

    .line 151
    :pswitch_b
    const-string v0, "ADVANCED: "

    .line 152
    goto :goto_17

    .line 148
    :pswitch_e
    const-string v0, "GLOB: "

    .line 149
    goto :goto_17

    .line 145
    :pswitch_11
    const-string v0, "PREFIX: "

    .line 146
    goto :goto_17

    .line 142
    :pswitch_14
    const-string v0, "LITERAL: "

    .line 143
    nop

    .line 157
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PatternMatcher{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 192
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 195
    return-void
.end method
