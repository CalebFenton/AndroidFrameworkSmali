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

.field static final TRANSACTION_onRestrictBackgroundBlacklistChanged:I = 0x5

.field static final TRANSACTION_onRestrictBackgroundChanged:I = 0x3

.field static final TRANSACTION_onRestrictBackgroundWhitelistChanged:I = 0x4

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
    const/4 v1, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v5

    #@9
    return v5

    #@a
    .line 43
    :sswitch_0
    const-string/jumbo v6, "android.net.INetworkPolicyListener"

    #@d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    return v5

    #@11
    .line 48
    :sswitch_1
    const-string/jumbo v6, "android.net.INetworkPolicyListener"

    #@14
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v3

    #@1f
    .line 53
    .local v3, "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/net/INetworkPolicyListener$Stub;->onUidRulesChanged(II)V

    #@22
    .line 54
    return v5

    #@23
    .line 58
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_2
    const-string/jumbo v6, "android.net.INetworkPolicyListener"

    #@26
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29
    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 61
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/INetworkPolicyListener$Stub;->onMeteredIfacesChanged([Ljava/lang/String;)V

    #@30
    .line 62
    return v5

    #@31
    .line 66
    .end local v2    # "_arg0":[Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v6, "android.net.INetworkPolicyListener"

    #@34
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_0

    #@3d
    move v1, v5

    #@3e
    .line 69
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Landroid/net/INetworkPolicyListener$Stub;->onRestrictBackgroundChanged(Z)V

    #@41
    .line 70
    return v5

    #@42
    .line 74
    .end local v1    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v6, "android.net.INetworkPolicyListener"

    #@45
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v0

    #@4c
    .line 78
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v6

    #@50
    if-eqz v6, :cond_1

    #@52
    move v4, v5

    #@53
    .line 79
    .local v4, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v0, v4}, Landroid/net/INetworkPolicyListener$Stub;->onRestrictBackgroundWhitelistChanged(IZ)V

    #@56
    .line 80
    return v5

    #@57
    .end local v4    # "_arg1":Z
    :cond_1
    move v4, v1

    #@58
    .line 78
    goto :goto_0

    #@59
    .line 84
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string/jumbo v6, "android.net.INetworkPolicyListener"

    #@5c
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@62
    move-result v0

    #@63
    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@66
    move-result v6

    #@67
    if-eqz v6, :cond_2

    #@69
    move v4, v5

    #@6a
    .line 89
    .restart local v4    # "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v4}, Landroid/net/INetworkPolicyListener$Stub;->onRestrictBackgroundBlacklistChanged(IZ)V

    #@6d
    .line 90
    return v5

    #@6e
    .end local v4    # "_arg1":Z
    :cond_2
    move v4, v1

    #@6f
    .line 88
    goto :goto_1

    #@70
    .line 39
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
