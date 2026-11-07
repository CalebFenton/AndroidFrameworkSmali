.class public final Landroid/view/translation/ViewTranslationRequest$Builder;
.super Ljava/lang/Object;
.source "ViewTranslationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/ViewTranslationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAutofillId:Landroid/view/autofill/AutofillId;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mTranslationRequestValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/view/autofill/AutofillId;)V
    .registers 5
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mBuilderFieldsSet:J

    .line 119
    iput-object p1, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 120
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/autofill/AutofillId;J)V
    .registers 7
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualChildId"    # J

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mBuilderFieldsSet:J

    .line 133
    new-instance v0, Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    iput-object v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 134
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 180
    iget-wide v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 184
    return-void

    .line 181
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/view/translation/ViewTranslationRequest;
    .registers 5

    .line 160
    invoke-direct {p0}, Landroid/view/translation/ViewTranslationRequest$Builder;->checkNotUsed()V

    .line 161
    iget-wide v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mBuilderFieldsSet:J

    .line 163
    iget-wide v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 164
    invoke-static {}, Landroid/view/translation/ViewTranslationRequest;->-$$Nest$smdefaultTranslationRequestValues()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/Map;

    .line 166
    :cond_1b
    new-instance v0, Landroid/view/translation/ViewTranslationRequest;

    iget-object v1, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Landroid/view/translation/ViewTranslationRequest;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/Map;)V

    .line 169
    .local v0, "o":Landroid/view/translation/ViewTranslationRequest;
    return-object v0
.end method

.method blacklist setTranslationRequestValues(Ljava/util/Map;)Landroid/view/translation/ViewTranslationRequest$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;)",
            "Landroid/view/translation/ViewTranslationRequest$Builder;"
        }
    .end annotation

    .line 173
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/translation/TranslationRequestValue;>;"
    invoke-direct {p0}, Landroid/view/translation/ViewTranslationRequest$Builder;->checkNotUsed()V

    .line 174
    iget-wide v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mBuilderFieldsSet:J

    .line 175
    iput-object p1, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/Map;

    .line 176
    return-object p0
.end method

.method public whitelist setValue(Ljava/lang/String;Landroid/view/translation/TranslationRequestValue;)Landroid/view/translation/ViewTranslationRequest$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/view/translation/TranslationRequestValue;

    .line 148
    iget-object v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 149
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/translation/ViewTranslationRequest$Builder;->setTranslationRequestValues(Ljava/util/Map;)Landroid/view/translation/ViewTranslationRequest$Builder;

    .line 151
    :cond_c
    iget-object v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-object p0
.end method
