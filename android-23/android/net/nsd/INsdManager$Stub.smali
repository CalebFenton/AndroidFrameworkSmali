.class public abstract Landroid/net/nsd/INsdManager$Stub;
.super Landroid/os/Binder;
.source "INsdManager.java"

# interfaces
.implements Landroid/net/nsd/INsdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/INsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/INsdManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.nsd.INsdManager"

.field static final TRANSACTION_getMessenger:I = 0x1

.field static final TRANSACTION_setEnabled:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.net.nsd.INsdManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/nsd/INsdManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/nsd/INsdManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.net.nsd.INsdManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/nsd/INsdManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/net/nsd/INsdManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/nsd/INsdManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/nsd/INsdManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x1

    #@2
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v2

    #@9
    return v2

    #@a
    .line 47
    :sswitch_0
    const-string/jumbo v2, "android.net.nsd.INsdManager"

    #@d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    return v3

    #@11
    .line 52
    :sswitch_1
    const-string/jumbo v2, "android.net.nsd.INsdManager"

    #@14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 53
    invoke-virtual {p0}, Landroid/net/nsd/INsdManager$Stub;->getMessenger()Landroid/os/Messenger;

    #@1a
    move-result-object v1

    #@1b
    .line 54
    .local v1, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e
    .line 55
    if-eqz v1, :cond_0

    #@20
    .line 56
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 57
    invoke-virtual {v1, p3, v3}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    .line 62
    :goto_0
    return v3

    #@27
    .line 60
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    goto :goto_0

    #@2b
    .line 66
    .end local v1    # "_result":Landroid/os/Messenger;
    :sswitch_2
    const-string/jumbo v2, "android.net.nsd.INsdManager"

    #@2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_1

    #@37
    const/4 v0, 0x1

    #@38
    .line 69
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/nsd/INsdManager$Stub;->setEnabled(Z)V

    #@3b
    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e
    .line 71
    return v3

    #@3f
    .line 68
    .end local v0    # "_arg0":Z
    :cond_1
    const/4 v0, 0x0

    #@40
    .restart local v0    # "_arg0":Z
    goto :goto_1

    #@41
    .line 43
    nop

    #@42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
