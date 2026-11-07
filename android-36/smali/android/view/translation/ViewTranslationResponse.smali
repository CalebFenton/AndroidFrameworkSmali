.class public final Landroid/view/translation/ViewTranslationResponse;
.super Ljava/lang/Object;
.source "ViewTranslationResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/ViewTranslationResponse$Builder;,
        Landroid/view/translation/ViewTranslationResponse$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAutofillId:Landroid/view/autofill/AutofillId;

.field private final blacklist mTranslationResponseValues:Ljava/util/Map;
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
.method static bridge synthetic blacklist -$$Nest$smdefaultTranslationResponseValues()Ljava/util/Map;
    .registers 1

    invoke-static {}, Landroid/view/translation/ViewTranslationResponse;->defaultTranslationResponseValues()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 218
    new-instance v0, Landroid/view/translation/ViewTranslationResponse$1;

    invoke-direct {v0}, Landroid/view/translation/ViewTranslationResponse$1;-><init>()V

    sput-object v0, Landroid/view/translation/ViewTranslationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 204
    .local v0, "autofillId":Landroid/view/autofill/AutofillId;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 205
    .local v1, "translationResponseValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/translation/TranslationResponseValue;>;"
    const-class v2, Landroid/view/translation/TranslationResponseValue;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 207
    iput-object v0, p0, Landroid/view/translation/ViewTranslationResponse;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 208
    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/view/translation/ViewTranslationResponse;->mAutofillId:Landroid/view/autofill/AutofillId;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 210
    iput-object v1, p0, Landroid/view/translation/ViewTranslationResponse;->mTranslationResponseValues:Ljava/util/Map;

    .line 211
    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/view/translation/ViewTranslationResponse;->mTranslationResponseValues:Ljava/util/Map;

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method constructor blacklist <init>(Landroid/view/autofill/AutofillId;Ljava/util/Map;)V
    .registers 6
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p2, "translationResponseValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/translation/TranslationResponseValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroid/view/translation/ViewTranslationResponse;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 132
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/ViewTranslationResponse;->mAutofillId:Landroid/view/autofill/AutofillId;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 134
    iput-object p2, p0, Landroid/view/translation/ViewTranslationResponse;->mTranslationResponseValues:Ljava/util/Map;

    .line 135
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/ViewTranslationResponse;->mTranslationResponseValues:Ljava/util/Map;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    return-void
.end method

.method private static blacklist defaultTranslationResponseValues()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 160
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 161
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 163
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/translation/ViewTranslationResponse;

    .line 165
    .local v2, "that":Landroid/view/translation/ViewTranslationResponse;
    iget-object v3, p0, Landroid/view/translation/ViewTranslationResponse;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v4, v2, Landroid/view/translation/ViewTranslationResponse;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 166
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/view/translation/ViewTranslationResponse;->mTranslationResponseValues:Ljava/util/Map;

    iget-object v4, v2, Landroid/view/translation/ViewTranslationResponse;->mTranslationResponseValues:Ljava/util/Map;

    .line 167
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 165
    :goto_2b
    return v0

    .line 161
    .end local v2    # "that":Landroid/view/translation/ViewTranslationResponse;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public whitelist getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/view/translation/ViewTranslationResponse;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public whitelist getKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/view/translation/ViewTranslationResponse;->mTranslationResponseValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getValue(Ljava/lang/String;)Landroid/view/translation/TranslationResponseValue;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Landroid/view/translation/ViewTranslationResponse;->mTranslationResponseValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 63
    iget-object v0, p0, Landroid/view/translation/ViewTranslationResponse;->mTranslationResponseValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/translation/TranslationResponseValue;

    return-object v0

    .line 61
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request does not contain value for key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 176
    const/4 v0, 0x1

    .line 177
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/translation/ViewTranslationResponse;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 178
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/translation/ViewTranslationResponse;->mTranslationResponseValues:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 179
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewTranslationResponse { autofillId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/ViewTranslationResponse;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", translationResponseValues = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/ViewTranslationResponse;->mTranslationResponseValues:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 188
    iget-object v0, p0, Landroid/view/translation/ViewTranslationResponse;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 189
    iget-object v0, p0, Landroid/view/translation/ViewTranslationResponse;->mTranslationResponseValues:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 190
    return-void
.end method
