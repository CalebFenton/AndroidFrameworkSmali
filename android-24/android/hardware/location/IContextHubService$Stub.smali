.class public abstract Landroid/hardware/location/IContextHubService$Stub;
.super Landroid/os/Binder;
.source "IContextHubService.java"

# interfaces
.implements Landroid/hardware/location/IContextHubService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IContextHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IContextHubService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IContextHubService"

.field static final TRANSACTION_findNanoAppOnHub:I = 0x7

.field static final TRANSACTION_getContextHubHandles:I = 0x2

.field static final TRANSACTION_getContextHubInfo:I = 0x3

.field static final TRANSACTION_getNanoAppInstanceInfo:I = 0x6

.field static final TRANSACTION_loadNanoApp:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_sendMessage:I = 0x8

.field static final TRANSACTION_unloadNanoApp:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.hardware.location.IContextHubService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IContextHubService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubService;
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
    const-string/jumbo v1, "android.hardware.location.IContextHubService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/hardware/location/IContextHubService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/hardware/location/IContextHubService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/location/IContextHubService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/hardware/location/IContextHubService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v10

    #@7
    return v10

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    #@b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 46
    const/4 v10, 0x1

    #@f
    return v10

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    #@13
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v10

    #@1a
    invoke-static {v10}, Landroid/hardware/location/IContextHubCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubCallback;

    #@1d
    move-result-object v1

    #@1e
    .line 53
    .local v1, "_arg0":Landroid/hardware/location/IContextHubCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/location/IContextHubService$Stub;->registerCallback(Landroid/hardware/location/IContextHubCallback;)I

    #@21
    move-result v6

    #@22
    .line 54
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    .line 55
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 56
    const/4 v10, 0x1

    #@29
    return v10

    #@2a
    .line 60
    .end local v1    # "_arg0":Landroid/hardware/location/IContextHubCallback;
    .end local v6    # "_result":I
    :sswitch_2
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    #@2d
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30
    .line 61
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubHandles()[I

    #@33
    move-result-object v9

    #@34
    .line 62
    .local v9, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@37
    .line 63
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    #@3a
    .line 64
    const/4 v10, 0x1

    #@3b
    return v10

    #@3c
    .line 68
    .end local v9    # "_result":[I
    :sswitch_3
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    #@3f
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v0

    #@46
    .line 71
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;

    #@49
    move-result-object v7

    #@4a
    .line 72
    .local v7, "_result":Landroid/hardware/location/ContextHubInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4d
    .line 73
    if-eqz v7, :cond_0

    #@4f
    .line 74
    const/4 v10, 0x1

    #@50
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 75
    const/4 v10, 0x1

    #@54
    invoke-virtual {v7, p3, v10}, Landroid/hardware/location/ContextHubInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@57
    .line 80
    :goto_0
    const/4 v10, 0x1

    #@58
    return v10

    #@59
    .line 78
    :cond_0
    const/4 v10, 0x0

    #@5a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    goto :goto_0

    #@5e
    .line 84
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Landroid/hardware/location/ContextHubInfo;
    :sswitch_4
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    #@61
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v0

    #@68
    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v10

    #@6c
    if-eqz v10, :cond_1

    #@6e
    .line 89
    sget-object v10, Landroid/hardware/location/NanoApp;->CREATOR:Landroid/os/Parcelable$Creator;

    #@70
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@73
    move-result-object v3

    #@74
    check-cast v3, Landroid/hardware/location/NanoApp;

    #@76
    .line 94
    :goto_1
    invoke-virtual {p0, v0, v3}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoApp(ILandroid/hardware/location/NanoApp;)I

    #@79
    move-result v6

    #@7a
    .line 95
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d
    .line 96
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@80
    .line 97
    const/4 v10, 0x1

    #@81
    return v10

    #@82
    .line 92
    .end local v6    # "_result":I
    :cond_1
    const/4 v3, 0x0

    #@83
    .local v3, "_arg1":Landroid/hardware/location/NanoApp;
    goto :goto_1

    #@84
    .line 101
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/location/NanoApp;
    :sswitch_5
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    #@87
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8a
    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8d
    move-result v0

    #@8e
    .line 104
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoApp(I)I

    #@91
    move-result v6

    #@92
    .line 105
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@95
    .line 106
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@98
    .line 107
    const/4 v10, 0x1

    #@99
    return v10

    #@9a
    .line 111
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_6
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    #@9d
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a0
    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a3
    move-result v0

    #@a4
    .line 114
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/location/IContextHubService$Stub;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    #@a7
    move-result-object v8

    #@a8
    .line 115
    .local v8, "_result":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ab
    .line 116
    if-eqz v8, :cond_2

    #@ad
    .line 117
    const/4 v10, 0x1

    #@ae
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@b1
    .line 118
    const/4 v10, 0x1

    #@b2
    invoke-virtual {v8, p3, v10}, Landroid/hardware/location/NanoAppInstanceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@b5
    .line 123
    :goto_2
    const/4 v10, 0x1

    #@b6
    return v10

    #@b7
    .line 121
    :cond_2
    const/4 v10, 0x0

    #@b8
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@bb
    goto :goto_2

    #@bc
    .line 127
    .end local v0    # "_arg0":I
    .end local v8    # "_result":Landroid/hardware/location/NanoAppInstanceInfo;
    :sswitch_7
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    #@bf
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c2
    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c5
    move-result v0

    #@c6
    .line 131
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c9
    move-result v10

    #@ca
    if-eqz v10, :cond_3

    #@cc
    .line 132
    sget-object v10, Landroid/hardware/location/NanoAppFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ce
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d1
    move-result-object v4

    #@d2
    check-cast v4, Landroid/hardware/location/NanoAppFilter;

    #@d4
    .line 137
    :goto_3
    invoke-virtual {p0, v0, v4}, Landroid/hardware/location/IContextHubService$Stub;->findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I

    #@d7
    move-result-object v9

    #@d8
    .line 138
    .restart local v9    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@db
    .line 139
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    #@de
    .line 140
    const/4 v10, 0x1

    #@df
    return v10

    #@e0
    .line 135
    .end local v9    # "_result":[I
    :cond_3
    const/4 v4, 0x0

    #@e1
    .local v4, "_arg1":Landroid/hardware/location/NanoAppFilter;
    goto :goto_3

    #@e2
    .line 144
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":Landroid/hardware/location/NanoAppFilter;
    :sswitch_8
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    #@e5
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e8
    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@eb
    move-result v0

    #@ec
    .line 148
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ef
    move-result v2

    #@f0
    .line 150
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@f3
    move-result v10

    #@f4
    if-eqz v10, :cond_4

    #@f6
    .line 151
    sget-object v10, Landroid/hardware/location/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f8
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fb
    move-result-object v5

    #@fc
    check-cast v5, Landroid/hardware/location/ContextHubMessage;

    #@fe
    .line 156
    :goto_4
    invoke-virtual {p0, v0, v2, v5}, Landroid/hardware/location/IContextHubService$Stub;->sendMessage(IILandroid/hardware/location/ContextHubMessage;)I

    #@101
    move-result v6

    #@102
    .line 157
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@105
    .line 158
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@108
    .line 159
    const/4 v10, 0x1

    #@109
    return v10

    #@10a
    .line 154
    .end local v6    # "_result":I
    :cond_4
    const/4 v5, 0x0

    #@10b
    .local v5, "_arg2":Landroid/hardware/location/ContextHubMessage;
    goto :goto_4

    #@10c
    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
