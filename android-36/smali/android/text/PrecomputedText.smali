.class public Landroid/text/PrecomputedText;
.super Ljava/lang/Object;
.source "PrecomputedText.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/PrecomputedText$Params;,
        Landroid/text/PrecomputedText$ParagraphInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o LINE_FEED:C = '\n'


# instance fields
.field private final greylist-max-o mEnd:I

.field private final greylist-max-o mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

.field private final greylist-max-o mParams:Landroid/text/PrecomputedText$Params;

.field private final greylist-max-o mStart:I

.field private final greylist-max-o mText:Landroid/text/SpannableString;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/CharSequence;IILandroid/text/PrecomputedText$Params;[Landroid/text/PrecomputedText$ParagraphInfo;)V
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "params"    # Landroid/text/PrecomputedText$Params;
    .param p5, "paraInfo"    # [Landroid/text/PrecomputedText$ParagraphInfo;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    new-instance v0, Landroid/text/SpannableString;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;Z)V

    iput-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    .line 541
    iput p2, p0, Landroid/text/PrecomputedText;->mStart:I

    .line 542
    iput p3, p0, Landroid/text/PrecomputedText;->mEnd:I

    .line 543
    iput-object p4, p0, Landroid/text/PrecomputedText;->mParams:Landroid/text/PrecomputedText$Params;

    .line 544
    iput-object p5, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    .line 545
    return-void
.end method

.method public static whitelist create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;
    .registers 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "params"    # Landroid/text/PrecomputedText$Params;

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "paraInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    instance-of v1, p0, Landroid/text/PrecomputedText;

    if-eqz v1, :cond_42

    .line 411
    move-object v1, p0

    check-cast v1, Landroid/text/PrecomputedText;

    .line 412
    .local v1, "hintPct":Landroid/text/PrecomputedText;
    invoke-virtual {v1}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v2

    .line 413
    .local v2, "hintParams":Landroid/text/PrecomputedText$Params;
    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmPaint(Landroid/text/PrecomputedText$Params;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmTextDir(Landroid/text/PrecomputedText$Params;)Landroid/text/TextDirectionHeuristic;

    move-result-object v4

    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmBreakStrategy(Landroid/text/PrecomputedText$Params;)I

    move-result v5

    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/PrecomputedText$Params;)I

    move-result v6

    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmLineBreakConfig(Landroid/text/PrecomputedText$Params;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v7

    .line 414
    invoke-virtual/range {v2 .. v7}, Landroid/text/PrecomputedText$Params;->checkResultUsable(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;IILandroid/graphics/text/LineBreakConfig;)I

    move-result v3

    .line 417
    .local v3, "checkResult":I
    packed-switch v3, :pswitch_data_68

    goto :goto_42

    .line 419
    :pswitch_28
    return-object v1

    .line 423
    :pswitch_29
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v4

    invoke-virtual {v2}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v5

    if-ne v4, v5, :cond_42

    .line 424
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v4

    .line 425
    invoke-virtual {v2}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v5

    if-ne v4, v5, :cond_42

    .line 426
    const/4 v4, 0x1

    invoke-static {v1, p1, v4}, Landroid/text/PrecomputedText;->createMeasuredParagraphsFromPrecomputedText(Landroid/text/PrecomputedText;Landroid/text/PrecomputedText$Params;Z)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v0

    .line 436
    .end local v1    # "hintPct":Landroid/text/PrecomputedText;
    .end local v2    # "hintParams":Landroid/text/PrecomputedText$Params;
    .end local v3    # "checkResult":I
    :cond_42
    :goto_42
    if-nez v0, :cond_54

    .line 437
    nop

    .line 438
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 437
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    .end local p0    # "text":Ljava/lang/CharSequence;
    .end local p1    # "params":Landroid/text/PrecomputedText$Params;
    .local v1, "text":Ljava/lang/CharSequence;
    .local v2, "params":Landroid/text/PrecomputedText$Params;
    invoke-static/range {v1 .. v6}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v0

    move-object v6, v0

    goto :goto_57

    .line 436
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v2    # "params":Landroid/text/PrecomputedText$Params;
    .restart local p0    # "text":Ljava/lang/CharSequence;
    .restart local p1    # "params":Landroid/text/PrecomputedText$Params;
    :cond_54
    move-object v1, p0

    move-object v2, p1

    .end local p0    # "text":Ljava/lang/CharSequence;
    .end local p1    # "params":Landroid/text/PrecomputedText$Params;
    .restart local v1    # "text":Ljava/lang/CharSequence;
    .restart local v2    # "params":Landroid/text/PrecomputedText$Params;
    move-object v6, v0

    .line 441
    .end local v0    # "paraInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v6, "paraInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    :goto_57
    move-object v5, v2

    move-object v2, v1

    .end local v1    # "text":Ljava/lang/CharSequence;
    .local v2, "text":Ljava/lang/CharSequence;
    .local v5, "params":Landroid/text/PrecomputedText$Params;
    new-instance v1, Landroid/text/PrecomputedText;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct/range {v1 .. v6}, Landroid/text/PrecomputedText;-><init>(Ljava/lang/CharSequence;IILandroid/text/PrecomputedText$Params;[Landroid/text/PrecomputedText$ParagraphInfo;)V

    move-object p0, v1

    move-object v1, v2

    move-object v2, v5

    .end local v5    # "params":Landroid/text/PrecomputedText$Params;
    .restart local v1    # "text":Ljava/lang/CharSequence;
    .local v2, "params":Landroid/text/PrecomputedText$Params;
    return-object p0

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
    .end packed-switch
.end method

.method public static blacklist createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZZ)[Landroid/text/PrecomputedText$ParagraphInfo;
    .registers 23
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "params"    # Landroid/text/PrecomputedText$Params;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "computeLayout"    # Z
    .param p5, "computeBounds"    # Z

    .line 487
    move/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/PrecomputedText$ParagraphInfo;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1d

    .line 492
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v2

    if-eqz v2, :cond_1d

    move v2, v4

    goto :goto_1e

    :cond_1d
    move v2, v3

    .line 494
    .local v2, "needHyphenation":Z
    :goto_1e
    const/4 v5, 0x2

    if-eqz v2, :cond_30

    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v6

    invoke-static {v6}, Landroid/text/PrecomputedText;->isFastHyphenation(I)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 496
    move v4, v5

    goto :goto_2e

    .line 497
    :cond_2d
    nop

    :goto_2e
    move v12, v4

    .local v4, "hyphenationMode":I
    goto :goto_32

    .line 499
    .end local v4    # "hyphenationMode":I
    :cond_30
    const/4 v4, 0x0

    move v12, v4

    .line 502
    .local v12, "hyphenationMode":I
    :goto_32
    const/4 v4, 0x0

    .line 503
    .local v4, "config":Landroid/graphics/text/LineBreakConfig;
    const/4 v6, 0x0

    .line 504
    .local v6, "paraEnd":I
    move/from16 v7, p2

    move v9, v7

    .local v9, "paraStart":I
    :goto_37
    if-ge v9, v0, :cond_95

    .line 505
    const/16 v7, 0xa

    move-object/from16 v8, p0

    invoke-static {v8, v7, v9, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    .line 506
    if-gez v6, :cond_47

    .line 509
    move/from16 v6, p3

    move v10, v6

    goto :goto_4a

    .line 511
    :cond_47
    add-int/lit8 v6, v6, 0x1

    move v10, v6

    .line 514
    .end local v6    # "paraEnd":I
    .local v10, "paraEnd":I
    :goto_4a
    if-nez v4, :cond_73

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v4

    .line 516
    invoke-virtual {v4}, Landroid/graphics/text/LineBreakConfig;->getLineBreakWordStyle()I

    move-result v6

    if-ne v6, v5, :cond_6f

    move/from16 v6, p2

    if-ne v9, v6, :cond_5c

    if-eq v10, v0, :cond_71

    .line 520
    :cond_5c
    new-instance v7, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v7}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    .line 521
    invoke-virtual {v7, v4}, Landroid/graphics/text/LineBreakConfig$Builder;->merge(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v7

    .line 522
    invoke-virtual {v7, v3}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v7

    .line 523
    invoke-virtual {v7}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v4

    move-object v7, v4

    goto :goto_76

    .line 516
    :cond_6f
    move/from16 v6, p2

    .line 527
    :cond_71
    move-object v7, v4

    goto :goto_76

    .line 514
    :cond_73
    move/from16 v6, p2

    move-object v7, v4

    .line 527
    .end local v4    # "config":Landroid/graphics/text/LineBreakConfig;
    .local v7, "config":Landroid/graphics/text/LineBreakConfig;
    :goto_76
    new-instance v4, Landroid/text/PrecomputedText$ParagraphInfo;

    .line 528
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 529
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v11

    .line 527
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-static/range {v6 .. v16}, Landroid/text/MeasuredParagraph;->buildForStaticLayout(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v6

    invoke-direct {v4, v10, v6}, Landroid/text/PrecomputedText$ParagraphInfo;-><init>(ILandroid/text/MeasuredParagraph;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    move v9, v10

    move-object v4, v7

    move v6, v10

    goto :goto_37

    .line 533
    .end local v7    # "config":Landroid/graphics/text/LineBreakConfig;
    .end local v9    # "paraStart":I
    .end local v10    # "paraEnd":I
    .restart local v4    # "config":Landroid/graphics/text/LineBreakConfig;
    .restart local v6    # "paraEnd":I
    :cond_95
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/text/PrecomputedText$ParagraphInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/PrecomputedText$ParagraphInfo;

    return-object v3
.end method

.method private static blacklist createMeasuredParagraphsFromPrecomputedText(Landroid/text/PrecomputedText;Landroid/text/PrecomputedText$Params;Z)[Landroid/text/PrecomputedText$ParagraphInfo;
    .registers 18
    .param p0, "pct"    # Landroid/text/PrecomputedText;
    .param p1, "params"    # Landroid/text/PrecomputedText$Params;
    .param p2, "computeLayout"    # Z

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_10

    .line 452
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v0

    if-eqz v0, :cond_10

    move v0, v3

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    move v11, v0

    .line 454
    .local v11, "needHyphenation":Z
    const/4 v0, 0x2

    if-eqz v11, :cond_24

    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v4

    invoke-static {v4}, Landroid/text/PrecomputedText;->isFastHyphenation(I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 456
    move v4, v0

    goto :goto_22

    .line 457
    :cond_21
    move v4, v3

    :goto_22
    move v6, v4

    .local v4, "hyphenationMode":I
    goto :goto_26

    .line 459
    .end local v4    # "hyphenationMode":I
    :cond_24
    const/4 v4, 0x0

    move v6, v4

    .line 461
    .local v6, "hyphenationMode":I
    :goto_26
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v4

    .line 462
    .local v4, "config":Landroid/graphics/text/LineBreakConfig;
    invoke-virtual {v4}, Landroid/graphics/text/LineBreakConfig;->getLineBreakWordStyle()I

    move-result v5

    if-ne v5, v0, :cond_49

    .line 463
    invoke-virtual {p0}, Landroid/text/PrecomputedText;->getParagraphCount()I

    move-result v0

    if-eq v0, v3, :cond_49

    .line 465
    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    .line 466
    invoke-virtual {v0, v4}, Landroid/graphics/text/LineBreakConfig$Builder;->merge(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    .line 467
    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v4

    move-object v1, v4

    goto :goto_4a

    .line 470
    :cond_49
    move-object v1, v4

    .end local v4    # "config":Landroid/graphics/text/LineBreakConfig;
    .local v1, "config":Landroid/graphics/text/LineBreakConfig;
    :goto_4a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 471
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/PrecomputedText$ParagraphInfo;>;"
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_52
    invoke-virtual {p0}, Landroid/text/PrecomputedText;->getParagraphCount()I

    move-result v0

    if-ge v13, v0, :cond_80

    .line 472
    invoke-virtual {p0, v13}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v3

    .line 473
    .local v3, "paraStart":I
    invoke-virtual {p0, v13}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v4

    .line 474
    .local v4, "paraEnd":I
    new-instance v14, Landroid/text/PrecomputedText$ParagraphInfo;

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 476
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v5

    .line 477
    invoke-virtual {p0, v13}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v9

    .line 474
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v2, p0

    move/from16 v7, p2

    invoke-static/range {v0 .. v10}, Landroid/text/MeasuredParagraph;->buildForStaticLayout(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v0

    invoke-direct {v14, v4, v0}, Landroid/text/PrecomputedText$ParagraphInfo;-><init>(ILandroid/text/MeasuredParagraph;)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    .end local v3    # "paraStart":I
    .end local v4    # "paraEnd":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_52

    .line 479
    .end local v13    # "i":I
    :cond_80
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/text/PrecomputedText$ParagraphInfo;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/PrecomputedText$ParagraphInfo;

    return-object v0
.end method

.method private static blacklist isFastHyphenation(I)Z
    .registers 2
    .param p0, "frequency"    # I

    .line 445
    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .line 833
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->charAt(I)C

    move-result v0

    return v0
.end method

.method public blacklist checkResultUsable(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;IILandroid/graphics/text/LineBreakConfig;)I
    .registers 15
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "strategy"    # I
    .param p6, "frequency"    # I
    .param p7, "lbConfig"    # Landroid/graphics/text/LineBreakConfig;

    .line 619
    iget v0, p0, Landroid/text/PrecomputedText;->mStart:I

    if-ne v0, p1, :cond_1a

    iget v0, p0, Landroid/text/PrecomputedText;->mEnd:I

    if-eq v0, p2, :cond_e

    move-object v3, p3

    move-object v2, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    goto :goto_1f

    .line 622
    :cond_e
    iget-object v1, p0, Landroid/text/PrecomputedText;->mParams:Landroid/text/PrecomputedText$Params;

    move-object v3, p3

    move-object v2, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    .end local p3    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local p4    # "paint":Landroid/text/TextPaint;
    .end local p5    # "strategy":I
    .end local p6    # "frequency":I
    .end local p7    # "lbConfig":Landroid/graphics/text/LineBreakConfig;
    .local v2, "paint":Landroid/text/TextPaint;
    .local v3, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v4, "strategy":I
    .local v5, "frequency":I
    .local v6, "lbConfig":Landroid/graphics/text/LineBreakConfig;
    invoke-virtual/range {v1 .. v6}, Landroid/text/PrecomputedText$Params;->checkResultUsable(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;IILandroid/graphics/text/LineBreakConfig;)I

    move-result p3

    return p3

    .line 619
    .end local v2    # "paint":Landroid/text/TextPaint;
    .end local v3    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v4    # "strategy":I
    .end local v5    # "frequency":I
    .end local v6    # "lbConfig":Landroid/graphics/text/LineBreakConfig;
    .restart local p3    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local p4    # "paint":Landroid/text/TextPaint;
    .restart local p5    # "strategy":I
    .restart local p6    # "frequency":I
    .restart local p7    # "lbConfig":Landroid/graphics/text/LineBreakConfig;
    :cond_1a
    move-object v3, p3

    move-object v2, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    .line 620
    .end local p3    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local p4    # "paint":Landroid/text/TextPaint;
    .end local p5    # "strategy":I
    .end local p6    # "frequency":I
    .end local p7    # "lbConfig":Landroid/graphics/text/LineBreakConfig;
    .restart local v2    # "paint":Landroid/text/TextPaint;
    .restart local v3    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v4    # "strategy":I
    .restart local v5    # "frequency":I
    .restart local v6    # "lbConfig":Landroid/graphics/text/LineBreakConfig;
    :goto_1f
    const/4 p3, 0x0

    return p3
.end method

.method public greylist-max-o findParaIndex(I)I
    .registers 6
    .param p1, "pos"    # I

    .line 630
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 631
    iget-object v1, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    if-ge p1, v1, :cond_f

    .line 632
    return v0

    .line 630
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 635
    .end local v0    # "i":I
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pos must be less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    iget-object v3, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gave "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBounds(IILandroid/graphics/Rect;)V
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 682
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_e

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p1, v2, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    const-string v3, "invalid start offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 683
    if-ltz p2, :cond_20

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p2, v2, :cond_20

    move v2, v0

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    const-string v3, "invalid end offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 684
    if-gt p1, p2, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    const-string/jumbo v2, "start offset can not be larger than end offset"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 685
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    if-ne p1, p2, :cond_39

    .line 687
    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 688
    return-void

    .line 690
    :cond_39
    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v0

    .line 691
    .local v0, "paraIndex":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v1

    .line 692
    .local v1, "paraStart":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v2

    .line 693
    .local v2, "paraEnd":I
    if-lt p1, v1, :cond_55

    if-lt v2, p2, :cond_55

    .line 698
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v3

    sub-int v4, p1, v1

    sub-int v5, p2, v1

    invoke-virtual {v3, v4, v5, p3}, Landroid/text/MeasuredParagraph;->getBounds(IILandroid/graphics/Rect;)V

    .line 699
    return-void

    .line 694
    :cond_55
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot measured across the paragraph:para: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "), request: ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist getCharWidthAt(I)F
    .registers 7
    .param p1, "offset"    # I

    .line 741
    if-ltz p1, :cond_c

    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    if-ge p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-string v1, "invalid offset"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 742
    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v0

    .line 743
    .local v0, "paraIndex":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v1

    .line 744
    .local v1, "paraStart":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v2

    .line 745
    .local v2, "paraEnd":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v3

    sub-int v4, p1, v1

    invoke-virtual {v3, v4}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v3

    return v3
.end method

.method public greylist-max-o getEnd()I
    .registers 2

    .line 568
    iget v0, p0, Landroid/text/PrecomputedText;->mEnd:I

    return v0
.end method

.method public whitelist getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "outMetrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 713
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_e

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p1, v2, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    const-string v3, "invalid start offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 714
    if-ltz p2, :cond_20

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p2, v2, :cond_20

    move v2, v0

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    const-string v3, "invalid end offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 715
    if-gt p1, p2, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    const-string/jumbo v1, "start offset can not be larger than end offset"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 716
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    if-ne p1, p2, :cond_3f

    .line 718
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParams:Landroid/text/PrecomputedText$Params;

    invoke-virtual {v0}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 719
    return-void

    .line 721
    :cond_3f
    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v0

    .line 722
    .local v0, "paraIndex":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v1

    .line 723
    .local v1, "paraStart":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v2

    .line 724
    .local v2, "paraEnd":I
    if-lt p1, v1, :cond_5b

    if-lt v2, p2, :cond_5b

    .line 729
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v3

    sub-int v4, p1, v1

    sub-int v5, p2, v1

    invoke-virtual {v3, v4, v5, p3}, Landroid/text/MeasuredParagraph;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    .line 731
    return-void

    .line 725
    :cond_5b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot measured across the paragraph:para: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "), request: ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public greylist-max-o getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;
    .registers 3
    .param p1, "paraIndex"    # I

    .line 603
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    return-object v0
.end method

.method public greylist-max-o getMemoryUsage()I
    .registers 4

    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, "r":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Landroid/text/PrecomputedText;->getParagraphCount()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 757
    invoke-virtual {p0, v1}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/MeasuredParagraph;->getMemoryUsage()I

    move-result v2

    add-int/2addr v0, v2

    .line 756
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 759
    .end local v1    # "i":I
    :cond_14
    return v0
.end method

.method public whitelist getParagraphCount()I
    .registers 2

    .line 582
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    array-length v0, v0

    return v0
.end method

.method public whitelist getParagraphEnd(I)I
    .registers 5
    .param p1, "paraIndex"    # I

    .line 597
    invoke-virtual {p0}, Landroid/text/PrecomputedText;->getParagraphCount()I

    move-result v0

    const-string v1, "paraIndex"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 598
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    return v0
.end method

.method public greylist-max-o getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;
    .registers 2

    .line 608
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    return-object v0
.end method

.method public whitelist getParagraphStart(I)I
    .registers 5
    .param p1, "paraIndex"    # I

    .line 589
    invoke-virtual {p0}, Landroid/text/PrecomputedText;->getParagraphCount()I

    move-result v0

    const-string v1, "paraIndex"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 590
    if-nez p1, :cond_f

    iget v0, p0, Landroid/text/PrecomputedText;->mStart:I

    goto :goto_15

    :cond_f
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v0

    :goto_15
    return v0
.end method

.method public whitelist getParams()Landroid/text/PrecomputedText$Params;
    .registers 2

    .line 575
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParams:Landroid/text/PrecomputedText$Params;

    return-object v0
.end method

.method public whitelist getSpanEnd(Ljava/lang/Object;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 808
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpanFlags(Ljava/lang/Object;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 813
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpanStart(Ljava/lang/Object;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 803
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 798
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getStart()I
    .registers 2

    .line 560
    iget v0, p0, Landroid/text/PrecomputedText;->mStart:I

    return v0
.end method

.method public greylist-max-o getText()Ljava/lang/CharSequence;
    .registers 2

    .line 552
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    return-object v0
.end method

.method public whitelist getWidth(II)F
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 652
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_e

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p1, v2, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    const-string v3, "invalid start offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 653
    if-ltz p2, :cond_20

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p2, v2, :cond_20

    move v2, v0

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    const-string v3, "invalid end offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 654
    if-gt p1, p2, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    const-string/jumbo v1, "start offset can not be larger than end offset"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 656
    if-ne p1, p2, :cond_34

    .line 657
    const/4 v0, 0x0

    return v0

    .line 659
    :cond_34
    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v0

    .line 660
    .local v0, "paraIndex":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v1

    .line 661
    .local v1, "paraStart":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v2

    .line 662
    .local v2, "paraEnd":I
    if-lt p1, v1, :cond_51

    if-lt v2, p2, :cond_51

    .line 667
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v3

    sub-int v4, p1, v1

    sub-int v5, p2, v1

    invoke-virtual {v3, v4, v5}, Landroid/text/MeasuredParagraph;->getWidth(II)F

    move-result v3

    return v3

    .line 663
    :cond_51
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot measured across the paragraph:para: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "), request: ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 828
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    return v0
.end method

.method public whitelist nextSpanTransition(IILjava/lang/Class;)I
    .registers 5
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "type"    # Ljava/lang/Class;

    .line 818
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableString;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public whitelist removeSpan(Ljava/lang/Object;)V
    .registers 4
    .param p1, "what"    # Ljava/lang/Object;

    .line 784
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_a

    .line 788
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 789
    return-void

    .line 785
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MetricAffectingSpan can not be removed from PrecomputedText."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSpan(Ljava/lang/Object;III)V
    .registers 7
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 772
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_a

    .line 776
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 777
    return-void

    .line 773
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MetricAffectingSpan can not be set to PrecomputedText."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 838
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1, p2}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/text/PrecomputedText;->mParams:Landroid/text/PrecomputedText$Params;

    invoke-static {v0, v1}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 843
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
