.class public final Landroid/view/translation/TranslationContext$Builder;
.super Landroid/view/translation/TranslationContext$BaseBuilder;
.source "TranslationContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/TranslationContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActivityId:Landroid/app/assist/ActivityId;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mSourceSpec:Landroid/view/translation/TranslationSpec;

.field private blacklist mTargetSpec:Landroid/view/translation/TranslationSpec;

.field private blacklist mTranslationFlags:I


# direct methods
.method public constructor whitelist <init>(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;)V
    .registers 6
    .param p1, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p2, "targetSpec"    # Landroid/view/translation/TranslationSpec;

    .line 312
    invoke-direct {p0}, Landroid/view/translation/TranslationContext$BaseBuilder;-><init>()V

    .line 300
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/TranslationContext$Builder;->mBuilderFieldsSet:J

    .line 313
    iput-object p1, p0, Landroid/view/translation/TranslationContext$Builder;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    .line 314
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/TranslationContext$Builder;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 316
    iput-object p2, p0, Landroid/view/translation/TranslationContext$Builder;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    .line 317
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/TranslationContext$Builder;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 365
    iget-wide v0, p0, Landroid/view/translation/TranslationContext$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 369
    return-void

    .line 366
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/view/translation/TranslationContext;
    .registers 7

    .line 347
    invoke-direct {p0}, Landroid/view/translation/TranslationContext$Builder;->checkNotUsed()V

    .line 348
    iget-wide v0, p0, Landroid/view/translation/TranslationContext$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationContext$Builder;->mBuilderFieldsSet:J

    .line 350
    iget-wide v0, p0, Landroid/view/translation/TranslationContext$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 351
    invoke-static {}, Landroid/view/translation/TranslationContext;->-$$Nest$smdefaultTranslationFlags()I

    move-result v0

    iput v0, p0, Landroid/view/translation/TranslationContext$Builder;->mTranslationFlags:I

    .line 353
    :cond_1b
    iget-wide v0, p0, Landroid/view/translation/TranslationContext$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 354
    invoke-static {}, Landroid/view/translation/TranslationContext;->-$$Nest$smdefaultActivityId()Landroid/app/assist/ActivityId;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationContext$Builder;->mActivityId:Landroid/app/assist/ActivityId;

    .line 356
    :cond_2a
    new-instance v0, Landroid/view/translation/TranslationContext;

    iget-object v1, p0, Landroid/view/translation/TranslationContext$Builder;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    iget-object v2, p0, Landroid/view/translation/TranslationContext$Builder;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    iget v3, p0, Landroid/view/translation/TranslationContext$Builder;->mTranslationFlags:I

    iget-object v4, p0, Landroid/view/translation/TranslationContext$Builder;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/translation/TranslationContext;-><init>(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ILandroid/app/assist/ActivityId;)V

    .line 361
    .local v0, "o":Landroid/view/translation/TranslationContext;
    return-object v0
.end method

.method public blacklist setActivityId(Landroid/app/assist/ActivityId;)Landroid/view/translation/TranslationContext$Builder;
    .registers 6
    .param p1, "value"    # Landroid/app/assist/ActivityId;

    .line 339
    invoke-direct {p0}, Landroid/view/translation/TranslationContext$Builder;->checkNotUsed()V

    .line 340
    iget-wide v0, p0, Landroid/view/translation/TranslationContext$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationContext$Builder;->mBuilderFieldsSet:J

    .line 341
    iput-object p1, p0, Landroid/view/translation/TranslationContext$Builder;->mActivityId:Landroid/app/assist/ActivityId;

    .line 342
    return-object p0
.end method

.method public whitelist setTranslationFlags(I)Landroid/view/translation/TranslationContext$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 326
    invoke-direct {p0}, Landroid/view/translation/TranslationContext$Builder;->checkNotUsed()V

    .line 327
    iget-wide v0, p0, Landroid/view/translation/TranslationContext$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationContext$Builder;->mBuilderFieldsSet:J

    .line 328
    iput p1, p0, Landroid/view/translation/TranslationContext$Builder;->mTranslationFlags:I

    .line 329
    return-object p0
.end method
