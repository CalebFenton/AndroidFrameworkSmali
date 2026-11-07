.class public final Landroid/telephony/ImsiEncryptionInfo;
.super Ljava/lang/Object;
.source "ImsiEncryptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ImsiEncryptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsiEncryptionInfo"


# instance fields
.field private final blacklist carrierId:I

.field private final greylist-max-o expirationTime:Ljava/util/Date;

.field private final greylist-max-o keyIdentifier:Ljava/lang/String;

.field private final greylist-max-o keyType:I

.field private final greylist-max-o mcc:Ljava/lang/String;

.field private final greylist-max-o mnc:Ljava/lang/String;

.field private final greylist-max-o publicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 145
    new-instance v0, Landroid/telephony/ImsiEncryptionInfo$1;

    invoke-direct {v0}, Landroid/telephony/ImsiEncryptionInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ImsiEncryptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, "length":I
    new-array v1, v0, [B

    .line 76
    .local v1, "b":[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 77
    invoke-static {v1}, Landroid/telephony/ImsiEncryptionInfo;->makeKeyObject([B)Ljava/security/PublicKey;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ImsiEncryptionInfo;->publicKey:Ljava/security/PublicKey;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ImsiEncryptionInfo;->keyType:I

    .line 82
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Landroid/telephony/ImsiEncryptionInfo;->expirationTime:Ljava/util/Date;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ImsiEncryptionInfo;->carrierId:I

    .line 84
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/security/PublicKey;Ljava/util/Date;I)V
    .registers 8
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "keyType"    # I
    .param p4, "keyIdentifier"    # Ljava/lang/String;
    .param p5, "publicKey"    # Ljava/security/PublicKey;
    .param p6, "expirationTime"    # Ljava/util/Date;
    .param p7, "carrierId"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/telephony/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Landroid/telephony/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    .line 65
    iput p3, p0, Landroid/telephony/ImsiEncryptionInfo;->keyType:I

    .line 66
    iput-object p5, p0, Landroid/telephony/ImsiEncryptionInfo;->publicKey:Ljava/security/PublicKey;

    .line 67
    iput-object p4, p0, Landroid/telephony/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Landroid/telephony/ImsiEncryptionInfo;->expirationTime:Ljava/util/Date;

    .line 69
    iput p7, p0, Landroid/telephony/ImsiEncryptionInfo;->carrierId:I

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/util/Date;I)V
    .registers 16
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "keyType"    # I
    .param p4, "keyIdentifier"    # Ljava/lang/String;
    .param p5, "key"    # [B
    .param p6, "expirationTime"    # Ljava/util/Date;
    .param p7, "carrierId"    # I

    .line 54
    invoke-static {p5}, Landroid/telephony/ImsiEncryptionInfo;->makeKeyObject([B)Ljava/security/PublicKey;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p6

    move v7, p7

    .end local p1    # "mcc":Ljava/lang/String;
    .end local p2    # "mnc":Ljava/lang/String;
    .end local p3    # "keyType":I
    .end local p4    # "keyIdentifier":Ljava/lang/String;
    .end local p6    # "expirationTime":Ljava/util/Date;
    .end local p7    # "carrierId":I
    .local v1, "mcc":Ljava/lang/String;
    .local v2, "mnc":Ljava/lang/String;
    .local v3, "keyType":I
    .local v4, "keyIdentifier":Ljava/lang/String;
    .local v6, "expirationTime":Ljava/util/Date;
    .local v7, "carrierId":I
    invoke-direct/range {v0 .. v7}, Landroid/telephony/ImsiEncryptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/security/PublicKey;Ljava/util/Date;I)V

    .line 55
    return-void
.end method

.method private static greylist-max-o makeKeyObject([B)Ljava/security/PublicKey;
    .registers 4
    .param p0, "publicKeyBytes"    # [B

    .line 131
    :try_start_0
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 132
    .local v0, "pubKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 133
    .end local v0    # "pubKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :catch_10
    move-exception v0

    .line 134
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    const-string v1, "ImsiEncryptionInfo"

    const-string v2, "Error makeKeyObject: unable to convert into PublicKey"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v0    # "ex":Ljava/security/GeneralSecurityException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCarrierId()I
    .registers 2

    .line 98
    iget v0, p0, Landroid/telephony/ImsiEncryptionInfo;->carrierId:I

    return v0
.end method

.method public greylist-max-o getExpirationTime()Ljava/util/Date;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->expirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public whitelist getKeyIdentifier()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getKeyType()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/telephony/ImsiEncryptionInfo;->keyType:I

    return v0
.end method

.method public greylist-max-o getMcc()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getMnc()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsiEncryptionInfo mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publicKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ImsiEncryptionInfo;->keyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->expirationTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carrier_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ImsiEncryptionInfo;->carrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 160
    iget-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 161
    .local v0, "b":[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 163
    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget v1, p0, Landroid/telephony/ImsiEncryptionInfo;->keyType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->expirationTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    iget v1, p0, Landroid/telephony/ImsiEncryptionInfo;->carrierId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    return-void
.end method
