.class public abstract Landroid/provider/IOemMetadataService$Stub;
.super Landroid/os/Binder;
.source "IOemMetadataService.java"

# interfaces
.implements Landroid/provider/IOemMetadataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/IOemMetadataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/IOemMetadataService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getOemCustomData:I = 0x2

.field static final blacklist TRANSACTION_getSupportedMimeTypes:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.provider.IOemMetadataService"

    invoke-virtual {p0, p0, v0}, Landroid/provider/IOemMetadataService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/provider/IOemMetadataService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.provider.IOemMetadataService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/provider/IOemMetadataService;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/provider/IOemMetadataService;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/provider/IOemMetadataService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/provider/IOemMetadataService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_c

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 76
    :pswitch_5
    const-string v0, "getOemCustomData"

    return-object v0

    .line 72
    :pswitch_8
    const-string v0, "getSupportedMimeTypes"

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

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 87
    invoke-static {p1}, Landroid/provider/IOemMetadataService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 91
    const-string v0, "android.provider.IOemMetadataService"

    .line 92
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 99
    :cond_16
    packed-switch p1, :pswitch_data_40

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 111
    :pswitch_1e
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 113
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 114
    .local v3, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v2, v3}, Landroid/provider/IOemMetadataService$Stub;->getOemCustomData(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 115
    goto :goto_3e

    .line 104
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_32
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 105
    .local v2, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v2}, Landroid/provider/IOemMetadataService$Stub;->getSupportedMimeTypes(Landroid/os/RemoteCallback;)V

    .line 106
    nop

    .line 122
    .end local v2    # "_arg0":Landroid/os/RemoteCallback;
    :goto_3e
    return v1

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_32
        :pswitch_1e
    .end packed-switch
.end method
