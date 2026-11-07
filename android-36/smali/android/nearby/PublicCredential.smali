.class public final Landroid/nearby/PublicCredential;
.super Landroid/nearby/PresenceCredential;
.source "PublicCredential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/PublicCredential$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nearby/PublicCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEncryptedMetadata:[B

.field private final blacklist mEncryptedMetadataKeyTag:[B

.field private final blacklist mPublicKey:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/nearby/PublicCredential$1;

    invoke-direct {v0}, Landroid/nearby/PublicCredential$1;-><init>()V

    sput-object v0, Landroid/nearby/PublicCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I[B[BLjava/util/List;[B[B[B)V
    .registers 14
    .param p1, "identityType"    # I
    .param p2, "secretId"    # [B
    .param p3, "authenticityKey"    # [B
    .param p5, "publicKey"    # [B
    .param p6, "encryptedMetadata"    # [B
    .param p7, "metadataEncryptionKeyTag"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B[B",
            "Ljava/util/List<",
            "Landroid/nearby/CredentialElement;",
            ">;[B[B[B)V"
        }
    .end annotation

    .line 66
    .local p4, "credentialElements":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/CredentialElement;>;"
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "identityType":I
    .end local p2    # "secretId":[B
    .end local p3    # "authenticityKey":[B
    .end local p4    # "credentialElements":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/CredentialElement;>;"
    .local v2, "identityType":I
    .local v3, "secretId":[B
    .local v4, "authenticityKey":[B
    .local v5, "credentialElements":Ljava/util/List;, "Ljava/util/List<Landroid/nearby/CredentialElement;>;"
    invoke-direct/range {v0 .. v5}, Landroid/nearby/PresenceCredential;-><init>(II[B[BLjava/util/List;)V

    .line 67
    iput-object p5, v0, Landroid/nearby/PublicCredential;->mPublicKey:[B

    .line 68
    iput-object p6, v0, Landroid/nearby/PublicCredential;->mEncryptedMetadata:[B

    .line 69
    iput-object p7, v0, Landroid/nearby/PublicCredential;->mEncryptedMetadataKeyTag:[B

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(I[B[BLjava/util/List;[B[B[BLandroid/nearby/PublicCredential-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/nearby/PublicCredential;-><init>(I[B[BLjava/util/List;[B[B[B)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/nearby/PresenceCredential;-><init>(ILandroid/os/Parcel;)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nearby/PublicCredential;->mPublicKey:[B

    .line 75
    iget-object v0, p0, Landroid/nearby/PublicCredential;->mPublicKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nearby/PublicCredential;->mEncryptedMetadata:[B

    .line 77
    iget-object v0, p0, Landroid/nearby/PublicCredential;->mEncryptedMetadata:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nearby/PublicCredential;->mEncryptedMetadataKeyTag:[B

    .line 79
    iget-object v0, p0, Landroid/nearby/PublicCredential;->mEncryptedMetadataKeyTag:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 80
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/nearby/PublicCredential;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 83
    new-instance v0, Landroid/nearby/PublicCredential;

    invoke-direct {v0, p0}, Landroid/nearby/PublicCredential;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 111
    instance-of v0, p1, Landroid/nearby/PublicCredential;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 112
    move-object v0, p1

    check-cast v0, Landroid/nearby/PublicCredential;

    .line 113
    .local v0, "that":Landroid/nearby/PublicCredential;
    invoke-super {p0, p1}, Landroid/nearby/PresenceCredential;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Landroid/nearby/PublicCredential;->mPublicKey:[B

    iget-object v3, v0, Landroid/nearby/PublicCredential;->mPublicKey:[B

    .line 114
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Landroid/nearby/PublicCredential;->mEncryptedMetadata:[B

    iget-object v3, v0, Landroid/nearby/PublicCredential;->mEncryptedMetadata:[B

    .line 115
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Landroid/nearby/PublicCredential;->mEncryptedMetadataKeyTag:[B

    iget-object v3, v0, Landroid/nearby/PublicCredential;->mEncryptedMetadataKeyTag:[B

    .line 116
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    nop

    .line 113
    :goto_2f
    return v1

    .line 118
    .end local v0    # "that":Landroid/nearby/PublicCredential;
    :cond_30
    return v1
.end method

.method public whitelist getEncryptedMetadata()[B
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/nearby/PublicCredential;->mEncryptedMetadata:[B

    return-object v0
.end method

.method public whitelist getEncryptedMetadataKeyTag()[B
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/nearby/PublicCredential;->mEncryptedMetadataKeyTag:[B

    return-object v0
.end method

.method public whitelist getPublicKey()[B
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/nearby/PublicCredential;->mPublicKey:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 123
    nop

    .line 124
    invoke-super {p0}, Landroid/nearby/PresenceCredential;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/nearby/PublicCredential;->mPublicKey:[B

    .line 125
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/nearby/PublicCredential;->mEncryptedMetadata:[B

    .line 126
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/nearby/PublicCredential;->mEncryptedMetadataKeyTag:[B

    .line 127
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 123
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    invoke-super {p0, p1, p2}, Landroid/nearby/PresenceCredential;->writeToParcel(Landroid/os/Parcel;I)V

    .line 133
    iget-object v0, p0, Landroid/nearby/PublicCredential;->mPublicKey:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Landroid/nearby/PublicCredential;->mPublicKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 135
    iget-object v0, p0, Landroid/nearby/PublicCredential;->mEncryptedMetadata:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Landroid/nearby/PublicCredential;->mEncryptedMetadata:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 137
    iget-object v0, p0, Landroid/nearby/PublicCredential;->mEncryptedMetadataKeyTag:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Landroid/nearby/PublicCredential;->mEncryptedMetadataKeyTag:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 139
    return-void
.end method
