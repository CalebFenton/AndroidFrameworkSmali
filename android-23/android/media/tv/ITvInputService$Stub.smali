.class public abstract Landroid/media/tv/ITvInputService$Stub;
.super Landroid/os/Binder;
.source "ITvInputService.java"

# interfaces
.implements Landroid/media/tv/ITvInputService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputService"

.field static final TRANSACTION_createSession:I = 0x3

.field static final TRANSACTION_notifyHardwareAdded:I = 0x4

.field static final TRANSACTION_notifyHardwareRemoved:I = 0x5

.field static final TRANSACTION_notifyHdmiDeviceAdded:I = 0x6

.field static final TRANSACTION_notifyHdmiDeviceRemoved:I = 0x7

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.media.tv.ITvInputService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "android.media.tv.ITvInputService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/tv/ITvInputService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/media/tv/ITvInputService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x1

    #@1
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v6

    #@8
    return v6

    #@9
    .line 46
    :sswitch_0
    const-string/jumbo v6, "android.media.tv.ITvInputService"

    #@c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 47
    return v7

    #@10
    .line 51
    :sswitch_1
    const-string/jumbo v6, "android.media.tv.ITvInputService"

    #@13
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v6

    #@1a
    invoke-static {v6}, Landroid/media/tv/ITvInputServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputServiceCallback;

    #@1d
    move-result-object v1

    #@1e
    .line 54
    .local v1, "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputService$Stub;->registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V

    #@21
    .line 55
    return v7

    #@22
    .line 59
    .end local v1    # "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    :sswitch_2
    const-string/jumbo v6, "android.media.tv.ITvInputService"

    #@25
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b
    move-result-object v6

    #@2c
    invoke-static {v6}, Landroid/media/tv/ITvInputServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputServiceCallback;

    #@2f
    move-result-object v1

    #@30
    .line 62
    .restart local v1    # "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputService$Stub;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V

    #@33
    .line 63
    return v7

    #@34
    .line 67
    .end local v1    # "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    :sswitch_3
    const-string/jumbo v6, "android.media.tv.ITvInputService"

    #@37
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v6

    #@3e
    if-eqz v6, :cond_0

    #@40
    .line 70
    sget-object v6, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@42
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@45
    move-result-object v3

    #@46
    check-cast v3, Landroid/view/InputChannel;

    #@48
    .line 76
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4b
    move-result-object v6

    #@4c
    invoke-static {v6}, Landroid/media/tv/ITvInputSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSessionCallback;

    #@4f
    move-result-object v4

    #@50
    .line 78
    .local v4, "_arg1":Landroid/media/tv/ITvInputSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    .line 79
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v5}, Landroid/media/tv/ITvInputService$Stub;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V

    #@57
    .line 80
    return v7

    #@58
    .line 73
    .end local v4    # "_arg1":Landroid/media/tv/ITvInputSessionCallback;
    .end local v5    # "_arg2":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@59
    .local v3, "_arg0":Landroid/view/InputChannel;
    goto :goto_0

    #@5a
    .line 84
    .end local v3    # "_arg0":Landroid/view/InputChannel;
    :sswitch_4
    const-string/jumbo v6, "android.media.tv.ITvInputService"

    #@5d
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v6

    #@64
    if-eqz v6, :cond_1

    #@66
    .line 87
    sget-object v6, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@68
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6b
    move-result-object v2

    #@6c
    check-cast v2, Landroid/media/tv/TvInputHardwareInfo;

    #@6e
    .line 92
    :goto_1
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V

    #@71
    .line 93
    return v7

    #@72
    .line 90
    :cond_1
    const/4 v2, 0x0

    #@73
    .local v2, "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    goto :goto_1

    #@74
    .line 97
    .end local v2    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    :sswitch_5
    const-string/jumbo v6, "android.media.tv.ITvInputService"

    #@77
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a
    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7d
    move-result v6

    #@7e
    if-eqz v6, :cond_2

    #@80
    .line 100
    sget-object v6, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@82
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@85
    move-result-object v2

    #@86
    check-cast v2, Landroid/media/tv/TvInputHardwareInfo;

    #@88
    .line 105
    :goto_2
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V

    #@8b
    .line 106
    return v7

    #@8c
    .line 103
    :cond_2
    const/4 v2, 0x0

    #@8d
    .restart local v2    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    goto :goto_2

    #@8e
    .line 110
    .end local v2    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    :sswitch_6
    const-string/jumbo v6, "android.media.tv.ITvInputService"

    #@91
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@94
    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@97
    move-result v6

    #@98
    if-eqz v6, :cond_3

    #@9a
    .line 113
    sget-object v6, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9c
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9f
    move-result-object v0

    #@a0
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@a2
    .line 118
    :goto_3
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputService$Stub;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@a5
    .line 119
    return v7

    #@a6
    .line 116
    :cond_3
    const/4 v0, 0x0

    #@a7
    .local v0, "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_3

    #@a8
    .line 123
    .end local v0    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :sswitch_7
    const-string/jumbo v6, "android.media.tv.ITvInputService"

    #@ab
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ae
    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b1
    move-result v6

    #@b2
    if-eqz v6, :cond_4

    #@b4
    .line 126
    sget-object v6, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b6
    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b9
    move-result-object v0

    #@ba
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@bc
    .line 131
    :goto_4
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputService$Stub;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@bf
    .line 132
    return v7

    #@c0
    .line 129
    :cond_4
    const/4 v0, 0x0

    #@c1
    .restart local v0    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_4

    #@c2
    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
