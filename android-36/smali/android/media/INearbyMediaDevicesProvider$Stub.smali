.class public abstract Landroid/media/INearbyMediaDevicesProvider$Stub;
.super Landroid/os/Binder;
.source "INearbyMediaDevicesProvider.java"

# interfaces
.implements Landroid/media/INearbyMediaDevicesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/INearbyMediaDevicesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/INearbyMediaDevicesProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_registerNearbyDevicesCallback:I = 0x3

.field static final blacklist TRANSACTION_unregisterNearbyDevicesCallback:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.media.INearbyMediaDevicesProvider"

    invoke-virtual {p0, p0, v0}, Landroid/media/INearbyMediaDevicesProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesProvider;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const-string v0, "android.media.INearbyMediaDevicesProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/INearbyMediaDevicesProvider;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Landroid/media/INearbyMediaDevicesProvider;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Landroid/media/INearbyMediaDevicesProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/INearbyMediaDevicesProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 65
    packed-switch p0, :pswitch_data_c

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 73
    :pswitch_5
    const-string v0, "unregisterNearbyDevicesCallback"

    return-object v0

    .line 69
    :pswitch_8
    const-string v0, "registerNearbyDevicesCallback"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x3
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 168
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 84
    invoke-static {p1}, Landroid/media/INearbyMediaDevicesProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    const-string v0, "android.media.INearbyMediaDevicesProvider"

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 93
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 96
    :cond_16
    packed-switch p1, :pswitch_data_3e

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 109
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/INearbyMediaDevicesUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesUpdateCallback;

    move-result-object v2

    .line 110
    .local v2, "_arg0":Landroid/media/INearbyMediaDevicesUpdateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2}, Landroid/media/INearbyMediaDevicesProvider$Stub;->unregisterNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V

    .line 112
    goto :goto_3c

    .line 101
    .end local v2    # "_arg0":Landroid/media/INearbyMediaDevicesUpdateCallback;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/INearbyMediaDevicesUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/INearbyMediaDevicesUpdateCallback;

    move-result-object v2

    .line 102
    .restart local v2    # "_arg0":Landroid/media/INearbyMediaDevicesUpdateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-virtual {p0, v2}, Landroid/media/INearbyMediaDevicesProvider$Stub;->registerNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V

    .line 104
    nop

    .line 119
    .end local v2    # "_arg0":Landroid/media/INearbyMediaDevicesUpdateCallback;
    :goto_3c
    return v1

    nop

    :pswitch_data_3e
    .packed-switch 0x3
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
