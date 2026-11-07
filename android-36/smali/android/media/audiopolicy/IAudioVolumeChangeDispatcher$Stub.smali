.class public abstract Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub;
.super Landroid/os/Binder;
.source "IAudioVolumeChangeDispatcher.java"

# interfaces
.implements Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAudioVolumeGroupChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.media.audiopolicy.IAudioVolumeChangeDispatcher"

    invoke-virtual {p0, p0, v0}, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "android.media.audiopolicy.IAudioVolumeChangeDispatcher"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_8

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 68
    :pswitch_5
    const-string v0, "onAudioVolumeGroupChanged"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 79
    invoke-static {p1}, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 83
    const-string v0, "android.media.audiopolicy.IAudioVolumeChangeDispatcher"

    .line 84
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v1

    .line 91
    :cond_16
    packed-switch p1, :pswitch_data_2e

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 96
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 99
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 100
    invoke-virtual {p0, v2, v3}, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher$Stub;->onAudioVolumeGroupChanged(II)V

    .line 101
    nop

    .line 108
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    return v1

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
