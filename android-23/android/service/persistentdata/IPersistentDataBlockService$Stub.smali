.class public abstract Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.super Landroid/os/Binder;
.source "IPersistentDataBlockService.java"

# interfaces
.implements Landroid/service/persistentdata/IPersistentDataBlockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/persistentdata/IPersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.persistentdata.IPersistentDataBlockService"

.field static final TRANSACTION_getDataBlockSize:I = 0x4

.field static final TRANSACTION_getMaximumDataBlockSize:I = 0x5

.field static final TRANSACTION_getOemUnlockEnabled:I = 0x7

.field static final TRANSACTION_read:I = 0x2

.field static final TRANSACTION_setOemUnlockEnabled:I = 0x6

.field static final TRANSACTION_wipe:I = 0x3

.field static final TRANSACTION_write:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 23
    const-string/jumbo v0, "android.service.persistentdata.IPersistentDataBlockService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 31
    if-nez p0, :cond_0

    #@3
    .line 32
    return-object v1

    #@4
    .line 34
    :cond_0
    const-string/jumbo v1, "android.service.persistentdata.IPersistentDataBlockService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/persistentdata/IPersistentDataBlockService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 36
    check-cast v0, Landroid/service/persistentdata/IPersistentDataBlockService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 38
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 46
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v7

    #@9
    return v7

    #@a
    .line 50
    :sswitch_0
    const-string/jumbo v7, "android.service.persistentdata.IPersistentDataBlockService"

    #@d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 51
    return v8

    #@11
    .line 55
    :sswitch_1
    const-string/jumbo v7, "android.service.persistentdata.IPersistentDataBlockService"

    #@14
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@1a
    move-result-object v1

    #@1b
    .line 58
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->write([B)I

    #@1e
    move-result v2

    #@1f
    .line 59
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@22
    .line 60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 61
    return v8

    #@26
    .line 65
    .end local v1    # "_arg0":[B
    .end local v2    # "_result":I
    :sswitch_2
    const-string/jumbo v7, "android.service.persistentdata.IPersistentDataBlockService"

    #@29
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    .line 66
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->read()[B

    #@2f
    move-result-object v6

    #@30
    .line 67
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@33
    .line 68
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    #@36
    .line 69
    return v8

    #@37
    .line 73
    .end local v6    # "_result":[B
    :sswitch_3
    const-string/jumbo v7, "android.service.persistentdata.IPersistentDataBlockService"

    #@3a
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d
    .line 74
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->wipe()V

    #@40
    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@43
    .line 76
    return v8

    #@44
    .line 80
    :sswitch_4
    const-string/jumbo v7, "android.service.persistentdata.IPersistentDataBlockService"

    #@47
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a
    .line 81
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getDataBlockSize()I

    #@4d
    move-result v2

    #@4e
    .line 82
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@51
    .line 83
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@54
    .line 84
    return v8

    #@55
    .line 88
    .end local v2    # "_result":I
    :sswitch_5
    const-string/jumbo v7, "android.service.persistentdata.IPersistentDataBlockService"

    #@58
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b
    .line 89
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getMaximumDataBlockSize()J

    #@5e
    move-result-wide v4

    #@5f
    .line 90
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@62
    .line 91
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@65
    .line 92
    return v8

    #@66
    .line 96
    .end local v4    # "_result":J
    :sswitch_6
    const-string/jumbo v7, "android.service.persistentdata.IPersistentDataBlockService"

    #@69
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c
    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v7

    #@70
    if-eqz v7, :cond_0

    #@72
    const/4 v0, 0x1

    #@73
    .line 99
    .local v0, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->setOemUnlockEnabled(Z)V

    #@76
    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@79
    .line 101
    return v8

    #@7a
    .line 98
    .end local v0    # "_arg0":Z
    :cond_0
    const/4 v0, 0x0

    #@7b
    .restart local v0    # "_arg0":Z
    goto :goto_0

    #@7c
    .line 105
    .end local v0    # "_arg0":Z
    :sswitch_7
    const-string/jumbo v9, "android.service.persistentdata.IPersistentDataBlockService"

    #@7f
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@82
    .line 106
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getOemUnlockEnabled()Z

    #@85
    move-result v3

    #@86
    .line 107
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@89
    .line 108
    if-eqz v3, :cond_1

    #@8b
    move v7, v8

    #@8c
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@8f
    .line 109
    return v8

    #@90
    .line 46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
