.class public final Landroid/credentials/GetCredentialRequest;
.super Ljava/lang/Object;
.source "GetCredentialRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/GetCredentialRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/GetCredentialRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAlwaysSendAppInfoToProvider:Z

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

    .line 160
    new-instance v0, Landroid/credentials/GetCredentialRequest$1;

    invoke-direct {v0}, Landroid/credentials/GetCredentialRequest$1;-><init>()V

    sput-object v0, Landroid/credentials/GetCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "credentialOptions":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/CredentialOption;>;"
    sget-object v1, Landroid/credentials/CredentialOption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 149
    iput-object v0, p0, Landroid/credentials/GetCredentialRequest;->mCredentialOptions:Ljava/util/List;

    .line 150
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/credentials/GetCredentialRequest;->mCredentialOptions:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 153
    .local v1, "data":Landroid/os/Bundle;
    iput-object v1, p0, Landroid/credentials/GetCredentialRequest;->mData:Landroid/os/Bundle;

    .line 154
    const-class v2, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/credentials/GetCredentialRequest;->mData:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/credentials/GetCredentialRequest;->mAlwaysSendAppInfoToProvider:Z

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/credentials/GetCredentialRequest;->mOrigin:Ljava/lang/String;

    .line 158
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/GetCredentialRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/GetCredentialRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Landroid/os/Bundle;ZLjava/lang/String;)V
    .registers 6
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "alwaysSendAppInfoToProvider"    # Z
    .param p4, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialOption;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 132
    .local p1, "credentialOptions":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/CredentialOption;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string v0, "credentialOptions"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 136
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 139
    iput-object p1, p0, Landroid/credentials/GetCredentialRequest;->mCredentialOptions:Ljava/util/List;

    .line 140
    const-string v0, "data must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/credentials/GetCredentialRequest;->mData:Landroid/os/Bundle;

    .line 142
    iput-boolean p3, p0, Landroid/credentials/GetCredentialRequest;->mAlwaysSendAppInfoToProvider:Z

    .line 143
    iput-object p4, p0, Landroid/credentials/GetCredentialRequest;->mOrigin:Ljava/lang/String;

    .line 144
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Landroid/os/Bundle;ZLjava/lang/String;Landroid/credentials/GetCredentialRequest-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/credentials/GetCredentialRequest;-><init>(Ljava/util/List;Landroid/os/Bundle;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist alwaysSendAppInfoToProvider()Z
    .registers 2

    .line 105
    iget-boolean v0, p0, Landroid/credentials/GetCredentialRequest;->mAlwaysSendAppInfoToProvider:Z

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCredentialOptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialOption;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroid/credentials/GetCredentialRequest;->mCredentialOptions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getData()Landroid/os/Bundle;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/credentials/GetCredentialRequest;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getOrigin()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/credentials/GetCredentialRequest;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetCredentialRequest {credentialOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/GetCredentialRequest;->mCredentialOptions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/GetCredentialRequest;->mData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alwaysSendAppInfoToProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/credentials/GetCredentialRequest;->mAlwaysSendAppInfoToProvider:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/GetCredentialRequest;->mOrigin:Ljava/lang/String;

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

    .line 110
    iget-object v0, p0, Landroid/credentials/GetCredentialRequest;->mCredentialOptions:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 111
    iget-object v0, p0, Landroid/credentials/GetCredentialRequest;->mData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 112
    iget-boolean v0, p0, Landroid/credentials/GetCredentialRequest;->mAlwaysSendAppInfoToProvider:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 113
    iget-object v0, p0, Landroid/credentials/GetCredentialRequest;->mOrigin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 114
    return-void
.end method
