.class public final Landroid/nearby/PrivateCredential;
.super Landroid/nearby/PresenceCredential;
.source "PrivateCredential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/PrivateCredential$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nearby/PrivateCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDeviceName:Ljava/lang/String;

.field private blacklist mMetadataEncryptionKey:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroid/nearby/PrivateCredential$1;

    invoke-direct {v0}, Landroid/nearby/PrivateCredential$1;-><init>()V

    sput-object v0, Landroid/nearby/PrivateCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I[BLjava/lang/String;[BLjava/util/List;[B)V
    .registers 13
    .param p1, "identityType"    # I
    .param p2, "secretId"    # [B
    .param p3, "deviceName"    # Ljava/lang/String;
    .param p4, "authenticityKey"    # [B
    .param p6, "metadataEncryptionKey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Landroid/nearby/CredentialElement;",
            ">;[B)V"
        }
    .end annotation

    .line 64
    .local p5, "credentialElements":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/CredentialElement;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "identityType":I
    .end local p2    # "secretId":[B
    .end local p4    # "authenticityKey":[B
    .end local p5    # "credentialElements":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/CredentialElement;>;"
    .local v2, "identityType":I
    .local v3, "secretId":[B
    .local v4, "authenticityKey":[B
    .local v5, "credentialElements":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/CredentialElement;>;"
    invoke-direct/range {v0 .. v5}, Landroid/nearby/PresenceCredential;-><init>(II[B[BLjava/util/List;)V

    .line 66
    iput-object p3, v0, Landroid/nearby/PrivateCredential;->mDeviceName:Ljava/lang/String;

    .line 67
    iput-object p6, v0, Landroid/nearby/PrivateCredential;->mMetadataEncryptionKey:[B

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(I[BLjava/lang/String;[BLjava/util/List;[BLandroid/nearby/PrivateCredential-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/nearby/PrivateCredential;-><init>(I[BLjava/lang/String;[BLjava/util/List;[B)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/nearby/PresenceCredential;-><init>(ILandroid/os/Parcel;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nearby/PrivateCredential;->mMetadataEncryptionKey:[B

    .line 57
    iget-object v0, p0, Landroid/nearby/PrivateCredential;->mMetadataEncryptionKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/nearby/PrivateCredential;->mDeviceName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/nearby/PrivateCredential;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 71
    new-instance v0, Landroid/nearby/PrivateCredential;

    invoke-direct {v0, p0}, Landroid/nearby/PrivateCredential;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/nearby/PrivateCredential;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMetadataEncryptionKey()[B
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/nearby/PrivateCredential;->mMetadataEncryptionKey:[B

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    invoke-super {p0, p1, p2}, Landroid/nearby/PresenceCredential;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    iget-object v0, p0, Landroid/nearby/PrivateCredential;->mMetadataEncryptionKey:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Landroid/nearby/PrivateCredential;->mMetadataEncryptionKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 84
    iget-object v0, p0, Landroid/nearby/PrivateCredential;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return-void
.end method
