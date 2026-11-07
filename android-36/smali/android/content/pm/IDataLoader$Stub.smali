.class public abstract Landroid/content/pm/IDataLoader$Stub;
.super Landroid/os/Binder;
.source "IDataLoader.java"

# interfaces
.implements Landroid/content/pm/IDataLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IDataLoader$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_create:I = 0x1

.field static final blacklist TRANSACTION_destroy:I = 0x4

.field static final blacklist TRANSACTION_prepareImage:I = 0x5

.field static final blacklist TRANSACTION_start:I = 0x2

.field static final blacklist TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.content.pm.IDataLoader"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IDataLoader$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDataLoader;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "android.content.pm.IDataLoader"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IDataLoader;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IDataLoader;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Landroid/content/pm/IDataLoader$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IDataLoader$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_18

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 87
    :pswitch_5
    const-string/jumbo v0, "prepareImage"

    return-object v0

    .line 83
    :pswitch_9
    const-string v0, "destroy"

    return-object v0

    .line 79
    :pswitch_c
    const-string/jumbo v0, "stop"

    return-object v0

    .line 75
    :pswitch_10
    const-string/jumbo v0, "start"

    return-object v0

    .line 71
    :pswitch_14
    const-string v0, "create"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 258
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 98
    invoke-static {p1}, Landroid/content/pm/IDataLoader$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 102
    const-string v0, "android.content.pm.IDataLoader"

    .line 103
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 107
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 110
    :cond_16
    packed-switch p1, :pswitch_data_7a

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 153
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, "_arg0":I
    sget-object v3, Landroid/content/pm/InstallationFileParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/InstallationFileParcel;

    .line 157
    .local v3, "_arg1":[Landroid/content/pm/InstallationFileParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "_arg2":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IDataLoader$Stub;->prepareImage(I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)V

    .line 160
    goto :goto_79

    .line 145
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/content/pm/InstallationFileParcel;
    .end local v4    # "_arg2":[Ljava/lang/String;
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 146
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2}, Landroid/content/pm/IDataLoader$Stub;->destroy(I)V

    .line 148
    goto :goto_79

    .line 137
    .end local v2    # "_arg0":I
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2}, Landroid/content/pm/IDataLoader$Stub;->stop(I)V

    .line 140
    goto :goto_79

    .line 129
    .end local v2    # "_arg0":I
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2}, Landroid/content/pm/IDataLoader$Stub;->start(I)V

    .line 132
    goto :goto_79

    .line 115
    .end local v2    # "_arg0":I
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/pm/DataLoaderParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/DataLoaderParamsParcel;

    .line 119
    .local v3, "_arg1":Landroid/content/pm/DataLoaderParamsParcel;
    sget-object v4, Landroid/content/pm/FileSystemControlParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/FileSystemControlParcel;

    .line 121
    .local v4, "_arg2":Landroid/content/pm/FileSystemControlParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IDataLoaderStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDataLoaderStatusListener;

    move-result-object v5

    .line 122
    .local v5, "_arg3":Landroid/content/pm/IDataLoaderStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/content/pm/IDataLoader$Stub;->create(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/FileSystemControlParcel;Landroid/content/pm/IDataLoaderStatusListener;)V

    .line 124
    nop

    .line 167
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/pm/DataLoaderParamsParcel;
    .end local v4    # "_arg2":Landroid/content/pm/FileSystemControlParcel;
    .end local v5    # "_arg3":Landroid/content/pm/IDataLoaderStatusListener;
    :goto_79
    return v1

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_56
        :pswitch_4b
        :pswitch_40
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
