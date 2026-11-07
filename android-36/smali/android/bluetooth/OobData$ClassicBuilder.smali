.class public final Landroid/bluetooth/OobData$ClassicBuilder;
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
    name = "ClassicBuilder"
.end annotation


# instance fields
.field private blacklist mClassOfDevice:[B

.field private final blacklist mClassicLength:[B

.field private blacklist mConfirmationHash:[B

.field private final blacklist mDeviceAddressWithType:[B

.field private blacklist mDeviceName:[B

.field private blacklist mRandomizerHash:[B


# direct methods
.method public constructor whitelist <init>([B[B[B)V
    .registers 7
    .param p1, "confirmationHash"    # [B
    .param p2, "classicLength"    # [B
    .param p3, "deviceAddressWithType"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mConfirmationHash:[B

    .line 420
    const/16 v1, 0x10

    new-array v2, v1, [B

    fill-array-data v2, :array_46

    iput-object v2, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mRandomizerHash:[B

    .line 433
    iput-object v0, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceName:[B

    .line 471
    iput-object v0, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassOfDevice:[B

    .line 495
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    array-length v0, p1

    if-ne v0, v1, :cond_3e

    .line 504
    iput-object p1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mConfirmationHash:[B

    .line 505
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 509
    iput-object p2, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassicLength:[B

    .line 510
    array-length v0, p3

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2e

    .line 516
    iput-object p3, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceAddressWithType:[B

    .line 517
    return-void

    .line 511
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddressWithType must be 7 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "classicLength must be 2 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "confirmationHash must be 16 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_46
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

    .line 596
    new-instance v0, Landroid/bluetooth/OobData;

    iget-object v1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassicLength:[B

    iget-object v2, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceAddressWithType:[B

    iget-object v3, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mConfirmationHash:[B

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/bluetooth/OobData;-><init>([B[B[BLandroid/bluetooth/OobData-IA;)V

    .line 602
    .local v0, "oob":Landroid/bluetooth/OobData;
    iget-object v1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceName:[B

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceName:[B

    goto :goto_17

    :cond_13
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmDeviceName(Landroid/bluetooth/OobData;)[B

    move-result-object v1

    :goto_17
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmDeviceName(Landroid/bluetooth/OobData;[B)V

    .line 603
    nop

    .line 604
    iget-object v1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassOfDevice:[B

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassOfDevice:[B

    goto :goto_26

    :cond_22
    invoke-static {v0}, Landroid/bluetooth/OobData;->-$$Nest$fgetmClassOfDevice(Landroid/bluetooth/OobData;)[B

    move-result-object v1

    :goto_26
    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmClassOfDevice(Landroid/bluetooth/OobData;[B)V

    .line 605
    iget-object v1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mRandomizerHash:[B

    invoke-static {v0, v1}, Landroid/bluetooth/OobData;->-$$Nest$fputmRandomizerHash(Landroid/bluetooth/OobData;[B)V

    .line 606
    return-object v0
.end method

.method public whitelist setClassOfDevice([B)Landroid/bluetooth/OobData$ClassicBuilder;
    .registers 4
    .param p1, "classOfDevice"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 576
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 583
    iput-object p1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mClassOfDevice:[B

    .line 584
    return-object p0

    .line 578
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "classOfDevice must be 3 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDeviceName([B)Landroid/bluetooth/OobData$ClassicBuilder;
    .registers 2
    .param p1, "deviceName"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 554
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    iput-object p1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mDeviceName:[B

    .line 556
    return-object p0
.end method

.method public whitelist setRandomizerHash([B)Landroid/bluetooth/OobData$ClassicBuilder;
    .registers 4
    .param p1, "randomizerHash"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 530
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_b

    .line 537
    iput-object p1, p0, Landroid/bluetooth/OobData$ClassicBuilder;->mRandomizerHash:[B

    .line 538
    return-object p0

    .line 532
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "randomizerHash must be 16 octets in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
