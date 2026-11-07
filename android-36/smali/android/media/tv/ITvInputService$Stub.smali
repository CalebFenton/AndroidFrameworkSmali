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
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputService"

.field static final greylist-max-o TRANSACTION_createRecordingSession:I = 0x4

.field static final greylist-max-o TRANSACTION_createSession:I = 0x3

.field static final blacklist TRANSACTION_getAvailableExtensionInterfaceNames:I = 0x5

.field static final blacklist TRANSACTION_getExtensionInterface:I = 0x6

.field static final blacklist TRANSACTION_getExtensionInterfacePermission:I = 0x7

.field static final greylist-max-o TRANSACTION_notifyHardwareAdded:I = 0x8

.field static final greylist-max-o TRANSACTION_notifyHardwareRemoved:I = 0x9

.field static final greylist-max-o TRANSACTION_notifyHdmiDeviceAdded:I = 0xa

.field static final greylist-max-o TRANSACTION_notifyHdmiDeviceRemoved:I = 0xb

.field static final blacklist TRANSACTION_notifyHdmiDeviceUpdated:I = 0xc

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x1

.field static final greylist-max-o TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.media.tv.ITvInputService"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_4
    const-string v0, "android.media.tv.ITvInputService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ITvInputService;

    if-eqz v1, :cond_14

    .line 84
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputService;

    return-object v1

    .line 86
    :cond_14
    new-instance v1, Landroid/media/tv/ITvInputService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 95
    packed-switch p0, :pswitch_data_2a

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 143
    :pswitch_5
    const-string v0, "notifyHdmiDeviceUpdated"

    return-object v0

    .line 139
    :pswitch_8
    const-string v0, "notifyHdmiDeviceRemoved"

    return-object v0

    .line 135
    :pswitch_b
    const-string v0, "notifyHdmiDeviceAdded"

    return-object v0

    .line 131
    :pswitch_e
    const-string v0, "notifyHardwareRemoved"

    return-object v0

    .line 127
    :pswitch_11
    const-string v0, "notifyHardwareAdded"

    return-object v0

    .line 123
    :pswitch_14
    const-string v0, "getExtensionInterfacePermission"

    return-object v0

    .line 119
    :pswitch_17
    const-string v0, "getExtensionInterface"

    return-object v0

    .line 115
    :pswitch_1a
    const-string v0, "getAvailableExtensionInterfaceNames"

    return-object v0

    .line 111
    :pswitch_1d
    const-string v0, "createRecordingSession"

    return-object v0

    .line 107
    :pswitch_20
    const-string v0, "createSession"

    return-object v0

    .line 103
    :pswitch_23
    const-string v0, "unregisterCallback"

    return-object v0

    .line 99
    :pswitch_26
    const-string v0, "registerCallback"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 487
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 154
    invoke-static {p1}, Landroid/media/tv/ITvInputService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const-string v0, "android.media.tv.ITvInputService"

    .line 159
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 160
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 163
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return v1

    .line 166
    :cond_16
    packed-switch p1, :pswitch_data_10c

    .line 281
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 274
    :pswitch_1f
    sget-object v2, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 275
    .local v2, "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->notifyHdmiDeviceUpdated(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 277
    move-object v3, p0

    goto/16 :goto_10a

    .line 266
    .end local v2    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_30
    sget-object v2, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 267
    .restart local v2    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 269
    move-object v3, p0

    goto/16 :goto_10a

    .line 258
    .end local v2    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_41
    sget-object v2, Landroid/hardware/hdmi/HdmiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 259
    .restart local v2    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 261
    move-object v3, p0

    goto/16 :goto_10a

    .line 250
    .end local v2    # "_arg0":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_52
    sget-object v2, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputHardwareInfo;

    .line 251
    .local v2, "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V

    .line 253
    move-object v3, p0

    goto/16 :goto_10a

    .line 242
    .end local v2    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    :pswitch_63
    sget-object v2, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/TvInputHardwareInfo;

    .line 243
    .restart local v2    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V

    .line 245
    move-object v3, p0

    goto/16 :goto_10a

    .line 232
    .end local v2    # "_arg0":Landroid/media/tv/TvInputHardwareInfo;
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->getExtensionInterfacePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    move-object v3, p0

    goto/16 :goto_10a

    .line 222
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->getExtensionInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 225
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 227
    move-object v3, p0

    goto/16 :goto_10a

    .line 214
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_9c
    invoke-virtual {p0}, Landroid/media/tv/ITvInputService$Stub;->getAvailableExtensionInterfaceNames()Ljava/util/List;

    move-result-object v2

    .line 215
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 217
    move-object v3, p0

    goto :goto_10a

    .line 203
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v2

    .line 205
    .local v2, "_arg0":Landroid/media/tv/ITvInputSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/tv/ITvInputService$Stub;->createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    move-object v3, p0

    goto :goto_10a

    .line 187
    .end local v2    # "_arg0":Landroid/media/tv/ITvInputSessionCallback;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_c0
    sget-object v2, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/InputChannel;

    .line 189
    .local v4, "_arg0":Landroid/view/InputChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ITvInputSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v5

    .line 191
    .local v5, "_arg1":Landroid/media/tv/ITvInputSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, "_arg3":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/content/AttributionSource;

    .line 196
    .local v8, "_arg4":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/media/tv/ITvInputService$Stub;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 198
    goto :goto_10a

    .line 179
    .end local v4    # "_arg0":Landroid/view/InputChannel;
    .end local v5    # "_arg1":Landroid/media/tv/ITvInputSessionCallback;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":Landroid/content/AttributionSource;
    :pswitch_ea
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ITvInputServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputServiceCallback;

    move-result-object v2

    .line 180
    .local v2, "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V

    .line 182
    goto :goto_10a

    .line 171
    .end local v2    # "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    :pswitch_fa
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/ITvInputServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputServiceCallback;

    move-result-object v2

    .line 172
    .restart local v2    # "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Landroid/media/tv/ITvInputService$Stub;->registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V

    .line 174
    nop

    .line 284
    .end local v2    # "_arg0":Landroid/media/tv/ITvInputServiceCallback;
    :goto_10a
    return v1

    nop

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_fa
        :pswitch_ea
        :pswitch_c0
        :pswitch_a8
        :pswitch_9c
        :pswitch_88
        :pswitch_74
        :pswitch_63
        :pswitch_52
        :pswitch_41
        :pswitch_30
        :pswitch_1f
    .end packed-switch
.end method
