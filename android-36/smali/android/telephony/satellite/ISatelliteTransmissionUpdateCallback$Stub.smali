.class public abstract Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;
.super Landroid/os/Binder;
.source "ISatelliteTransmissionUpdateCallback.java"

# interfaces
.implements Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onReceiveDatagramStateChanged:I = 0x2

.field static final blacklist TRANSACTION_onSatellitePositionChanged:I = 0x3

.field static final blacklist TRANSACTION_onSendDatagramRequested:I = 0x4

.field static final blacklist TRANSACTION_onSendDatagramStateChanged:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "android.telephony.satellite.ISatelliteTransmissionUpdateCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 77
    if-nez p0, :cond_4

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_4
    const-string v0, "android.telephony.satellite.ISatelliteTransmissionUpdateCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    if-eqz v1, :cond_14

    .line 82
    move-object v1, v0

    check-cast v1, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    return-object v1

    .line 84
    :cond_14
    new-instance v1, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 93
    packed-switch p0, :pswitch_data_12

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 109
    :pswitch_5
    const-string v0, "onSendDatagramRequested"

    return-object v0

    .line 105
    :pswitch_8
    const-string v0, "onSatellitePositionChanged"

    return-object v0

    .line 101
    :pswitch_b
    const-string v0, "onReceiveDatagramStateChanged"

    return-object v0

    .line 97
    :pswitch_e
    const-string v0, "onSendDatagramStateChanged"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 88
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 285
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 120
    invoke-static {p1}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    const-string v0, "android.telephony.satellite.ISatelliteTransmissionUpdateCallback"

    .line 125
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 129
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v1

    .line 132
    :cond_16
    packed-switch p1, :pswitch_data_64

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 171
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->onSendDatagramRequested(I)V

    .line 174
    goto :goto_62

    .line 163
    .end local v2    # "_arg0":I
    :pswitch_29
    sget-object v2, Landroid/telephony/satellite/PointingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/PointingInfo;

    .line 164
    .local v2, "_arg0":Landroid/telephony/satellite/PointingInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->onSatellitePositionChanged(Landroid/telephony/satellite/PointingInfo;)V

    .line 166
    goto :goto_62

    .line 151
    .end local v2    # "_arg0":Landroid/telephony/satellite/PointingInfo;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 155
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 156
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->onReceiveDatagramStateChanged(III)V

    .line 158
    goto :goto_62

    .line 137
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 143
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 144
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->onSendDatagramStateChanged(IIII)V

    .line 146
    nop

    .line 181
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :goto_62
    return v1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_38
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
