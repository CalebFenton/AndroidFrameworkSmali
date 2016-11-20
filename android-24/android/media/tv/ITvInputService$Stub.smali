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

.field static final TRANSACTION_createRecordingSession:I = 0x4

.field static final TRANSACTION_createSession:I = 0x3

.field static final TRANSACTION_notifyHardwareAdded:I = 0x5

.field static final TRANSACTION_notifyHardwareRemoved:I = 0x6

.field static final TRANSACTION_notifyHdmiDeviceAdded:I = 0x7

.field static final TRANSACTION_notifyHdmiDeviceRemoved:I = 0x8

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
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v8

    #@8
    return v8

    #@9
    .line 46
    :sswitch_0
    const-string/jumbo v8, "android.media.tv.ITvInputService"

    #@c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 47
    return v9

    #@10
    .line 51
    :sswitch_1
    const-string/jumbo v8, "android.media.tv.ITvInputService"

    #@13
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v8

    #@1a
    invoke-static {v8}, Landroid/media/tv/ITvInputServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputServiceCallback;

    #@1d
    move-result-object v1

    #@1e
    .line 54
    .local v1, "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputService$Stub;->registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V

    #@21
    .line 55
    return v9

    #@22
    .line 59
    .end local v1    # "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    :sswitch_2
    const-string/jumbo v8, "android.media.tv.ITvInputService"

    #@25
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b
    move-result-object v8

    #@2c
    invoke-static {v8}, Landroid/media/tv/ITvInputServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputServiceCallback;

    #@2f
    move-result-object v1

    #@30
    .line 62
    .restart local v1    # "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputService$Stub;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V

    #@33
    .line 63
    return v9

    #@34
    .line 67
    .end local v1    # "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    :sswitch_3
    const-string/jumbo v8, "android.media.tv.ITvInputService"

    #@37
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v8

    #@3e
    if-eqz v8, :cond_0

    #@40
    .line 70
    sget-object v8, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@42
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@45
    move-result-object v4

    #@46
    check-cast v4, Landroid/view/InputChannel;

    #@48
    .line 76
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4b
    move-result-object v8

    #@4c
    invoke-static {v8}, Landroid/media/tv/ITvInputSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSessionCallback;

    #@4f
    move-result-object v5

    #@50
    .line 78
    .local v5, "_arg1":Landroid/media/tv/ITvInputSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@53
    move-result-object v7

    #@54
    .line 79
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v4, v5, v7}, Landroid/media/tv/ITvInputService$Stub;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V

    #@57
    .line 80
    return v9

    #@58
    .line 73
    .end local v5    # "_arg1":Landroid/media/tv/ITvInputSessionCallback;
    .end local v7    # "_arg2":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    #@59
    .local v4, "_arg0":Landroid/view/InputChannel;
    goto :goto_0

    #@5a
    .line 84
    .end local v4    # "_arg0":Landroid/view/InputChannel;
    :sswitch_4
    const-string/jumbo v8, "android.media.tv.ITvInputService"

    #@5d
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@63
    move-result-object v8

    #@64
    invoke-static {v8}, Landroid/media/tv/ITvInputSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSessionCallback;

    #@67
    move-result-object v2

    #@68
    .line 88
    .local v2, "_arg0":Landroid/media/tv/ITvInputSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    .line 89
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v6}, Landroid/media/tv/ITvInputService$Stub;->createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;)V

    #@6f
    .line 90
    return v9

    #@70
    .line 94
    .end local v2    # "_arg0":Landroid/media/tv/ITvInputSessionCallback;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v8, "android.media.tv.ITvInputService"

    #@73
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76
    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v8

    #@7a
    if-eqz v8, :cond_1

    #@7c
    .line 97
    sget-object v8, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7e
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@81
    move-result-object v3

    #@82
    check-cast v3, Landroid/media/tv/TvInputHardwareInfo;

    #@84
    .line 102
    :goto_1
    invoke-virtual {p0, v3}, Landroid/media/tv/ITvInputService$Stub;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V

    #@87
    .line 103
    return v9

    #@88
    .line 100
    :cond_1
    const/4 v3, 0x0

    #@89
    .local v3, "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    goto :goto_1

    #@8a
    .line 107
    .end local v3    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    :sswitch_6
    const-string/jumbo v8, "android.media.tv.ITvInputService"

    #@8d
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@90
    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@93
    move-result v8

    #@94
    if-eqz v8, :cond_2

    #@96
    .line 110
    sget-object v8, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@98
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9b
    move-result-object v3

    #@9c
    check-cast v3, Landroid/media/tv/TvInputHardwareInfo;

    #@9e
    .line 115
    :goto_2
    invoke-virtual {p0, v3}, Landroid/media/tv/ITvInputService$Stub;->notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V

    #@a1
    .line 116
    return v9

    #@a2
    .line 113
    :cond_2
    const/4 v3, 0x0

    #@a3
    .restart local v3    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    goto :goto_2

    #@a4
    .line 120
    .end local v3    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    :sswitch_7
    const-string/jumbo v8, "android.media.tv.ITvInputService"

    #@a7
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aa
    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v8

    #@ae
    if-eqz v8, :cond_3

    #@b0
    .line 123
    sget-object v8, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b2
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b5
    move-result-object v0

    #@b6
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@b8
    .line 128
    :goto_3
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputService$Stub;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@bb
    .line 129
    return v9

    #@bc
    .line 126
    :cond_3
    const/4 v0, 0x0

    #@bd
    .local v0, "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_3

    #@be
    .line 133
    .end local v0    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :sswitch_8
    const-string/jumbo v8, "android.media.tv.ITvInputService"

    #@c1
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c4
    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c7
    move-result v8

    #@c8
    if-eqz v8, :cond_4

    #@ca
    .line 136
    sget-object v8, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cc
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cf
    move-result-object v0

    #@d0
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@d2
    .line 141
    :goto_4
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputService$Stub;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    #@d5
    .line 142
    return v9

    #@d6
    .line 139
    :cond_4
    const/4 v0, 0x0

    #@d7
    .restart local v0    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_4

    #@d8
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
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
