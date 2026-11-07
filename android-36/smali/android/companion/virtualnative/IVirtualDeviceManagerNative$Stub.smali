.class public abstract Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;
.super Landroid/os/Binder;
.source "IVirtualDeviceManagerNative.java"

# interfaces
.implements Landroid/companion/virtualnative/IVirtualDeviceManagerNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtualnative/IVirtualDeviceManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDeviceIdForDisplayId:I = 0x3

.field static final blacklist TRANSACTION_getDeviceIdsForUid:I = 0x1

.field static final blacklist TRANSACTION_getDevicePolicy:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.companion.virtualnative.IVirtualDeviceManagerNative"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtualnative/IVirtualDeviceManagerNative;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_4
    const-string v0, "android.companion.virtualnative.IVirtualDeviceManagerNative"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/companion/virtualnative/IVirtualDeviceManagerNative;

    if-eqz v1, :cond_14

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/companion/virtualnative/IVirtualDeviceManagerNative;

    return-object v1

    .line 81
    :cond_14
    new-instance v1, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 90
    packed-switch p0, :pswitch_data_e

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 102
    :pswitch_5
    const-string v0, "getDeviceIdForDisplayId"

    return-object v0

    .line 98
    :pswitch_8
    const-string v0, "getDevicePolicy"

    return-object v0

    .line 94
    :pswitch_b
    const-string v0, "getDeviceIdsForUid"

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

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 252
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 113
    invoke-static {p1}, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 117
    const-string v0, "android.companion.virtualnative.IVirtualDeviceManagerNative"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 125
    :cond_16
    packed-switch p1, :pswitch_data_5a

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 152
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2}, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;->getDeviceIdForDisplayId(I)I

    move-result v3

    .line 155
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    goto :goto_58

    .line 140
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 143
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2, v3}, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;->getDevicePolicy(II)I

    move-result v4

    .line 145
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    goto :goto_58

    .line 130
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2}, Landroid/companion/virtualnative/IVirtualDeviceManagerNative$Stub;->getDeviceIdsForUid(I)[I

    move-result-object v3

    .line 133
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 135
    nop

    .line 164
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[I
    :goto_58
    return v1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_46
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
