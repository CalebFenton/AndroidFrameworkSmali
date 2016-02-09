.class public abstract Lcom/android/internal/telephony/IWapPushManager$Stub;
.super Landroid/os/Binder;
.source "IWapPushManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IWapPushManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IWapPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IWapPushManager"

.field static final TRANSACTION_addPackage:I = 0x2

.field static final TRANSACTION_deletePackage:I = 0x4

.field static final TRANSACTION_processMessage:I = 0x1

.field static final TRANSACTION_updatePackage:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 15
    const-string/jumbo v0, "com.android.internal.telephony.IWapPushManager"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IWapPushManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 23
    if-nez p0, :cond_0

    #@3
    .line 24
    return-object v1

    #@4
    .line 26
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.IWapPushManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/telephony/IWapPushManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 28
    check-cast v0, Lcom/android/internal/telephony/IWapPushManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IWapPushManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 34
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 42
    :sswitch_0
    const-string/jumbo v0, "com.android.internal.telephony.IWapPushManager"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 43
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 47
    :sswitch_1
    const-string/jumbo v0, "com.android.internal.telephony.IWapPushManager"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 53
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 54
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v8

    #@2a
    check-cast v8, Landroid/content/Intent;

    #@2c
    .line 59
    :goto_0
    invoke-virtual {p0, v1, v2, v8}, Lcom/android/internal/telephony/IWapPushManager$Stub;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    #@2f
    move-result v9

    #@30
    .line 60
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@33
    .line 61
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 62
    const/4 v0, 0x1

    #@37
    return v0

    #@38
    .line 57
    .end local v9    # "_result":I
    :cond_0
    const/4 v8, 0x0

    #@39
    .local v8, "_arg2":Landroid/content/Intent;
    goto :goto_0

    #@3a
    .line 66
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/content/Intent;
    :sswitch_2
    const-string/jumbo v0, "com.android.internal.telephony.IWapPushManager"

    #@3d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40
    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 70
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    .line 72
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    .line 74
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    .line 76
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v5

    #@54
    .line 78
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_1

    #@5a
    const/4 v6, 0x1

    #@5b
    .line 80
    .local v6, "_arg5":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5e
    move-result v0

    #@5f
    if-eqz v0, :cond_2

    #@61
    const/4 v7, 0x1

    #@62
    .local v7, "_arg6":Z
    :goto_2
    move-object v0, p0

    #@63
    .line 81
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IWapPushManager$Stub;->addPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z

    #@66
    move-result v10

    #@67
    .line 82
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a
    .line 83
    if-eqz v10, :cond_3

    #@6c
    const/4 v0, 0x1

    #@6d
    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@70
    .line 84
    const/4 v0, 0x1

    #@71
    return v0

    #@72
    .line 78
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Z
    .end local v10    # "_result":Z
    :cond_1
    const/4 v6, 0x0

    #@73
    .restart local v6    # "_arg5":Z
    goto :goto_1

    #@74
    .line 80
    :cond_2
    const/4 v7, 0x0

    #@75
    .restart local v7    # "_arg6":Z
    goto :goto_2

    #@76
    .line 83
    .restart local v10    # "_result":Z
    :cond_3
    const/4 v0, 0x0

    #@77
    goto :goto_3

    #@78
    .line 88
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Z
    .end local v10    # "_result":Z
    :sswitch_3
    const-string/jumbo v0, "com.android.internal.telephony.IWapPushManager"

    #@7b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e
    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    .line 92
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    .line 94
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@89
    move-result-object v3

    #@8a
    .line 96
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8d
    move-result-object v4

    #@8e
    .line 98
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@91
    move-result v5

    #@92
    .line 100
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@95
    move-result v0

    #@96
    if-eqz v0, :cond_4

    #@98
    const/4 v6, 0x1

    #@99
    .line 102
    .restart local v6    # "_arg5":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9c
    move-result v0

    #@9d
    if-eqz v0, :cond_5

    #@9f
    const/4 v7, 0x1

    #@a0
    .restart local v7    # "_arg6":Z
    :goto_5
    move-object v0, p0

    #@a1
    .line 103
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IWapPushManager$Stub;->updatePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Z

    #@a4
    move-result v10

    #@a5
    .line 104
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8
    .line 105
    if-eqz v10, :cond_6

    #@aa
    const/4 v0, 0x1

    #@ab
    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@ae
    .line 106
    const/4 v0, 0x1

    #@af
    return v0

    #@b0
    .line 100
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Z
    .end local v10    # "_result":Z
    :cond_4
    const/4 v6, 0x0

    #@b1
    .restart local v6    # "_arg5":Z
    goto :goto_4

    #@b2
    .line 102
    :cond_5
    const/4 v7, 0x0

    #@b3
    .restart local v7    # "_arg6":Z
    goto :goto_5

    #@b4
    .line 105
    .restart local v10    # "_result":Z
    :cond_6
    const/4 v0, 0x0

    #@b5
    goto :goto_6

    #@b6
    .line 110
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Z
    .end local v10    # "_result":Z
    :sswitch_4
    const-string/jumbo v0, "com.android.internal.telephony.IWapPushManager"

    #@b9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bc
    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bf
    move-result-object v1

    #@c0
    .line 114
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c3
    move-result-object v2

    #@c4
    .line 116
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c7
    move-result-object v3

    #@c8
    .line 118
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cb
    move-result-object v4

    #@cc
    .line 119
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IWapPushManager$Stub;->deletePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@cf
    move-result v10

    #@d0
    .line 120
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d3
    .line 121
    if-eqz v10, :cond_7

    #@d5
    const/4 v0, 0x1

    #@d6
    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d9
    .line 122
    const/4 v0, 0x1

    #@da
    return v0

    #@db
    .line 121
    :cond_7
    const/4 v0, 0x0

    #@dc
    goto :goto_7

    #@dd
    .line 38
    nop

    #@de
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
