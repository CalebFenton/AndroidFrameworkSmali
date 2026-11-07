.class public abstract Landroid/content/pm/IDataLoaderManager$Stub;
.super Landroid/os/Binder;
.source "IDataLoaderManager.java"

# interfaces
.implements Landroid/content/pm/IDataLoaderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IDataLoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IDataLoaderManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_bindToDataLoader:I = 0x1

.field static final blacklist TRANSACTION_getDataLoader:I = 0x2

.field static final blacklist TRANSACTION_unbindFromDataLoader:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.content.pm.IDataLoaderManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IDataLoaderManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDataLoaderManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "android.content.pm.IDataLoaderManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IDataLoaderManager;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IDataLoaderManager;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Landroid/content/pm/IDataLoaderManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IDataLoaderManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_10

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 75
    :pswitch_5
    const-string/jumbo v0, "unbindFromDataLoader"

    return-object v0

    .line 71
    :pswitch_9
    const-string v0, "getDataLoader"

    return-object v0

    .line 67
    :pswitch_c
    const-string v0, "bindToDataLoader"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
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

    .line 86
    invoke-static {p1}, Landroid/content/pm/IDataLoaderManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 90
    const-string v0, "android.content.pm.IDataLoaderManager"

    .line 91
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 95
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v1

    .line 98
    :cond_16
    packed-switch p1, :pswitch_data_68

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 129
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2}, Landroid/content/pm/IDataLoaderManager$Stub;->unbindFromDataLoader(I)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    goto :goto_66

    .line 119
    .end local v2    # "_arg0":I
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Landroid/content/pm/IDataLoaderManager$Stub;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    move-result-object v3

    .line 122
    .local v3, "_result":Landroid/content/pm/IDataLoader;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 124
    goto :goto_66

    .line 103
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/pm/IDataLoader;
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 105
    .local v5, "_arg0":I
    sget-object v2, Landroid/content/pm/DataLoaderParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/pm/DataLoaderParamsParcel;

    .line 107
    .local v6, "_arg1":Landroid/content/pm/DataLoaderParamsParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 109
    .local v7, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IDataLoaderStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDataLoaderStatusListener;

    move-result-object v9

    .line 110
    .local v9, "_arg3":Landroid/content/pm/IDataLoaderStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/IDataLoaderManager$Stub;->bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z

    move-result v2

    .line 112
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 114
    nop

    .line 140
    .end local v2    # "_result":Z
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Landroid/content/pm/DataLoaderParamsParcel;
    .end local v7    # "_arg2":J
    .end local v9    # "_arg3":Landroid/content/pm/IDataLoaderStatusListener;
    :goto_66
    return v1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_2c
        :pswitch_1e
    .end packed-switch
.end method
