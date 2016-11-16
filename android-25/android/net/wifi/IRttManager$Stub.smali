.class public abstract Landroid/net/wifi/IRttManager$Stub;
.super Landroid/os/Binder;
.source "IRttManager.java"

# interfaces
.implements Landroid/net/wifi/IRttManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IRttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IRttManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IRttManager"

.field static final TRANSACTION_getMessenger:I = 0x1

.field static final TRANSACTION_getRttCapabilities:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.net.wifi.IRttManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IRttManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IRttManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "android.net.wifi.IRttManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/wifi/IRttManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/net/wifi/IRttManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/IRttManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/wifi/IRttManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v2

    #@9
    return v2

    #@a
    .line 45
    :sswitch_0
    const-string/jumbo v2, "android.net.wifi.IRttManager"

    #@d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    return v3

    #@11
    .line 50
    :sswitch_1
    const-string/jumbo v2, "android.net.wifi.IRttManager"

    #@14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 51
    invoke-virtual {p0}, Landroid/net/wifi/IRttManager$Stub;->getMessenger()Landroid/os/Messenger;

    #@1a
    move-result-object v1

    #@1b
    .line 52
    .local v1, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e
    .line 53
    if-eqz v1, :cond_0

    #@20
    .line 54
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 55
    invoke-virtual {v1, p3, v3}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    .line 60
    :goto_0
    return v3

    #@27
    .line 58
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    goto :goto_0

    #@2b
    .line 64
    .end local v1    # "_result":Landroid/os/Messenger;
    :sswitch_2
    const-string/jumbo v2, "android.net.wifi.IRttManager"

    #@2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    .line 65
    invoke-virtual {p0}, Landroid/net/wifi/IRttManager$Stub;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    #@34
    move-result-object v0

    #@35
    .line 66
    .local v0, "_result":Landroid/net/wifi/RttManager$RttCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@38
    .line 67
    if-eqz v0, :cond_1

    #@3a
    .line 68
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 69
    invoke-virtual {v0, p3, v3}, Landroid/net/wifi/RttManager$RttCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    #@40
    .line 74
    :goto_1
    return v3

    #@41
    .line 72
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    goto :goto_1

    #@45
    .line 41
    nop

    #@46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
