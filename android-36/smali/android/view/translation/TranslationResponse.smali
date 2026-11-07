.class public final Landroid/view/translation/TranslationResponse;
.super Ljava/lang/Object;
.source "TranslationResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationResponse$Builder;,
        Landroid/view/translation/TranslationResponse$TranslationStatus;,
        Landroid/view/translation/TranslationResponse$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TRANSLATION_STATUS_CONTEXT_UNSUPPORTED:I = 0x2

.field public static final whitelist TRANSLATION_STATUS_SUCCESS:I = 0x0

.field public static final whitelist TRANSLATION_STATUS_UNKNOWN_ERROR:I = 0x1


# instance fields
.field private final blacklist mFinalResponse:Z

.field private final blacklist mTranslationResponseValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTranslationStatus:I

.field private final blacklist mViewTranslationResponses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultFinalResponse()Z
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationResponse;->defaultFinalResponse()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTranslationResponseValues()Landroid/util/SparseArray;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationResponse;->defaultTranslationResponseValues()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultViewTranslationResponses()Landroid/util/SparseArray;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationResponse;->defaultViewTranslationResponses()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 318
    new-instance v0, Landroid/view/translation/TranslationResponse$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationResponse$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILandroid/util/SparseArray;Landroid/util/SparseArray;Z)V
    .registers 10
    .param p1, "translationStatus"    # I
    .param p4, "finalResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;Z)V"
        }
    .end annotation

    .line 188
    .local p2, "translationResponseValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/translation/TranslationResponseValue;>;"
    .local p3, "viewTranslationResponses":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    .line 191
    iget v0, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    if-eqz v0, :cond_55

    iget v0, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_55

    iget v0, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    goto :goto_55

    .line 194
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "translationStatus was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but must be one of: TRANSLATION_STATUS_SUCCESS("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), TRANSLATION_STATUS_UNKNOWN_ERROR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "), TRANSLATION_STATUS_CONTEXT_UNSUPPORTED("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_55
    :goto_55
    iput-object p2, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    .line 202
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 204
    iput-object p3, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    .line 205
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 207
    iput-boolean p4, p0, Landroid/view/translation/TranslationResponse;->mFinalResponse:Z

    .line 210
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 289
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_10

    :cond_f
    move v1, v2

    .line 290
    .local v1, "finalResponse":Z
    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 291
    .local v4, "translationStatus":I
    const-class v5, Landroid/view/translation/TranslationResponseValue;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v5

    .line 292
    .local v5, "translationResponseValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/translation/TranslationResponseValue;>;"
    const-class v6, Landroid/view/translation/ViewTranslationResponse;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v6

    .line 294
    .local v6, "viewTranslationResponses":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    iput v4, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    .line 296
    iget v7, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    if-eqz v7, :cond_78

    iget v7, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    if-eq v7, v3, :cond_78

    iget v7, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_38

    goto :goto_78

    .line 299
    :cond_38
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "translationStatus was "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but must be one of: TRANSLATION_STATUS_SUCCESS("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "), TRANSLATION_STATUS_UNKNOWN_ERROR("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), TRANSLATION_STATUS_CONTEXT_UNSUPPORTED("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 306
    :cond_78
    :goto_78
    iput-object v5, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    .line 307
    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-static {v2, v7, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 309
    iput-object v6, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    .line 310
    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    invoke-static {v2, v7, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 312
    iput-boolean v1, p0, Landroid/view/translation/TranslationResponse;->mFinalResponse:Z

    .line 315
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 455
    return-void
.end method

.method private static blacklist defaultFinalResponse()Z
    .registers 1

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist defaultTranslationResponseValues()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method private static blacklist defaultViewTranslationResponses()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public static blacklist translationStatusToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 172
    packed-switch p0, :pswitch_data_12

    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :pswitch_8
    const-string v0, "TRANSLATION_STATUS_CONTEXT_UNSUPPORTED"

    return-object v0

    .line 176
    :pswitch_b
    const-string v0, "TRANSLATION_STATUS_UNKNOWN_ERROR"

    return-object v0

    .line 174
    :pswitch_e
    const-string v0, "TRANSLATION_STATUS_SUCCESS"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTranslationResponseValues()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist getTranslationStatus()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    return v0
.end method

.method public whitelist getViewTranslationResponses()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist isFinalResponse()Z
    .registers 2

    .line 246
    iget-boolean v0, p0, Landroid/view/translation/TranslationResponse;->mFinalResponse:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationResponse { translationStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    .line 256
    invoke-static {v1}, Landroid/view/translation/TranslationResponse;->translationStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", translationResponseValues = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewTranslationResponses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finalResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/translation/TranslationResponse;->mFinalResponse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/view/translation/TranslationResponse;->mFinalResponse:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 271
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 272
    iget v1, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object v1, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 274
    iget-object v1, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 275
    return-void
.end method
