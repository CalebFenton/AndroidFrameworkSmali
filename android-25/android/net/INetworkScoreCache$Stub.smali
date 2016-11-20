.class public abstract Landroid/net/INetworkScoreCache$Stub;
.super Landroid/os/Binder;
.source "INetworkScoreCache.java"

# interfaces
.implements Landroid/net/INetworkScoreCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkScoreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkScoreCache$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkScoreCache"

.field static final TRANSACTION_clearScores:I = 0x2

.field static final TRANSACTION_updateScores:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 31
    const-string/jumbo v0, "android.net.INetworkScoreCache"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkScoreCache$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreCache;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 39
    if-nez p0, :cond_0

    #@3
    .line 40
    return-object v1

    #@4
    .line 42
    :cond_0
    const-string/jumbo v1, "android.net.INetworkScoreCache"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/INetworkScoreCache;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 44
    check-cast v0, Landroid/net/INetworkScoreCache;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 46
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetworkScoreCache$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/INetworkScoreCache$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 50
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v2, 0x1

    #@1
    .line 54
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 58
    :sswitch_0
    const-string/jumbo v1, "android.net.INetworkScoreCache"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 59
    return v2

    #@10
    .line 63
    :sswitch_1
    const-string/jumbo v1, "android.net.INetworkScoreCache"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 65
    sget-object v1, Landroid/net/ScoredNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@1b
    move-result-object v0

    #@1c
    .line 66
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    invoke-virtual {p0, v0}, Landroid/net/INetworkScoreCache$Stub;->updateScores(Ljava/util/List;)V

    #@1f
    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@22
    .line 68
    return v2

    #@23
    .line 72
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    :sswitch_2
    const-string/jumbo v1, "android.net.INetworkScoreCache"

    #@26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29
    .line 73
    invoke-virtual {p0}, Landroid/net/INetworkScoreCache$Stub;->clearScores()V

    #@2c
    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f
    .line 75
    return v2

    #@30
    .line 54
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
