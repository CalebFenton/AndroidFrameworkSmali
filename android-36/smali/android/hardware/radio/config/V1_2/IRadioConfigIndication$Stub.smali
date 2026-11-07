.class public abstract Landroid/hardware/radio/config/V1_2/IRadioConfigIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioConfigIndication.java"

# interfaces
.implements Landroid/hardware/radio/config/V1_2/IRadioConfigIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/config/V1_2/IRadioConfigIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 456
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 3

    .line 513
    new-instance p0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 514
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 515
    iput-wide v0, p0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 516
    iput v0, p0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 486
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_24

    new-array v2, v0, [B

    fill-array-data v2, :array_38

    new-array v3, v0, [B

    fill-array-data v3, :array_4c

    new-array v0, v0, [B

    fill-array-data v0, :array_60

    filled-new-array {v1, v2, v3, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :array_24
    .array-data 1
        -0x50t
        -0x2ct
        0x52t
        -0x7t
        -0x5et
        -0x1ct
        0x5ft
        -0x80t
        -0x43t
        -0x4at
        0x72t
        -0x4ft
        -0x1ct
        -0x35t
        0x64t
        -0x61t
        -0x1t
        0x50t
        0x29t
        0x3bt
        -0x21t
        0x20t
        -0x80t
        -0x67t
        -0x42t
        0x41t
        0x73t
        -0x71t
        0x11t
        -0x33t
        0x2et
        -0x53t
    .end array-data

    :array_38
    .array-data 1
        0x7ft
        -0x31t
        0x16t
        0x7ft
        0x59t
        0x3bt
        0x10t
        -0x3at
        0x7bt
        0x59t
        -0x55t
        0x70t
        0x32t
        0x17t
        -0x7ft
        -0x3et
        0x6at
        0x55t
        0x75t
        -0x16t
        -0x4at
        0x8t
        0x3t
        -0x19t
        -0x35t
        -0x4ft
        -0x3ft
        0x4ct
        0x71t
        0x8t
        0x5at
        0x3bt
    .end array-data

    :array_4c
    .array-data 1
        0x22t
        -0x75t
        0x2et
        -0x1dt
        -0x38t
        -0x3et
        0x76t
        -0x37t
        -0x10t
        -0x51t
        -0x53t
        0x2dt
        -0x3dt
        0x13t
        -0x36t
        0x3dt
        0x6bt
        -0x43t
        -0x62t
        0x48t
        0x2dt
        -0x21t
        0x31t
        0x3ct
        0x72t
        0x4t
        -0x3at
        0xat
        -0x27t
        -0x4at
        0x36t
        -0x55t
    .end array-data

    :array_60
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final blacklist interfaceChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 464
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.radio.config@1.0::IRadioConfigIndication"

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "android.hardware.radio.config@1.2::IRadioConfigIndication"

    const-string v3, "android.hardware.radio.config@1.1::IRadioConfigIndication"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 480
    const-string p0, "android.hardware.radio.config@1.2::IRadioConfigIndication"

    return-object p0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 523
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_d3

    const/4 p4, 0x2

    if-eq p1, p4, :cond_c2

    const/4 p4, 0x0

    .line 553
    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_e4

    return-void

    .line 678
    :sswitch_d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_2/IRadioConfigIndication$Stub;->notifySyspropsChanged()V

    return-void

    .line 667
    :sswitch_14
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_2/IRadioConfigIndication$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 670
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 671
    invoke-virtual {p0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 672
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 657
    :sswitch_25
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_2/IRadioConfigIndication$Stub;->ping()V

    .line 660
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 661
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 644
    :sswitch_32
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_2/IRadioConfigIndication$Stub;->setHALInstrumentation()V

    return-void

    .line 610
    :sswitch_39
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_2/IRadioConfigIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 613
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 615
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 617
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 618
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 619
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 620
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_5f
    if-ge p4, p2, :cond_7f

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 624
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_77

    .line 626
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_77

    .line 630
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_5f

    .line 627
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7f
    const-wide/16 v1, 0x0

    .line 634
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 636
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 638
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 599
    :sswitch_8b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_2/IRadioConfigIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 602
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 603
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 587
    :sswitch_9c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 590
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 591
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/config/V1_2/IRadioConfigIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 592
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 593
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 576
    :sswitch_b1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_2/IRadioConfigIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 579
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 580
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 581
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 566
    :cond_c2
    const-string p1, "android.hardware.radio.config@1.2::IRadioConfigIndication"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 569
    invoke-static {p2}, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 570
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/config/V1_2/IRadioConfigIndication;->simSlotsStatusChanged_1_2(ILjava/util/ArrayList;)V

    return-void

    .line 556
    :cond_d3
    const-string p1, "android.hardware.radio.config@1.0::IRadioConfigIndication"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 559
    invoke-static {p2}, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 560
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/config/V1_0/IRadioConfigIndication;->simSlotsStatusChanged(ILjava/util/ArrayList;)V

    return-void

    :sswitch_data_e4
    .sparse-switch
        0xf43484e -> :sswitch_b1
        0xf444247 -> :sswitch_9c
        0xf445343 -> :sswitch_8b
        0xf485348 -> :sswitch_39
        0xf494e54 -> :sswitch_32
        0xf504e47 -> :sswitch_25
        0xf524546 -> :sswitch_14
        0xf535953 -> :sswitch_d
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 0
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 535
    const-string v0, "android.hardware.radio.config@1.2::IRadioConfigIndication"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist registerAsService(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 542
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_2/IRadioConfigIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method
