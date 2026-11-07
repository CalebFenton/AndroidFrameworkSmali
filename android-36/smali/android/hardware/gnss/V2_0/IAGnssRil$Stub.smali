.class public abstract Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;
.super Landroid/os/HwBinder;
.source "IAGnssRil.java"

# interfaces
.implements Landroid/hardware/gnss/V2_0/IAGnssRil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IAGnssRil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 733
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 736
    return-object p0
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 750
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 788
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 789
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 790
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 791
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 792
    return-object v0
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

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_20

    new-array v3, v1, [B

    fill-array-data v3, :array_34

    new-array v1, v1, [B

    fill-array-data v1, :array_48

    filled-new-array {v2, v3, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_20
    .array-data 1
        0x1ft
        0x4at
        -0x40t
        0x68t
        -0x58t
        -0x76t
        0x72t
        0x36t
        0x2t
        -0x80t
        -0x27t
        0x4at
        0x7ft
        0x6ft
        -0x29t
        -0x3at
        0x38t
        0x13t
        -0x3ft
        -0x12t
        -0x5ct
        -0x77t
        0x1at
        0xet
        -0x50t
        0x13t
        -0x6ct
        -0x2dt
        -0x19t
        -0x19t
        0x75t
        -0xet
    .end array-data

    :array_34
    .array-data 1
        -0x2ft
        0x6et
        0x6at
        0x35t
        -0x65t
        -0x1at
        -0x6at
        0x3et
        -0x59t
        0x53t
        -0x29t
        0x13t
        -0x72t
        -0x7ct
        -0x14t
        -0xet
        -0x47t
        0x30t
        0x52t
        0x9t
        0x79t
        0x38t
        -0x6dt
        -0x74t
        0x4dt
        0x36t
        -0x29t
        -0x5ct
        0x7et
        -0x5et
        -0x1et
        -0x52t
    .end array-data

    :array_48
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

    .line 741
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IAGnssRil"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@2.0::IAGnssRil"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 756
    const-string v0, "android.hardware.gnss@2.0::IAGnssRil"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 776
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 798
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 800
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 828
    const-string v0, "android.hardware.gnss@1.0::IAGnssRil"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_162

    goto/16 :goto_160

    .line 1009
    :sswitch_a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->notifySyspropsChanged()V

    .line 1012
    goto/16 :goto_160

    .line 998
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1001
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1002
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1003
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1004
    goto/16 :goto_160

    .line 988
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_24
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->ping()V

    .line 991
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 992
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 993
    goto/16 :goto_160

    .line 983
    :sswitch_32
    goto/16 :goto_160

    .line 975
    :sswitch_34
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->setHALInstrumentation()V

    .line 978
    goto/16 :goto_160

    .line 941
    :sswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 944
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 946
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 948
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 949
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 950
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 951
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 952
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_63
    if-ge v4, v3, :cond_84

    .line 954
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 955
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 957
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7c

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7c

    .line 961
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 962
    nop

    .line 952
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 958
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 965
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_84
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 967
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 969
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 970
    goto/16 :goto_160

    .line 930
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_91
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 934
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 935
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 936
    goto/16 :goto_160

    .line 918
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 921
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 922
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 923
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 924
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 925
    goto/16 :goto_160

    .line 907
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 910
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 911
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 912
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 913
    goto/16 :goto_160

    .line 894
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cb
    const-string v0, "android.hardware.gnss@2.0::IAGnssRil"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 896
    new-instance v0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;-><init>()V

    .line 897
    .local v0, "attributes":Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->readFromParcel(Landroid/os/HwParcel;)V

    .line 898
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->updateNetworkState_2_0(Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;)Z

    move-result v1

    .line 899
    .local v1, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 900
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 901
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 902
    goto/16 :goto_160

    .line 881
    .end local v0    # "attributes":Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;
    .end local v1    # "_hidl_out_success":Z
    :sswitch_e7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 884
    .local v0, "available":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 885
    .local v1, "apn":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->updateNetworkAvailability(ZLjava/lang/String;)Z

    move-result v3

    .line 886
    .local v3, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 887
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 888
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 889
    goto :goto_160

    .line 867
    .end local v0    # "available":Z
    .end local v1    # "apn":Ljava/lang/String;
    .end local v3    # "_hidl_out_success":Z
    :sswitch_100
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 870
    .local v0, "connected":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 871
    .local v1, "type":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 872
    .local v3, "roaming":Z
    invoke-virtual {p0, v0, v1, v3}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->updateNetworkState(ZBZ)Z

    move-result v4

    .line 873
    .local v4, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 874
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 875
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 876
    goto :goto_160

    .line 854
    .end local v0    # "connected":Z
    .end local v1    # "type":B
    .end local v3    # "roaming":Z
    .end local v4    # "_hidl_out_success":Z
    :sswitch_11d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 857
    .local v0, "type":B
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 858
    .local v1, "setid":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->setSetId(BLjava/lang/String;)Z

    move-result v3

    .line 859
    .local v3, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 860
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 861
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 862
    goto :goto_160

    .line 842
    .end local v0    # "type":B
    .end local v1    # "setid":Ljava/lang/String;
    .end local v3    # "_hidl_out_success":Z
    :sswitch_136
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    new-instance v0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;-><init>()V

    .line 845
    .local v0, "agnssReflocation":Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;
    invoke-virtual {v0, p2}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 846
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->setRefLocation(Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;)V

    .line 847
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 849
    goto :goto_160

    .line 831
    .end local v0    # "agnssReflocation":Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;
    :sswitch_14b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IAGnssRilCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IAGnssRilCallback;

    move-result-object v0

    .line 834
    .local v0, "callback":Landroid/hardware/gnss/V1_0/IAGnssRilCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->setCallback(Landroid/hardware/gnss/V1_0/IAGnssRilCallback;)V

    .line 835
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 836
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 837
    nop

    .line 1021
    .end local v0    # "callback":Landroid/hardware/gnss/V1_0/IAGnssRilCallback;
    :goto_160
    return-void

    nop

    :sswitch_data_162
    .sparse-switch
        0x1 -> :sswitch_14b
        0x2 -> :sswitch_136
        0x3 -> :sswitch_11d
        0x4 -> :sswitch_100
        0x5 -> :sswitch_e7
        0x6 -> :sswitch_cb
        0xf43484e -> :sswitch_b9
        0xf444247 -> :sswitch_a3
        0xf445343 -> :sswitch_91
        0xf485348 -> :sswitch_3c
        0xf494e54 -> :sswitch_34
        0xf4c5444 -> :sswitch_32
        0xf504e47 -> :sswitch_24
        0xf524546 -> :sswitch_12
        0xf535953 -> :sswitch_a
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 782
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 810
    const-string v0, "android.hardware.gnss@2.0::IAGnssRil"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 811
    return-object p0

    .line 813
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->registerService(Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 772
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_0/IAGnssRil$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 804
    const/4 v0, 0x1

    return v0
.end method
