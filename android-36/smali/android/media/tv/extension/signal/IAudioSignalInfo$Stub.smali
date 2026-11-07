.class public abstract Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;
.super Landroid/os/Binder;
.source "IAudioSignalInfo.java"

# interfaces
.implements Landroid/media/tv/extension/signal/IAudioSignalInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/signal/IAudioSignalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAudioSignalInfoListener:I = 0x4

.field static final blacklist TRANSACTION_getAudioSignalInfo:I = 0x1

.field static final blacklist TRANSACTION_getMtsSelectedTrackId:I = 0x3

.field static final blacklist TRANSACTION_notifyMtsSelectTrackFlag:I = 0x2

.field static final blacklist TRANSACTION_removeAudioSignalInfoListener:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.media.tv.extension.signal.IAudioSignalInfo"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/IAudioSignalInfo;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    const-string v0, "android.media.tv.extension.signal.IAudioSignalInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/signal/IAudioSignalInfo;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/signal/IAudioSignalInfo;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_16

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 94
    :pswitch_5
    const-string/jumbo v0, "removeAudioSignalInfoListener"

    return-object v0

    .line 90
    :pswitch_9
    const-string v0, "addAudioSignalInfoListener"

    return-object v0

    .line 86
    :pswitch_c
    const-string v0, "getMtsSelectedTrackId"

    return-object v0

    .line 82
    :pswitch_f
    const-string/jumbo v0, "notifyMtsSelectTrackFlag"

    return-object v0

    .line 78
    :pswitch_13
    const-string v0, "getAudioSignalInfo"

    return-object v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 282
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 105
    invoke-static {p1}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    const-string v0, "android.media.tv.extension.signal.IAudioSignalInfo"

    .line 110
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_16
    packed-switch p1, :pswitch_data_72

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 159
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/extension/signal/IAudioSignalInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/IAudioSignalInfoListener;

    move-result-object v2

    .line 160
    .local v2, "_arg0":Landroid/media/tv/extension/signal/IAudioSignalInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;->removeAudioSignalInfoListener(Landroid/media/tv/extension/signal/IAudioSignalInfoListener;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_71

    .line 148
    .end local v2    # "_arg0":Landroid/media/tv/extension/signal/IAudioSignalInfoListener;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/tv/extension/signal/IAudioSignalInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/signal/IAudioSignalInfoListener;

    move-result-object v3

    .line 151
    .local v3, "_arg1":Landroid/media/tv/extension/signal/IAudioSignalInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;->addAudioSignalInfoListener(Ljava/lang/String;Landroid/media/tv/extension/signal/IAudioSignalInfoListener;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    goto :goto_71

    .line 140
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/media/tv/extension/signal/IAudioSignalInfoListener;
    :pswitch_46
    invoke-virtual {p0}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;->getMtsSelectedTrackId()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    goto :goto_71

    .line 132
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 133
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;->notifyMtsSelectTrackFlag(Z)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    goto :goto_71

    .line 122
    .end local v2    # "_arg0":Z
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/signal/IAudioSignalInfo$Stub;->getAudioSignalInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 125
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 127
    nop

    .line 170
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :goto_71
    return v1

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_51
        :pswitch_46
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
