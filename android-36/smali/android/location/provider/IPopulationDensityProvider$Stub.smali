.class public abstract Landroid/location/provider/IPopulationDensityProvider$Stub;
.super Landroid/os/Binder;
.source "IPopulationDensityProvider.java"

# interfaces
.implements Landroid/location/provider/IPopulationDensityProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/IPopulationDensityProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/IPopulationDensityProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCoarsenedS2Cells:I = 0x2

.field static final blacklist TRANSACTION_getDefaultCoarseningLevel:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.location.provider.IPopulationDensityProvider"

    invoke-virtual {p0, p0, v0}, Landroid/location/provider/IPopulationDensityProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/location/provider/IPopulationDensityProvider;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "android.location.provider.IPopulationDensityProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/provider/IPopulationDensityProvider;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/location/provider/IPopulationDensityProvider;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Landroid/location/provider/IPopulationDensityProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/provider/IPopulationDensityProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_c

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_5
    const-string v0, "getCoarsenedS2Cells"

    return-object v0

    .line 76
    :pswitch_8
    const-string v0, "getDefaultCoarseningLevel"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
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

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Landroid/location/provider/IPopulationDensityProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const-string v0, "android.location.provider.IPopulationDensityProvider"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 103
    :cond_16
    packed-switch p1, :pswitch_data_4c

    .line 129
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 116
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 118
    .local v4, "_arg0":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 120
    .local v6, "_arg1":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 122
    .local v8, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/provider/IS2CellIdsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IS2CellIdsCallback;

    move-result-object v9

    .line 123
    .local v9, "_arg3":Landroid/location/provider/IS2CellIdsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/location/provider/IPopulationDensityProvider$Stub;->getCoarsenedS2Cells(DDILandroid/location/provider/IS2CellIdsCallback;)V

    .line 125
    goto :goto_4b

    .line 108
    .end local v4    # "_arg0":D
    .end local v6    # "_arg1":D
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/location/provider/IS2CellIdsCallback;
    :pswitch_3b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/provider/IS2LevelCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IS2LevelCallback;

    move-result-object v2

    .line 109
    .local v2, "_arg0":Landroid/location/provider/IS2LevelCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2}, Landroid/location/provider/IPopulationDensityProvider$Stub;->getDefaultCoarseningLevel(Landroid/location/provider/IS2LevelCallback;)V

    .line 111
    nop

    .line 132
    .end local v2    # "_arg0":Landroid/location/provider/IS2LevelCallback;
    :goto_4b
    return v1

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_1f
    .end packed-switch
.end method
