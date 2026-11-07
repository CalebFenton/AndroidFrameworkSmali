.class public final Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
.super Landroid/view/inputmethod/InlineSuggestionsRequest$BaseBuilder;
.source "InlineSuggestionsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InlineSuggestionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mHostDisplayId:I

.field private blacklist mHostInputToken:Landroid/os/IBinder;

.field private blacklist mHostPackageName:Ljava/lang/String;

.field private blacklist mInlinePresentationSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

.field private blacklist mMaxSuggestionCount:I

.field private blacklist mSupportedLocales:Landroid/os/LocaleList;


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;)V"
        }
    .end annotation

    .line 510
    .local p1, "inlinePresentationSpecs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/inline/InlinePresentationSpec;>;"
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$BaseBuilder;-><init>()V

    .line 499
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 511
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlinePresentationSpecs:Ljava/util/List;

    .line 512
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 514
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 679
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 683
    return-void

    .line 680
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addInlinePresentationSpecs(Landroid/widget/inline/InlinePresentationSpec;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .registers 3
    .param p1, "value"    # Landroid/widget/inline/InlinePresentationSpec;

    .line 550
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlinePresentationSpecs:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->setInlinePresentationSpecs(Ljava/util/List;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;

    .line 551
    :cond_c
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    return-object p0
.end method

.method public whitelist build()Landroid/view/inputmethod/InlineSuggestionsRequest;
    .registers 11

    .line 642
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 643
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 645
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 646
    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->-$$Nest$smdefaultMaxSuggestionCount()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mMaxSuggestionCount:I

    .line 648
    :cond_1b
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 649
    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->-$$Nest$smdefaultHostPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostPackageName:Ljava/lang/String;

    .line 651
    :cond_2a
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_39

    .line 652
    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->-$$Nest$smdefaultSupportedLocales()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mSupportedLocales:Landroid/os/LocaleList;

    .line 654
    :cond_39
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_48

    .line 655
    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->-$$Nest$smdefaultExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mExtras:Landroid/os/Bundle;

    .line 657
    :cond_48
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x20

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_57

    .line 658
    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->-$$Nest$smdefaultHostInputToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostInputToken:Landroid/os/IBinder;

    .line 660
    :cond_57
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_66

    .line 661
    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->-$$Nest$smdefaultHostDisplayId()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostDisplayId:I

    .line 663
    :cond_66
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_75

    .line 664
    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->-$$Nest$smdefaultInlineTooltipPresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 666
    :cond_75
    new-instance v1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mMaxSuggestionCount:I

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlinePresentationSpecs:Ljava/util/List;

    iget-object v4, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mSupportedLocales:Landroid/os/LocaleList;

    iget-object v6, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v7, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostInputToken:Landroid/os/IBinder;

    iget v8, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostDisplayId:I

    iget-object v9, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    invoke-direct/range {v1 .. v9}, Landroid/view/inputmethod/InlineSuggestionsRequest;-><init>(ILjava/util/List;Ljava/lang/String;Landroid/os/LocaleList;Landroid/os/Bundle;Landroid/os/IBinder;ILandroid/widget/inline/InlinePresentationSpec;)V

    .line 675
    .local v1, "o":Landroid/view/inputmethod/InlineSuggestionsRequest;
    return-object v1
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/Bundle;

    .line 593
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 594
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 595
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mExtras:Landroid/os/Bundle;

    .line 596
    return-object p0
.end method

.method blacklist setHostDisplayId(I)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 623
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 624
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 625
    iput p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostDisplayId:I

    .line 626
    return-object p0
.end method

.method blacklist setHostInputToken(Landroid/os/IBinder;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/IBinder;

    .line 608
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 609
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 610
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostInputToken:Landroid/os/IBinder;

    .line 611
    return-object p0
.end method

.method blacklist setHostPackageName(Ljava/lang/String;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 563
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 564
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 565
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mHostPackageName:Ljava/lang/String;

    .line 566
    return-object p0
.end method

.method public whitelist setInlinePresentationSpecs(Ljava/util/List;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;)",
            "Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;"
        }
    .end annotation

    .line 538
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Landroid/widget/inline/InlinePresentationSpec;>;"
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 539
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 540
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlinePresentationSpecs:Ljava/util/List;

    .line 541
    return-object p0
.end method

.method public whitelist setInlineTooltipPresentationSpec(Landroid/widget/inline/InlinePresentationSpec;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .registers 6
    .param p1, "value"    # Landroid/widget/inline/InlinePresentationSpec;

    .line 634
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 635
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 636
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mInlineTooltipPresentationSpec:Landroid/widget/inline/InlinePresentationSpec;

    .line 637
    return-object p0
.end method

.method public whitelist setMaxSuggestionCount(I)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 525
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 526
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 527
    iput p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mMaxSuggestionCount:I

    .line 528
    return-object p0
.end method

.method public whitelist setSupportedLocales(Landroid/os/LocaleList;)Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/LocaleList;

    .line 579
    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->checkNotUsed()V

    .line 580
    iget-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mBuilderFieldsSet:J

    .line 581
    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;->mSupportedLocales:Landroid/os/LocaleList;

    .line 582
    return-object p0
.end method
