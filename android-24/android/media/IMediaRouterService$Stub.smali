.class public abstract Landroid/media/IMediaRouterService$Stub;
.super Landroid/os/Binder;
.source "IMediaRouterService.java"

# interfaces
.implements Landroid/media/IMediaRouterService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRouterService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaRouterService"

.field static final TRANSACTION_getState:I = 0x3

.field static final TRANSACTION_registerClientAsUser:I = 0x1

.field static final TRANSACTION_requestSetVolume:I = 0x6

.field static final TRANSACTION_requestUpdateVolume:I = 0x7

.field static final TRANSACTION_setDiscoveryRequest:I = 0x4

.field static final TRANSACTION_setSelectedRoute:I = 0x5

.field static final TRANSACTION_unregisterClient:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.media.IMediaRouterService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRouterService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;
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
    const-string/jumbo v1, "android.media.IMediaRouterService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/IMediaRouterService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/media/IMediaRouterService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IMediaRouterService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/IMediaRouterService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v6

    #@9
    return v6

    #@a
    .line 45
    :sswitch_0
    const-string/jumbo v7, "android.media.IMediaRouterService"

    #@d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    return v6

    #@11
    .line 50
    :sswitch_1
    const-string/jumbo v7, "android.media.IMediaRouterService"

    #@14
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v7

    #@1b
    invoke-static {v7}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    #@1e
    move-result-object v0

    #@1f
    .line 54
    .local v0, "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 56
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v3

    #@27
    .line 57
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/IMediaRouterService$Stub;->registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    #@2a
    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d
    .line 59
    return v6

    #@2e
    .line 63
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :sswitch_2
    const-string/jumbo v7, "android.media.IMediaRouterService"

    #@31
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@37
    move-result-object v7

    #@38
    invoke-static {v7}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    #@3b
    move-result-object v0

    #@3c
    .line 66
    .restart local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p0, v0}, Landroid/media/IMediaRouterService$Stub;->unregisterClient(Landroid/media/IMediaRouterClient;)V

    #@3f
    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@42
    .line 68
    return v6

    #@43
    .line 72
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    :sswitch_3
    const-string/jumbo v7, "android.media.IMediaRouterService"

    #@46
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4c
    move-result-object v7

    #@4d
    invoke-static {v7}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    #@50
    move-result-object v0

    #@51
    .line 75
    .restart local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p0, v0}, Landroid/media/IMediaRouterService$Stub;->getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    #@54
    move-result-object v5

    #@55
    .line 76
    .local v5, "_result":Landroid/media/MediaRouterClientState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@58
    .line 77
    if-eqz v5, :cond_0

    #@5a
    .line 78
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    .line 79
    invoke-virtual {v5, p3, v6}, Landroid/media/MediaRouterClientState;->writeToParcel(Landroid/os/Parcel;I)V

    #@60
    .line 84
    :goto_0
    return v6

    #@61
    .line 82
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    goto :goto_0

    #@65
    .line 88
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v5    # "_result":Landroid/media/MediaRouterClientState;
    :sswitch_4
    const-string/jumbo v7, "android.media.IMediaRouterService"

    #@68
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b
    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6e
    move-result-object v7

    #@6f
    invoke-static {v7}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    #@72
    move-result-object v0

    #@73
    .line 92
    .restart local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@76
    move-result v1

    #@77
    .line 94
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v7

    #@7b
    if-eqz v7, :cond_1

    #@7d
    move v4, v6

    #@7e
    .line 95
    .local v4, "_arg2":Z
    :cond_1
    invoke-virtual {p0, v0, v1, v4}, Landroid/media/IMediaRouterService$Stub;->setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V

    #@81
    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@84
    .line 97
    return v6

    #@85
    .line 101
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v1    # "_arg1":I
    .end local v4    # "_arg2":Z
    :sswitch_5
    const-string/jumbo v7, "android.media.IMediaRouterService"

    #@88
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b
    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8e
    move-result-object v7

    #@8f
    invoke-static {v7}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    #@92
    move-result-object v0

    #@93
    .line 105
    .restart local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@96
    move-result-object v2

    #@97
    .line 107
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9a
    move-result v7

    #@9b
    if-eqz v7, :cond_2

    #@9d
    move v4, v6

    #@9e
    .line 108
    .restart local v4    # "_arg2":Z
    :cond_2
    invoke-virtual {p0, v0, v2, v4}, Landroid/media/IMediaRouterService$Stub;->setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V

    #@a1
    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a4
    .line 110
    return v6

    #@a5
    .line 114
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    :sswitch_6
    const-string/jumbo v7, "android.media.IMediaRouterService"

    #@a8
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ab
    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ae
    move-result-object v7

    #@af
    invoke-static {v7}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    #@b2
    move-result-object v0

    #@b3
    .line 118
    .restart local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b6
    move-result-object v2

    #@b7
    .line 120
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ba
    move-result v3

    #@bb
    .line 121
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/IMediaRouterService$Stub;->requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    #@be
    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c1
    .line 123
    return v6

    #@c2
    .line 127
    .end local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :sswitch_7
    const-string/jumbo v7, "android.media.IMediaRouterService"

    #@c5
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c8
    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@cb
    move-result-object v7

    #@cc
    invoke-static {v7}, Landroid/media/IMediaRouterClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterClient;

    #@cf
    move-result-object v0

    #@d0
    .line 131
    .restart local v0    # "_arg0":Landroid/media/IMediaRouterClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d3
    move-result-object v2

    #@d4
    .line 133
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d7
    move-result v3

    #@d8
    .line 134
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Landroid/media/IMediaRouterService$Stub;->requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    #@db
    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@de
    .line 136
    return v6

    #@df
    .line 41
    nop

    #@e0
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
