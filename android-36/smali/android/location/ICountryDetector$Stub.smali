.class public abstract Landroid/location/ICountryDetector$Stub;
.super Landroid/os/Binder;
.source "ICountryDetector.java"

# interfaces
.implements Landroid/location/ICountryDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ICountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ICountryDetector$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.location.ICountryDetector"

.field static final greylist-max-o TRANSACTION_addCountryListener:I = 0x2

.field static final greylist-max-o TRANSACTION_detectCountry:I = 0x1

.field static final greylist-max-o TRANSACTION_removeCountryListener:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.location.ICountryDetector"

    invoke-virtual {p0, p0, v0}, Landroid/location/ICountryDetector$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/location/ICountryDetector;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "android.location.ICountryDetector"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/ICountryDetector;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/location/ICountryDetector;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Landroid/location/ICountryDetector$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ICountryDetector$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_e

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string v0, "removeCountryListener"

    return-object v0

    .line 80
    :pswitch_8
    const-string v0, "addCountryListener"

    return-object v0

    .line 76
    :pswitch_b
    const-string v0, "detectCountry"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 218
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/location/ICountryDetector$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    const-string v0, "android.location.ICountryDetector"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_16
    packed-switch p1, :pswitch_data_4e

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 128
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ICountryListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ICountryListener;

    move-result-object v2

    .line 129
    .local v2, "_arg0":Landroid/location/ICountryListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2}, Landroid/location/ICountryDetector$Stub;->removeCountryListener(Landroid/location/ICountryListener;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    goto :goto_4d

    .line 119
    .end local v2    # "_arg0":Landroid/location/ICountryListener;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ICountryListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ICountryListener;

    move-result-object v2

    .line 120
    .restart local v2    # "_arg0":Landroid/location/ICountryListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Landroid/location/ICountryDetector$Stub;->addCountryListener(Landroid/location/ICountryListener;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    goto :goto_4d

    .line 111
    .end local v2    # "_arg0":Landroid/location/ICountryListener;
    :pswitch_42
    invoke-virtual {p0}, Landroid/location/ICountryDetector$Stub;->detectCountry()Landroid/location/Country;

    move-result-object v2

    .line 112
    .local v2, "_result":Landroid/location/Country;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 114
    nop

    .line 139
    .end local v2    # "_result":Landroid/location/Country;
    :goto_4d
    return v1

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_42
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
