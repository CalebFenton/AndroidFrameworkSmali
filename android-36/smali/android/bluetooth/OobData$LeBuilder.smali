.class public final Landroid/bluetooth/OobData$LeBuilder;
.super Ljava/lang/Object;
.source "OobData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/OobData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeBuilder"
.end annotation


# instance fields
.field private blacklist mConfirmationHash:[B

.field private final blacklist mDeviceAddressWithType:[B

.field private blacklist mDeviceName:[B

.field private final blacklist mLeAppearance:[B

.field private final blacklist mLeDeviceRole:I

.field private blacklist mLeFlags:I

.field private blacklist mLeTemporaryKey:[B

.field private blacklist mRandomizerHash:[B


# direct methods
.method public constructor whitelist <init>([B[BI)V
    .registers 7
    .param p1, "confirmationHash"    # [B
    .param p2, "deviceAddressWithType"    # [B
    .param p3, "leDeviceRole"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/OobData$LeBuilder;->mConfirmationHash:[B

    .line 166
    const/16 v1, 0x10

    new-array v2, v1, [B

    fill-array-data v2, :array_4a

    iput-object v2, p0, Landroid/bluetooth/OobData$LeBuilder;->mRandomizerHash:[B

    .line 177
    iput-object v0, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceName:[B

    .line 225
    iput-object v0, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeTemporaryKey:[B

    .line 234
    iput-object v0, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeAppearance:[B

    .line 247
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeFlags:I

    .line 275
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    array-length v0, p1

    if-ne v0, v1, :cond_41

    .line 283
    iput-object p1, p0, Landroid/bluetooth/OobData$LeBuilder;->mConfirmationHash:[B

    .line 284
    array-length v0, p2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_39

    .line 290
    iput-object p2, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceAddressWithType:[B

    .line 291
    if-ltz p3, :cond_31

    const/4 v0, 0x3

    if-gt p3, v0, :cond_31

    .line 295
    iput p3, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeDeviceRole:I

    .line 296
    return-void

    .line 293
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leDeviceRole must be a valid value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddressWithType must be 7 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "confirmationHash must be 16 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_4a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/OobData;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 376
    new-instance v0, Landroid/bluetooth/OobData;

    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceAddressWithType:[B

    iget v2, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeDeviceRole:I

    iget-object v3, p0, Landroid/bluetooth/OobData$LeBuilder;->mConfirmationHash:[B

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/bluetooth/OobData;-><init>([BI[BLandroid/bluetooth/OobData-IA;)V

    .line 383
    .local v0, "oob":Landroid/bluetooth/OobData;
    nop

    .line 384
    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeTemporaryKey:[B

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeTemporaryKey:[B

    goto :goto_18

    :cond_14
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmLeTemporaryKey(Landroid/bluetooth/OobData;)[B

    move-result-object v1

    :goto_18
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmLeTemporaryKey(Landroid/bluetooth/OobData;[B)V

    .line 385
    nop

    .line 386
    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeAppearance:[B

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeAppearance:[B

    goto :goto_27

    :cond_23
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmLeAppearance(Landroid/bluetooth/OobData;)[B

    move-result-object v1

    :goto_27
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmLeAppearance(Landroid/bluetooth/OobData;[B)V

    .line 387
    iget v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeFlags:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_33

    iget v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeFlags:I

    goto :goto_37

    :cond_33
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmLeFlags(Landroid/bluetooth/OobData;)I

    move-result v1

    :goto_37
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmLeFlags(Landroid/bluetooth/OobData;I)V

    .line 388
    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceName:[B

    if-eqz v1, :cond_41

    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceName:[B

    goto :goto_45

    :cond_41
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmDeviceName(Landroid/bluetooth/OobData;)[B

    move-result-object v1

    :goto_45
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmDeviceName(Landroid/bluetooth/OobData;[B)V

    .line 389
    iget-object v1, p0, Landroid/bluetooth/OobData$LeBuilder;->mRandomizerHash:[B

    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmRandomizerHash(Landroid/bluetooth/OobData;[B)V

    .line 390
    return-object v0
.end method

.method public whitelist setDeviceName([B)Landroid/bluetooth/OobData$LeBuilder;
    .registers 2
    .param p1, "deviceName"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 192
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iput-object p1, p0, Landroid/bluetooth/OobData$LeBuilder;->mDeviceName:[B

    .line 194
    return-object p0
.end method

.method public whitelist setLeFlags(I)Landroid/bluetooth/OobData$LeBuilder;
    .registers 4
    .param p1, "leFlags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 359
    if-ltz p1, :cond_8

    const/4 v0, 0x4

    if-gt p1, v0, :cond_8

    .line 362
    iput p1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeFlags:I

    .line 363
    return-object p0

    .line 360
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leFlags must be a valid value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLeTemporaryKey([B)Landroid/bluetooth/OobData$LeBuilder;
    .registers 4
    .param p1, "leTemporaryKey"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 311
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_b

    .line 316
    iput-object p1, p0, Landroid/bluetooth/OobData$LeBuilder;->mLeTemporaryKey:[B

    .line 317
    return-object p0

    .line 313
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leTemporaryKey must be 16 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRandomizerHash([B)Landroid/bluetooth/OobData$LeBuilder;
    .registers 4
    .param p1, "randomizerHash"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 331
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_b

    .line 338
    iput-object p1, p0, Landroid/bluetooth/OobData$LeBuilder;->mRandomizerHash:[B

    .line 339
    return-object p0

    .line 333
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "randomizerHash must be 16 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
