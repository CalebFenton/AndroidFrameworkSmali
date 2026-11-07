.class public final Landroid/bluetooth/le/AdvertiseSettings$Builder;
.super Ljava/lang/Object;
.source "AdvertiseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConnectable:Z

.field private blacklist mDiscoverable:Z

.field private blacklist mMode:I

.field private blacklist mOwnAddressType:I

.field private blacklist mTimeoutMillis:I

.field private blacklist mTxPowerLevel:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    .line 186
    const/4 v1, 0x2

    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    .line 187
    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    .line 189
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mDiscoverable:Z

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mOwnAddressType:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/le/AdvertiseSettings;
    .registers 9

    .line 292
    new-instance v0, Landroid/bluetooth/le/AdvertiseSettings;

    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    iget v2, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    iget-boolean v4, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mDiscoverable:Z

    iget v5, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    iget v6, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mOwnAddressType:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(IIZZIILandroid/bluetooth/le/AdvertiseSettings-IA;)V

    return-object v0
.end method

.method public whitelist setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 5
    .param p1, "advertiseMode"    # I

    .line 202
    if-ltz p1, :cond_8

    const/4 v0, 0x2

    if-gt p1, v0, :cond_8

    .line 206
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    .line 207
    return-object p0

    .line 204
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 2
    .param p1, "connectable"    # Z

    .line 237
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    .line 238
    return-object p0
.end method

.method public whitelist setDiscoverable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 2
    .param p1, "discoverable"    # Z

    .line 248
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mDiscoverable:Z

    .line 249
    return-object p0
.end method

.method public whitelist setOwnAddressType(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 5
    .param p1, "ownAddressType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 281
    const/4 v0, -0x1

    if-lt p1, v0, :cond_9

    const/4 v0, 0x2

    if-gt p1, v0, :cond_9

    .line 286
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mOwnAddressType:I

    .line 287
    return-object p0

    .line 284
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown address type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 4
    .param p1, "timeoutMillis"    # I

    .line 260
    if-ltz p1, :cond_a

    const v0, 0x2bf20

    if-gt p1, v0, :cond_a

    .line 266
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    .line 267
    return-object p0

    .line 261
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutMillis invalid (must be 0-180000 milliseconds)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .registers 5
    .param p1, "txPowerLevel"    # I

    .line 221
    if-ltz p1, :cond_22

    const/4 v0, 0x3

    if-gt p1, v0, :cond_22

    .line 225
    invoke-static {}, Landroid/bluetooth/le/AdvertiseSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTxPowerLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    .line 227
    return-object p0

    .line 223
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tx power level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
