.class public abstract Landroid/service/gatekeeper/IGateKeeperService$Stub;
.super Landroid/os/Binder;
.source "IGateKeeperService.java"

# interfaces
.implements Landroid/service/gatekeeper/IGateKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/IGateKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.gatekeeper.IGateKeeperService"

.field static final TRANSACTION_clearSecureUserId:I = 0x5

.field static final TRANSACTION_enroll:I = 0x1

.field static final TRANSACTION_getSecureUserId:I = 0x4

.field static final TRANSACTION_verify:I = 0x2

.field static final TRANSACTION_verifyChallenge:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 24
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 32
    if-nez p0, :cond_0

    #@3
    .line 33
    return-object v1

    #@4
    .line 35
    :cond_0
    const-string/jumbo v1, "android.service.gatekeeper.IGateKeeperService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/gatekeeper/IGateKeeperService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 37
    check-cast v0, Landroid/service/gatekeeper/IGateKeeperService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 39
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 43
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
    .line 47
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 51
    :sswitch_0
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 52
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 56
    :sswitch_1
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    .line 60
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@1d
    move-result-object v6

    #@1e
    .line 62
    .local v6, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@21
    move-result-object v4

    #@22
    .line 64
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@25
    move-result-object v5

    #@26
    .line 65
    .local v5, "_arg3":[B
    invoke-virtual {p0, v1, v6, v4, v5}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    #@29
    move-result-object v7

    #@2a
    .line 66
    .local v7, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d
    .line 67
    if-eqz v7, :cond_0

    #@2f
    .line 68
    const/4 v0, 0x1

    #@30
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 69
    const/4 v0, 0x1

    #@34
    invoke-virtual {v7, p3, v0}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@37
    .line 74
    :goto_0
    const/4 v0, 0x1

    #@38
    return v0

    #@39
    .line 72
    :cond_0
    const/4 v0, 0x0

    #@3a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    goto :goto_0

    #@3e
    .line 78
    .end local v1    # "_arg0":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":[B
    .end local v6    # "_arg1":[B
    .end local v7    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :sswitch_2
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    #@41
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v1

    #@48
    .line 82
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@4b
    move-result-object v6

    #@4c
    .line 84
    .restart local v6    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@4f
    move-result-object v4

    #@50
    .line 85
    .restart local v4    # "_arg2":[B
    invoke-virtual {p0, v1, v6, v4}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    #@53
    move-result-object v7

    #@54
    .line 86
    .restart local v7    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@57
    .line 87
    if-eqz v7, :cond_1

    #@59
    .line 88
    const/4 v0, 0x1

    #@5a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    .line 89
    const/4 v0, 0x1

    #@5e
    invoke-virtual {v7, p3, v0}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@61
    .line 94
    :goto_1
    const/4 v0, 0x1

    #@62
    return v0

    #@63
    .line 92
    :cond_1
    const/4 v0, 0x0

    #@64
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@67
    goto :goto_1

    #@68
    .line 98
    .end local v1    # "_arg0":I
    .end local v4    # "_arg2":[B
    .end local v6    # "_arg1":[B
    .end local v7    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :sswitch_3
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    #@6b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e
    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@71
    move-result v1

    #@72
    .line 102
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@75
    move-result-wide v2

    #@76
    .line 104
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@79
    move-result-object v4

    #@7a
    .line 106
    .restart local v4    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@7d
    move-result-object v5

    #@7e
    .restart local v5    # "_arg3":[B
    move-object v0, p0

    #@7f
    .line 107
    invoke-virtual/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    #@82
    move-result-object v7

    #@83
    .line 108
    .restart local v7    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@86
    .line 109
    if-eqz v7, :cond_2

    #@88
    .line 110
    const/4 v0, 0x1

    #@89
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8c
    .line 111
    const/4 v0, 0x1

    #@8d
    invoke-virtual {v7, p3, v0}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    #@90
    .line 116
    :goto_2
    const/4 v0, 0x1

    #@91
    return v0

    #@92
    .line 114
    :cond_2
    const/4 v0, 0x0

    #@93
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@96
    goto :goto_2

    #@97
    .line 120
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":[B
    .end local v7    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :sswitch_4
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    #@9a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d
    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a0
    move-result v1

    #@a1
    .line 123
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->getSecureUserId(I)J

    #@a4
    move-result-wide v8

    #@a5
    .line 124
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8
    .line 125
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    #@ab
    .line 126
    const/4 v0, 0x1

    #@ac
    return v0

    #@ad
    .line 130
    .end local v1    # "_arg0":I
    .end local v8    # "_result":J
    :sswitch_5
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    #@b0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b3
    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b6
    move-result v1

    #@b7
    .line 133
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->clearSecureUserId(I)V

    #@ba
    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bd
    .line 135
    const/4 v0, 0x1

    #@be
    return v0

    #@bf
    .line 47
    nop

    #@c0
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
