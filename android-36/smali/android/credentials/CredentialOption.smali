.class public final Landroid/credentials/CredentialOption;
.super Ljava/lang/Object;
.source "CredentialOption.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/CredentialOption$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/CredentialOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SUPPORTED_ELEMENT_KEYS:Ljava/lang/String; = "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"


# instance fields
.field private final blacklist mAllowedProviders:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCandidateQueryData:Landroid/os/Bundle;

.field private final blacklist mCredentialRetrievalData:Landroid/os/Bundle;

.field private final blacklist mIsSystemProviderRequired:Z

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 232
    new-instance v0, Landroid/credentials/CredentialOption$1;

    invoke-direct {v0}, Landroid/credentials/CredentialOption$1;-><init>()V

    sput-object v0, Landroid/credentials/CredentialOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 217
    .local v1, "data":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 218
    .local v2, "candidateQueryData":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 220
    .local v3, "isSystemProviderRequired":Z
    iput-object v0, p0, Landroid/credentials/CredentialOption;->mType:Ljava/lang/String;

    .line 221
    const-class v4, Landroid/annotation/NonNull;

    iget-object v5, p0, Landroid/credentials/CredentialOption;->mType:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 222
    iput-object v1, p0, Landroid/credentials/CredentialOption;->mCredentialRetrievalData:Landroid/os/Bundle;

    .line 223
    const-class v4, Landroid/annotation/NonNull;

    iget-object v5, p0, Landroid/credentials/CredentialOption;->mCredentialRetrievalData:Landroid/os/Bundle;

    invoke-static {v4, v6, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 224
    iput-object v2, p0, Landroid/credentials/CredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    .line 225
    const-class v4, Landroid/annotation/NonNull;

    iget-object v5, p0, Landroid/credentials/CredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    invoke-static {v4, v6, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 226
    iput-boolean v3, p0, Landroid/credentials/CredentialOption;->mIsSystemProviderRequired:Z

    .line 227
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v4

    iput-object v4, p0, Landroid/credentials/CredentialOption;->mAllowedProviders:Landroid/util/ArraySet;

    .line 228
    const-class v4, Landroid/annotation/NonNull;

    iget-object v5, p0, Landroid/credentials/CredentialOption;->mAllowedProviders:Landroid/util/ArraySet;

    invoke-static {v4, v6, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/CredentialOption-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/CredentialOption;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Z)V
    .registers 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "credentialRetrievalData"    # Landroid/os/Bundle;
    .param p3, "candidateQueryData"    # Landroid/os/Bundle;
    .param p4, "isSystemProviderRequired"    # Z

    .line 205
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "credentialRetrievalData":Landroid/os/Bundle;
    .end local p3    # "candidateQueryData":Landroid/os/Bundle;
    .end local p4    # "isSystemProviderRequired":Z
    .local v1, "type":Ljava/lang/String;
    .local v2, "credentialRetrievalData":Landroid/os/Bundle;
    .local v3, "candidateQueryData":Landroid/os/Bundle;
    .local v4, "isSystemProviderRequired":Z
    invoke-direct/range {v0 .. v5}, Landroid/credentials/CredentialOption;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/util/ArraySet;)V

    .line 212
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/util/ArraySet;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "credentialRetrievalData"    # Landroid/os/Bundle;
    .param p3, "candidateQueryData"    # Landroid/os/Bundle;
    .param p4, "isSystemProviderRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p5, "allowedProviders":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const-string/jumbo v0, "type must not be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/CredentialOption;->mType:Ljava/lang/String;

    .line 176
    const-string/jumbo v0, "requestData must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/credentials/CredentialOption;->mCredentialRetrievalData:Landroid/os/Bundle;

    .line 178
    const-string v0, "candidateQueryData must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/credentials/CredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    .line 180
    iput-boolean p4, p0, Landroid/credentials/CredentialOption;->mIsSystemProviderRequired:Z

    .line 181
    const-string/jumbo v0, "providerFilterSer mustnot be empty"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    iput-object v0, p0, Landroid/credentials/CredentialOption;->mAllowedProviders:Landroid/util/ArraySet;

    .line 183
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/util/ArraySet;Landroid/credentials/CredentialOption-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/credentials/CredentialOption;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/util/ArraySet;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAllowedProviders()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Landroid/credentials/CredentialOption;->mAllowedProviders:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getCandidateQueryData()Landroid/os/Bundle;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/credentials/CredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getCredentialRetrievalData()Landroid/os/Bundle;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/credentials/CredentialOption;->mCredentialRetrievalData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/credentials/CredentialOption;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isSystemProviderRequired()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Landroid/credentials/CredentialOption;->mIsSystemProviderRequired:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CredentialOption {type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CredentialOption;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CredentialOption;->mCredentialRetrievalData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", candidateQueryData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSystemProviderRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/credentials/CredentialOption;->mIsSystemProviderRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowedProviders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CredentialOption;->mAllowedProviders:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

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

    .line 135
    iget-object v0, p0, Landroid/credentials/CredentialOption;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Landroid/credentials/CredentialOption;->mCredentialRetrievalData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 137
    iget-object v0, p0, Landroid/credentials/CredentialOption;->mCandidateQueryData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 138
    iget-boolean v0, p0, Landroid/credentials/CredentialOption;->mIsSystemProviderRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 139
    iget-object v0, p0, Landroid/credentials/CredentialOption;->mAllowedProviders:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 140
    return-void
.end method
