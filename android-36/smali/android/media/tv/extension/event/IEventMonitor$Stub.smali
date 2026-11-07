.class public abstract Landroid/media/tv/extension/event/IEventMonitor$Stub;
.super Landroid/os/Binder;
.source "IEventMonitor.java"

# interfaces
.implements Landroid/media/tv/extension/event/IEventMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/event/IEventMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/event/IEventMonitor$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addFollowingEventInfoListener:I = 0x5

.field static final blacklist TRANSACTION_addPresentEventInfoListener:I = 0x2

.field static final blacklist TRANSACTION_getFollowingEventInfo:I = 0x4

.field static final blacklist TRANSACTION_getPresentEventInfo:I = 0x1

.field static final blacklist TRANSACTION_getSdtGuidanceInfo:I = 0x7

.field static final blacklist TRANSACTION_removeFollowingEventInfoListener:I = 0x6

.field static final blacklist TRANSACTION_removePresentEventInfoListener:I = 0x3

.field static final blacklist TRANSACTION_setBgmTuneChannelInfo:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.media.tv.extension.event.IEventMonitor"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/event/IEventMonitor;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "android.media.tv.extension.event.IEventMonitor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/event/IEventMonitor;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/event/IEventMonitor;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Landroid/media/tv/extension/event/IEventMonitor$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/event/IEventMonitor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 87
    packed-switch p0, :pswitch_data_22

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 119
    :pswitch_5
    const-string/jumbo v0, "setBgmTuneChannelInfo"

    return-object v0

    .line 115
    :pswitch_9
    const-string/jumbo v0, "getSdtGuidanceInfo"

    return-object v0

    .line 111
    :pswitch_d
    const-string/jumbo v0, "removeFollowingEventInfoListener"

    return-object v0

    .line 107
    :pswitch_11
    const-string v0, "addFollowingEventInfoListener"

    return-object v0

    .line 103
    :pswitch_14
    const-string v0, "getFollowingEventInfo"

    return-object v0

    .line 99
    :pswitch_17
    const-string/jumbo v0, "removePresentEventInfoListener"

    return-object v0

    .line 95
    :pswitch_1b
    const-string v0, "addPresentEventInfoListener"

    return-object v0

    .line 91
    :pswitch_1e
    const-string v0, "getPresentEventInfo"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 390
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 130
    invoke-static {p1}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    const-string v0, "android.media.tv.extension.event.IEventMonitor"

    .line 135
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 139
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v1

    .line 142
    :cond_16
    packed-switch p1, :pswitch_data_b0

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 213
    :pswitch_1e
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    .line 214
    .local v2, "_arg0":[Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->setBgmTuneChannelInfo([Landroid/net/Uri;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto/16 :goto_af

    .line 203
    .end local v2    # "_arg0":[Landroid/net/Uri;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 204
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->getSdtGuidanceInfo(J)Landroid/os/Bundle;

    move-result-object v4

    .line 206
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 208
    goto :goto_af

    .line 194
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/event/IEventMonitorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/event/IEventMonitorListener;

    move-result-object v2

    .line 195
    .local v2, "_arg0":Landroid/media/tv/extension/event/IEventMonitorListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->removeFollowingEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_af

    .line 185
    .end local v2    # "_arg0":Landroid/media/tv/extension/event/IEventMonitorListener;
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/event/IEventMonitorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/event/IEventMonitorListener;

    move-result-object v2

    .line 186
    .restart local v2    # "_arg0":Landroid/media/tv/extension/event/IEventMonitorListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->addFollowingEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_af

    .line 175
    .end local v2    # "_arg0":Landroid/media/tv/extension/event/IEventMonitorListener;
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 176
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->getFollowingEventInfo(J)Landroid/os/Bundle;

    move-result-object v4

    .line 178
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 180
    goto :goto_af

    .line 166
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/event/IEventMonitorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/event/IEventMonitorListener;

    move-result-object v2

    .line 167
    .local v2, "_arg0":Landroid/media/tv/extension/event/IEventMonitorListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->removePresentEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_af

    .line 157
    .end local v2    # "_arg0":Landroid/media/tv/extension/event/IEventMonitorListener;
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/event/IEventMonitorListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/event/IEventMonitorListener;

    move-result-object v2

    .line 158
    .restart local v2    # "_arg0":Landroid/media/tv/extension/event/IEventMonitorListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->addPresentEventInfoListener(Landroid/media/tv/extension/event/IEventMonitorListener;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_af

    .line 147
    .end local v2    # "_arg0":Landroid/media/tv/extension/event/IEventMonitorListener;
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 148
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/event/IEventMonitor$Stub;->getPresentEventInfo(J)Landroid/os/Bundle;

    move-result-object v4

    .line 150
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 152
    nop

    .line 224
    .end local v2    # "_arg0":J
    .end local v4    # "_result":Landroid/os/Bundle;
    :goto_af
    return v1

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_8b
        :pswitch_79
        :pswitch_67
        :pswitch_55
        :pswitch_43
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
