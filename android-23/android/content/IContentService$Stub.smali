.class public abstract Landroid/content/IContentService$Stub;
.super Landroid/os/Binder;
.source "IContentService.java"

# interfaces
.implements Landroid/content/IContentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IContentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IContentService"

.field static final TRANSACTION_addPeriodicSync:I = 0xf

.field static final TRANSACTION_addStatusChangeListener:I = 0x22

.field static final TRANSACTION_cancelRequest:I = 0x9

.field static final TRANSACTION_cancelSync:I = 0x7

.field static final TRANSACTION_cancelSyncAsUser:I = 0x8

.field static final TRANSACTION_getCurrentSyncs:I = 0x18

.field static final TRANSACTION_getCurrentSyncsAsUser:I = 0x19

.field static final TRANSACTION_getIsSyncable:I = 0x11

.field static final TRANSACTION_getIsSyncableAsUser:I = 0x12

.field static final TRANSACTION_getMasterSyncAutomatically:I = 0x16

.field static final TRANSACTION_getMasterSyncAutomaticallyAsUser:I = 0x17

.field static final TRANSACTION_getPeriodicSyncs:I = 0xe

.field static final TRANSACTION_getSyncAdapterPackagesForAuthorityAsUser:I = 0x1c

.field static final TRANSACTION_getSyncAdapterTypes:I = 0x1a

.field static final TRANSACTION_getSyncAdapterTypesAsUser:I = 0x1b

.field static final TRANSACTION_getSyncAutomatically:I = 0xa

.field static final TRANSACTION_getSyncAutomaticallyAsUser:I = 0xb

.field static final TRANSACTION_getSyncStatus:I = 0x1e

.field static final TRANSACTION_getSyncStatusAsUser:I = 0x1f

.field static final TRANSACTION_isSyncActive:I = 0x1d

.field static final TRANSACTION_isSyncPending:I = 0x20

.field static final TRANSACTION_isSyncPendingAsUser:I = 0x21

.field static final TRANSACTION_notifyChange:I = 0x3

.field static final TRANSACTION_registerContentObserver:I = 0x2

.field static final TRANSACTION_removePeriodicSync:I = 0x10

.field static final TRANSACTION_removeStatusChangeListener:I = 0x23

.field static final TRANSACTION_requestSync:I = 0x4

.field static final TRANSACTION_setIsSyncable:I = 0x13

.field static final TRANSACTION_setMasterSyncAutomatically:I = 0x14

.field static final TRANSACTION_setMasterSyncAutomaticallyAsUser:I = 0x15

.field static final TRANSACTION_setSyncAutomatically:I = 0xc

.field static final TRANSACTION_setSyncAutomaticallyAsUser:I = 0xd

.field static final TRANSACTION_sync:I = 0x5

.field static final TRANSACTION_syncAsUser:I = 0x6

.field static final TRANSACTION_unregisterContentObserver:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.content.IContentService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/IContentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;
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
    const-string/jumbo v1, "android.content.IContentService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/IContentService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/content/IContentService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/IContentService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/IContentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 36
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
    .line 657
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.content.IContentService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 46
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.content.IContentService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v4}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    #@21
    move-result-object v19

    #@22
    .line 53
    .local v19, "_arg0":Landroid/database/IContentObserver;
    move-object/from16 v0, p0

    #@24
    move-object/from16 v1, v19

    #@26
    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->unregisterContentObserver(Landroid/database/IContentObserver;)V

    #@29
    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 55
    const/4 v4, 0x1

    #@2d
    return v4

    #@2e
    .line 59
    .end local v19    # "_arg0":Landroid/database/IContentObserver;
    :sswitch_2
    const-string/jumbo v4, "android.content.IContentService"

    #@31
    move-object/from16 v0, p2

    #@33
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36
    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_0

    #@3c
    .line 62
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e
    move-object/from16 v0, p2

    #@40
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43
    move-result-object v5

    #@44
    check-cast v5, Landroid/net/Uri;

    #@46
    .line 68
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_1

    #@4c
    const/16 v24, 0x1

    #@4e
    .line 70
    .local v24, "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@51
    move-result-object v4

    #@52
    invoke-static {v4}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    #@55
    move-result-object v27

    #@56
    .line 72
    .local v27, "_arg2":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v28

    #@5a
    .line 73
    .local v28, "_arg3":I
    move-object/from16 v0, p0

    #@5c
    move/from16 v1, v24

    #@5e
    move-object/from16 v2, v27

    #@60
    move/from16 v3, v28

    #@62
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/content/IContentService$Stub;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V

    #@65
    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@68
    .line 75
    const/4 v4, 0x1

    #@69
    return v4

    #@6a
    .line 65
    .end local v24    # "_arg1":Z
    .end local v27    # "_arg2":Landroid/database/IContentObserver;
    .end local v28    # "_arg3":I
    :cond_0
    const/4 v5, 0x0

    #@6b
    .local v5, "_arg0":Landroid/net/Uri;
    goto :goto_0

    #@6c
    .line 68
    .end local v5    # "_arg0":Landroid/net/Uri;
    :cond_1
    const/16 v24, 0x0

    #@6e
    .restart local v24    # "_arg1":Z
    goto :goto_1

    #@6f
    .line 79
    .end local v24    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v4, "android.content.IContentService"

    #@72
    move-object/from16 v0, p2

    #@74
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77
    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7a
    move-result v4

    #@7b
    if-eqz v4, :cond_2

    #@7d
    .line 82
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7f
    move-object/from16 v0, p2

    #@81
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@84
    move-result-object v5

    #@85
    check-cast v5, Landroid/net/Uri;

    #@87
    .line 88
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8a
    move-result-object v4

    #@8b
    invoke-static {v4}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    #@8e
    move-result-object v6

    #@8f
    .line 90
    .local v6, "_arg1":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92
    move-result v4

    #@93
    if-eqz v4, :cond_3

    #@95
    const/4 v7, 0x1

    #@96
    .line 92
    .local v7, "_arg2":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@99
    move-result v4

    #@9a
    if-eqz v4, :cond_4

    #@9c
    const/4 v8, 0x1

    #@9d
    .line 94
    .local v8, "_arg3":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a0
    move-result v9

    #@a1
    .local v9, "_arg4":I
    move-object/from16 v4, p0

    #@a3
    .line 95
    invoke-virtual/range {v4 .. v9}, Landroid/content/IContentService$Stub;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V

    #@a6
    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a9
    .line 97
    const/4 v4, 0x1

    #@aa
    return v4

    #@ab
    .line 85
    .end local v6    # "_arg1":Landroid/database/IContentObserver;
    .end local v7    # "_arg2":Z
    .end local v8    # "_arg3":Z
    .end local v9    # "_arg4":I
    :cond_2
    const/4 v5, 0x0

    #@ac
    .restart local v5    # "_arg0":Landroid/net/Uri;
    goto :goto_2

    #@ad
    .line 90
    .end local v5    # "_arg0":Landroid/net/Uri;
    .restart local v6    # "_arg1":Landroid/database/IContentObserver;
    :cond_3
    const/4 v7, 0x0

    #@ae
    .restart local v7    # "_arg2":Z
    goto :goto_3

    #@af
    .line 92
    :cond_4
    const/4 v8, 0x0

    #@b0
    .restart local v8    # "_arg3":Z
    goto :goto_4

    #@b1
    .line 101
    .end local v6    # "_arg1":Landroid/database/IContentObserver;
    .end local v7    # "_arg2":Z
    .end local v8    # "_arg3":Z
    :sswitch_4
    const-string/jumbo v4, "android.content.IContentService"

    #@b4
    move-object/from16 v0, p2

    #@b6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b9
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bc
    move-result v4

    #@bd
    if-eqz v4, :cond_5

    #@bf
    .line 104
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c1
    move-object/from16 v0, p2

    #@c3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c6
    move-result-object v11

    #@c7
    check-cast v11, Landroid/accounts/Account;

    #@c9
    .line 110
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cc
    move-result-object v12

    #@cd
    .line 112
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d0
    move-result v4

    #@d1
    if-eqz v4, :cond_6

    #@d3
    .line 113
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d5
    move-object/from16 v0, p2

    #@d7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@da
    move-result-object v13

    #@db
    check-cast v13, Landroid/os/Bundle;

    #@dd
    .line 118
    :goto_6
    move-object/from16 v0, p0

    #@df
    invoke-virtual {v0, v11, v12, v13}, Landroid/content/IContentService$Stub;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@e2
    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e5
    .line 120
    const/4 v4, 0x1

    #@e6
    return v4

    #@e7
    .line 107
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    #@e8
    .local v11, "_arg0":Landroid/accounts/Account;
    goto :goto_5

    #@e9
    .line 116
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_6
    const/4 v13, 0x0

    #@ea
    .local v13, "_arg2":Landroid/os/Bundle;
    goto :goto_6

    #@eb
    .line 124
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":Landroid/os/Bundle;
    :sswitch_5
    const-string/jumbo v4, "android.content.IContentService"

    #@ee
    move-object/from16 v0, p2

    #@f0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f3
    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f6
    move-result v4

    #@f7
    if-eqz v4, :cond_7

    #@f9
    .line 127
    sget-object v4, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fb
    move-object/from16 v0, p2

    #@fd
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@100
    move-result-object v18

    #@101
    check-cast v18, Landroid/content/SyncRequest;

    #@103
    .line 132
    :goto_7
    move-object/from16 v0, p0

    #@105
    move-object/from16 v1, v18

    #@107
    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->sync(Landroid/content/SyncRequest;)V

    #@10a
    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10d
    .line 134
    const/4 v4, 0x1

    #@10e
    return v4

    #@10f
    .line 130
    :cond_7
    const/16 v18, 0x0

    #@111
    .local v18, "_arg0":Landroid/content/SyncRequest;
    goto :goto_7

    #@112
    .line 138
    .end local v18    # "_arg0":Landroid/content/SyncRequest;
    :sswitch_6
    const-string/jumbo v4, "android.content.IContentService"

    #@115
    move-object/from16 v0, p2

    #@117
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11a
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11d
    move-result v4

    #@11e
    if-eqz v4, :cond_8

    #@120
    .line 141
    sget-object v4, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@122
    move-object/from16 v0, p2

    #@124
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@127
    move-result-object v18

    #@128
    check-cast v18, Landroid/content/SyncRequest;

    #@12a
    .line 147
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12d
    move-result v22

    #@12e
    .line 148
    .local v22, "_arg1":I
    move-object/from16 v0, p0

    #@130
    move-object/from16 v1, v18

    #@132
    move/from16 v2, v22

    #@134
    invoke-virtual {v0, v1, v2}, Landroid/content/IContentService$Stub;->syncAsUser(Landroid/content/SyncRequest;I)V

    #@137
    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13a
    .line 150
    const/4 v4, 0x1

    #@13b
    return v4

    #@13c
    .line 144
    .end local v22    # "_arg1":I
    :cond_8
    const/16 v18, 0x0

    #@13e
    .restart local v18    # "_arg0":Landroid/content/SyncRequest;
    goto :goto_8

    #@13f
    .line 154
    .end local v18    # "_arg0":Landroid/content/SyncRequest;
    :sswitch_7
    const-string/jumbo v4, "android.content.IContentService"

    #@142
    move-object/from16 v0, p2

    #@144
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@147
    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14a
    move-result v4

    #@14b
    if-eqz v4, :cond_9

    #@14d
    .line 157
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14f
    move-object/from16 v0, p2

    #@151
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@154
    move-result-object v11

    #@155
    check-cast v11, Landroid/accounts/Account;

    #@157
    .line 163
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15a
    move-result-object v12

    #@15b
    .line 165
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15e
    move-result v4

    #@15f
    if-eqz v4, :cond_a

    #@161
    .line 166
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@163
    move-object/from16 v0, p2

    #@165
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@168
    move-result-object v26

    #@169
    check-cast v26, Landroid/content/ComponentName;

    #@16b
    .line 171
    :goto_a
    move-object/from16 v0, p0

    #@16d
    move-object/from16 v1, v26

    #@16f
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V

    #@172
    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@175
    .line 173
    const/4 v4, 0x1

    #@176
    return v4

    #@177
    .line 160
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_9
    const/4 v11, 0x0

    #@178
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_9

    #@179
    .line 169
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_a
    const/16 v26, 0x0

    #@17b
    .local v26, "_arg2":Landroid/content/ComponentName;
    goto :goto_a

    #@17c
    .line 177
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":Landroid/content/ComponentName;
    :sswitch_8
    const-string/jumbo v4, "android.content.IContentService"

    #@17f
    move-object/from16 v0, p2

    #@181
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@184
    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@187
    move-result v4

    #@188
    if-eqz v4, :cond_b

    #@18a
    .line 180
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18c
    move-object/from16 v0, p2

    #@18e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@191
    move-result-object v11

    #@192
    check-cast v11, Landroid/accounts/Account;

    #@194
    .line 186
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@197
    move-result-object v12

    #@198
    .line 188
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19b
    move-result v4

    #@19c
    if-eqz v4, :cond_c

    #@19e
    .line 189
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a0
    move-object/from16 v0, p2

    #@1a2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a5
    move-result-object v26

    #@1a6
    check-cast v26, Landroid/content/ComponentName;

    #@1a8
    .line 195
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ab
    move-result v28

    #@1ac
    .line 196
    .restart local v28    # "_arg3":I
    move-object/from16 v0, p0

    #@1ae
    move-object/from16 v1, v26

    #@1b0
    move/from16 v2, v28

    #@1b2
    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/content/IContentService$Stub;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    #@1b5
    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b8
    .line 198
    const/4 v4, 0x1

    #@1b9
    return v4

    #@1ba
    .line 183
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg3":I
    :cond_b
    const/4 v11, 0x0

    #@1bb
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_b

    #@1bc
    .line 192
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_c
    const/16 v26, 0x0

    #@1be
    .restart local v26    # "_arg2":Landroid/content/ComponentName;
    goto :goto_c

    #@1bf
    .line 202
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":Landroid/content/ComponentName;
    :sswitch_9
    const-string/jumbo v4, "android.content.IContentService"

    #@1c2
    move-object/from16 v0, p2

    #@1c4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c7
    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ca
    move-result v4

    #@1cb
    if-eqz v4, :cond_d

    #@1cd
    .line 205
    sget-object v4, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1cf
    move-object/from16 v0, p2

    #@1d1
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d4
    move-result-object v18

    #@1d5
    check-cast v18, Landroid/content/SyncRequest;

    #@1d7
    .line 210
    :goto_d
    move-object/from16 v0, p0

    #@1d9
    move-object/from16 v1, v18

    #@1db
    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->cancelRequest(Landroid/content/SyncRequest;)V

    #@1de
    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e1
    .line 212
    const/4 v4, 0x1

    #@1e2
    return v4

    #@1e3
    .line 208
    :cond_d
    const/16 v18, 0x0

    #@1e5
    .restart local v18    # "_arg0":Landroid/content/SyncRequest;
    goto :goto_d

    #@1e6
    .line 216
    .end local v18    # "_arg0":Landroid/content/SyncRequest;
    :sswitch_a
    const-string/jumbo v4, "android.content.IContentService"

    #@1e9
    move-object/from16 v0, p2

    #@1eb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ee
    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f1
    move-result v4

    #@1f2
    if-eqz v4, :cond_e

    #@1f4
    .line 219
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f6
    move-object/from16 v0, p2

    #@1f8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1fb
    move-result-object v11

    #@1fc
    check-cast v11, Landroid/accounts/Account;

    #@1fe
    .line 225
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@201
    move-result-object v12

    #@202
    .line 226
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@204
    invoke-virtual {v0, v11, v12}, Landroid/content/IContentService$Stub;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    #@207
    move-result v33

    #@208
    .line 227
    .local v33, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20b
    .line 228
    if-eqz v33, :cond_f

    #@20d
    const/4 v4, 0x1

    #@20e
    :goto_f
    move-object/from16 v0, p3

    #@210
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@213
    .line 229
    const/4 v4, 0x1

    #@214
    return v4

    #@215
    .line 222
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :cond_e
    const/4 v11, 0x0

    #@216
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_e

    #@217
    .line 228
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v33    # "_result":Z
    :cond_f
    const/4 v4, 0x0

    #@218
    goto :goto_f

    #@219
    .line 233
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "android.content.IContentService"

    #@21c
    move-object/from16 v0, p2

    #@21e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@221
    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@224
    move-result v4

    #@225
    if-eqz v4, :cond_10

    #@227
    .line 236
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@229
    move-object/from16 v0, p2

    #@22b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22e
    move-result-object v11

    #@22f
    check-cast v11, Landroid/accounts/Account;

    #@231
    .line 242
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@234
    move-result-object v12

    #@235
    .line 244
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@238
    move-result v25

    #@239
    .line 245
    .local v25, "_arg2":I
    move-object/from16 v0, p0

    #@23b
    move/from16 v1, v25

    #@23d
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    #@240
    move-result v33

    #@241
    .line 246
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@244
    .line 247
    if-eqz v33, :cond_11

    #@246
    const/4 v4, 0x1

    #@247
    :goto_11
    move-object/from16 v0, p3

    #@249
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@24c
    .line 248
    const/4 v4, 0x1

    #@24d
    return v4

    #@24e
    .line 239
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v25    # "_arg2":I
    .end local v33    # "_result":Z
    :cond_10
    const/4 v11, 0x0

    #@24f
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_10

    #@250
    .line 247
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v25    # "_arg2":I
    .restart local v33    # "_result":Z
    :cond_11
    const/4 v4, 0x0

    #@251
    goto :goto_11

    #@252
    .line 252
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v25    # "_arg2":I
    .end local v33    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.content.IContentService"

    #@255
    move-object/from16 v0, p2

    #@257
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25a
    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25d
    move-result v4

    #@25e
    if-eqz v4, :cond_12

    #@260
    .line 255
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@262
    move-object/from16 v0, p2

    #@264
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@267
    move-result-object v11

    #@268
    check-cast v11, Landroid/accounts/Account;

    #@26a
    .line 261
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26d
    move-result-object v12

    #@26e
    .line 263
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@271
    move-result v4

    #@272
    if-eqz v4, :cond_13

    #@274
    const/4 v7, 0x1

    #@275
    .line 264
    .restart local v7    # "_arg2":Z
    :goto_13
    move-object/from16 v0, p0

    #@277
    invoke-virtual {v0, v11, v12, v7}, Landroid/content/IContentService$Stub;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    #@27a
    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27d
    .line 266
    const/4 v4, 0x1

    #@27e
    return v4

    #@27f
    .line 258
    .end local v7    # "_arg2":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_12
    const/4 v11, 0x0

    #@280
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_12

    #@281
    .line 263
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_13
    const/4 v7, 0x0

    #@282
    .restart local v7    # "_arg2":Z
    goto :goto_13

    #@283
    .line 270
    .end local v7    # "_arg2":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v4, "android.content.IContentService"

    #@286
    move-object/from16 v0, p2

    #@288
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28b
    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28e
    move-result v4

    #@28f
    if-eqz v4, :cond_14

    #@291
    .line 273
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@293
    move-object/from16 v0, p2

    #@295
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@298
    move-result-object v11

    #@299
    check-cast v11, Landroid/accounts/Account;

    #@29b
    .line 279
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29e
    move-result-object v12

    #@29f
    .line 281
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a2
    move-result v4

    #@2a3
    if-eqz v4, :cond_15

    #@2a5
    const/4 v7, 0x1

    #@2a6
    .line 283
    .restart local v7    # "_arg2":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a9
    move-result v28

    #@2aa
    .line 284
    .restart local v28    # "_arg3":I
    move-object/from16 v0, p0

    #@2ac
    move/from16 v1, v28

    #@2ae
    invoke-virtual {v0, v11, v12, v7, v1}, Landroid/content/IContentService$Stub;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    #@2b1
    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b4
    .line 286
    const/4 v4, 0x1

    #@2b5
    return v4

    #@2b6
    .line 276
    .end local v7    # "_arg2":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg3":I
    :cond_14
    const/4 v11, 0x0

    #@2b7
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_14

    #@2b8
    .line 281
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_15
    const/4 v7, 0x0

    #@2b9
    .restart local v7    # "_arg2":Z
    goto :goto_15

    #@2ba
    .line 290
    .end local v7    # "_arg2":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v4, "android.content.IContentService"

    #@2bd
    move-object/from16 v0, p2

    #@2bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c2
    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c5
    move-result v4

    #@2c6
    if-eqz v4, :cond_16

    #@2c8
    .line 293
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2ca
    move-object/from16 v0, p2

    #@2cc
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2cf
    move-result-object v11

    #@2d0
    check-cast v11, Landroid/accounts/Account;

    #@2d2
    .line 299
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d5
    move-result-object v12

    #@2d6
    .line 301
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d9
    move-result v4

    #@2da
    if-eqz v4, :cond_17

    #@2dc
    .line 302
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2de
    move-object/from16 v0, p2

    #@2e0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e3
    move-result-object v26

    #@2e4
    check-cast v26, Landroid/content/ComponentName;

    #@2e6
    .line 307
    :goto_17
    move-object/from16 v0, p0

    #@2e8
    move-object/from16 v1, v26

    #@2ea
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;

    #@2ed
    move-result-object v31

    #@2ee
    .line 308
    .local v31, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f1
    .line 309
    move-object/from16 v0, p3

    #@2f3
    move-object/from16 v1, v31

    #@2f5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@2f8
    .line 310
    const/4 v4, 0x1

    #@2f9
    return v4

    #@2fa
    .line 296
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v31    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    :cond_16
    const/4 v11, 0x0

    #@2fb
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_16

    #@2fc
    .line 305
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_17
    const/16 v26, 0x0

    #@2fe
    .restart local v26    # "_arg2":Landroid/content/ComponentName;
    goto :goto_17

    #@2ff
    .line 314
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":Landroid/content/ComponentName;
    :sswitch_f
    const-string/jumbo v4, "android.content.IContentService"

    #@302
    move-object/from16 v0, p2

    #@304
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@307
    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30a
    move-result v4

    #@30b
    if-eqz v4, :cond_18

    #@30d
    .line 317
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30f
    move-object/from16 v0, p2

    #@311
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@314
    move-result-object v11

    #@315
    check-cast v11, Landroid/accounts/Account;

    #@317
    .line 323
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31a
    move-result-object v12

    #@31b
    .line 325
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31e
    move-result v4

    #@31f
    if-eqz v4, :cond_19

    #@321
    .line 326
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@323
    move-object/from16 v0, p2

    #@325
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@328
    move-result-object v13

    #@329
    check-cast v13, Landroid/os/Bundle;

    #@32b
    .line 332
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@32e
    move-result-wide v14

    #@32f
    .local v14, "_arg3":J
    move-object/from16 v10, p0

    #@331
    .line 333
    invoke-virtual/range {v10 .. v15}, Landroid/content/IContentService$Stub;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    #@334
    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@337
    .line 335
    const/4 v4, 0x1

    #@338
    return v4

    #@339
    .line 320
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":J
    :cond_18
    const/4 v11, 0x0

    #@33a
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_18

    #@33b
    .line 329
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_19
    const/4 v13, 0x0

    #@33c
    .restart local v13    # "_arg2":Landroid/os/Bundle;
    goto :goto_19

    #@33d
    .line 339
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":Landroid/os/Bundle;
    :sswitch_10
    const-string/jumbo v4, "android.content.IContentService"

    #@340
    move-object/from16 v0, p2

    #@342
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@345
    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@348
    move-result v4

    #@349
    if-eqz v4, :cond_1a

    #@34b
    .line 342
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@34d
    move-object/from16 v0, p2

    #@34f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@352
    move-result-object v11

    #@353
    check-cast v11, Landroid/accounts/Account;

    #@355
    .line 348
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@358
    move-result-object v12

    #@359
    .line 350
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35c
    move-result v4

    #@35d
    if-eqz v4, :cond_1b

    #@35f
    .line 351
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@361
    move-object/from16 v0, p2

    #@363
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@366
    move-result-object v13

    #@367
    check-cast v13, Landroid/os/Bundle;

    #@369
    .line 356
    :goto_1b
    move-object/from16 v0, p0

    #@36b
    invoke-virtual {v0, v11, v12, v13}, Landroid/content/IContentService$Stub;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@36e
    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@371
    .line 358
    const/4 v4, 0x1

    #@372
    return v4

    #@373
    .line 345
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_1a
    const/4 v11, 0x0

    #@374
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_1a

    #@375
    .line 354
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_1b
    const/4 v13, 0x0

    #@376
    .restart local v13    # "_arg2":Landroid/os/Bundle;
    goto :goto_1b

    #@377
    .line 362
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":Landroid/os/Bundle;
    :sswitch_11
    const-string/jumbo v4, "android.content.IContentService"

    #@37a
    move-object/from16 v0, p2

    #@37c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37f
    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@382
    move-result v4

    #@383
    if-eqz v4, :cond_1c

    #@385
    .line 365
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@387
    move-object/from16 v0, p2

    #@389
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@38c
    move-result-object v11

    #@38d
    check-cast v11, Landroid/accounts/Account;

    #@38f
    .line 371
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@392
    move-result-object v12

    #@393
    .line 372
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@395
    invoke-virtual {v0, v11, v12}, Landroid/content/IContentService$Stub;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    #@398
    move-result v29

    #@399
    .line 373
    .local v29, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39c
    .line 374
    move-object/from16 v0, p3

    #@39e
    move/from16 v1, v29

    #@3a0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3a3
    .line 375
    const/4 v4, 0x1

    #@3a4
    return v4

    #@3a5
    .line 368
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v29    # "_result":I
    :cond_1c
    const/4 v11, 0x0

    #@3a6
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_1c

    #@3a7
    .line 379
    .end local v11    # "_arg0":Landroid/accounts/Account;
    :sswitch_12
    const-string/jumbo v4, "android.content.IContentService"

    #@3aa
    move-object/from16 v0, p2

    #@3ac
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3af
    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b2
    move-result v4

    #@3b3
    if-eqz v4, :cond_1d

    #@3b5
    .line 382
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b7
    move-object/from16 v0, p2

    #@3b9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3bc
    move-result-object v11

    #@3bd
    check-cast v11, Landroid/accounts/Account;

    #@3bf
    .line 388
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c2
    move-result-object v12

    #@3c3
    .line 390
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c6
    move-result v25

    #@3c7
    .line 391
    .restart local v25    # "_arg2":I
    move-object/from16 v0, p0

    #@3c9
    move/from16 v1, v25

    #@3cb
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    #@3ce
    move-result v29

    #@3cf
    .line 392
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d2
    .line 393
    move-object/from16 v0, p3

    #@3d4
    move/from16 v1, v29

    #@3d6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3d9
    .line 394
    const/4 v4, 0x1

    #@3da
    return v4

    #@3db
    .line 385
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v25    # "_arg2":I
    .end local v29    # "_result":I
    :cond_1d
    const/4 v11, 0x0

    #@3dc
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_1d

    #@3dd
    .line 398
    .end local v11    # "_arg0":Landroid/accounts/Account;
    :sswitch_13
    const-string/jumbo v4, "android.content.IContentService"

    #@3e0
    move-object/from16 v0, p2

    #@3e2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e5
    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e8
    move-result v4

    #@3e9
    if-eqz v4, :cond_1e

    #@3eb
    .line 401
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3ed
    move-object/from16 v0, p2

    #@3ef
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f2
    move-result-object v11

    #@3f3
    check-cast v11, Landroid/accounts/Account;

    #@3f5
    .line 407
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3f8
    move-result-object v12

    #@3f9
    .line 409
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3fc
    move-result v25

    #@3fd
    .line 410
    .restart local v25    # "_arg2":I
    move-object/from16 v0, p0

    #@3ff
    move/from16 v1, v25

    #@401
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@404
    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@407
    .line 412
    const/4 v4, 0x1

    #@408
    return v4

    #@409
    .line 404
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v25    # "_arg2":I
    :cond_1e
    const/4 v11, 0x0

    #@40a
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_1e

    #@40b
    .line 416
    .end local v11    # "_arg0":Landroid/accounts/Account;
    :sswitch_14
    const-string/jumbo v4, "android.content.IContentService"

    #@40e
    move-object/from16 v0, p2

    #@410
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@413
    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@416
    move-result v4

    #@417
    if-eqz v4, :cond_1f

    #@419
    const/16 v21, 0x1

    #@41b
    .line 419
    .local v21, "_arg0":Z
    :goto_1f
    move-object/from16 v0, p0

    #@41d
    move/from16 v1, v21

    #@41f
    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->setMasterSyncAutomatically(Z)V

    #@422
    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@425
    .line 421
    const/4 v4, 0x1

    #@426
    return v4

    #@427
    .line 418
    .end local v21    # "_arg0":Z
    :cond_1f
    const/16 v21, 0x0

    #@429
    .restart local v21    # "_arg0":Z
    goto :goto_1f

    #@42a
    .line 425
    .end local v21    # "_arg0":Z
    :sswitch_15
    const-string/jumbo v4, "android.content.IContentService"

    #@42d
    move-object/from16 v0, p2

    #@42f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@432
    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@435
    move-result v4

    #@436
    if-eqz v4, :cond_20

    #@438
    const/16 v21, 0x1

    #@43a
    .line 429
    .restart local v21    # "_arg0":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@43d
    move-result v22

    #@43e
    .line 430
    .restart local v22    # "_arg1":I
    move-object/from16 v0, p0

    #@440
    move/from16 v1, v21

    #@442
    move/from16 v2, v22

    #@444
    invoke-virtual {v0, v1, v2}, Landroid/content/IContentService$Stub;->setMasterSyncAutomaticallyAsUser(ZI)V

    #@447
    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@44a
    .line 432
    const/4 v4, 0x1

    #@44b
    return v4

    #@44c
    .line 427
    .end local v21    # "_arg0":Z
    .end local v22    # "_arg1":I
    :cond_20
    const/16 v21, 0x0

    #@44e
    .restart local v21    # "_arg0":Z
    goto :goto_20

    #@44f
    .line 436
    .end local v21    # "_arg0":Z
    :sswitch_16
    const-string/jumbo v4, "android.content.IContentService"

    #@452
    move-object/from16 v0, p2

    #@454
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@457
    .line 437
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getMasterSyncAutomatically()Z

    #@45a
    move-result v33

    #@45b
    .line 438
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@45e
    .line 439
    if-eqz v33, :cond_21

    #@460
    const/4 v4, 0x1

    #@461
    :goto_21
    move-object/from16 v0, p3

    #@463
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@466
    .line 440
    const/4 v4, 0x1

    #@467
    return v4

    #@468
    .line 439
    :cond_21
    const/4 v4, 0x0

    #@469
    goto :goto_21

    #@46a
    .line 444
    .end local v33    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "android.content.IContentService"

    #@46d
    move-object/from16 v0, p2

    #@46f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@472
    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@475
    move-result v16

    #@476
    .line 447
    .local v16, "_arg0":I
    move-object/from16 v0, p0

    #@478
    move/from16 v1, v16

    #@47a
    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->getMasterSyncAutomaticallyAsUser(I)Z

    #@47d
    move-result v33

    #@47e
    .line 448
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@481
    .line 449
    if-eqz v33, :cond_22

    #@483
    const/4 v4, 0x1

    #@484
    :goto_22
    move-object/from16 v0, p3

    #@486
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@489
    .line 450
    const/4 v4, 0x1

    #@48a
    return v4

    #@48b
    .line 449
    :cond_22
    const/4 v4, 0x0

    #@48c
    goto :goto_22

    #@48d
    .line 454
    .end local v16    # "_arg0":I
    .end local v33    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "android.content.IContentService"

    #@490
    move-object/from16 v0, p2

    #@492
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@495
    .line 455
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getCurrentSyncs()Ljava/util/List;

    #@498
    move-result-object v32

    #@499
    .line 456
    .local v32, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49c
    .line 457
    move-object/from16 v0, p3

    #@49e
    move-object/from16 v1, v32

    #@4a0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@4a3
    .line 458
    const/4 v4, 0x1

    #@4a4
    return v4

    #@4a5
    .line 462
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :sswitch_19
    const-string/jumbo v4, "android.content.IContentService"

    #@4a8
    move-object/from16 v0, p2

    #@4aa
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ad
    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4b0
    move-result v16

    #@4b1
    .line 465
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    #@4b3
    move/from16 v1, v16

    #@4b5
    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->getCurrentSyncsAsUser(I)Ljava/util/List;

    #@4b8
    move-result-object v32

    #@4b9
    .line 466
    .restart local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4bc
    .line 467
    move-object/from16 v0, p3

    #@4be
    move-object/from16 v1, v32

    #@4c0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@4c3
    .line 468
    const/4 v4, 0x1

    #@4c4
    return v4

    #@4c5
    .line 472
    .end local v16    # "_arg0":I
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :sswitch_1a
    const-string/jumbo v4, "android.content.IContentService"

    #@4c8
    move-object/from16 v0, p2

    #@4ca
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4cd
    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    #@4d0
    move-result-object v34

    #@4d1
    .line 474
    .local v34, "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4d4
    .line 475
    const/4 v4, 0x1

    #@4d5
    move-object/from16 v0, p3

    #@4d7
    move-object/from16 v1, v34

    #@4d9
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@4dc
    .line 476
    const/4 v4, 0x1

    #@4dd
    return v4

    #@4de
    .line 480
    .end local v34    # "_result":[Landroid/content/SyncAdapterType;
    :sswitch_1b
    const-string/jumbo v4, "android.content.IContentService"

    #@4e1
    move-object/from16 v0, p2

    #@4e3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e6
    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4e9
    move-result v16

    #@4ea
    .line 483
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    #@4ec
    move/from16 v1, v16

    #@4ee
    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    #@4f1
    move-result-object v34

    #@4f2
    .line 484
    .restart local v34    # "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f5
    .line 485
    const/4 v4, 0x1

    #@4f6
    move-object/from16 v0, p3

    #@4f8
    move-object/from16 v1, v34

    #@4fa
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@4fd
    .line 486
    const/4 v4, 0x1

    #@4fe
    return v4

    #@4ff
    .line 490
    .end local v16    # "_arg0":I
    .end local v34    # "_result":[Landroid/content/SyncAdapterType;
    :sswitch_1c
    const-string/jumbo v4, "android.content.IContentService"

    #@502
    move-object/from16 v0, p2

    #@504
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@507
    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@50a
    move-result-object v20

    #@50b
    .line 494
    .local v20, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@50e
    move-result v22

    #@50f
    .line 495
    .restart local v22    # "_arg1":I
    move-object/from16 v0, p0

    #@511
    move-object/from16 v1, v20

    #@513
    move/from16 v2, v22

    #@515
    invoke-virtual {v0, v1, v2}, Landroid/content/IContentService$Stub;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    #@518
    move-result-object v35

    #@519
    .line 496
    .local v35, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@51c
    .line 497
    move-object/from16 v0, p3

    #@51e
    move-object/from16 v1, v35

    #@520
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@523
    .line 498
    const/4 v4, 0x1

    #@524
    return v4

    #@525
    .line 502
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":I
    .end local v35    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v4, "android.content.IContentService"

    #@528
    move-object/from16 v0, p2

    #@52a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52d
    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@530
    move-result v4

    #@531
    if-eqz v4, :cond_23

    #@533
    .line 505
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@535
    move-object/from16 v0, p2

    #@537
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@53a
    move-result-object v11

    #@53b
    check-cast v11, Landroid/accounts/Account;

    #@53d
    .line 511
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@540
    move-result-object v12

    #@541
    .line 513
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@544
    move-result v4

    #@545
    if-eqz v4, :cond_24

    #@547
    .line 514
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@549
    move-object/from16 v0, p2

    #@54b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@54e
    move-result-object v26

    #@54f
    check-cast v26, Landroid/content/ComponentName;

    #@551
    .line 519
    :goto_24
    move-object/from16 v0, p0

    #@553
    move-object/from16 v1, v26

    #@555
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    #@558
    move-result v33

    #@559
    .line 520
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@55c
    .line 521
    if-eqz v33, :cond_25

    #@55e
    const/4 v4, 0x1

    #@55f
    :goto_25
    move-object/from16 v0, p3

    #@561
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@564
    .line 522
    const/4 v4, 0x1

    #@565
    return v4

    #@566
    .line 508
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :cond_23
    const/4 v11, 0x0

    #@567
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_23

    #@568
    .line 517
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_24
    const/16 v26, 0x0

    #@56a
    .restart local v26    # "_arg2":Landroid/content/ComponentName;
    goto :goto_24

    #@56b
    .line 521
    .end local v26    # "_arg2":Landroid/content/ComponentName;
    .restart local v33    # "_result":Z
    :cond_25
    const/4 v4, 0x0

    #@56c
    goto :goto_25

    #@56d
    .line 526
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_1e
    const-string/jumbo v4, "android.content.IContentService"

    #@570
    move-object/from16 v0, p2

    #@572
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@575
    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@578
    move-result v4

    #@579
    if-eqz v4, :cond_26

    #@57b
    .line 529
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@57d
    move-object/from16 v0, p2

    #@57f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@582
    move-result-object v11

    #@583
    check-cast v11, Landroid/accounts/Account;

    #@585
    .line 535
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@588
    move-result-object v12

    #@589
    .line 537
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@58c
    move-result v4

    #@58d
    if-eqz v4, :cond_27

    #@58f
    .line 538
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@591
    move-object/from16 v0, p2

    #@593
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@596
    move-result-object v26

    #@597
    check-cast v26, Landroid/content/ComponentName;

    #@599
    .line 543
    :goto_27
    move-object/from16 v0, p0

    #@59b
    move-object/from16 v1, v26

    #@59d
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;

    #@5a0
    move-result-object v30

    #@5a1
    .line 544
    .local v30, "_result":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5a4
    .line 545
    if-eqz v30, :cond_28

    #@5a6
    .line 546
    const/4 v4, 0x1

    #@5a7
    move-object/from16 v0, p3

    #@5a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5ac
    .line 547
    const/4 v4, 0x1

    #@5ad
    move-object/from16 v0, v30

    #@5af
    move-object/from16 v1, p3

    #@5b1
    invoke-virtual {v0, v1, v4}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@5b4
    .line 552
    :goto_28
    const/4 v4, 0x1

    #@5b5
    return v4

    #@5b6
    .line 532
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":Landroid/content/SyncStatusInfo;
    :cond_26
    const/4 v11, 0x0

    #@5b7
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_26

    #@5b8
    .line 541
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_27
    const/16 v26, 0x0

    #@5ba
    .restart local v26    # "_arg2":Landroid/content/ComponentName;
    goto :goto_27

    #@5bb
    .line 550
    .end local v26    # "_arg2":Landroid/content/ComponentName;
    .restart local v30    # "_result":Landroid/content/SyncStatusInfo;
    :cond_28
    const/4 v4, 0x0

    #@5bc
    move-object/from16 v0, p3

    #@5be
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5c1
    goto :goto_28

    #@5c2
    .line 556
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":Landroid/content/SyncStatusInfo;
    :sswitch_1f
    const-string/jumbo v4, "android.content.IContentService"

    #@5c5
    move-object/from16 v0, p2

    #@5c7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5ca
    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5cd
    move-result v4

    #@5ce
    if-eqz v4, :cond_29

    #@5d0
    .line 559
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5d2
    move-object/from16 v0, p2

    #@5d4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5d7
    move-result-object v11

    #@5d8
    check-cast v11, Landroid/accounts/Account;

    #@5da
    .line 565
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5dd
    move-result-object v12

    #@5de
    .line 567
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5e1
    move-result v4

    #@5e2
    if-eqz v4, :cond_2a

    #@5e4
    .line 568
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5e6
    move-object/from16 v0, p2

    #@5e8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5eb
    move-result-object v26

    #@5ec
    check-cast v26, Landroid/content/ComponentName;

    #@5ee
    .line 574
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f1
    move-result v28

    #@5f2
    .line 575
    .restart local v28    # "_arg3":I
    move-object/from16 v0, p0

    #@5f4
    move-object/from16 v1, v26

    #@5f6
    move/from16 v2, v28

    #@5f8
    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/content/IContentService$Stub;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    #@5fb
    move-result-object v30

    #@5fc
    .line 576
    .restart local v30    # "_result":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ff
    .line 577
    if-eqz v30, :cond_2b

    #@601
    .line 578
    const/4 v4, 0x1

    #@602
    move-object/from16 v0, p3

    #@604
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@607
    .line 579
    const/4 v4, 0x1

    #@608
    move-object/from16 v0, v30

    #@60a
    move-object/from16 v1, p3

    #@60c
    invoke-virtual {v0, v1, v4}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@60f
    .line 584
    :goto_2b
    const/4 v4, 0x1

    #@610
    return v4

    #@611
    .line 562
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg3":I
    .end local v30    # "_result":Landroid/content/SyncStatusInfo;
    :cond_29
    const/4 v11, 0x0

    #@612
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_29

    #@613
    .line 571
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_2a
    const/16 v26, 0x0

    #@615
    .restart local v26    # "_arg2":Landroid/content/ComponentName;
    goto :goto_2a

    #@616
    .line 582
    .end local v26    # "_arg2":Landroid/content/ComponentName;
    .restart local v28    # "_arg3":I
    .restart local v30    # "_result":Landroid/content/SyncStatusInfo;
    :cond_2b
    const/4 v4, 0x0

    #@617
    move-object/from16 v0, p3

    #@619
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@61c
    goto :goto_2b

    #@61d
    .line 588
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg3":I
    .end local v30    # "_result":Landroid/content/SyncStatusInfo;
    :sswitch_20
    const-string/jumbo v4, "android.content.IContentService"

    #@620
    move-object/from16 v0, p2

    #@622
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@625
    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@628
    move-result v4

    #@629
    if-eqz v4, :cond_2c

    #@62b
    .line 591
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@62d
    move-object/from16 v0, p2

    #@62f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@632
    move-result-object v11

    #@633
    check-cast v11, Landroid/accounts/Account;

    #@635
    .line 597
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@638
    move-result-object v12

    #@639
    .line 599
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63c
    move-result v4

    #@63d
    if-eqz v4, :cond_2d

    #@63f
    .line 600
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@641
    move-object/from16 v0, p2

    #@643
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@646
    move-result-object v26

    #@647
    check-cast v26, Landroid/content/ComponentName;

    #@649
    .line 605
    :goto_2d
    move-object/from16 v0, p0

    #@64b
    move-object/from16 v1, v26

    #@64d
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    #@650
    move-result v33

    #@651
    .line 606
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@654
    .line 607
    if-eqz v33, :cond_2e

    #@656
    const/4 v4, 0x1

    #@657
    :goto_2e
    move-object/from16 v0, p3

    #@659
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@65c
    .line 608
    const/4 v4, 0x1

    #@65d
    return v4

    #@65e
    .line 594
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :cond_2c
    const/4 v11, 0x0

    #@65f
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_2c

    #@660
    .line 603
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_2d
    const/16 v26, 0x0

    #@662
    .restart local v26    # "_arg2":Landroid/content/ComponentName;
    goto :goto_2d

    #@663
    .line 607
    .end local v26    # "_arg2":Landroid/content/ComponentName;
    .restart local v33    # "_result":Z
    :cond_2e
    const/4 v4, 0x0

    #@664
    goto :goto_2e

    #@665
    .line 612
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_21
    const-string/jumbo v4, "android.content.IContentService"

    #@668
    move-object/from16 v0, p2

    #@66a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66d
    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@670
    move-result v4

    #@671
    if-eqz v4, :cond_2f

    #@673
    .line 615
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@675
    move-object/from16 v0, p2

    #@677
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@67a
    move-result-object v11

    #@67b
    check-cast v11, Landroid/accounts/Account;

    #@67d
    .line 621
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@680
    move-result-object v12

    #@681
    .line 623
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@684
    move-result v4

    #@685
    if-eqz v4, :cond_30

    #@687
    .line 624
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@689
    move-object/from16 v0, p2

    #@68b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@68e
    move-result-object v26

    #@68f
    check-cast v26, Landroid/content/ComponentName;

    #@691
    .line 630
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@694
    move-result v28

    #@695
    .line 631
    .restart local v28    # "_arg3":I
    move-object/from16 v0, p0

    #@697
    move-object/from16 v1, v26

    #@699
    move/from16 v2, v28

    #@69b
    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/content/IContentService$Stub;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    #@69e
    move-result v33

    #@69f
    .line 632
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a2
    .line 633
    if-eqz v33, :cond_31

    #@6a4
    const/4 v4, 0x1

    #@6a5
    :goto_31
    move-object/from16 v0, p3

    #@6a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6aa
    .line 634
    const/4 v4, 0x1

    #@6ab
    return v4

    #@6ac
    .line 618
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg3":I
    .end local v33    # "_result":Z
    :cond_2f
    const/4 v11, 0x0

    #@6ad
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_2f

    #@6ae
    .line 627
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_30
    const/16 v26, 0x0

    #@6b0
    .restart local v26    # "_arg2":Landroid/content/ComponentName;
    goto :goto_30

    #@6b1
    .line 633
    .end local v26    # "_arg2":Landroid/content/ComponentName;
    .restart local v28    # "_arg3":I
    .restart local v33    # "_result":Z
    :cond_31
    const/4 v4, 0x0

    #@6b2
    goto :goto_31

    #@6b3
    .line 638
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg3":I
    .end local v33    # "_result":Z
    :sswitch_22
    const-string/jumbo v4, "android.content.IContentService"

    #@6b6
    move-object/from16 v0, p2

    #@6b8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6bb
    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6be
    move-result v16

    #@6bf
    .line 642
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6c2
    move-result-object v4

    #@6c3
    invoke-static {v4}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    #@6c6
    move-result-object v23

    #@6c7
    .line 643
    .local v23, "_arg1":Landroid/content/ISyncStatusObserver;
    move-object/from16 v0, p0

    #@6c9
    move/from16 v1, v16

    #@6cb
    move-object/from16 v2, v23

    #@6cd
    invoke-virtual {v0, v1, v2}, Landroid/content/IContentService$Stub;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    #@6d0
    .line 644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d3
    .line 645
    const/4 v4, 0x1

    #@6d4
    return v4

    #@6d5
    .line 649
    .end local v16    # "_arg0":I
    .end local v23    # "_arg1":Landroid/content/ISyncStatusObserver;
    :sswitch_23
    const-string/jumbo v4, "android.content.IContentService"

    #@6d8
    move-object/from16 v0, p2

    #@6da
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6dd
    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6e0
    move-result-object v4

    #@6e1
    invoke-static {v4}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    #@6e4
    move-result-object v17

    #@6e5
    .line 652
    .local v17, "_arg0":Landroid/content/ISyncStatusObserver;
    move-object/from16 v0, p0

    #@6e7
    move-object/from16 v1, v17

    #@6e9
    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V

    #@6ec
    .line 653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6ef
    .line 654
    const/4 v4, 0x1

    #@6f0
    return v4

    #@6f1
    .line 41
    nop

    #@6f2
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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
