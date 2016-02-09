.class public abstract Landroid/net/INetworkManagementEventObserver$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementEventObserver.java"

# interfaces
.implements Landroid/net/INetworkManagementEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkManagementEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkManagementEventObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkManagementEventObserver"

.field static final TRANSACTION_addressRemoved:I = 0x6

.field static final TRANSACTION_addressUpdated:I = 0x5

.field static final TRANSACTION_interfaceAdded:I = 0x3

.field static final TRANSACTION_interfaceClassDataActivityChanged:I = 0x8

.field static final TRANSACTION_interfaceDnsServerInfo:I = 0x9

.field static final TRANSACTION_interfaceLinkStateChanged:I = 0x2

.field static final TRANSACTION_interfaceRemoved:I = 0x4

.field static final TRANSACTION_interfaceStatusChanged:I = 0x1

.field static final TRANSACTION_limitReached:I = 0x7

.field static final TRANSACTION_routeRemoved:I = 0xb

.field static final TRANSACTION_routeUpdated:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.net.INetworkManagementEventObserver"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;
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
    const-string/jumbo v1, "android.net.INetworkManagementEventObserver"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/net/INetworkManagementEventObserver;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/net/INetworkManagementEventObserver;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v10

    #@7
    return v10

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    #@b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 48
    const/4 v10, 0x1

    #@f
    return v10

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    #@13
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 56
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v10

    #@1e
    if-eqz v10, :cond_0

    #@20
    const/4 v6, 0x1

    #@21
    .line 57
    .local v6, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v1, v6}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceStatusChanged(Ljava/lang/String;Z)V

    #@24
    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    .line 59
    const/4 v10, 0x1

    #@28
    return v10

    #@29
    .line 56
    .end local v6    # "_arg1":Z
    :cond_0
    const/4 v6, 0x0

    #@2a
    .restart local v6    # "_arg1":Z
    goto :goto_0

    #@2b
    .line 63
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Z
    :sswitch_2
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    #@2e
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31
    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    .line 67
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v10

    #@39
    if-eqz v10, :cond_1

    #@3b
    const/4 v6, 0x1

    #@3c
    .line 68
    .restart local v6    # "_arg1":Z
    :goto_1
    invoke-virtual {p0, v1, v6}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    #@3f
    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@42
    .line 70
    const/4 v10, 0x1

    #@43
    return v10

    #@44
    .line 67
    .end local v6    # "_arg1":Z
    :cond_1
    const/4 v6, 0x0

    #@45
    .restart local v6    # "_arg1":Z
    goto :goto_1

    #@46
    .line 74
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    #@49
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c
    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    .line 77
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceAdded(Ljava/lang/String;)V

    #@53
    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@56
    .line 79
    const/4 v10, 0x1

    #@57
    return v10

    #@58
    .line 83
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    #@5b
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e
    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    .line 86
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceRemoved(Ljava/lang/String;)V

    #@65
    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@68
    .line 88
    const/4 v10, 0x1

    #@69
    return v10

    #@6a
    .line 92
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    #@6d
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70
    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    .line 96
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@77
    move-result v10

    #@78
    if-eqz v10, :cond_2

    #@7a
    .line 97
    sget-object v10, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7c
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7f
    move-result-object v4

    #@80
    check-cast v4, Landroid/net/LinkAddress;

    #@82
    .line 102
    :goto_2
    invoke-virtual {p0, v1, v4}, Landroid/net/INetworkManagementEventObserver$Stub;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    #@85
    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@88
    .line 104
    const/4 v10, 0x1

    #@89
    return v10

    #@8a
    .line 100
    :cond_2
    const/4 v4, 0x0

    #@8b
    .local v4, "_arg1":Landroid/net/LinkAddress;
    goto :goto_2

    #@8c
    .line 108
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/net/LinkAddress;
    :sswitch_6
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    #@8f
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@92
    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    .line 112
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@99
    move-result v10

    #@9a
    if-eqz v10, :cond_3

    #@9c
    .line 113
    sget-object v10, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9e
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a1
    move-result-object v4

    #@a2
    check-cast v4, Landroid/net/LinkAddress;

    #@a4
    .line 118
    :goto_3
    invoke-virtual {p0, v1, v4}, Landroid/net/INetworkManagementEventObserver$Stub;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    #@a7
    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@aa
    .line 120
    const/4 v10, 0x1

    #@ab
    return v10

    #@ac
    .line 116
    :cond_3
    const/4 v4, 0x0

    #@ad
    .restart local v4    # "_arg1":Landroid/net/LinkAddress;
    goto :goto_3

    #@ae
    .line 124
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/net/LinkAddress;
    :sswitch_7
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    #@b1
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b4
    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b7
    move-result-object v1

    #@b8
    .line 128
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bb
    move-result-object v5

    #@bc
    .line 129
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Landroid/net/INetworkManagementEventObserver$Stub;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    #@bf
    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c2
    .line 131
    const/4 v10, 0x1

    #@c3
    return v10

    #@c4
    .line 135
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    #@c7
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ca
    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cd
    move-result-object v1

    #@ce
    .line 139
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d1
    move-result v10

    #@d2
    if-eqz v10, :cond_4

    #@d4
    const/4 v6, 0x1

    #@d5
    .line 141
    .restart local v6    # "_arg1":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@d8
    move-result-wide v8

    #@d9
    .line 142
    .local v8, "_arg2":J
    invoke-virtual {p0, v1, v6, v8, v9}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V

    #@dc
    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@df
    .line 144
    const/4 v10, 0x1

    #@e0
    return v10

    #@e1
    .line 139
    .end local v6    # "_arg1":Z
    .end local v8    # "_arg2":J
    :cond_4
    const/4 v6, 0x0

    #@e2
    .restart local v6    # "_arg1":Z
    goto :goto_4

    #@e3
    .line 148
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Z
    :sswitch_9
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    #@e6
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e9
    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ec
    move-result-object v1

    #@ed
    .line 152
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@f0
    move-result-wide v2

    #@f1
    .line 154
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@f4
    move-result-object v7

    #@f5
    .line 155
    .local v7, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v7}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    #@f8
    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@fb
    .line 157
    const/4 v10, 0x1

    #@fc
    return v10

    #@fd
    .line 161
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v7    # "_arg2":[Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    #@100
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@103
    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@106
    move-result v10

    #@107
    if-eqz v10, :cond_5

    #@109
    .line 164
    sget-object v10, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10b
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10e
    move-result-object v0

    #@10f
    check-cast v0, Landroid/net/RouteInfo;

    #@111
    .line 169
    :goto_5
    invoke-virtual {p0, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->routeUpdated(Landroid/net/RouteInfo;)V

    #@114
    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@117
    .line 171
    const/4 v10, 0x1

    #@118
    return v10

    #@119
    .line 167
    :cond_5
    const/4 v0, 0x0

    #@11a
    .local v0, "_arg0":Landroid/net/RouteInfo;
    goto :goto_5

    #@11b
    .line 175
    .end local v0    # "_arg0":Landroid/net/RouteInfo;
    :sswitch_b
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    #@11e
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@121
    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@124
    move-result v10

    #@125
    if-eqz v10, :cond_6

    #@127
    .line 178
    sget-object v10, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@129
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12c
    move-result-object v0

    #@12d
    check-cast v0, Landroid/net/RouteInfo;

    #@12f
    .line 183
    :goto_6
    invoke-virtual {p0, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->routeRemoved(Landroid/net/RouteInfo;)V

    #@132
    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@135
    .line 185
    const/4 v10, 0x1

    #@136
    return v10

    #@137
    .line 181
    :cond_6
    const/4 v0, 0x0

    #@138
    .restart local v0    # "_arg0":Landroid/net/RouteInfo;
    goto :goto_6

    #@139
    .line 43
    nop

    #@13a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
