.class public abstract Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;
.super Landroid/os/Binder;
.source "ISatelliteDatagramCallback.java"

# interfaces
.implements Landroid/telephony/satellite/ISatelliteDatagramCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/ISatelliteDatagramCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onSatelliteDatagramReceived:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.telephony.satellite.ISatelliteDatagramCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDatagramCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.telephony.satellite.ISatelliteDatagramCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/satellite/ISatelliteDatagramCallback;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/telephony/satellite/ISatelliteDatagramCallback;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_8

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 72
    :pswitch_5
    const-string v0, "onSatelliteDatagramReceived"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 83
    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 87
    const-string v0, "android.telephony.satellite.ISatelliteDatagramCallback"

    .line 88
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 89
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 92
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return v1

    .line 95
    :cond_16
    packed-switch p1, :pswitch_data_40

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 100
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 102
    .local v4, "_arg0":J
    sget-object v2, Landroid/telephony/satellite/SatelliteDatagram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/telephony/satellite/SatelliteDatagram;

    .line 104
    .local v6, "_arg1":Landroid/telephony/satellite/SatelliteDatagram;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 106
    .local v7, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IVoidConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IVoidConsumer;

    move-result-object v8

    .line 107
    .local v8, "_arg3":Lcom/android/internal/telephony/IVoidConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;->onSatelliteDatagramReceived(JLandroid/telephony/satellite/SatelliteDatagram;ILcom/android/internal/telephony/IVoidConsumer;)V

    .line 109
    nop

    .line 116
    .end local v4    # "_arg0":J
    .end local v6    # "_arg1":Landroid/telephony/satellite/SatelliteDatagram;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Lcom/android/internal/telephony/IVoidConsumer;
    return v1

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
