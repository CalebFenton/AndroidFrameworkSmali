.class public final Landroid/view/translation/ViewTranslationResponse$Builder;
.super Landroid/view/translation/ViewTranslationResponse$BaseBuilder;
.source "ViewTranslationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/ViewTranslationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAutofillId:Landroid/view/autofill/AutofillId;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mTranslationResponseValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTranslationResponseValues(Landroid/view/translation/ViewTranslationResponse$Builder;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mTranslationResponseValues:Ljava/util/Map;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/view/autofill/AutofillId;)V
    .registers 5
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 250
    invoke-direct {p0}, Landroid/view/translation/ViewTranslationResponse$BaseBuilder;-><init>()V

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mBuilderFieldsSet:J

    .line 251
    iput-object p1, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 252
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 280
    iget-wide v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 284
    return-void

    .line 281
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/view/translation/ViewTranslationResponse;
    .registers 5

    .line 267
    invoke-direct {p0}, Landroid/view/translation/ViewTranslationResponse$Builder;->checkNotUsed()V

    .line 268
    iget-wide v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mBuilderFieldsSet:J

    .line 270
    iget-wide v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 271
    invoke-static {}, Landroid/view/translation/ViewTranslationResponse;->-$$Nest$smdefaultTranslationResponseValues()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mTranslationResponseValues:Ljava/util/Map;

    .line 273
    :cond_1b
    new-instance v0, Landroid/view/translation/ViewTranslationResponse;

    iget-object v1, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mTranslationResponseValues:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Landroid/view/translation/ViewTranslationResponse;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/Map;)V

    .line 276
    .local v0, "o":Landroid/view/translation/ViewTranslationResponse;
    return-object v0
.end method

.method blacklist setTranslationResponseValues(Ljava/util/Map;)Landroid/view/translation/ViewTranslationResponse$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;)",
            "Landroid/view/translation/ViewTranslationResponse$Builder;"
        }
    .end annotation

    .line 259
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/translation/TranslationResponseValue;>;"
    invoke-direct {p0}, Landroid/view/translation/ViewTranslationResponse$Builder;->checkNotUsed()V

    .line 260
    iget-wide v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mBuilderFieldsSet:J

    .line 261
    iput-object p1, p0, Landroid/view/translation/ViewTranslationResponse$Builder;->mTranslationResponseValues:Ljava/util/Map;

    .line 262
    return-object p0
.end method

.method public bridge synthetic whitelist setValue(Ljava/lang/String;Landroid/view/translation/TranslationResponseValue;)Landroid/view/translation/ViewTranslationResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 234
    invoke-super {p0, p1, p2}, Landroid/view/translation/ViewTranslationResponse$BaseBuilder;->setValue(Ljava/lang/String;Landroid/view/translation/TranslationResponseValue;)Landroid/view/translation/ViewTranslationResponse$Builder;

    move-result-object p1

    return-object p1
.end method
