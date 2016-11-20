.class public abstract Landroid/net/IEthernetManager$Stub;
.super Landroid/os/Binder;
.source "IEthernetManager.java"

# interfaces
.implements Landroid/net/IEthernetManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IEthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IEthernetManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IEthernetManager"

.field static final TRANSACTION_addListener:I = 0x4

.field static final TRANSACTION_getConfiguration:I = 0x1

.field static final TRANSACTION_isAvailable:I = 0x3

.field static final TRANSACTION_removeListener:I = 0x5

.field static final TRANSACTION_setConfiguration:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.net.IEthernetManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/IEthernetManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "android.net.IEthernetManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/IEthernetManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/net/IEthernetManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IEthernetManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/IEthernetManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v4

    #@9
    return v4

    #@a
    .line 46
    :sswitch_0
    const-string/jumbo v4, "android.net.IEthernetManager"

    #@d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    return v5

    #@11
    .line 51
    :sswitch_1
    const-string/jumbo v6, "android.net.IEthernetManager"

    #@14
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 52
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getConfiguration()Landroid/net/IpConfiguration;

    #@1a
    move-result-object v2

    #@1b
    .line 53
    .local v2, "_result":Landroid/net/IpConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e
    .line 54
    if-eqz v2, :cond_0

    #@20
    .line 55
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 56
    invoke-virtual {v2, p3, v5}, Landroid/net/IpConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    .line 61
    :goto_0
    return v5

    #@27
    .line 59
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    goto :goto_0

    #@2b
    .line 65
    .end local v2    # "_result":Landroid/net/IpConfiguration;
    :sswitch_2
    const-string/jumbo v4, "android.net.IEthernetManager"

    #@2e
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_1

    #@37
    .line 68
    sget-object v4, Landroid/net/IpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@39
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Landroid/net/IpConfiguration;

    #@3f
    .line 73
    :goto_1
    invoke-virtual {p0, v1}, Landroid/net/IEthernetManager$Stub;->setConfiguration(Landroid/net/IpConfiguration;)V

    #@42
    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@45
    .line 75
    return v5

    #@46
    .line 71
    :cond_1
    const/4 v1, 0x0

    #@47
    .local v1, "_arg0":Landroid/net/IpConfiguration;
    goto :goto_1

    #@48
    .line 79
    .end local v1    # "_arg0":Landroid/net/IpConfiguration;
    :sswitch_3
    const-string/jumbo v6, "android.net.IEthernetManager"

    #@4b
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e
    .line 80
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->isAvailable()Z

    #@51
    move-result v3

    #@52
    .line 81
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@55
    .line 82
    if-eqz v3, :cond_2

    #@57
    move v4, v5

    #@58
    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    .line 83
    return v5

    #@5c
    .line 87
    .end local v3    # "_result":Z
    :sswitch_4
    const-string/jumbo v4, "android.net.IEthernetManager"

    #@5f
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62
    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@65
    move-result-object v4

    #@66
    invoke-static {v4}, Landroid/net/IEthernetServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetServiceListener;

    #@69
    move-result-object v0

    #@6a
    .line 90
    .local v0, "_arg0":Landroid/net/IEthernetServiceListener;
    invoke-virtual {p0, v0}, Landroid/net/IEthernetManager$Stub;->addListener(Landroid/net/IEthernetServiceListener;)V

    #@6d
    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@70
    .line 92
    return v5

    #@71
    .line 96
    .end local v0    # "_arg0":Landroid/net/IEthernetServiceListener;
    :sswitch_5
    const-string/jumbo v4, "android.net.IEthernetManager"

    #@74
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77
    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7a
    move-result-object v4

    #@7b
    invoke-static {v4}, Landroid/net/IEthernetServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetServiceListener;

    #@7e
    move-result-object v0

    #@7f
    .line 99
    .restart local v0    # "_arg0":Landroid/net/IEthernetServiceListener;
    invoke-virtual {p0, v0}, Landroid/net/IEthernetManager$Stub;->removeListener(Landroid/net/IEthernetServiceListener;)V

    #@82
    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@85
    .line 101
    return v5

    #@86
    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
