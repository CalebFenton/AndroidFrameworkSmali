.class public abstract Landroid/net/INetworkScoreService$Stub;
.super Landroid/os/Binder;
.source "INetworkScoreService.java"

# interfaces
.implements Landroid/net/INetworkScoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkScoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkScoreService"

.field static final TRANSACTION_clearScores:I = 0x2

.field static final TRANSACTION_disableScoring:I = 0x4

.field static final TRANSACTION_registerNetworkScoreCache:I = 0x5

.field static final TRANSACTION_setActiveScorer:I = 0x3

.field static final TRANSACTION_updateScores:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.net.INetworkScoreService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkScoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreService;
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
    const-string/jumbo v1, "android.net.INetworkScoreService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/INetworkScoreService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/net/INetworkScoreService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetworkScoreService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/INetworkScoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v5

    #@9
    return v5

    #@a
    .line 46
    :sswitch_0
    const-string/jumbo v5, "android.net.INetworkScoreService"

    #@d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    return v6

    #@11
    .line 51
    :sswitch_1
    const-string/jumbo v7, "android.net.INetworkScoreService"

    #@14
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 53
    sget-object v7, Landroid/net/ScoredNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, [Landroid/net/ScoredNetwork;

    #@1f
    .line 54
    .local v2, "_arg0":[Landroid/net/ScoredNetwork;
    invoke-virtual {p0, v2}, Landroid/net/INetworkScoreService$Stub;->updateScores([Landroid/net/ScoredNetwork;)Z

    #@22
    move-result v4

    #@23
    .line 55
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@26
    .line 56
    if-eqz v4, :cond_0

    #@28
    move v5, v6

    #@29
    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 57
    return v6

    #@2d
    .line 61
    .end local v2    # "_arg0":[Landroid/net/ScoredNetwork;
    .end local v4    # "_result":Z
    :sswitch_2
    const-string/jumbo v7, "android.net.INetworkScoreService"

    #@30
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33
    .line 62
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->clearScores()Z

    #@36
    move-result v4

    #@37
    .line 63
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a
    .line 64
    if-eqz v4, :cond_1

    #@3c
    move v5, v6

    #@3d
    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    .line 65
    return v6

    #@41
    .line 69
    .end local v4    # "_result":Z
    :sswitch_3
    const-string/jumbo v7, "android.net.INetworkScoreService"

    #@44
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    .line 72
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/INetworkScoreService$Stub;->setActiveScorer(Ljava/lang/String;)Z

    #@4e
    move-result v4

    #@4f
    .line 73
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@52
    .line 74
    if-eqz v4, :cond_2

    #@54
    move v5, v6

    #@55
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 75
    return v6

    #@59
    .line 79
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_4
    const-string/jumbo v5, "android.net.INetworkScoreService"

    #@5c
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f
    .line 80
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->disableScoring()V

    #@62
    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@65
    .line 82
    return v6

    #@66
    .line 86
    :sswitch_5
    const-string/jumbo v5, "android.net.INetworkScoreService"

    #@69
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c
    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v0

    #@70
    .line 90
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@73
    move-result-object v5

    #@74
    invoke-static {v5}, Landroid/net/INetworkScoreCache$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreCache;

    #@77
    move-result-object v3

    #@78
    .line 91
    .local v3, "_arg1":Landroid/net/INetworkScoreCache;
    invoke-virtual {p0, v0, v3}, Landroid/net/INetworkScoreService$Stub;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    #@7b
    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e
    .line 93
    return v6

    #@7f
    .line 42
    nop

    #@80
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
