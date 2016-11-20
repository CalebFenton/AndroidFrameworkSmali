.class public abstract Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.super Landroid/os/Binder;
.source "ICameraDeviceCallbacks.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraDeviceCallbacks"

.field static final TRANSACTION_onCaptureStarted:I = 0x3

.field static final TRANSACTION_onDeviceError:I = 0x1

.field static final TRANSACTION_onDeviceIdle:I = 0x2

.field static final TRANSACTION_onPrepared:I = 0x5

.field static final TRANSACTION_onRepeatingRequestError:I = 0x6

.field static final TRANSACTION_onResultReceived:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.hardware.camera2.ICameraDeviceCallbacks"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.hardware.camera2.ICameraDeviceCallbacks"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/hardware/camera2/ICameraDeviceCallbacks;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v8

    #@8
    return v8

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v8, "android.hardware.camera2.ICameraDeviceCallbacks"

    #@c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v9

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v8, "android.hardware.camera2.ICameraDeviceCallbacks"

    #@13
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v8

    #@1e
    if-eqz v8, :cond_0

    #@20
    .line 53
    sget-object v8, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v5

    #@26
    check-cast v5, Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@28
    .line 58
    :goto_0
    invoke-virtual {p0, v0, v5}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    #@2b
    .line 59
    return v9

    #@2c
    .line 56
    :cond_0
    const/4 v5, 0x0

    #@2d
    .local v5, "_arg1":Landroid/hardware/camera2/impl/CaptureResultExtras;
    goto :goto_0

    #@2e
    .line 63
    .end local v0    # "_arg0":I
    .end local v5    # "_arg1":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :sswitch_2
    const-string/jumbo v8, "android.hardware.camera2.ICameraDeviceCallbacks"

    #@31
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 64
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onDeviceIdle()V

    #@37
    .line 65
    return v9

    #@38
    .line 69
    :sswitch_3
    const-string/jumbo v8, "android.hardware.camera2.ICameraDeviceCallbacks"

    #@3b
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v8

    #@42
    if-eqz v8, :cond_1

    #@44
    .line 72
    sget-object v8, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    #@46
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@49
    move-result-object v4

    #@4a
    check-cast v4, Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@4c
    .line 78
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@4f
    move-result-wide v6

    #@50
    .line 79
    .local v6, "_arg1":J
    invoke-virtual {p0, v4, v6, v7}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    #@53
    .line 80
    return v9

    #@54
    .line 75
    .end local v6    # "_arg1":J
    :cond_1
    const/4 v4, 0x0

    #@55
    .local v4, "_arg0":Landroid/hardware/camera2/impl/CaptureResultExtras;
    goto :goto_1

    #@56
    .line 84
    .end local v4    # "_arg0":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :sswitch_4
    const-string/jumbo v8, "android.hardware.camera2.ICameraDeviceCallbacks"

    #@59
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v8

    #@60
    if-eqz v8, :cond_2

    #@62
    .line 87
    sget-object v8, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    #@64
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@67
    move-result-object v1

    #@68
    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@6a
    .line 93
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v8

    #@6e
    if-eqz v8, :cond_3

    #@70
    .line 94
    sget-object v8, Landroid/hardware/camera2/impl/CaptureResultExtras;->CREATOR:Landroid/os/Parcelable$Creator;

    #@72
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@75
    move-result-object v5

    #@76
    check-cast v5, Landroid/hardware/camera2/impl/CaptureResultExtras;

    #@78
    .line 99
    :goto_3
    invoke-virtual {p0, v1, v5}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    #@7b
    .line 100
    return v9

    #@7c
    .line 90
    :cond_2
    const/4 v1, 0x0

    #@7d
    .local v1, "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    goto :goto_2

    #@7e
    .line 97
    .end local v1    # "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_3
    const/4 v5, 0x0

    #@7f
    .restart local v5    # "_arg1":Landroid/hardware/camera2/impl/CaptureResultExtras;
    goto :goto_3

    #@80
    .line 104
    .end local v5    # "_arg1":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :sswitch_5
    const-string/jumbo v8, "android.hardware.camera2.ICameraDeviceCallbacks"

    #@83
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86
    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@89
    move-result v0

    #@8a
    .line 107
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onPrepared(I)V

    #@8d
    .line 108
    return v9

    #@8e
    .line 112
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string/jumbo v8, "android.hardware.camera2.ICameraDeviceCallbacks"

    #@91
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@94
    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@97
    move-result-wide v2

    #@98
    .line 115
    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->onRepeatingRequestError(J)V

    #@9b
    .line 116
    return v9

    #@9c
    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
