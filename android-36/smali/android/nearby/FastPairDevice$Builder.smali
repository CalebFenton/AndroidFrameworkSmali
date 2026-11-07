.class public final Landroid/nearby/FastPairDevice$Builder;
.super Ljava/lang/Object;
.source "FastPairDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/FastPairDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBluetoothAddress:Ljava/lang/String;

.field private blacklist mData:[B

.field private final blacklist mMediums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mModelId:Ljava/lang/String;

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mRssi:I

.field private blacklist mTxPower:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/FastPairDevice$Builder;->mMediums:Ljava/util/List;

    .line 242
    return-void
.end method


# virtual methods
.method public blacklist addMedium(I)Landroid/nearby/FastPairDevice$Builder;
    .registers 4
    .param p1, "medium"    # I

    .line 262
    iget-object v0, p0, Landroid/nearby/FastPairDevice$Builder;->mMediums:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    return-object p0
.end method

.method public blacklist build()Landroid/nearby/FastPairDevice;
    .registers 9

    .line 328
    new-instance v0, Landroid/nearby/FastPairDevice;

    iget-object v1, p0, Landroid/nearby/FastPairDevice$Builder;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/nearby/FastPairDevice$Builder;->mMediums:Ljava/util/List;

    iget v3, p0, Landroid/nearby/FastPairDevice$Builder;->mRssi:I

    iget v4, p0, Landroid/nearby/FastPairDevice$Builder;->mTxPower:I

    iget-object v5, p0, Landroid/nearby/FastPairDevice$Builder;->mModelId:Ljava/lang/String;

    iget-object v6, p0, Landroid/nearby/FastPairDevice$Builder;->mBluetoothAddress:Ljava/lang/String;

    iget-object v7, p0, Landroid/nearby/FastPairDevice$Builder;->mData:[B

    invoke-direct/range {v0 .. v7}, Landroid/nearby/FastPairDevice;-><init>(Ljava/lang/String;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public blacklist setBluetoothAddress(Ljava/lang/String;)Landroid/nearby/FastPairDevice$Builder;
    .registers 2
    .param p1, "bluetoothAddress"    # Ljava/lang/String;

    .line 307
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iput-object p1, p0, Landroid/nearby/FastPairDevice$Builder;->mBluetoothAddress:Ljava/lang/String;

    .line 309
    return-object p0
.end method

.method public blacklist setData([B)Landroid/nearby/FastPairDevice$Builder;
    .registers 2
    .param p1, "data"    # [B

    .line 319
    iput-object p1, p0, Landroid/nearby/FastPairDevice$Builder;->mData:[B

    .line 320
    return-object p0
.end method

.method public blacklist setModelId(Ljava/lang/String;)Landroid/nearby/FastPairDevice$Builder;
    .registers 2
    .param p1, "modelId"    # Ljava/lang/String;

    .line 296
    iput-object p1, p0, Landroid/nearby/FastPairDevice$Builder;->mModelId:Ljava/lang/String;

    .line 297
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Landroid/nearby/FastPairDevice$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 251
    iput-object p1, p0, Landroid/nearby/FastPairDevice$Builder;->mName:Ljava/lang/String;

    .line 252
    return-object p0
.end method

.method public blacklist setRssi(I)Landroid/nearby/FastPairDevice$Builder;
    .registers 2
    .param p1, "rssi"    # I

    .line 273
    iput p1, p0, Landroid/nearby/FastPairDevice$Builder;->mRssi:I

    .line 274
    return-object p0
.end method

.method public blacklist setTxPower(I)Landroid/nearby/FastPairDevice$Builder;
    .registers 2
    .param p1, "txPower"    # I

    .line 284
    iput p1, p0, Landroid/nearby/FastPairDevice$Builder;->mTxPower:I

    .line 285
    return-object p0
.end method
