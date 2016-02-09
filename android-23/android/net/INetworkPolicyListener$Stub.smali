.class public abstract Landroid/net/INetworkPolicyListener$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicyListener.java"

# interfaces
.implements Landroid/net/INetworkPolicyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkPolicyListener"

.field static final TRANSACTION_onMeteredIfacesChanged:I = 0x2

.field static final TRANSACTION_onRestrictBackgroundChanged:I = 0x3

.field static final TRANSACTION_onUidRulesChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.net.INetworkPolicyListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkPolicyListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.net.INetworkPolicyListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/INetworkPolicyListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/net/INetworkPolicyListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetworkPolicyListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/INetworkPolicyListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x1

    #@1
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v4

    #@8
    return v4

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.net.INetworkPolicyListener"

    #@c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v5

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.net.INetworkPolicyListener"

    #@13
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v3

    #@1e
    .line 53
    .local v3, "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/net/INetworkPolicyListener$Stub;->onUidRulesChanged(II)V

    #@21
    .line 54
    return v5

    #@22
    .line 58
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_2
    const-string/jumbo v4, "android.net.INetworkPolicyListener"

    #@25
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 61
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/INetworkPolicyListener$Stub;->onMeteredIfacesChanged([Ljava/lang/String;)V

    #@2f
    .line 62
    return v5

    #@30
    .line 66
    .end local v2    # "_arg0":[Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "android.net.INetworkPolicyListener"

    #@33
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_0

    #@3c
    const/4 v1, 0x1

    #@3d
    .line 69
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyListener$Stub;->onRestrictBackgroundChanged(Z)V

    #@40
    .line 70
    return v5

    #@41
    .line 68
    .end local v1    # "_arg0":Z
    :cond_0
    const/4 v1, 0x0

    #@42
    .restart local v1    # "_arg0":Z
    goto :goto_0

    #@43
    .line 39
    nop

    #@44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
