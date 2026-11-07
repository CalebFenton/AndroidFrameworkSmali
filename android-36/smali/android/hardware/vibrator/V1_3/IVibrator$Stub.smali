.class public abstract Landroid/hardware/vibrator/V1_3/IVibrator$Stub;
.super Landroid/os/HwBinder;
.source "IVibrator.java"

# interfaces
.implements Landroid/hardware/vibrator/V1_3/IVibrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/vibrator/V1_3/IVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 654
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 657
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

    .line 673
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 713
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 714
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 715
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 716
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 717
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_2a

    new-array v3, v1, [B

    fill-array-data v3, :array_3e

    new-array v4, v1, [B

    fill-array-data v4, :array_52

    new-array v5, v1, [B

    fill-array-data v5, :array_66

    new-array v1, v1, [B

    fill-array-data v1, :array_7a

    filled-new-array {v2, v3, v4, v5, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_2a
    .array-data 1
        0xft
        0x7ft
        -0x9t
        0x37t
        -0x6dt
        0x54t
        -0x73t
        0x51t
        0x54t
        0x1t
        0x40t
        0x59t
        -0x49t
        -0x20t
        -0x2t
        -0x62t
        -0xat
        0x35t
        0x5dt
        0x32t
        0x21t
        -0x76t
        -0x32t
        0x15t
        0x79t
        0x54t
        -0x30t
        0x20t
        0x55t
        -0xbt
        0x24t
        -0x75t
    .end array-data

    :array_3e
    .array-data 1
        0x1bt
        -0x4t
        -0x61t
        -0x27t
        0x53t
        0x6et
        -0x30t
        -0x61t
        0x4t
        -0x44t
        -0x51t
        0x22t
        0x2at
        0x33t
        0x2bt
        -0x37t
        0x19t
        -0xft
        0x56t
        0x5dt
        0x4dt
        0x8t
        -0x43t
        -0x24t
        -0x33t
        -0x15t
        -0x1ft
        -0x41t
        -0x36t
        -0x71t
        0x1t
        -0x4bt
    .end array-data

    :array_52
    .array-data 1
        -0x7t
        0x5at
        0x1et
        -0x7bt
        0x61t
        0x2ft
        0x2dt
        0xdt
        0x61t
        0x6et
        -0x54t
        -0x2et
        -0x15t
        0x63t
        -0x3bt
        0x2dt
        0x10t
        -0x21t
        -0x58t
        -0x77t
        -0xft
        0x65t
        -0x21t
        0x57t
        0x69t
        0x7ct
        0x30t
        -0x1ft
        -0xct
        0x7bt
        0x47t
        -0x7bt
    .end array-data

    :array_66
    .array-data 1
        0x6t
        -0x16t
        0x64t
        -0x34t
        0x35t
        0x65t
        0x77t
        0x7ft
        0x3bt
        0x25t
        -0x62t
        0x40t
        0xft
        -0x6t
        0x71t
        0x0t
        -0x30t
        0x7ft
        0x38t
        0x27t
        -0x53t
        -0x6dt
        0x57t
        -0x50t
        -0x3bt
        -0x2dt
        -0x3at
        0x51t
        0x38t
        0x4et
        0x55t
        0x53t
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.vibrator@1.0::IVibrator"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.vibrator@1.3::IVibrator"

    const-string v4, "android.hardware.vibrator@1.2::IVibrator"

    const-string v5, "android.hardware.vibrator@1.1::IVibrator"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 679
    const-string v0, "android.hardware.vibrator@1.3::IVibrator"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 701
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 723
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 725
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

    .line 753
    const-string v0, "android.hardware.vibrator@1.3::IVibrator"

    const-string v1, "android.hardware.vibrator@1.0::IVibrator"

    const-string v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_198

    goto/16 :goto_197

    .line 995
    :sswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->notifySyspropsChanged()V

    .line 998
    goto/16 :goto_197

    .line 984
    :sswitch_14
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 987
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 988
    invoke-virtual {v0, p3}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 989
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 990
    goto/16 :goto_197

    .line 974
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_26
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->ping()V

    .line 977
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 978
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 979
    goto/16 :goto_197

    .line 969
    :sswitch_34
    goto/16 :goto_197

    .line 961
    :sswitch_36
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->setHALInstrumentation()V

    .line 964
    goto/16 :goto_197

    .line 927
    :sswitch_3e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 930
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 932
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 934
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 935
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 936
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 937
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 938
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_65
    if-ge v4, v2, :cond_86

    .line 940
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 941
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 943
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_7e

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7e

    .line 947
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 948
    nop

    .line 938
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 944
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_7e
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 951
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_86
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 953
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 955
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 956
    goto/16 :goto_197

    .line 916
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_93
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 920
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 922
    goto/16 :goto_197

    .line 904
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 907
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 908
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 909
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 910
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 911
    goto/16 :goto_197

    .line 893
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 896
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 897
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 898
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 899
    goto/16 :goto_197

    .line 876
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 879
    .local v0, "effect":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 880
    .local v1, "strength":B
    new-instance v2, Landroid/hardware/vibrator/V1_3/IVibrator$Stub$4;

    invoke-direct {v2, p0, p3}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub$4;-><init>(Landroid/hardware/vibrator/V1_3/IVibrator$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->perform_1_3(IBLandroid/hardware/vibrator/V1_3/IVibrator$perform_1_3Callback;)V

    .line 888
    goto/16 :goto_197

    .line 864
    .end local v0    # "effect":I
    .end local v1    # "strength":B
    :sswitch_e2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 867
    .local v0, "enabled":Z
    invoke-virtual {p0, v0}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->setExternalControl(Z)I

    move-result v1

    .line 868
    .local v1, "_hidl_out_status":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 869
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 870
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 871
    goto/16 :goto_197

    .line 853
    .end local v0    # "enabled":Z
    .end local v1    # "_hidl_out_status":I
    :sswitch_f8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->supportsExternalControl()Z

    move-result v0

    .line 856
    .local v0, "_hidl_out_supports":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 857
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 858
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 859
    goto/16 :goto_197

    .line 836
    .end local v0    # "_hidl_out_supports":Z
    :sswitch_10a
    const-string v0, "android.hardware.vibrator@1.2::IVibrator"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 839
    .local v0, "effect":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 840
    .local v1, "strength":B
    new-instance v2, Landroid/hardware/vibrator/V1_3/IVibrator$Stub$3;

    invoke-direct {v2, p0, p3}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub$3;-><init>(Landroid/hardware/vibrator/V1_3/IVibrator$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->perform_1_2(IBLandroid/hardware/vibrator/V1_2/IVibrator$perform_1_2Callback;)V

    .line 848
    goto/16 :goto_197

    .line 819
    .end local v0    # "effect":I
    .end local v1    # "strength":B
    :sswitch_121
    const-string v0, "android.hardware.vibrator@1.1::IVibrator"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 822
    .restart local v0    # "effect":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 823
    .restart local v1    # "strength":B
    new-instance v2, Landroid/hardware/vibrator/V1_3/IVibrator$Stub$2;

    invoke-direct {v2, p0, p3}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub$2;-><init>(Landroid/hardware/vibrator/V1_3/IVibrator$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->perform_1_1(IBLandroid/hardware/vibrator/V1_1/IVibrator$perform_1_1Callback;)V

    .line 831
    goto :goto_197

    .line 802
    .end local v0    # "effect":I
    .end local v1    # "strength":B
    :sswitch_137
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 805
    .restart local v0    # "effect":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v1

    .line 806
    .restart local v1    # "strength":B
    new-instance v2, Landroid/hardware/vibrator/V1_3/IVibrator$Stub$1;

    invoke-direct {v2, p0, p3}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub$1;-><init>(Landroid/hardware/vibrator/V1_3/IVibrator$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->perform(IBLandroid/hardware/vibrator/V1_0/IVibrator$performCallback;)V

    .line 814
    goto :goto_197

    .line 790
    .end local v0    # "effect":I
    .end local v1    # "strength":B
    :sswitch_14b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v0

    .line 793
    .local v0, "amplitude":B
    invoke-virtual {p0, v0}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->setAmplitude(B)I

    move-result v1

    .line 794
    .local v1, "_hidl_out_status":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 795
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 796
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 797
    goto :goto_197

    .line 779
    .end local v0    # "amplitude":B
    .end local v1    # "_hidl_out_status":I
    :sswitch_160
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->supportsAmplitudeControl()Z

    move-result v0

    .line 782
    .local v0, "_hidl_out_supports":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 783
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 784
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 785
    goto :goto_197

    .line 768
    .end local v0    # "_hidl_out_supports":Z
    :sswitch_171
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->off()I

    move-result v0

    .line 771
    .local v0, "_hidl_out_vibratorOffRet":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 772
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 773
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 774
    goto :goto_197

    .line 756
    .end local v0    # "_hidl_out_vibratorOffRet":I
    :sswitch_182
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 759
    .local v0, "timeoutMs":I
    invoke-virtual {p0, v0}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->on(I)I

    move-result v1

    .line 760
    .local v1, "_hidl_out_vibratorOnRet":I
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 761
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 763
    nop

    .line 1007
    .end local v0    # "timeoutMs":I
    .end local v1    # "_hidl_out_vibratorOnRet":I
    :goto_197
    return-void

    :sswitch_data_198
    .sparse-switch
        0x1 -> :sswitch_182
        0x2 -> :sswitch_171
        0x3 -> :sswitch_160
        0x4 -> :sswitch_14b
        0x5 -> :sswitch_137
        0x6 -> :sswitch_121
        0x7 -> :sswitch_10a
        0x8 -> :sswitch_f8
        0x9 -> :sswitch_e2
        0xa -> :sswitch_cd
        0xf43484e -> :sswitch_bb
        0xf444247 -> :sswitch_a5
        0xf445343 -> :sswitch_93
        0xf485348 -> :sswitch_3e
        0xf494e54 -> :sswitch_36
        0xf4c5444 -> :sswitch_34
        0xf504e47 -> :sswitch_26
        0xf524546 -> :sswitch_14
        0xf535953 -> :sswitch_c
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 707
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 735
    const-string v0, "android.hardware.vibrator@1.3::IVibrator"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 736
    return-object p0

    .line 738
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

    .line 742
    invoke-virtual {p0, p1}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->registerService(Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 697
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_3/IVibrator$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 729
    const/4 v0, 0x1

    return v0
.end method
