.class public abstract Landroid/hardware/radio/config/V1_3/IRadioConfigResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioConfigResponse.java"

# interfaces
.implements Landroid/hardware/radio/config/V1_3/IRadioConfigResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/config/V1_3/IRadioConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 568
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

    .line 627
    new-instance p0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 628
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 629
    iput-wide v0, p0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 630
    iput v0, p0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 599
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_2a

    new-array v2, v0, [B

    fill-array-data v2, :array_3e

    new-array v3, v0, [B

    fill-array-data v3, :array_52

    new-array v4, v0, [B

    fill-array-data v4, :array_66

    new-array v0, v0, [B

    fill-array-data v0, :array_7a

    filled-new-array {v1, v2, v3, v4, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_2a
    .array-data 1
        -0x37t
        -0x53t
        0x18t
        0x72t
        -0x6et
        0x68t
        0x59t
        0x3dt
        0x14t
        0x68t
        0x1dt
        -0x78t
        -0x1t
        -0x53t
        0x1ct
        -0x69t
        -0x19t
        0x7t
        0x44t
        0x4at
        0x45t
        -0x1ft
        -0x4ct
        -0x13t
        -0x80t
        0x4dt
        -0x55t
        -0x6ct
        -0x62t
        -0x25t
        -0x28t
        0x4ft
    .end array-data

    :array_3e
    .array-data 1
        -0x28t
        -0x19t
        0x71t
        0x7et
        -0x7ft
        -0x79t
        -0x23t
        0x74t
        0x53t
        -0x2ct
        0x14t
        0x2ft
        -0x71t
        0x33t
        0x1et
        0x7ct
        0x32t
        0x5et
        0x7at
        0x6ft
        -0x62t
        -0x73t
        0x44t
        -0x54t
        0xdt
        0x52t
        -0x4dt
        -0x42t
        0x50t
        0x2bt
        -0x2t
        -0x7dt
    .end array-data

    :array_52
    .array-data 1
        -0x4ct
        0x2et
        -0x4dt
        -0x45t
        -0x2bt
        -0x19t
        -0x4bt
        0x19t
        -0x1et
        -0x7dt
        0x62t
        0x34t
        0xct
        0x22t
        0x5t
        -0x56t
        0x75t
        0x35t
        0x6dt
        -0x1at
        -0x4dt
        0xft
        0x4ft
        -0x30t
        -0x62t
        -0x3et
        -0x16t
        0x78t
        0x4ft
        0x25t
        0xat
        -0x50t
    .end array-data

    :array_66
    .array-data 1
        -0x5et
        -0x17t
        -0x49t
        -0x56t
        0x9t
        -0x9t
        -0x6ct
        0x26t
        -0x9t
        0x65t
        -0x7dt
        -0x7ft
        0x74t
        -0x20t
        0x4bt
        0x6ft
        -0x66t
        0x3et
        0x6ct
        -0x75t
        0x76t
        -0x47t
        0x23t
        -0x4t
        0x17t
        0x5t
        0x63t
        0x22t
        0x7t
        -0x46t
        -0x2ct
        0x4bt
    .end array-data

    :array_7a
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 576
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.radio.config@1.0::IRadioConfigResponse"

    const-string v1, "android.hidl.base@1.0::IBase"

    const-string v2, "android.hardware.radio.config@1.3::IRadioConfigResponse"

    const-string v3, "android.hardware.radio.config@1.2::IRadioConfigResponse"

    const-string v4, "android.hardware.radio.config@1.1::IRadioConfigResponse"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 593
    const-string p0, "android.hardware.radio.config@1.3::IRadioConfigResponse"

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

    .line 637
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

    .line 667
    const-string p4, "android.hardware.radio.config@1.0::IRadioConfigResponse"

    const-string v0, "android.hardware.radio.config@1.1::IRadioConfigResponse"

    packed-switch p1, :pswitch_data_15c

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_170

    return-void

    .line 859
    :sswitch_e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_3/IRadioConfigResponse$Stub;->notifySyspropsChanged()V

    return-void

    .line 848
    :sswitch_15
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_3/IRadioConfigResponse$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 851
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 852
    invoke-virtual {p0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 853
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 838
    :sswitch_26
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_3/IRadioConfigResponse$Stub;->ping()V

    .line 841
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 842
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 825
    :sswitch_33
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_3/IRadioConfigResponse$Stub;->setHALInstrumentation()V

    return-void

    .line 791
    :sswitch_3a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_3/IRadioConfigResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 794
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 796
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 798
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 799
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 800
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 801
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_60
    if-ge p4, p2, :cond_80

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 805
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_78

    .line 807
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_78

    .line 811
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_60

    .line 808
    :cond_78
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_80
    const-wide/16 v1, 0x0

    .line 815
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 817
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 819
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 780
    :sswitch_8c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_3/IRadioConfigResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 783
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 784
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 768
    :sswitch_9d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 771
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 772
    invoke-virtual {p0, p1, p2}, Landroid/hardware/radio/config/V1_3/IRadioConfigResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 773
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 774
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 757
    :sswitch_b2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_3/IRadioConfigResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 760
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 761
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    return-void

    .line 746
    :pswitch_c3
    const-string p1, "android.hardware.radio.config@1.3::IRadioConfigResponse"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    new-instance p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_6/RadioResponseInfo;-><init>()V

    .line 749
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_6/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 750
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 751
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/config/V1_3/IRadioConfigResponse;->getHalDeviceCapabilitiesResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Z)V

    return-void

    .line 735
    :pswitch_d8
    const-string p1, "android.hardware.radio.config@1.2::IRadioConfigResponse"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 738
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 739
    invoke-static {p2}, Landroid/hardware/radio/config/V1_2/SimSlotStatus;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 740
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/config/V1_2/IRadioConfigResponse;->getSimSlotsStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void

    .line 723
    :pswitch_ed
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 726
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 727
    new-instance p3, Landroid/hardware/radio/config/V1_1/ModemsConfig;

    invoke-direct {p3}, Landroid/hardware/radio/config/V1_1/ModemsConfig;-><init>()V

    .line 728
    invoke-virtual {p3, p2}, Landroid/hardware/radio/config/V1_1/ModemsConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 729
    invoke-interface {p0, p1, p3}, Landroid/hardware/radio/config/V1_1/IRadioConfigResponse;->getModemsConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/config/V1_1/ModemsConfig;)V

    return-void

    .line 713
    :pswitch_104
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 716
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 717
    invoke-interface {p0, p1}, Landroid/hardware/radio/config/V1_1/IRadioConfigResponse;->setModemsConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void

    .line 703
    :pswitch_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 706
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 707
    invoke-interface {p0, p1}, Landroid/hardware/radio/config/V1_1/IRadioConfigResponse;->setPreferredDataModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void

    .line 691
    :pswitch_122
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 694
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 695
    new-instance p3, Landroid/hardware/radio/config/V1_1/PhoneCapability;

    invoke-direct {p3}, Landroid/hardware/radio/config/V1_1/PhoneCapability;-><init>()V

    .line 696
    invoke-virtual {p3, p2}, Landroid/hardware/radio/config/V1_1/PhoneCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 697
    invoke-interface {p0, p1, p3}, Landroid/hardware/radio/config/V1_1/IRadioConfigResponse;->getPhoneCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/config/V1_1/PhoneCapability;)V

    return-void

    .line 681
    :pswitch_139
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 684
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 685
    invoke-interface {p0, p1}, Landroid/hardware/radio/config/V1_0/IRadioConfigResponse;->setSimSlotsMappingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void

    .line 670
    :pswitch_148
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    new-instance p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {p1}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 673
    invoke-virtual {p1, p2}, Landroid/hardware/radio/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 674
    invoke-static {p2}, Landroid/hardware/radio/config/V1_0/SimSlotStatus;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 675
    invoke-interface {p0, p1, p2}, Landroid/hardware/radio/config/V1_0/IRadioConfigResponse;->getSimSlotsStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void

    nop

    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_148
        :pswitch_139
        :pswitch_122
        :pswitch_113
        :pswitch_104
        :pswitch_ed
        :pswitch_d8
        :pswitch_c3
    .end packed-switch

    :sswitch_data_170
    .sparse-switch
        0xf43484e -> :sswitch_b2
        0xf444247 -> :sswitch_9d
        0xf445343 -> :sswitch_8c
        0xf485348 -> :sswitch_3a
        0xf494e54 -> :sswitch_33
        0xf504e47 -> :sswitch_26
        0xf524546 -> :sswitch_15
        0xf535953 -> :sswitch_e
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 0
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 649
    const-string v0, "android.hardware.radio.config@1.3::IRadioConfigResponse"

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

    .line 656
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

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/config/V1_3/IRadioConfigResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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
