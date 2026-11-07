.class public final Landroid/view/translation/TranslationRequest$Builder;
.super Landroid/view/translation/TranslationRequest$BaseBuilder;
.source "TranslationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/TranslationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mFlags:I

.field private blacklist mTranslationRequestValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mViewTranslationRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 307
    invoke-direct {p0}, Landroid/view/translation/TranslationRequest$BaseBuilder;-><init>()V

    .line 305
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    .line 308
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 395
    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 399
    return-void

    .line 396
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist addTranslationRequestValue(Landroid/view/translation/TranslationRequestValue;)Landroid/view/translation/TranslationRequest$Builder;
    .registers 3
    .param p1, "value"    # Landroid/view/translation/TranslationRequestValue;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    iget-object v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/translation/TranslationRequest$Builder;->setTranslationRequestValues(Ljava/util/List;)Landroid/view/translation/TranslationRequest$Builder;

    .line 343
    :cond_c
    iget-object v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    return-object p0
.end method

.method public greylist addViewTranslationRequest(Landroid/view/translation/ViewTranslationRequest;)Landroid/view/translation/TranslationRequest$Builder;
    .registers 3
    .param p1, "value"    # Landroid/view/translation/ViewTranslationRequest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 368
    iget-object v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mViewTranslationRequests:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/translation/TranslationRequest$Builder;->setViewTranslationRequests(Ljava/util/List;)Landroid/view/translation/TranslationRequest$Builder;

    .line 369
    :cond_c
    iget-object v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mViewTranslationRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    return-object p0
.end method

.method public whitelist build()Landroid/view/translation/TranslationRequest;
    .registers 7

    .line 375
    invoke-direct {p0}, Landroid/view/translation/TranslationRequest$Builder;->checkNotUsed()V

    .line 376
    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    .line 378
    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 379
    invoke-static {}, Landroid/view/translation/TranslationRequest;->-$$Nest$smdefaultFlags()I

    move-result v0

    iput v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mFlags:I

    .line 381
    :cond_1b
    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 382
    invoke-static {}, Landroid/view/translation/TranslationRequest;->-$$Nest$smdefaultTranslationRequestValues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/List;

    .line 384
    :cond_2a
    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_39

    .line 385
    invoke-static {}, Landroid/view/translation/TranslationRequest;->-$$Nest$smdefaultViewTranslationRequests()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mViewTranslationRequests:Ljava/util/List;

    .line 387
    :cond_39
    new-instance v0, Landroid/view/translation/TranslationRequest;

    iget v1, p0, Landroid/view/translation/TranslationRequest$Builder;->mFlags:I

    iget-object v2, p0, Landroid/view/translation/TranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/List;

    iget-object v3, p0, Landroid/view/translation/TranslationRequest$Builder;->mViewTranslationRequests:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Landroid/view/translation/TranslationRequest;-><init>(ILjava/util/List;Ljava/util/List;)V

    .line 391
    .local v0, "o":Landroid/view/translation/TranslationRequest;
    return-object v0
.end method

.method public whitelist setFlags(I)Landroid/view/translation/TranslationRequest$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 315
    invoke-direct {p0}, Landroid/view/translation/TranslationRequest$Builder;->checkNotUsed()V

    .line 316
    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    .line 317
    iput p1, p0, Landroid/view/translation/TranslationRequest$Builder;->mFlags:I

    .line 318
    return-object p0
.end method

.method public whitelist setTranslationRequestValues(Ljava/util/List;)Landroid/view/translation/TranslationRequest$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;)",
            "Landroid/view/translation/TranslationRequest$Builder;"
        }
    .end annotation

    .line 328
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Landroid/view/translation/TranslationRequestValue;>;"
    invoke-direct {p0}, Landroid/view/translation/TranslationRequest$Builder;->checkNotUsed()V

    .line 329
    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    .line 330
    iput-object p1, p0, Landroid/view/translation/TranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/List;

    .line 331
    return-object p0
.end method

.method public whitelist setViewTranslationRequests(Ljava/util/List;)Landroid/view/translation/TranslationRequest$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)",
            "Landroid/view/translation/TranslationRequest$Builder;"
        }
    .end annotation

    .line 354
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Landroid/view/translation/ViewTranslationRequest;>;"
    invoke-direct {p0}, Landroid/view/translation/TranslationRequest$Builder;->checkNotUsed()V

    .line 355
    iget-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationRequest$Builder;->mBuilderFieldsSet:J

    .line 356
    iput-object p1, p0, Landroid/view/translation/TranslationRequest$Builder;->mViewTranslationRequests:Ljava/util/List;

    .line 357
    return-object p0
.end method
