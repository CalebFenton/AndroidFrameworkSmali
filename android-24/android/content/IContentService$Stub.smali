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

.field static final TRANSACTION_getCache:I = 0x25

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

.field static final TRANSACTION_putCache:I = 0x24

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
    .locals 37
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
    .line 707
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
    const/16 v25, 0x1

    #@4e
    .line 70
    .local v25, "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@51
    move-result-object v4

    #@52
    invoke-static {v4}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    #@55
    move-result-object v28

    #@56
    .line 72
    .local v28, "_arg2":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v8

    #@5a
    .line 73
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    #@5c
    move/from16 v1, v25

    #@5e
    move-object/from16 v2, v28

    #@60
    invoke-virtual {v0, v5, v1, v2, v8}, Landroid/content/IContentService$Stub;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V

    #@63
    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@66
    .line 75
    const/4 v4, 0x1

    #@67
    return v4

    #@68
    .line 65
    .end local v8    # "_arg3":I
    .end local v25    # "_arg1":Z
    .end local v28    # "_arg2":Landroid/database/IContentObserver;
    :cond_0
    const/4 v5, 0x0

    #@69
    .local v5, "_arg0":Landroid/net/Uri;
    goto :goto_0

    #@6a
    .line 68
    .end local v5    # "_arg0":Landroid/net/Uri;
    :cond_1
    const/16 v25, 0x0

    #@6c
    .restart local v25    # "_arg1":Z
    goto :goto_1

    #@6d
    .line 79
    .end local v25    # "_arg1":Z
    :sswitch_3
    const-string/jumbo v4, "android.content.IContentService"

    #@70
    move-object/from16 v0, p2

    #@72
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@75
    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@78
    move-result v4

    #@79
    if-eqz v4, :cond_2

    #@7b
    .line 82
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7d
    move-object/from16 v0, p2

    #@7f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@82
    move-result-object v5

    #@83
    check-cast v5, Landroid/net/Uri;

    #@85
    .line 88
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@88
    move-result-object v4

    #@89
    invoke-static {v4}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    #@8c
    move-result-object v6

    #@8d
    .line 90
    .local v6, "_arg1":Landroid/database/IContentObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@90
    move-result v4

    #@91
    if-eqz v4, :cond_3

    #@93
    const/4 v7, 0x1

    #@94
    .line 92
    .local v7, "_arg2":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@97
    move-result v8

    #@98
    .line 94
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9b
    move-result v9

    #@9c
    .local v9, "_arg4":I
    move-object/from16 v4, p0

    #@9e
    .line 95
    invoke-virtual/range {v4 .. v9}, Landroid/content/IContentService$Stub;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZII)V

    #@a1
    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a4
    .line 97
    const/4 v4, 0x1

    #@a5
    return v4

    #@a6
    .line 85
    .end local v6    # "_arg1":Landroid/database/IContentObserver;
    .end local v7    # "_arg2":Z
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :cond_2
    const/4 v5, 0x0

    #@a7
    .restart local v5    # "_arg0":Landroid/net/Uri;
    goto :goto_2

    #@a8
    .line 90
    .end local v5    # "_arg0":Landroid/net/Uri;
    .restart local v6    # "_arg1":Landroid/database/IContentObserver;
    :cond_3
    const/4 v7, 0x0

    #@a9
    .restart local v7    # "_arg2":Z
    goto :goto_3

    #@aa
    .line 101
    .end local v6    # "_arg1":Landroid/database/IContentObserver;
    .end local v7    # "_arg2":Z
    :sswitch_4
    const-string/jumbo v4, "android.content.IContentService"

    #@ad
    move-object/from16 v0, p2

    #@af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b2
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b5
    move-result v4

    #@b6
    if-eqz v4, :cond_4

    #@b8
    .line 104
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ba
    move-object/from16 v0, p2

    #@bc
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bf
    move-result-object v11

    #@c0
    check-cast v11, Landroid/accounts/Account;

    #@c2
    .line 110
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c5
    move-result-object v12

    #@c6
    .line 112
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c9
    move-result v4

    #@ca
    if-eqz v4, :cond_5

    #@cc
    .line 113
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ce
    move-object/from16 v0, p2

    #@d0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d3
    move-result-object v13

    #@d4
    check-cast v13, Landroid/os/Bundle;

    #@d6
    .line 118
    :goto_5
    move-object/from16 v0, p0

    #@d8
    invoke-virtual {v0, v11, v12, v13}, Landroid/content/IContentService$Stub;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@db
    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@de
    .line 120
    const/4 v4, 0x1

    #@df
    return v4

    #@e0
    .line 107
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    #@e1
    .local v11, "_arg0":Landroid/accounts/Account;
    goto :goto_4

    #@e2
    .line 116
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    #@e3
    .local v13, "_arg2":Landroid/os/Bundle;
    goto :goto_5

    #@e4
    .line 124
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":Landroid/os/Bundle;
    :sswitch_5
    const-string/jumbo v4, "android.content.IContentService"

    #@e7
    move-object/from16 v0, p2

    #@e9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ec
    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ef
    move-result v4

    #@f0
    if-eqz v4, :cond_6

    #@f2
    .line 127
    sget-object v4, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f4
    move-object/from16 v0, p2

    #@f6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f9
    move-result-object v18

    #@fa
    check-cast v18, Landroid/content/SyncRequest;

    #@fc
    .line 132
    :goto_6
    move-object/from16 v0, p0

    #@fe
    move-object/from16 v1, v18

    #@100
    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->sync(Landroid/content/SyncRequest;)V

    #@103
    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@106
    .line 134
    const/4 v4, 0x1

    #@107
    return v4

    #@108
    .line 130
    :cond_6
    const/16 v18, 0x0

    #@10a
    .local v18, "_arg0":Landroid/content/SyncRequest;
    goto :goto_6

    #@10b
    .line 138
    .end local v18    # "_arg0":Landroid/content/SyncRequest;
    :sswitch_6
    const-string/jumbo v4, "android.content.IContentService"

    #@10e
    move-object/from16 v0, p2

    #@110
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@113
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@116
    move-result v4

    #@117
    if-eqz v4, :cond_7

    #@119
    .line 141
    sget-object v4, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11b
    move-object/from16 v0, p2

    #@11d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@120
    move-result-object v18

    #@121
    check-cast v18, Landroid/content/SyncRequest;

    #@123
    .line 147
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@126
    move-result v22

    #@127
    .line 148
    .local v22, "_arg1":I
    move-object/from16 v0, p0

    #@129
    move-object/from16 v1, v18

    #@12b
    move/from16 v2, v22

    #@12d
    invoke-virtual {v0, v1, v2}, Landroid/content/IContentService$Stub;->syncAsUser(Landroid/content/SyncRequest;I)V

    #@130
    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@133
    .line 150
    const/4 v4, 0x1

    #@134
    return v4

    #@135
    .line 144
    .end local v22    # "_arg1":I
    :cond_7
    const/16 v18, 0x0

    #@137
    .restart local v18    # "_arg0":Landroid/content/SyncRequest;
    goto :goto_7

    #@138
    .line 154
    .end local v18    # "_arg0":Landroid/content/SyncRequest;
    :sswitch_7
    const-string/jumbo v4, "android.content.IContentService"

    #@13b
    move-object/from16 v0, p2

    #@13d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@140
    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@143
    move-result v4

    #@144
    if-eqz v4, :cond_8

    #@146
    .line 157
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@148
    move-object/from16 v0, p2

    #@14a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14d
    move-result-object v11

    #@14e
    check-cast v11, Landroid/accounts/Account;

    #@150
    .line 163
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@153
    move-result-object v12

    #@154
    .line 165
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@157
    move-result v4

    #@158
    if-eqz v4, :cond_9

    #@15a
    .line 166
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15c
    move-object/from16 v0, p2

    #@15e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@161
    move-result-object v27

    #@162
    check-cast v27, Landroid/content/ComponentName;

    #@164
    .line 171
    :goto_9
    move-object/from16 v0, p0

    #@166
    move-object/from16 v1, v27

    #@168
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V

    #@16b
    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16e
    .line 173
    const/4 v4, 0x1

    #@16f
    return v4

    #@170
    .line 160
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_8
    const/4 v11, 0x0

    #@171
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_8

    #@172
    .line 169
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_9
    const/16 v27, 0x0

    #@174
    .local v27, "_arg2":Landroid/content/ComponentName;
    goto :goto_9

    #@175
    .line 177
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v27    # "_arg2":Landroid/content/ComponentName;
    :sswitch_8
    const-string/jumbo v4, "android.content.IContentService"

    #@178
    move-object/from16 v0, p2

    #@17a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17d
    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@180
    move-result v4

    #@181
    if-eqz v4, :cond_a

    #@183
    .line 180
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@185
    move-object/from16 v0, p2

    #@187
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18a
    move-result-object v11

    #@18b
    check-cast v11, Landroid/accounts/Account;

    #@18d
    .line 186
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@190
    move-result-object v12

    #@191
    .line 188
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@194
    move-result v4

    #@195
    if-eqz v4, :cond_b

    #@197
    .line 189
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@199
    move-object/from16 v0, p2

    #@19b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19e
    move-result-object v27

    #@19f
    check-cast v27, Landroid/content/ComponentName;

    #@1a1
    .line 195
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a4
    move-result v8

    #@1a5
    .line 196
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@1a7
    move-object/from16 v1, v27

    #@1a9
    invoke-virtual {v0, v11, v12, v1, v8}, Landroid/content/IContentService$Stub;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    #@1ac
    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1af
    .line 198
    const/4 v4, 0x1

    #@1b0
    return v4

    #@1b1
    .line 183
    .end local v8    # "_arg3":I
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_a
    const/4 v11, 0x0

    #@1b2
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_a

    #@1b3
    .line 192
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_b
    const/16 v27, 0x0

    #@1b5
    .restart local v27    # "_arg2":Landroid/content/ComponentName;
    goto :goto_b

    #@1b6
    .line 202
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v27    # "_arg2":Landroid/content/ComponentName;
    :sswitch_9
    const-string/jumbo v4, "android.content.IContentService"

    #@1b9
    move-object/from16 v0, p2

    #@1bb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1be
    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c1
    move-result v4

    #@1c2
    if-eqz v4, :cond_c

    #@1c4
    .line 205
    sget-object v4, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c6
    move-object/from16 v0, p2

    #@1c8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1cb
    move-result-object v18

    #@1cc
    check-cast v18, Landroid/content/SyncRequest;

    #@1ce
    .line 210
    :goto_c
    move-object/from16 v0, p0

    #@1d0
    move-object/from16 v1, v18

    #@1d2
    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->cancelRequest(Landroid/content/SyncRequest;)V

    #@1d5
    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d8
    .line 212
    const/4 v4, 0x1

    #@1d9
    return v4

    #@1da
    .line 208
    :cond_c
    const/16 v18, 0x0

    #@1dc
    .restart local v18    # "_arg0":Landroid/content/SyncRequest;
    goto :goto_c

    #@1dd
    .line 216
    .end local v18    # "_arg0":Landroid/content/SyncRequest;
    :sswitch_a
    const-string/jumbo v4, "android.content.IContentService"

    #@1e0
    move-object/from16 v0, p2

    #@1e2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e5
    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e8
    move-result v4

    #@1e9
    if-eqz v4, :cond_d

    #@1eb
    .line 219
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ed
    move-object/from16 v0, p2

    #@1ef
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f2
    move-result-object v11

    #@1f3
    check-cast v11, Landroid/accounts/Account;

    #@1f5
    .line 225
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f8
    move-result-object v12

    #@1f9
    .line 226
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1fb
    invoke-virtual {v0, v11, v12}, Landroid/content/IContentService$Stub;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    #@1fe
    move-result v34

    #@1ff
    .line 227
    .local v34, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@202
    .line 228
    if-eqz v34, :cond_e

    #@204
    const/4 v4, 0x1

    #@205
    :goto_e
    move-object/from16 v0, p3

    #@207
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20a
    .line 229
    const/4 v4, 0x1

    #@20b
    return v4

    #@20c
    .line 222
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v34    # "_result":Z
    :cond_d
    const/4 v11, 0x0

    #@20d
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_d

    #@20e
    .line 228
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v34    # "_result":Z
    :cond_e
    const/4 v4, 0x0

    #@20f
    goto :goto_e

    #@210
    .line 233
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v34    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "android.content.IContentService"

    #@213
    move-object/from16 v0, p2

    #@215
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@218
    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21b
    move-result v4

    #@21c
    if-eqz v4, :cond_f

    #@21e
    .line 236
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@220
    move-object/from16 v0, p2

    #@222
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@225
    move-result-object v11

    #@226
    check-cast v11, Landroid/accounts/Account;

    #@228
    .line 242
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22b
    move-result-object v12

    #@22c
    .line 244
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22f
    move-result v26

    #@230
    .line 245
    .local v26, "_arg2":I
    move-object/from16 v0, p0

    #@232
    move/from16 v1, v26

    #@234
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    #@237
    move-result v34

    #@238
    .line 246
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23b
    .line 247
    if-eqz v34, :cond_10

    #@23d
    const/4 v4, 0x1

    #@23e
    :goto_10
    move-object/from16 v0, p3

    #@240
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@243
    .line 248
    const/4 v4, 0x1

    #@244
    return v4

    #@245
    .line 239
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":I
    .end local v34    # "_result":Z
    :cond_f
    const/4 v11, 0x0

    #@246
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_f

    #@247
    .line 247
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    .restart local v26    # "_arg2":I
    .restart local v34    # "_result":Z
    :cond_10
    const/4 v4, 0x0

    #@248
    goto :goto_10

    #@249
    .line 252
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":I
    .end local v34    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.content.IContentService"

    #@24c
    move-object/from16 v0, p2

    #@24e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@251
    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@254
    move-result v4

    #@255
    if-eqz v4, :cond_11

    #@257
    .line 255
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@259
    move-object/from16 v0, p2

    #@25b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25e
    move-result-object v11

    #@25f
    check-cast v11, Landroid/accounts/Account;

    #@261
    .line 261
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@264
    move-result-object v12

    #@265
    .line 263
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@268
    move-result v4

    #@269
    if-eqz v4, :cond_12

    #@26b
    const/4 v7, 0x1

    #@26c
    .line 264
    .local v7, "_arg2":Z
    :goto_12
    move-object/from16 v0, p0

    #@26e
    invoke-virtual {v0, v11, v12, v7}, Landroid/content/IContentService$Stub;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    #@271
    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@274
    .line 266
    const/4 v4, 0x1

    #@275
    return v4

    #@276
    .line 258
    .end local v7    # "_arg2":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_11
    const/4 v11, 0x0

    #@277
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_11

    #@278
    .line 263
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_12
    const/4 v7, 0x0

    #@279
    goto :goto_12

    #@27a
    .line 270
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v4, "android.content.IContentService"

    #@27d
    move-object/from16 v0, p2

    #@27f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@282
    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@285
    move-result v4

    #@286
    if-eqz v4, :cond_13

    #@288
    .line 273
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@28a
    move-object/from16 v0, p2

    #@28c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28f
    move-result-object v11

    #@290
    check-cast v11, Landroid/accounts/Account;

    #@292
    .line 279
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@295
    move-result-object v12

    #@296
    .line 281
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@299
    move-result v4

    #@29a
    if-eqz v4, :cond_14

    #@29c
    const/4 v7, 0x1

    #@29d
    .line 283
    .local v7, "_arg2":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a0
    move-result v8

    #@2a1
    .line 284
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@2a3
    invoke-virtual {v0, v11, v12, v7, v8}, Landroid/content/IContentService$Stub;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    #@2a6
    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a9
    .line 286
    const/4 v4, 0x1

    #@2aa
    return v4

    #@2ab
    .line 276
    .end local v7    # "_arg2":Z
    .end local v8    # "_arg3":I
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_13
    const/4 v11, 0x0

    #@2ac
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_13

    #@2ad
    .line 281
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_14
    const/4 v7, 0x0

    #@2ae
    .restart local v7    # "_arg2":Z
    goto :goto_14

    #@2af
    .line 290
    .end local v7    # "_arg2":Z
    .end local v12    # "_arg1":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v4, "android.content.IContentService"

    #@2b2
    move-object/from16 v0, p2

    #@2b4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b7
    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ba
    move-result v4

    #@2bb
    if-eqz v4, :cond_15

    #@2bd
    .line 293
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2bf
    move-object/from16 v0, p2

    #@2c1
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c4
    move-result-object v11

    #@2c5
    check-cast v11, Landroid/accounts/Account;

    #@2c7
    .line 299
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ca
    move-result-object v12

    #@2cb
    .line 301
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ce
    move-result v4

    #@2cf
    if-eqz v4, :cond_16

    #@2d1
    .line 302
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d3
    move-object/from16 v0, p2

    #@2d5
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d8
    move-result-object v27

    #@2d9
    check-cast v27, Landroid/content/ComponentName;

    #@2db
    .line 307
    :goto_16
    move-object/from16 v0, p0

    #@2dd
    move-object/from16 v1, v27

    #@2df
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;

    #@2e2
    move-result-object v32

    #@2e3
    .line 308
    .local v32, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e6
    .line 309
    move-object/from16 v0, p3

    #@2e8
    move-object/from16 v1, v32

    #@2ea
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@2ed
    .line 310
    const/4 v4, 0x1

    #@2ee
    return v4

    #@2ef
    .line 296
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v32    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    :cond_15
    const/4 v11, 0x0

    #@2f0
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_15

    #@2f1
    .line 305
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_16
    const/16 v27, 0x0

    #@2f3
    .restart local v27    # "_arg2":Landroid/content/ComponentName;
    goto :goto_16

    #@2f4
    .line 314
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v27    # "_arg2":Landroid/content/ComponentName;
    :sswitch_f
    const-string/jumbo v4, "android.content.IContentService"

    #@2f7
    move-object/from16 v0, p2

    #@2f9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fc
    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ff
    move-result v4

    #@300
    if-eqz v4, :cond_17

    #@302
    .line 317
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@304
    move-object/from16 v0, p2

    #@306
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@309
    move-result-object v11

    #@30a
    check-cast v11, Landroid/accounts/Account;

    #@30c
    .line 323
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30f
    move-result-object v12

    #@310
    .line 325
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@313
    move-result v4

    #@314
    if-eqz v4, :cond_18

    #@316
    .line 326
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@318
    move-object/from16 v0, p2

    #@31a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@31d
    move-result-object v13

    #@31e
    check-cast v13, Landroid/os/Bundle;

    #@320
    .line 332
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@323
    move-result-wide v14

    #@324
    .local v14, "_arg3":J
    move-object/from16 v10, p0

    #@326
    .line 333
    invoke-virtual/range {v10 .. v15}, Landroid/content/IContentService$Stub;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    #@329
    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@32c
    .line 335
    const/4 v4, 0x1

    #@32d
    return v4

    #@32e
    .line 320
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg3":J
    :cond_17
    const/4 v11, 0x0

    #@32f
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_17

    #@330
    .line 329
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_18
    const/4 v13, 0x0

    #@331
    .restart local v13    # "_arg2":Landroid/os/Bundle;
    goto :goto_18

    #@332
    .line 339
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":Landroid/os/Bundle;
    :sswitch_10
    const-string/jumbo v4, "android.content.IContentService"

    #@335
    move-object/from16 v0, p2

    #@337
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33a
    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@33d
    move-result v4

    #@33e
    if-eqz v4, :cond_19

    #@340
    .line 342
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@342
    move-object/from16 v0, p2

    #@344
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@347
    move-result-object v11

    #@348
    check-cast v11, Landroid/accounts/Account;

    #@34a
    .line 348
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@34d
    move-result-object v12

    #@34e
    .line 350
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@351
    move-result v4

    #@352
    if-eqz v4, :cond_1a

    #@354
    .line 351
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@356
    move-object/from16 v0, p2

    #@358
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@35b
    move-result-object v13

    #@35c
    check-cast v13, Landroid/os/Bundle;

    #@35e
    .line 356
    :goto_1a
    move-object/from16 v0, p0

    #@360
    invoke-virtual {v0, v11, v12, v13}, Landroid/content/IContentService$Stub;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@363
    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@366
    .line 358
    const/4 v4, 0x1

    #@367
    return v4

    #@368
    .line 345
    .end local v12    # "_arg1":Ljava/lang/String;
    :cond_19
    const/4 v11, 0x0

    #@369
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_19

    #@36a
    .line 354
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_1a
    const/4 v13, 0x0

    #@36b
    .restart local v13    # "_arg2":Landroid/os/Bundle;
    goto :goto_1a

    #@36c
    .line 362
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":Landroid/os/Bundle;
    :sswitch_11
    const-string/jumbo v4, "android.content.IContentService"

    #@36f
    move-object/from16 v0, p2

    #@371
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@374
    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@377
    move-result v4

    #@378
    if-eqz v4, :cond_1b

    #@37a
    .line 365
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@37c
    move-object/from16 v0, p2

    #@37e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@381
    move-result-object v11

    #@382
    check-cast v11, Landroid/accounts/Account;

    #@384
    .line 371
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@387
    move-result-object v12

    #@388
    .line 372
    .restart local v12    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@38a
    invoke-virtual {v0, v11, v12}, Landroid/content/IContentService$Stub;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    #@38d
    move-result v29

    #@38e
    .line 373
    .local v29, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@391
    .line 374
    move-object/from16 v0, p3

    #@393
    move/from16 v1, v29

    #@395
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@398
    .line 375
    const/4 v4, 0x1

    #@399
    return v4

    #@39a
    .line 368
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v29    # "_result":I
    :cond_1b
    const/4 v11, 0x0

    #@39b
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_1b

    #@39c
    .line 379
    .end local v11    # "_arg0":Landroid/accounts/Account;
    :sswitch_12
    const-string/jumbo v4, "android.content.IContentService"

    #@39f
    move-object/from16 v0, p2

    #@3a1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a4
    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a7
    move-result v4

    #@3a8
    if-eqz v4, :cond_1c

    #@3aa
    .line 382
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3ac
    move-object/from16 v0, p2

    #@3ae
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b1
    move-result-object v11

    #@3b2
    check-cast v11, Landroid/accounts/Account;

    #@3b4
    .line 388
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b7
    move-result-object v12

    #@3b8
    .line 390
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3bb
    move-result v26

    #@3bc
    .line 391
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    #@3be
    move/from16 v1, v26

    #@3c0
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    #@3c3
    move-result v29

    #@3c4
    .line 392
    .restart local v29    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c7
    .line 393
    move-object/from16 v0, p3

    #@3c9
    move/from16 v1, v29

    #@3cb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3ce
    .line 394
    const/4 v4, 0x1

    #@3cf
    return v4

    #@3d0
    .line 385
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":I
    .end local v29    # "_result":I
    :cond_1c
    const/4 v11, 0x0

    #@3d1
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_1c

    #@3d2
    .line 398
    .end local v11    # "_arg0":Landroid/accounts/Account;
    :sswitch_13
    const-string/jumbo v4, "android.content.IContentService"

    #@3d5
    move-object/from16 v0, p2

    #@3d7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3da
    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3dd
    move-result v4

    #@3de
    if-eqz v4, :cond_1d

    #@3e0
    .line 401
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e2
    move-object/from16 v0, p2

    #@3e4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e7
    move-result-object v11

    #@3e8
    check-cast v11, Landroid/accounts/Account;

    #@3ea
    .line 407
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3ed
    move-result-object v12

    #@3ee
    .line 409
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f1
    move-result v26

    #@3f2
    .line 410
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    #@3f4
    move/from16 v1, v26

    #@3f6
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    #@3f9
    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3fc
    .line 412
    const/4 v4, 0x1

    #@3fd
    return v4

    #@3fe
    .line 404
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v26    # "_arg2":I
    :cond_1d
    const/4 v11, 0x0

    #@3ff
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_1d

    #@400
    .line 416
    .end local v11    # "_arg0":Landroid/accounts/Account;
    :sswitch_14
    const-string/jumbo v4, "android.content.IContentService"

    #@403
    move-object/from16 v0, p2

    #@405
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@408
    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40b
    move-result v4

    #@40c
    if-eqz v4, :cond_1e

    #@40e
    const/16 v21, 0x1

    #@410
    .line 419
    .local v21, "_arg0":Z
    :goto_1e
    move-object/from16 v0, p0

    #@412
    move/from16 v1, v21

    #@414
    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->setMasterSyncAutomatically(Z)V

    #@417
    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@41a
    .line 421
    const/4 v4, 0x1

    #@41b
    return v4

    #@41c
    .line 418
    .end local v21    # "_arg0":Z
    :cond_1e
    const/16 v21, 0x0

    #@41e
    goto :goto_1e

    #@41f
    .line 425
    :sswitch_15
    const-string/jumbo v4, "android.content.IContentService"

    #@422
    move-object/from16 v0, p2

    #@424
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@427
    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@42a
    move-result v4

    #@42b
    if-eqz v4, :cond_1f

    #@42d
    const/16 v21, 0x1

    #@42f
    .line 429
    .local v21, "_arg0":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@432
    move-result v22

    #@433
    .line 430
    .restart local v22    # "_arg1":I
    move-object/from16 v0, p0

    #@435
    move/from16 v1, v21

    #@437
    move/from16 v2, v22

    #@439
    invoke-virtual {v0, v1, v2}, Landroid/content/IContentService$Stub;->setMasterSyncAutomaticallyAsUser(ZI)V

    #@43c
    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43f
    .line 432
    const/4 v4, 0x1

    #@440
    return v4

    #@441
    .line 427
    .end local v21    # "_arg0":Z
    .end local v22    # "_arg1":I
    :cond_1f
    const/16 v21, 0x0

    #@443
    .restart local v21    # "_arg0":Z
    goto :goto_1f

    #@444
    .line 436
    .end local v21    # "_arg0":Z
    :sswitch_16
    const-string/jumbo v4, "android.content.IContentService"

    #@447
    move-object/from16 v0, p2

    #@449
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44c
    .line 437
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getMasterSyncAutomatically()Z

    #@44f
    move-result v34

    #@450
    .line 438
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@453
    .line 439
    if-eqz v34, :cond_20

    #@455
    const/4 v4, 0x1

    #@456
    :goto_20
    move-object/from16 v0, p3

    #@458
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@45b
    .line 440
    const/4 v4, 0x1

    #@45c
    return v4

    #@45d
    .line 439
    :cond_20
    const/4 v4, 0x0

    #@45e
    goto :goto_20

    #@45f
    .line 444
    .end local v34    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "android.content.IContentService"

    #@462
    move-object/from16 v0, p2

    #@464
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@467
    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@46a
    move-result v16

    #@46b
    .line 447
    .local v16, "_arg0":I
    move-object/from16 v0, p0

    #@46d
    move/from16 v1, v16

    #@46f
    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->getMasterSyncAutomaticallyAsUser(I)Z

    #@472
    move-result v34

    #@473
    .line 448
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@476
    .line 449
    if-eqz v34, :cond_21

    #@478
    const/4 v4, 0x1

    #@479
    :goto_21
    move-object/from16 v0, p3

    #@47b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@47e
    .line 450
    const/4 v4, 0x1

    #@47f
    return v4

    #@480
    .line 449
    :cond_21
    const/4 v4, 0x0

    #@481
    goto :goto_21

    #@482
    .line 454
    .end local v16    # "_arg0":I
    .end local v34    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "android.content.IContentService"

    #@485
    move-object/from16 v0, p2

    #@487
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48a
    .line 455
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getCurrentSyncs()Ljava/util/List;

    #@48d
    move-result-object v33

    #@48e
    .line 456
    .local v33, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@491
    .line 457
    move-object/from16 v0, p3

    #@493
    move-object/from16 v1, v33

    #@495
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@498
    .line 458
    const/4 v4, 0x1

    #@499
    return v4

    #@49a
    .line 462
    .end local v33    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :sswitch_19
    const-string/jumbo v4, "android.content.IContentService"

    #@49d
    move-object/from16 v0, p2

    #@49f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a2
    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a5
    move-result v16

    #@4a6
    .line 465
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    #@4a8
    move/from16 v1, v16

    #@4aa
    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->getCurrentSyncsAsUser(I)Ljava/util/List;

    #@4ad
    move-result-object v33

    #@4ae
    .line 466
    .restart local v33    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b1
    .line 467
    move-object/from16 v0, p3

    #@4b3
    move-object/from16 v1, v33

    #@4b5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@4b8
    .line 468
    const/4 v4, 0x1

    #@4b9
    return v4

    #@4ba
    .line 472
    .end local v16    # "_arg0":I
    .end local v33    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :sswitch_1a
    const-string/jumbo v4, "android.content.IContentService"

    #@4bd
    move-object/from16 v0, p2

    #@4bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c2
    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/content/IContentService$Stub;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    #@4c5
    move-result-object v35

    #@4c6
    .line 474
    .local v35, "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c9
    .line 475
    const/4 v4, 0x1

    #@4ca
    move-object/from16 v0, p3

    #@4cc
    move-object/from16 v1, v35

    #@4ce
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@4d1
    .line 476
    const/4 v4, 0x1

    #@4d2
    return v4

    #@4d3
    .line 480
    .end local v35    # "_result":[Landroid/content/SyncAdapterType;
    :sswitch_1b
    const-string/jumbo v4, "android.content.IContentService"

    #@4d6
    move-object/from16 v0, p2

    #@4d8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4db
    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4de
    move-result v16

    #@4df
    .line 483
    .restart local v16    # "_arg0":I
    move-object/from16 v0, p0

    #@4e1
    move/from16 v1, v16

    #@4e3
    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    #@4e6
    move-result-object v35

    #@4e7
    .line 484
    .restart local v35    # "_result":[Landroid/content/SyncAdapterType;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ea
    .line 485
    const/4 v4, 0x1

    #@4eb
    move-object/from16 v0, p3

    #@4ed
    move-object/from16 v1, v35

    #@4ef
    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@4f2
    .line 486
    const/4 v4, 0x1

    #@4f3
    return v4

    #@4f4
    .line 490
    .end local v16    # "_arg0":I
    .end local v35    # "_result":[Landroid/content/SyncAdapterType;
    :sswitch_1c
    const-string/jumbo v4, "android.content.IContentService"

    #@4f7
    move-object/from16 v0, p2

    #@4f9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4fc
    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4ff
    move-result-object v20

    #@500
    .line 494
    .local v20, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@503
    move-result v22

    #@504
    .line 495
    .restart local v22    # "_arg1":I
    move-object/from16 v0, p0

    #@506
    move-object/from16 v1, v20

    #@508
    move/from16 v2, v22

    #@50a
    invoke-virtual {v0, v1, v2}, Landroid/content/IContentService$Stub;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    #@50d
    move-result-object v36

    #@50e
    .line 496
    .local v36, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@511
    .line 497
    move-object/from16 v0, p3

    #@513
    move-object/from16 v1, v36

    #@515
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@518
    .line 498
    const/4 v4, 0x1

    #@519
    return v4

    #@51a
    .line 502
    .end local v20    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":I
    .end local v36    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v4, "android.content.IContentService"

    #@51d
    move-object/from16 v0, p2

    #@51f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@522
    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@525
    move-result v4

    #@526
    if-eqz v4, :cond_22

    #@528
    .line 505
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@52a
    move-object/from16 v0, p2

    #@52c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@52f
    move-result-object v11

    #@530
    check-cast v11, Landroid/accounts/Account;

    #@532
    .line 511
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@535
    move-result-object v12

    #@536
    .line 513
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@539
    move-result v4

    #@53a
    if-eqz v4, :cond_23

    #@53c
    .line 514
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@53e
    move-object/from16 v0, p2

    #@540
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@543
    move-result-object v27

    #@544
    check-cast v27, Landroid/content/ComponentName;

    #@546
    .line 519
    :goto_23
    move-object/from16 v0, p0

    #@548
    move-object/from16 v1, v27

    #@54a
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    #@54d
    move-result v34

    #@54e
    .line 520
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@551
    .line 521
    if-eqz v34, :cond_24

    #@553
    const/4 v4, 0x1

    #@554
    :goto_24
    move-object/from16 v0, p3

    #@556
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@559
    .line 522
    const/4 v4, 0x1

    #@55a
    return v4

    #@55b
    .line 508
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v34    # "_result":Z
    :cond_22
    const/4 v11, 0x0

    #@55c
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_22

    #@55d
    .line 517
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_23
    const/16 v27, 0x0

    #@55f
    .restart local v27    # "_arg2":Landroid/content/ComponentName;
    goto :goto_23

    #@560
    .line 521
    .end local v27    # "_arg2":Landroid/content/ComponentName;
    .restart local v34    # "_result":Z
    :cond_24
    const/4 v4, 0x0

    #@561
    goto :goto_24

    #@562
    .line 526
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v34    # "_result":Z
    :sswitch_1e
    const-string/jumbo v4, "android.content.IContentService"

    #@565
    move-object/from16 v0, p2

    #@567
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56a
    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@56d
    move-result v4

    #@56e
    if-eqz v4, :cond_25

    #@570
    .line 529
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@572
    move-object/from16 v0, p2

    #@574
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@577
    move-result-object v11

    #@578
    check-cast v11, Landroid/accounts/Account;

    #@57a
    .line 535
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@57d
    move-result-object v12

    #@57e
    .line 537
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@581
    move-result v4

    #@582
    if-eqz v4, :cond_26

    #@584
    .line 538
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@586
    move-object/from16 v0, p2

    #@588
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@58b
    move-result-object v27

    #@58c
    check-cast v27, Landroid/content/ComponentName;

    #@58e
    .line 543
    :goto_26
    move-object/from16 v0, p0

    #@590
    move-object/from16 v1, v27

    #@592
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;

    #@595
    move-result-object v30

    #@596
    .line 544
    .local v30, "_result":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@599
    .line 545
    if-eqz v30, :cond_27

    #@59b
    .line 546
    const/4 v4, 0x1

    #@59c
    move-object/from16 v0, p3

    #@59e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5a1
    .line 547
    const/4 v4, 0x1

    #@5a2
    move-object/from16 v0, v30

    #@5a4
    move-object/from16 v1, p3

    #@5a6
    invoke-virtual {v0, v1, v4}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@5a9
    .line 552
    :goto_27
    const/4 v4, 0x1

    #@5aa
    return v4

    #@5ab
    .line 532
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":Landroid/content/SyncStatusInfo;
    :cond_25
    const/4 v11, 0x0

    #@5ac
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_25

    #@5ad
    .line 541
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_26
    const/16 v27, 0x0

    #@5af
    .restart local v27    # "_arg2":Landroid/content/ComponentName;
    goto :goto_26

    #@5b0
    .line 550
    .end local v27    # "_arg2":Landroid/content/ComponentName;
    .restart local v30    # "_result":Landroid/content/SyncStatusInfo;
    :cond_27
    const/4 v4, 0x0

    #@5b1
    move-object/from16 v0, p3

    #@5b3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5b6
    goto :goto_27

    #@5b7
    .line 556
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":Landroid/content/SyncStatusInfo;
    :sswitch_1f
    const-string/jumbo v4, "android.content.IContentService"

    #@5ba
    move-object/from16 v0, p2

    #@5bc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5bf
    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c2
    move-result v4

    #@5c3
    if-eqz v4, :cond_28

    #@5c5
    .line 559
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5c7
    move-object/from16 v0, p2

    #@5c9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5cc
    move-result-object v11

    #@5cd
    check-cast v11, Landroid/accounts/Account;

    #@5cf
    .line 565
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d2
    move-result-object v12

    #@5d3
    .line 567
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5d6
    move-result v4

    #@5d7
    if-eqz v4, :cond_29

    #@5d9
    .line 568
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5db
    move-object/from16 v0, p2

    #@5dd
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5e0
    move-result-object v27

    #@5e1
    check-cast v27, Landroid/content/ComponentName;

    #@5e3
    .line 574
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5e6
    move-result v8

    #@5e7
    .line 575
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@5e9
    move-object/from16 v1, v27

    #@5eb
    invoke-virtual {v0, v11, v12, v1, v8}, Landroid/content/IContentService$Stub;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    #@5ee
    move-result-object v30

    #@5ef
    .line 576
    .restart local v30    # "_result":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5f2
    .line 577
    if-eqz v30, :cond_2a

    #@5f4
    .line 578
    const/4 v4, 0x1

    #@5f5
    move-object/from16 v0, p3

    #@5f7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5fa
    .line 579
    const/4 v4, 0x1

    #@5fb
    move-object/from16 v0, v30

    #@5fd
    move-object/from16 v1, p3

    #@5ff
    invoke-virtual {v0, v1, v4}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@602
    .line 584
    :goto_2a
    const/4 v4, 0x1

    #@603
    return v4

    #@604
    .line 562
    .end local v8    # "_arg3":I
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":Landroid/content/SyncStatusInfo;
    :cond_28
    const/4 v11, 0x0

    #@605
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_28

    #@606
    .line 571
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_29
    const/16 v27, 0x0

    #@608
    .restart local v27    # "_arg2":Landroid/content/ComponentName;
    goto :goto_29

    #@609
    .line 582
    .end local v27    # "_arg2":Landroid/content/ComponentName;
    .restart local v8    # "_arg3":I
    .restart local v30    # "_result":Landroid/content/SyncStatusInfo;
    :cond_2a
    const/4 v4, 0x0

    #@60a
    move-object/from16 v0, p3

    #@60c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@60f
    goto :goto_2a

    #@610
    .line 588
    .end local v8    # "_arg3":I
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v30    # "_result":Landroid/content/SyncStatusInfo;
    :sswitch_20
    const-string/jumbo v4, "android.content.IContentService"

    #@613
    move-object/from16 v0, p2

    #@615
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@618
    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61b
    move-result v4

    #@61c
    if-eqz v4, :cond_2b

    #@61e
    .line 591
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@620
    move-object/from16 v0, p2

    #@622
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@625
    move-result-object v11

    #@626
    check-cast v11, Landroid/accounts/Account;

    #@628
    .line 597
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@62b
    move-result-object v12

    #@62c
    .line 599
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62f
    move-result v4

    #@630
    if-eqz v4, :cond_2c

    #@632
    .line 600
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@634
    move-object/from16 v0, p2

    #@636
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@639
    move-result-object v27

    #@63a
    check-cast v27, Landroid/content/ComponentName;

    #@63c
    .line 605
    :goto_2c
    move-object/from16 v0, p0

    #@63e
    move-object/from16 v1, v27

    #@640
    invoke-virtual {v0, v11, v12, v1}, Landroid/content/IContentService$Stub;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z

    #@643
    move-result v34

    #@644
    .line 606
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@647
    .line 607
    if-eqz v34, :cond_2d

    #@649
    const/4 v4, 0x1

    #@64a
    :goto_2d
    move-object/from16 v0, p3

    #@64c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@64f
    .line 608
    const/4 v4, 0x1

    #@650
    return v4

    #@651
    .line 594
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v34    # "_result":Z
    :cond_2b
    const/4 v11, 0x0

    #@652
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_2b

    #@653
    .line 603
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_2c
    const/16 v27, 0x0

    #@655
    .restart local v27    # "_arg2":Landroid/content/ComponentName;
    goto :goto_2c

    #@656
    .line 607
    .end local v27    # "_arg2":Landroid/content/ComponentName;
    .restart local v34    # "_result":Z
    :cond_2d
    const/4 v4, 0x0

    #@657
    goto :goto_2d

    #@658
    .line 612
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v34    # "_result":Z
    :sswitch_21
    const-string/jumbo v4, "android.content.IContentService"

    #@65b
    move-object/from16 v0, p2

    #@65d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@660
    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@663
    move-result v4

    #@664
    if-eqz v4, :cond_2e

    #@666
    .line 615
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    #@668
    move-object/from16 v0, p2

    #@66a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@66d
    move-result-object v11

    #@66e
    check-cast v11, Landroid/accounts/Account;

    #@670
    .line 621
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@673
    move-result-object v12

    #@674
    .line 623
    .restart local v12    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@677
    move-result v4

    #@678
    if-eqz v4, :cond_2f

    #@67a
    .line 624
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@67c
    move-object/from16 v0, p2

    #@67e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@681
    move-result-object v27

    #@682
    check-cast v27, Landroid/content/ComponentName;

    #@684
    .line 630
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@687
    move-result v8

    #@688
    .line 631
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@68a
    move-object/from16 v1, v27

    #@68c
    invoke-virtual {v0, v11, v12, v1, v8}, Landroid/content/IContentService$Stub;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    #@68f
    move-result v34

    #@690
    .line 632
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@693
    .line 633
    if-eqz v34, :cond_30

    #@695
    const/4 v4, 0x1

    #@696
    :goto_30
    move-object/from16 v0, p3

    #@698
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@69b
    .line 634
    const/4 v4, 0x1

    #@69c
    return v4

    #@69d
    .line 618
    .end local v8    # "_arg3":I
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v34    # "_result":Z
    :cond_2e
    const/4 v11, 0x0

    #@69e
    .restart local v11    # "_arg0":Landroid/accounts/Account;
    goto :goto_2e

    #@69f
    .line 627
    .end local v11    # "_arg0":Landroid/accounts/Account;
    .restart local v12    # "_arg1":Ljava/lang/String;
    :cond_2f
    const/16 v27, 0x0

    #@6a1
    .restart local v27    # "_arg2":Landroid/content/ComponentName;
    goto :goto_2f

    #@6a2
    .line 633
    .end local v27    # "_arg2":Landroid/content/ComponentName;
    .restart local v8    # "_arg3":I
    .restart local v34    # "_result":Z
    :cond_30
    const/4 v4, 0x0

    #@6a3
    goto :goto_30

    #@6a4
    .line 638
    .end local v8    # "_arg3":I
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v34    # "_result":Z
    :sswitch_22
    const-string/jumbo v4, "android.content.IContentService"

    #@6a7
    move-object/from16 v0, p2

    #@6a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ac
    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6af
    move-result v16

    #@6b0
    .line 642
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6b3
    move-result-object v4

    #@6b4
    invoke-static {v4}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    #@6b7
    move-result-object v23

    #@6b8
    .line 643
    .local v23, "_arg1":Landroid/content/ISyncStatusObserver;
    move-object/from16 v0, p0

    #@6ba
    move/from16 v1, v16

    #@6bc
    move-object/from16 v2, v23

    #@6be
    invoke-virtual {v0, v1, v2}, Landroid/content/IContentService$Stub;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    #@6c1
    .line 644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6c4
    .line 645
    const/4 v4, 0x1

    #@6c5
    return v4

    #@6c6
    .line 649
    .end local v16    # "_arg0":I
    .end local v23    # "_arg1":Landroid/content/ISyncStatusObserver;
    :sswitch_23
    const-string/jumbo v4, "android.content.IContentService"

    #@6c9
    move-object/from16 v0, p2

    #@6cb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ce
    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6d1
    move-result-object v4

    #@6d2
    invoke-static {v4}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    #@6d5
    move-result-object v17

    #@6d6
    .line 652
    .local v17, "_arg0":Landroid/content/ISyncStatusObserver;
    move-object/from16 v0, p0

    #@6d8
    move-object/from16 v1, v17

    #@6da
    invoke-virtual {v0, v1}, Landroid/content/IContentService$Stub;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V

    #@6dd
    .line 653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e0
    .line 654
    const/4 v4, 0x1

    #@6e1
    return v4

    #@6e2
    .line 658
    .end local v17    # "_arg0":Landroid/content/ISyncStatusObserver;
    :sswitch_24
    const-string/jumbo v4, "android.content.IContentService"

    #@6e5
    move-object/from16 v0, p2

    #@6e7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ea
    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6ed
    move-result-object v20

    #@6ee
    .line 662
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6f1
    move-result v4

    #@6f2
    if-eqz v4, :cond_31

    #@6f4
    .line 663
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6f6
    move-object/from16 v0, p2

    #@6f8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6fb
    move-result-object v24

    #@6fc
    check-cast v24, Landroid/net/Uri;

    #@6fe
    .line 669
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@701
    move-result v4

    #@702
    if-eqz v4, :cond_32

    #@704
    .line 670
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@706
    move-object/from16 v0, p2

    #@708
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@70b
    move-result-object v13

    #@70c
    check-cast v13, Landroid/os/Bundle;

    #@70e
    .line 676
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@711
    move-result v8

    #@712
    .line 677
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@714
    move-object/from16 v1, v20

    #@716
    move-object/from16 v2, v24

    #@718
    invoke-virtual {v0, v1, v2, v13, v8}, Landroid/content/IContentService$Stub;->putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V

    #@71b
    .line 678
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@71e
    .line 679
    const/4 v4, 0x1

    #@71f
    return v4

    #@720
    .line 666
    .end local v8    # "_arg3":I
    :cond_31
    const/16 v24, 0x0

    #@722
    .local v24, "_arg1":Landroid/net/Uri;
    goto :goto_31

    #@723
    .line 673
    .end local v24    # "_arg1":Landroid/net/Uri;
    :cond_32
    const/4 v13, 0x0

    #@724
    .restart local v13    # "_arg2":Landroid/os/Bundle;
    goto :goto_32

    #@725
    .line 683
    .end local v13    # "_arg2":Landroid/os/Bundle;
    .end local v20    # "_arg0":Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v4, "android.content.IContentService"

    #@728
    move-object/from16 v0, p2

    #@72a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72d
    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@730
    move-result-object v20

    #@731
    .line 687
    .restart local v20    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@734
    move-result v4

    #@735
    if-eqz v4, :cond_33

    #@737
    .line 688
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@739
    move-object/from16 v0, p2

    #@73b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@73e
    move-result-object v24

    #@73f
    check-cast v24, Landroid/net/Uri;

    #@741
    .line 694
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@744
    move-result v26

    #@745
    .line 695
    .restart local v26    # "_arg2":I
    move-object/from16 v0, p0

    #@747
    move-object/from16 v1, v20

    #@749
    move-object/from16 v2, v24

    #@74b
    move/from16 v3, v26

    #@74d
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/IContentService$Stub;->getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    #@750
    move-result-object v31

    #@751
    .line 696
    .local v31, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@754
    .line 697
    if-eqz v31, :cond_34

    #@756
    .line 698
    const/4 v4, 0x1

    #@757
    move-object/from16 v0, p3

    #@759
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@75c
    .line 699
    const/4 v4, 0x1

    #@75d
    move-object/from16 v0, v31

    #@75f
    move-object/from16 v1, p3

    #@761
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@764
    .line 704
    :goto_34
    const/4 v4, 0x1

    #@765
    return v4

    #@766
    .line 691
    .end local v26    # "_arg2":I
    .end local v31    # "_result":Landroid/os/Bundle;
    :cond_33
    const/16 v24, 0x0

    #@768
    .restart local v24    # "_arg1":Landroid/net/Uri;
    goto :goto_33

    #@769
    .line 702
    .end local v24    # "_arg1":Landroid/net/Uri;
    .restart local v26    # "_arg2":I
    .restart local v31    # "_result":Landroid/os/Bundle;
    :cond_34
    const/4 v4, 0x0

    #@76a
    move-object/from16 v0, p3

    #@76c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@76f
    goto :goto_34

    #@770
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
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
