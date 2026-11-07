.class public final Landroid/view/translation/UiTranslationSpec$Builder;
.super Ljava/lang/Object;
.source "UiTranslationSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/UiTranslationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mShouldPadContentForCompat:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mBuilderFieldsSet:J

    .line 193
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 233
    iget-wide v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 237
    return-void

    .line 234
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/view/translation/UiTranslationSpec;
    .registers 5

    .line 221
    invoke-direct {p0}, Landroid/view/translation/UiTranslationSpec$Builder;->checkNotUsed()V

    .line 222
    iget-wide v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mBuilderFieldsSet:J

    .line 224
    iget-wide v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mShouldPadContentForCompat:Z

    .line 227
    :cond_18
    new-instance v0, Landroid/view/translation/UiTranslationSpec;

    iget-boolean v1, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mShouldPadContentForCompat:Z

    invoke-direct {v0, v1}, Landroid/view/translation/UiTranslationSpec;-><init>(Z)V

    .line 229
    .local v0, "o":Landroid/view/translation/UiTranslationSpec;
    return-object v0
.end method

.method public whitelist setShouldPadContentForCompat(Z)Landroid/view/translation/UiTranslationSpec$Builder;
    .registers 6
    .param p1, "value"    # Z

    .line 213
    invoke-direct {p0}, Landroid/view/translation/UiTranslationSpec$Builder;->checkNotUsed()V

    .line 214
    iget-wide v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mBuilderFieldsSet:J

    .line 215
    iput-boolean p1, p0, Landroid/view/translation/UiTranslationSpec$Builder;->mShouldPadContentForCompat:Z

    .line 216
    return-object p0
.end method
