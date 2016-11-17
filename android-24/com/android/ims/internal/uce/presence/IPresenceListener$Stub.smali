.class public abstract Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;
.super Landroid/os/Binder;
.source "IPresenceListener.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.presence.IPresenceListener"

.field static final TRANSACTION_capInfoReceived:I = 0x7

.field static final TRANSACTION_cmdStatus:I = 0x5

.field static final TRANSACTION_getVersionCb:I = 0x1

.field static final TRANSACTION_listCapInfoReceived:I = 0x8

.field static final TRANSACTION_publishTriggering:I = 0x4

.field static final TRANSACTION_serviceAvailable:I = 0x2

.field static final TRANSACTION_serviceUnAvailable:I = 0x3

.field static final TRANSACTION_sipResponseReceived:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;
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
    const-string/jumbo v1, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/ims/internal/uce/presence/IPresenceListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Lcom/android/ims/internal/uce/presence/IPresenceListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v9, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v8

    #@8
    return v8

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v9

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@13
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    .line 53
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->getVersionCb(Ljava/lang/String;)V

    #@1d
    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@20
    .line 55
    return v9

    #@21
    .line 59
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@24
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27
    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v8

    #@2b
    if-eqz v8, :cond_0

    #@2d
    .line 62
    sget-object v8, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Lcom/android/ims/internal/uce/common/StatusCode;

    #@35
    .line 67
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    #@38
    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b
    .line 69
    return v9

    #@3c
    .line 65
    :cond_0
    const/4 v0, 0x0

    #@3d
    .local v0, "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_0

    #@3e
    .line 73
    .end local v0    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_3
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@41
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v8

    #@48
    if-eqz v8, :cond_1

    #@4a
    .line 76
    sget-object v8, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4c
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Lcom/android/ims/internal/uce/common/StatusCode;

    #@52
    .line 81
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->serviceUnAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    #@55
    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@58
    .line 83
    return v9

    #@59
    .line 79
    :cond_1
    const/4 v0, 0x0

    #@5a
    .restart local v0    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    goto :goto_1

    #@5b
    .line 87
    .end local v0    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :sswitch_4
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@5e
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@61
    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@64
    move-result v8

    #@65
    if-eqz v8, :cond_2

    #@67
    .line 90
    sget-object v8, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->CREATOR:Landroid/os/Parcelable$Creator;

    #@69
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6c
    move-result-object v2

    #@6d
    check-cast v2, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;

    #@6f
    .line 95
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->publishTriggering(Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;)V

    #@72
    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@75
    .line 97
    return v9

    #@76
    .line 93
    :cond_2
    const/4 v2, 0x0

    #@77
    .local v2, "_arg0":Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    goto :goto_2

    #@78
    .line 101
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    :sswitch_5
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@7b
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e
    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@81
    move-result v8

    #@82
    if-eqz v8, :cond_3

    #@84
    .line 104
    sget-object v8, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    #@86
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@89
    move-result-object v1

    #@8a
    check-cast v1, Lcom/android/ims/internal/uce/presence/PresCmdStatus;

    #@8c
    .line 109
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->cmdStatus(Lcom/android/ims/internal/uce/presence/PresCmdStatus;)V

    #@8f
    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@92
    .line 111
    return v9

    #@93
    .line 107
    :cond_3
    const/4 v1, 0x0

    #@94
    .local v1, "_arg0":Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    goto :goto_3

    #@95
    .line 115
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    :sswitch_6
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@98
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b
    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9e
    move-result v8

    #@9f
    if-eqz v8, :cond_4

    #@a1
    .line 118
    sget-object v8, Lcom/android/ims/internal/uce/presence/PresSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a3
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a6
    move-result-object v4

    #@a7
    check-cast v4, Lcom/android/ims/internal/uce/presence/PresSipResponse;

    #@a9
    .line 123
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->sipResponseReceived(Lcom/android/ims/internal/uce/presence/PresSipResponse;)V

    #@ac
    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@af
    .line 125
    return v9

    #@b0
    .line 121
    :cond_4
    const/4 v4, 0x0

    #@b1
    .local v4, "_arg0":Lcom/android/ims/internal/uce/presence/PresSipResponse;
    goto :goto_4

    #@b2
    .line 129
    .end local v4    # "_arg0":Lcom/android/ims/internal/uce/presence/PresSipResponse;
    :sswitch_7
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@b5
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8
    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bb
    move-result-object v5

    #@bc
    .line 133
    .restart local v5    # "_arg0":Ljava/lang/String;
    sget-object v8, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@be
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@c1
    move-result-object v7

    #@c2
    check-cast v7, [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    #@c4
    .line 134
    .local v7, "_arg1":[Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    invoke-virtual {p0, v5, v7}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->capInfoReceived(Ljava/lang/String;[Lcom/android/ims/internal/uce/presence/PresTupleInfo;)V

    #@c7
    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ca
    .line 136
    return v9

    #@cb
    .line 140
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":[Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    :sswitch_8
    const-string/jumbo v8, "com.android.ims.internal.uce.presence.IPresenceListener"

    #@ce
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d1
    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@d4
    move-result v8

    #@d5
    if-eqz v8, :cond_5

    #@d7
    .line 143
    sget-object v8, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d9
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@dc
    move-result-object v3

    #@dd
    check-cast v3, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;

    #@df
    .line 149
    :goto_5
    sget-object v8, Lcom/android/ims/internal/uce/presence/PresResInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e1
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@e4
    move-result-object v6

    #@e5
    check-cast v6, [Lcom/android/ims/internal/uce/presence/PresResInfo;

    #@e7
    .line 150
    .local v6, "_arg1":[Lcom/android/ims/internal/uce/presence/PresResInfo;
    invoke-virtual {p0, v3, v6}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->listCapInfoReceived(Lcom/android/ims/internal/uce/presence/PresRlmiInfo;[Lcom/android/ims/internal/uce/presence/PresResInfo;)V

    #@ea
    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ed
    .line 152
    return v9

    #@ee
    .line 146
    .end local v6    # "_arg1":[Lcom/android/ims/internal/uce/presence/PresResInfo;
    :cond_5
    const/4 v3, 0x0

    #@ef
    .local v3, "_arg0":Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
    goto :goto_5

    #@f0
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
