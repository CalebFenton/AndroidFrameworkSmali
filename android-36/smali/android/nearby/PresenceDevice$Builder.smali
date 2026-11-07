.class public final Landroid/nearby/PresenceDevice$Builder;
.super Ljava/lang/Object;
.source "PresenceDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/PresenceDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mDeviceId:Ljava/lang/String;

.field private blacklist mDeviceImageUrl:Ljava/lang/String;

.field private blacklist mDeviceType:I

.field private blacklist mDiscoveryTimestampMillis:J

.field private final blacklist mEncryptedIdentity:[B

.field private final blacklist mExtendedProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nearby/DataElement;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMediums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mRssi:I

.field private final blacklist mSalt:[B

.field private final blacklist mSecretId:[B


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;[B[B[B)V
    .registers 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "salt"    # [B
    .param p3, "secretId"    # [B
    .param p4, "encryptedIdentity"    # [B

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iput-object p1, p0, Landroid/nearby/PresenceDevice$Builder;->mDeviceId:Ljava/lang/String;

    .line 326
    iput-object p2, p0, Landroid/nearby/PresenceDevice$Builder;->mSalt:[B

    .line 327
    iput-object p3, p0, Landroid/nearby/PresenceDevice$Builder;->mSecretId:[B

    .line 328
    iput-object p4, p0, Landroid/nearby/PresenceDevice$Builder;->mEncryptedIdentity:[B

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/PresenceDevice$Builder;->mMediums:Ljava/util/List;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/PresenceDevice$Builder;->mExtendedProperties:Ljava/util/List;

    .line 331
    const/16 v0, -0x7f

    iput v0, p0, Landroid/nearby/PresenceDevice$Builder;->mRssi:I

    .line 332
    return-void
.end method


# virtual methods
.method public whitelist addExtendedProperty(Landroid/nearby/DataElement;)Landroid/nearby/PresenceDevice$Builder;
    .registers 3
    .param p1, "dataElement"    # Landroid/nearby/DataElement;

    .line 407
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Landroid/nearby/PresenceDevice$Builder;->mExtendedProperties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    return-object p0
.end method

.method public whitelist addMedium(I)Landroid/nearby/PresenceDevice$Builder;
    .registers 4
    .param p1, "medium"    # I

    .line 352
    iget-object v0, p0, Landroid/nearby/PresenceDevice$Builder;->mMediums:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    return-object p0
.end method

.method public whitelist build()Landroid/nearby/PresenceDevice;
    .registers 15

    .line 417
    new-instance v0, Landroid/nearby/PresenceDevice;

    iget-object v1, p0, Landroid/nearby/PresenceDevice$Builder;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/nearby/PresenceDevice$Builder;->mMediums:Ljava/util/List;

    iget v3, p0, Landroid/nearby/PresenceDevice$Builder;->mRssi:I

    iget-object v4, p0, Landroid/nearby/PresenceDevice$Builder;->mDeviceId:Ljava/lang/String;

    iget-object v5, p0, Landroid/nearby/PresenceDevice$Builder;->mSalt:[B

    iget-object v6, p0, Landroid/nearby/PresenceDevice$Builder;->mSecretId:[B

    iget-object v7, p0, Landroid/nearby/PresenceDevice$Builder;->mEncryptedIdentity:[B

    iget v8, p0, Landroid/nearby/PresenceDevice$Builder;->mDeviceType:I

    iget-object v9, p0, Landroid/nearby/PresenceDevice$Builder;->mDeviceImageUrl:Ljava/lang/String;

    iget-wide v10, p0, Landroid/nearby/PresenceDevice$Builder;->mDiscoveryTimestampMillis:J

    iget-object v12, p0, Landroid/nearby/PresenceDevice$Builder;->mExtendedProperties:Ljava/util/List;

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Landroid/nearby/PresenceDevice;-><init>(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;[B[B[BILjava/lang/String;JLjava/util/List;Landroid/nearby/PresenceDevice-IA;)V

    return-object v0
.end method

.method public whitelist setDeviceImageUrl(Ljava/lang/String;)Landroid/nearby/PresenceDevice$Builder;
    .registers 2
    .param p1, "deviceImageUrl"    # Ljava/lang/String;

    .line 385
    iput-object p1, p0, Landroid/nearby/PresenceDevice$Builder;->mDeviceImageUrl:Ljava/lang/String;

    .line 386
    return-object p0
.end method

.method public whitelist setDeviceType(I)Landroid/nearby/PresenceDevice$Builder;
    .registers 2
    .param p1, "deviceType"    # I

    .line 374
    iput p1, p0, Landroid/nearby/PresenceDevice$Builder;->mDeviceType:I

    .line 375
    return-object p0
.end method

.method public whitelist setDiscoveryTimestampMillis(J)Landroid/nearby/PresenceDevice$Builder;
    .registers 3
    .param p1, "discoveryTimestampMillis"    # J

    .line 396
    iput-wide p1, p0, Landroid/nearby/PresenceDevice$Builder;->mDiscoveryTimestampMillis:J

    .line 397
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/nearby/PresenceDevice$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 341
    iput-object p1, p0, Landroid/nearby/PresenceDevice$Builder;->mName:Ljava/lang/String;

    .line 342
    return-object p0
.end method

.method public whitelist setRssi(I)Landroid/nearby/PresenceDevice$Builder;
    .registers 2
    .param p1, "rssi"    # I

    .line 363
    iput p1, p0, Landroid/nearby/PresenceDevice$Builder;->mRssi:I

    .line 364
    return-object p0
.end method
