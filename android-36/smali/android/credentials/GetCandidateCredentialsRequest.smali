.class public final Landroid/credentials/GetCandidateCredentialsRequest;
.super Ljava/lang/Object;
.source "GetCandidateCredentialsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/GetCandidateCredentialsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCredentialOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/CredentialOption;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mData:Landroid/os/Bundle;

.field private blacklist mOrigin:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Landroid/credentials/GetCandidateCredentialsRequest$1;

    invoke-direct {v0}, Landroid/credentials/GetCandidateCredentialsRequest$1;-><init>()V

    sput-object v0, Landroid/credentials/GetCandidateCredentialsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "credentialOptions":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/CredentialOption;>;"
    sget-object v1, Landroid/credentials/CredentialOption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 124
    iput-object v0, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mCredentialOptions:Ljava/util/List;

    .line 125
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mCredentialOptions:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 128
    .local v1, "data":Landroid/os/Bundle;
    iput-object v1, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mData:Landroid/os/Bundle;

    .line 129
    const-class v2, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mData:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mOrigin:Ljava/lang/String;

    .line 132
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/GetCandidateCredentialsRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/GetCandidateCredentialsRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 5
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialOption;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 108
    .local p1, "credentialOptions":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/CredentialOption;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, "credentialOptions"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 112
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 115
    iput-object p1, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mCredentialOptions:Ljava/util/List;

    .line 116
    const-string v0, "data must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mData:Landroid/os/Bundle;

    .line 118
    iput-object p3, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mOrigin:Ljava/lang/String;

    .line 119
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCredentialOptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialOption;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mCredentialOptions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getData()Landroid/os/Bundle;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getOrigin()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetCandidateCredentialsRequest {credentialOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mCredentialOptions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 89
    iget-object v0, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mCredentialOptions:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 90
    iget-object v0, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Landroid/credentials/GetCandidateCredentialsRequest;->mOrigin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 92
    return-void
.end method
