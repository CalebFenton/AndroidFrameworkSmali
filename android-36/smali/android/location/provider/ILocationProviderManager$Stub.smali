.class public abstract Landroid/location/provider/ILocationProviderManager$Stub;
.super Landroid/os/Binder;
.source "ILocationProviderManager.java"

# interfaces
.implements Landroid/location/provider/ILocationProviderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ILocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/ILocationProviderManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onFlushComplete:I = 0x6

.field static final blacklist TRANSACTION_onInitialize:I = 0x1

.field static final blacklist TRANSACTION_onReportLocation:I = 0x4

.field static final blacklist TRANSACTION_onReportLocations:I = 0x5

.field static final blacklist TRANSACTION_onSetAllowed:I = 0x2

.field static final blacklist TRANSACTION_onSetProperties:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.location.provider.ILocationProviderManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/provider/ILocationProviderManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/location/provider/ILocationProviderManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "android.location.provider.ILocationProviderManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/provider/ILocationProviderManager;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/location/provider/ILocationProviderManager;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Landroid/location/provider/ILocationProviderManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/provider/ILocationProviderManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_18

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 97
    :pswitch_5
    const-string v0, "onFlushComplete"

    return-object v0

    .line 93
    :pswitch_8
    const-string v0, "onReportLocations"

    return-object v0

    .line 89
    :pswitch_b
    const-string v0, "onReportLocation"

    return-object v0

    .line 85
    :pswitch_e
    const-string v0, "onSetProperties"

    return-object v0

    .line 81
    :pswitch_11
    const-string v0, "onSetAllowed"

    return-object v0

    .line 77
    :pswitch_14
    const-string v0, "onInitialize"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
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

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 300
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 108
    invoke-static {p1}, Landroid/location/provider/ILocationProviderManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 112
    const-string v0, "android.location.provider.ILocationProviderManager"

    .line 113
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 120
    :cond_16
    packed-switch p1, :pswitch_data_82

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 173
    :pswitch_1e
    invoke-virtual {p0}, Landroid/location/provider/ILocationProviderManager$Stub;->onFlushComplete()V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_81

    .line 165
    :pswitch_25
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 166
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProviderManager$Stub;->onReportLocations(Ljava/util/List;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_81

    .line 156
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    :pswitch_35
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 157
    .local v2, "_arg0":Landroid/location/Location;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProviderManager$Stub;->onReportLocation(Landroid/location/Location;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_81

    .line 147
    .end local v2    # "_arg0":Landroid/location/Location;
    :pswitch_47
    sget-object v2, Landroid/location/provider/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/provider/ProviderProperties;

    .line 148
    .local v2, "_arg0":Landroid/location/provider/ProviderProperties;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProviderManager$Stub;->onSetProperties(Landroid/location/provider/ProviderProperties;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_81

    .line 138
    .end local v2    # "_arg0":Landroid/location/provider/ProviderProperties;
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 139
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2}, Landroid/location/provider/ILocationProviderManager$Stub;->onSetAllowed(Z)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    goto :goto_81

    .line 125
    .end local v2    # "_arg0":Z
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 127
    .restart local v2    # "_arg0":Z
    sget-object v3, Landroid/location/provider/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/provider/ProviderProperties;

    .line 129
    .local v3, "_arg1":Landroid/location/provider/ProviderProperties;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2, v3, v4}, Landroid/location/provider/ILocationProviderManager$Stub;->onInitialize(ZLandroid/location/provider/ProviderProperties;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    nop

    .line 182
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/location/provider/ProviderProperties;
    .end local v4    # "_arg2":Ljava/lang/String;
    :goto_81
    return v1

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_67
        :pswitch_59
        :pswitch_47
        :pswitch_35
        :pswitch_25
        :pswitch_1e
    .end packed-switch
.end method
