.class public abstract Landroid/app/INotificationManager$Stub;
.super Landroid/os/Binder;
.source "INotificationManager.java"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.INotificationManager"

.field static final TRANSACTION_addAutomaticZenRule:I = 0x31

.field static final TRANSACTION_applyAdjustmentFromRankerService:I = 0x20

.field static final TRANSACTION_applyAdjustmentsFromRankerService:I = 0x21

.field static final TRANSACTION_applyRestore:I = 0x37

.field static final TRANSACTION_areNotificationsEnabled:I = 0x8

.field static final TRANSACTION_areNotificationsEnabledForPackage:I = 0x7

.field static final TRANSACTION_cancelAllNotifications:I = 0x1

.field static final TRANSACTION_cancelNotificationFromListener:I = 0x14

.field static final TRANSACTION_cancelNotificationWithTag:I = 0x5

.field static final TRANSACTION_cancelNotificationsFromListener:I = 0x15

.field static final TRANSACTION_cancelToast:I = 0x3

.field static final TRANSACTION_enqueueNotificationWithTag:I = 0x4

.field static final TRANSACTION_enqueueToast:I = 0x2

.field static final TRANSACTION_getActiveNotifications:I = 0x10

.field static final TRANSACTION_getActiveNotificationsFromListener:I = 0x19

.field static final TRANSACTION_getAppActiveNotifications:I = 0x38

.field static final TRANSACTION_getAutomaticZenRule:I = 0x2f

.field static final TRANSACTION_getBackupPayload:I = 0x36

.field static final TRANSACTION_getEffectsSuppressor:I = 0x22

.field static final TRANSACTION_getHintsFromListener:I = 0x1b

.field static final TRANSACTION_getHistoricalNotifications:I = 0x11

.field static final TRANSACTION_getImportance:I = 0xe

.field static final TRANSACTION_getInterruptionFilterFromListener:I = 0x1d

.field static final TRANSACTION_getNotificationPolicy:I = 0x2a

.field static final TRANSACTION_getPackageImportance:I = 0xf

.field static final TRANSACTION_getPackagesRequestingNotificationPolicyAccess:I = 0x2c

.field static final TRANSACTION_getPriority:I = 0xc

.field static final TRANSACTION_getRuleInstanceCount:I = 0x35

.field static final TRANSACTION_getVisibilityOverride:I = 0xa

.field static final TRANSACTION_getZenMode:I = 0x25

.field static final TRANSACTION_getZenModeConfig:I = 0x26

.field static final TRANSACTION_getZenRules:I = 0x30

.field static final TRANSACTION_isNotificationPolicyAccessGranted:I = 0x29

.field static final TRANSACTION_isNotificationPolicyAccessGrantedForPackage:I = 0x2d

.field static final TRANSACTION_isSystemConditionProviderEnabled:I = 0x24

.field static final TRANSACTION_matchesCallFilter:I = 0x23

.field static final TRANSACTION_notifyConditions:I = 0x28

.field static final TRANSACTION_registerListener:I = 0x12

.field static final TRANSACTION_removeAutomaticZenRule:I = 0x33

.field static final TRANSACTION_removeAutomaticZenRules:I = 0x34

.field static final TRANSACTION_requestBindListener:I = 0x16

.field static final TRANSACTION_requestHintsFromListener:I = 0x1a

.field static final TRANSACTION_requestInterruptionFilterFromListener:I = 0x1c

.field static final TRANSACTION_requestUnbindListener:I = 0x17

.field static final TRANSACTION_setImportance:I = 0xd

.field static final TRANSACTION_setInterruptionFilter:I = 0x1f

.field static final TRANSACTION_setNotificationPolicy:I = 0x2b

.field static final TRANSACTION_setNotificationPolicyAccessGranted:I = 0x2e

.field static final TRANSACTION_setNotificationsEnabledForPackage:I = 0x6

.field static final TRANSACTION_setNotificationsShownFromListener:I = 0x18

.field static final TRANSACTION_setOnNotificationPostedTrimFromListener:I = 0x1e

.field static final TRANSACTION_setPriority:I = 0xb

.field static final TRANSACTION_setVisibilityOverride:I = 0x9

.field static final TRANSACTION_setZenMode:I = 0x27

.field static final TRANSACTION_unregisterListener:I = 0x13

.field static final TRANSACTION_updateAutomaticZenRule:I = 0x32


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.app.INotificationManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/INotificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.app.INotificationManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/INotificationManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/app/INotificationManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/INotificationManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/INotificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 43
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 757
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v3

    #@7
    return v3

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v3, "android.app.INotificationManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 52
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v17

    #@22
    .line 53
    .local v17, "_arg1":I
    move-object/from16 v0, p0

    #@24
    move/from16 v1, v17

    #@26
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->cancelAllNotifications(Ljava/lang/String;I)V

    #@29
    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 55
    const/4 v3, 0x1

    #@2d
    return v3

    #@2e
    .line 59
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    :sswitch_2
    const-string/jumbo v3, "android.app.INotificationManager"

    #@31
    move-object/from16 v0, p2

    #@33
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36
    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    .line 63
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3d
    move-result-object v3

    #@3e
    invoke-static {v3}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    #@41
    move-result-object v19

    #@42
    .line 65
    .local v19, "_arg1":Landroid/app/ITransientNotification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v28

    #@46
    .line 66
    .local v28, "_arg2":I
    move-object/from16 v0, p0

    #@48
    move-object/from16 v1, v19

    #@4a
    move/from16 v2, v28

    #@4c
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V

    #@4f
    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@52
    .line 68
    const/4 v3, 0x1

    #@53
    return v3

    #@54
    .line 72
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Landroid/app/ITransientNotification;
    .end local v28    # "_arg2":I
    :sswitch_3
    const-string/jumbo v3, "android.app.INotificationManager"

    #@57
    move-object/from16 v0, p2

    #@59
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    .line 76
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@63
    move-result-object v3

    #@64
    invoke-static {v3}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    #@67
    move-result-object v19

    #@68
    .line 77
    .restart local v19    # "_arg1":Landroid/app/ITransientNotification;
    move-object/from16 v0, p0

    #@6a
    move-object/from16 v1, v19

    #@6c
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V

    #@6f
    .line 78
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@72
    .line 79
    const/4 v3, 0x1

    #@73
    return v3

    #@74
    .line 83
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Landroid/app/ITransientNotification;
    :sswitch_4
    const-string/jumbo v3, "android.app.INotificationManager"

    #@77
    move-object/from16 v0, p2

    #@79
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c
    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    .line 87
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    .line 89
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@87
    move-result-object v6

    #@88
    .line 91
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b
    move-result v7

    #@8c
    .line 93
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8f
    move-result v3

    #@90
    if-eqz v3, :cond_0

    #@92
    .line 94
    sget-object v3, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@94
    move-object/from16 v0, p2

    #@96
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@99
    move-result-object v8

    #@9a
    check-cast v8, Landroid/app/Notification;

    #@9c
    .line 100
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@9f
    move-result-object v9

    #@a0
    .line 102
    .local v9, "_arg5":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a3
    move-result v10

    #@a4
    .local v10, "_arg6":I
    move-object/from16 v3, p0

    #@a6
    .line 103
    invoke-virtual/range {v3 .. v10}, Landroid/app/INotificationManager$Stub;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    #@a9
    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac
    .line 105
    move-object/from16 v0, p3

    #@ae
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    #@b1
    .line 106
    const/4 v3, 0x1

    #@b2
    return v3

    #@b3
    .line 97
    .end local v9    # "_arg5":[I
    .end local v10    # "_arg6":I
    :cond_0
    const/4 v8, 0x0

    #@b4
    .local v8, "_arg4":Landroid/app/Notification;
    goto :goto_0

    #@b5
    .line 110
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/app/Notification;
    :sswitch_5
    const-string/jumbo v3, "android.app.INotificationManager"

    #@b8
    move-object/from16 v0, p2

    #@ba
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bd
    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c0
    move-result-object v4

    #@c1
    .line 114
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c4
    move-result-object v5

    #@c5
    .line 116
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c8
    move-result v28

    #@c9
    .line 118
    .restart local v28    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cc
    move-result v7

    #@cd
    .line 119
    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    #@cf
    move/from16 v1, v28

    #@d1
    invoke-virtual {v0, v4, v5, v1, v7}, Landroid/app/INotificationManager$Stub;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    #@d4
    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d7
    .line 121
    const/4 v3, 0x1

    #@d8
    return v3

    #@d9
    .line 125
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v28    # "_arg2":I
    :sswitch_6
    const-string/jumbo v3, "android.app.INotificationManager"

    #@dc
    move-object/from16 v0, p2

    #@de
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e1
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e4
    move-result-object v4

    #@e5
    .line 129
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e8
    move-result v17

    #@e9
    .line 131
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ec
    move-result v3

    #@ed
    if-eqz v3, :cond_1

    #@ef
    const/16 v29, 0x1

    #@f1
    .line 132
    .local v29, "_arg2":Z
    :goto_1
    move-object/from16 v0, p0

    #@f3
    move/from16 v1, v17

    #@f5
    move/from16 v2, v29

    #@f7
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    #@fa
    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fd
    .line 134
    const/4 v3, 0x1

    #@fe
    return v3

    #@ff
    .line 131
    .end local v29    # "_arg2":Z
    :cond_1
    const/16 v29, 0x0

    #@101
    goto :goto_1

    #@102
    .line 138
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    :sswitch_7
    const-string/jumbo v3, "android.app.INotificationManager"

    #@105
    move-object/from16 v0, p2

    #@107
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10a
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10d
    move-result-object v4

    #@10e
    .line 142
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@111
    move-result v17

    #@112
    .line 143
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@114
    move/from16 v1, v17

    #@116
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    #@119
    move-result v39

    #@11a
    .line 144
    .local v39, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11d
    .line 145
    if-eqz v39, :cond_2

    #@11f
    const/4 v3, 0x1

    #@120
    :goto_2
    move-object/from16 v0, p3

    #@122
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@125
    .line 146
    const/4 v3, 0x1

    #@126
    return v3

    #@127
    .line 145
    :cond_2
    const/4 v3, 0x0

    #@128
    goto :goto_2

    #@129
    .line 150
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v39    # "_result":Z
    :sswitch_8
    const-string/jumbo v3, "android.app.INotificationManager"

    #@12c
    move-object/from16 v0, p2

    #@12e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@131
    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@134
    move-result-object v4

    #@135
    .line 153
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@137
    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabled(Ljava/lang/String;)Z

    #@13a
    move-result v39

    #@13b
    .line 154
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13e
    .line 155
    if-eqz v39, :cond_3

    #@140
    const/4 v3, 0x1

    #@141
    :goto_3
    move-object/from16 v0, p3

    #@143
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@146
    .line 156
    const/4 v3, 0x1

    #@147
    return v3

    #@148
    .line 155
    :cond_3
    const/4 v3, 0x0

    #@149
    goto :goto_3

    #@14a
    .line 160
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":Z
    :sswitch_9
    const-string/jumbo v3, "android.app.INotificationManager"

    #@14d
    move-object/from16 v0, p2

    #@14f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@152
    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@155
    move-result-object v4

    #@156
    .line 164
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@159
    move-result v17

    #@15a
    .line 166
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15d
    move-result v28

    #@15e
    .line 167
    .restart local v28    # "_arg2":I
    move-object/from16 v0, p0

    #@160
    move/from16 v1, v17

    #@162
    move/from16 v2, v28

    #@164
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->setVisibilityOverride(Ljava/lang/String;II)V

    #@167
    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16a
    .line 169
    const/4 v3, 0x1

    #@16b
    return v3

    #@16c
    .line 173
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v28    # "_arg2":I
    :sswitch_a
    const-string/jumbo v3, "android.app.INotificationManager"

    #@16f
    move-object/from16 v0, p2

    #@171
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@174
    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@177
    move-result-object v4

    #@178
    .line 177
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17b
    move-result v17

    #@17c
    .line 178
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@17e
    move/from16 v1, v17

    #@180
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getVisibilityOverride(Ljava/lang/String;I)I

    #@183
    move-result v31

    #@184
    .line 179
    .local v31, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@187
    .line 180
    move-object/from16 v0, p3

    #@189
    move/from16 v1, v31

    #@18b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@18e
    .line 181
    const/4 v3, 0x1

    #@18f
    return v3

    #@190
    .line 185
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v31    # "_result":I
    :sswitch_b
    const-string/jumbo v3, "android.app.INotificationManager"

    #@193
    move-object/from16 v0, p2

    #@195
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@198
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19b
    move-result-object v4

    #@19c
    .line 189
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19f
    move-result v17

    #@1a0
    .line 191
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a3
    move-result v28

    #@1a4
    .line 192
    .restart local v28    # "_arg2":I
    move-object/from16 v0, p0

    #@1a6
    move/from16 v1, v17

    #@1a8
    move/from16 v2, v28

    #@1aa
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->setPriority(Ljava/lang/String;II)V

    #@1ad
    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b0
    .line 194
    const/4 v3, 0x1

    #@1b1
    return v3

    #@1b2
    .line 198
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v28    # "_arg2":I
    :sswitch_c
    const-string/jumbo v3, "android.app.INotificationManager"

    #@1b5
    move-object/from16 v0, p2

    #@1b7
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ba
    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1bd
    move-result-object v4

    #@1be
    .line 202
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c1
    move-result v17

    #@1c2
    .line 203
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@1c4
    move/from16 v1, v17

    #@1c6
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getPriority(Ljava/lang/String;I)I

    #@1c9
    move-result v31

    #@1ca
    .line 204
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cd
    .line 205
    move-object/from16 v0, p3

    #@1cf
    move/from16 v1, v31

    #@1d1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d4
    .line 206
    const/4 v3, 0x1

    #@1d5
    return v3

    #@1d6
    .line 210
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v31    # "_result":I
    :sswitch_d
    const-string/jumbo v3, "android.app.INotificationManager"

    #@1d9
    move-object/from16 v0, p2

    #@1db
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1de
    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e1
    move-result-object v4

    #@1e2
    .line 214
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e5
    move-result v17

    #@1e6
    .line 216
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e9
    move-result v28

    #@1ea
    .line 217
    .restart local v28    # "_arg2":I
    move-object/from16 v0, p0

    #@1ec
    move/from16 v1, v17

    #@1ee
    move/from16 v2, v28

    #@1f0
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->setImportance(Ljava/lang/String;II)V

    #@1f3
    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f6
    .line 219
    const/4 v3, 0x1

    #@1f7
    return v3

    #@1f8
    .line 223
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v28    # "_arg2":I
    :sswitch_e
    const-string/jumbo v3, "android.app.INotificationManager"

    #@1fb
    move-object/from16 v0, p2

    #@1fd
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@200
    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@203
    move-result-object v4

    #@204
    .line 227
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@207
    move-result v17

    #@208
    .line 228
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@20a
    move/from16 v1, v17

    #@20c
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getImportance(Ljava/lang/String;I)I

    #@20f
    move-result v31

    #@210
    .line 229
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@213
    .line 230
    move-object/from16 v0, p3

    #@215
    move/from16 v1, v31

    #@217
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21a
    .line 231
    const/4 v3, 0x1

    #@21b
    return v3

    #@21c
    .line 235
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v31    # "_result":I
    :sswitch_f
    const-string/jumbo v3, "android.app.INotificationManager"

    #@21f
    move-object/from16 v0, p2

    #@221
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@224
    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@227
    move-result-object v4

    #@228
    .line 238
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@22a
    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->getPackageImportance(Ljava/lang/String;)I

    #@22d
    move-result v31

    #@22e
    .line 239
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@231
    .line 240
    move-object/from16 v0, p3

    #@233
    move/from16 v1, v31

    #@235
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@238
    .line 241
    const/4 v3, 0x1

    #@239
    return v3

    #@23a
    .line 245
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v31    # "_result":I
    :sswitch_10
    const-string/jumbo v3, "android.app.INotificationManager"

    #@23d
    move-object/from16 v0, p2

    #@23f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@242
    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@245
    move-result-object v4

    #@246
    .line 248
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@248
    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    #@24b
    move-result-object v41

    #@24c
    .line 249
    .local v41, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24f
    .line 250
    const/4 v3, 0x1

    #@250
    move-object/from16 v0, p3

    #@252
    move-object/from16 v1, v41

    #@254
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@257
    .line 251
    const/4 v3, 0x1

    #@258
    return v3

    #@259
    .line 255
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":[Landroid/service/notification/StatusBarNotification;
    :sswitch_11
    const-string/jumbo v3, "android.app.INotificationManager"

    #@25c
    move-object/from16 v0, p2

    #@25e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@261
    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@264
    move-result-object v4

    #@265
    .line 259
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@268
    move-result v17

    #@269
    .line 260
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@26b
    move/from16 v1, v17

    #@26d
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    #@270
    move-result-object v41

    #@271
    .line 261
    .restart local v41    # "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@274
    .line 262
    const/4 v3, 0x1

    #@275
    move-object/from16 v0, p3

    #@277
    move-object/from16 v1, v41

    #@279
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@27c
    .line 263
    const/4 v3, 0x1

    #@27d
    return v3

    #@27e
    .line 267
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v41    # "_result":[Landroid/service/notification/StatusBarNotification;
    :sswitch_12
    const-string/jumbo v3, "android.app.INotificationManager"

    #@281
    move-object/from16 v0, p2

    #@283
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@286
    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@289
    move-result-object v3

    #@28a
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@28d
    move-result-object v15

    #@28e
    .line 271
    .local v15, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@291
    move-result v3

    #@292
    if-eqz v3, :cond_4

    #@294
    .line 272
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@296
    move-object/from16 v0, p2

    #@298
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29b
    move-result-object v21

    #@29c
    check-cast v21, Landroid/content/ComponentName;

    #@29e
    .line 278
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a1
    move-result v28

    #@2a2
    .line 279
    .restart local v28    # "_arg2":I
    move-object/from16 v0, p0

    #@2a4
    move-object/from16 v1, v21

    #@2a6
    move/from16 v2, v28

    #@2a8
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/INotificationManager$Stub;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    #@2ab
    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ae
    .line 281
    const/4 v3, 0x1

    #@2af
    return v3

    #@2b0
    .line 275
    .end local v28    # "_arg2":I
    :cond_4
    const/16 v21, 0x0

    #@2b2
    .local v21, "_arg1":Landroid/content/ComponentName;
    goto :goto_4

    #@2b3
    .line 285
    .end local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v21    # "_arg1":Landroid/content/ComponentName;
    :sswitch_13
    const-string/jumbo v3, "android.app.INotificationManager"

    #@2b6
    move-object/from16 v0, p2

    #@2b8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2bb
    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2be
    move-result-object v3

    #@2bf
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@2c2
    move-result-object v15

    #@2c3
    .line 289
    .restart local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c6
    move-result v17

    #@2c7
    .line 290
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@2c9
    move/from16 v1, v17

    #@2cb
    invoke-virtual {v0, v15, v1}, Landroid/app/INotificationManager$Stub;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    #@2ce
    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d1
    .line 292
    const/4 v3, 0x1

    #@2d2
    return v3

    #@2d3
    .line 296
    .end local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v17    # "_arg1":I
    :sswitch_14
    const-string/jumbo v3, "android.app.INotificationManager"

    #@2d6
    move-object/from16 v0, p2

    #@2d8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2db
    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2de
    move-result-object v3

    #@2df
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@2e2
    move-result-object v15

    #@2e3
    .line 300
    .restart local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2e6
    move-result-object v5

    #@2e7
    .line 302
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2ea
    move-result-object v6

    #@2eb
    .line 304
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ee
    move-result v7

    #@2ef
    .line 305
    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    #@2f1
    invoke-virtual {v0, v15, v5, v6, v7}, Landroid/app/INotificationManager$Stub;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V

    #@2f4
    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f7
    .line 307
    const/4 v3, 0x1

    #@2f8
    return v3

    #@2f9
    .line 311
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    :sswitch_15
    const-string/jumbo v3, "android.app.INotificationManager"

    #@2fc
    move-object/from16 v0, p2

    #@2fe
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@301
    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@304
    move-result-object v3

    #@305
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@308
    move-result-object v15

    #@309
    .line 315
    .restart local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@30c
    move-result-object v27

    #@30d
    .line 316
    .local v27, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@30f
    move-object/from16 v1, v27

    #@311
    invoke-virtual {v0, v15, v1}, Landroid/app/INotificationManager$Stub;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    #@314
    .line 317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@317
    .line 318
    const/4 v3, 0x1

    #@318
    return v3

    #@319
    .line 322
    .end local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v27    # "_arg1":[Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v3, "android.app.INotificationManager"

    #@31c
    move-object/from16 v0, p2

    #@31e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@321
    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@324
    move-result v3

    #@325
    if-eqz v3, :cond_5

    #@327
    .line 325
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@329
    move-object/from16 v0, p2

    #@32b
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32e
    move-result-object v13

    #@32f
    check-cast v13, Landroid/content/ComponentName;

    #@331
    .line 330
    :goto_5
    move-object/from16 v0, p0

    #@333
    invoke-virtual {v0, v13}, Landroid/app/INotificationManager$Stub;->requestBindListener(Landroid/content/ComponentName;)V

    #@336
    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@339
    .line 332
    const/4 v3, 0x1

    #@33a
    return v3

    #@33b
    .line 328
    :cond_5
    const/4 v13, 0x0

    #@33c
    .local v13, "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    #@33d
    .line 336
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_17
    const-string/jumbo v3, "android.app.INotificationManager"

    #@340
    move-object/from16 v0, p2

    #@342
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@345
    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@348
    move-result-object v3

    #@349
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@34c
    move-result-object v15

    #@34d
    .line 339
    .restart local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    move-object/from16 v0, p0

    #@34f
    invoke-virtual {v0, v15}, Landroid/app/INotificationManager$Stub;->requestUnbindListener(Landroid/service/notification/INotificationListener;)V

    #@352
    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@355
    .line 341
    const/4 v3, 0x1

    #@356
    return v3

    #@357
    .line 345
    .end local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    :sswitch_18
    const-string/jumbo v3, "android.app.INotificationManager"

    #@35a
    move-object/from16 v0, p2

    #@35c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35f
    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@362
    move-result-object v3

    #@363
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@366
    move-result-object v15

    #@367
    .line 349
    .restart local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@36a
    move-result-object v27

    #@36b
    .line 350
    .restart local v27    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@36d
    move-object/from16 v1, v27

    #@36f
    invoke-virtual {v0, v15, v1}, Landroid/app/INotificationManager$Stub;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    #@372
    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@375
    .line 352
    const/4 v3, 0x1

    #@376
    return v3

    #@377
    .line 356
    .end local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v27    # "_arg1":[Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v3, "android.app.INotificationManager"

    #@37a
    move-object/from16 v0, p2

    #@37c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@37f
    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@382
    move-result-object v3

    #@383
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@386
    move-result-object v15

    #@387
    .line 360
    .restart local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@38a
    move-result-object v27

    #@38b
    .line 362
    .restart local v27    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38e
    move-result v28

    #@38f
    .line 363
    .restart local v28    # "_arg2":I
    move-object/from16 v0, p0

    #@391
    move-object/from16 v1, v27

    #@393
    move/from16 v2, v28

    #@395
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@398
    move-result-object v35

    #@399
    .line 364
    .local v35, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39c
    .line 365
    if-eqz v35, :cond_6

    #@39e
    .line 366
    const/4 v3, 0x1

    #@39f
    move-object/from16 v0, p3

    #@3a1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3a4
    .line 367
    const/4 v3, 0x1

    #@3a5
    move-object/from16 v0, v35

    #@3a7
    move-object/from16 v1, p3

    #@3a9
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@3ac
    .line 372
    :goto_6
    const/4 v3, 0x1

    #@3ad
    return v3

    #@3ae
    .line 370
    :cond_6
    const/4 v3, 0x0

    #@3af
    move-object/from16 v0, p3

    #@3b1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3b4
    goto :goto_6

    #@3b5
    .line 376
    .end local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v27    # "_arg1":[Ljava/lang/String;
    .end local v28    # "_arg2":I
    .end local v35    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_1a
    const-string/jumbo v3, "android.app.INotificationManager"

    #@3b8
    move-object/from16 v0, p2

    #@3ba
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3bd
    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3c0
    move-result-object v3

    #@3c1
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@3c4
    move-result-object v15

    #@3c5
    .line 380
    .restart local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c8
    move-result v17

    #@3c9
    .line 381
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@3cb
    move/from16 v1, v17

    #@3cd
    invoke-virtual {v0, v15, v1}, Landroid/app/INotificationManager$Stub;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V

    #@3d0
    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d3
    .line 383
    const/4 v3, 0x1

    #@3d4
    return v3

    #@3d5
    .line 387
    .end local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v17    # "_arg1":I
    :sswitch_1b
    const-string/jumbo v3, "android.app.INotificationManager"

    #@3d8
    move-object/from16 v0, p2

    #@3da
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3dd
    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3e0
    move-result-object v3

    #@3e1
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@3e4
    move-result-object v15

    #@3e5
    .line 390
    .restart local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    move-object/from16 v0, p0

    #@3e7
    invoke-virtual {v0, v15}, Landroid/app/INotificationManager$Stub;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I

    #@3ea
    move-result v31

    #@3eb
    .line 391
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ee
    .line 392
    move-object/from16 v0, p3

    #@3f0
    move/from16 v1, v31

    #@3f2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3f5
    .line 393
    const/4 v3, 0x1

    #@3f6
    return v3

    #@3f7
    .line 397
    .end local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v31    # "_result":I
    :sswitch_1c
    const-string/jumbo v3, "android.app.INotificationManager"

    #@3fa
    move-object/from16 v0, p2

    #@3fc
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ff
    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@402
    move-result-object v3

    #@403
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@406
    move-result-object v15

    #@407
    .line 401
    .restart local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40a
    move-result v17

    #@40b
    .line 402
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@40d
    move/from16 v1, v17

    #@40f
    invoke-virtual {v0, v15, v1}, Landroid/app/INotificationManager$Stub;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V

    #@412
    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@415
    .line 404
    const/4 v3, 0x1

    #@416
    return v3

    #@417
    .line 408
    .end local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v17    # "_arg1":I
    :sswitch_1d
    const-string/jumbo v3, "android.app.INotificationManager"

    #@41a
    move-object/from16 v0, p2

    #@41c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41f
    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@422
    move-result-object v3

    #@423
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@426
    move-result-object v15

    #@427
    .line 411
    .restart local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    move-object/from16 v0, p0

    #@429
    invoke-virtual {v0, v15}, Landroid/app/INotificationManager$Stub;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I

    #@42c
    move-result v31

    #@42d
    .line 412
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@430
    .line 413
    move-object/from16 v0, p3

    #@432
    move/from16 v1, v31

    #@434
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@437
    .line 414
    const/4 v3, 0x1

    #@438
    return v3

    #@439
    .line 418
    .end local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v31    # "_result":I
    :sswitch_1e
    const-string/jumbo v3, "android.app.INotificationManager"

    #@43c
    move-object/from16 v0, p2

    #@43e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@441
    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@444
    move-result-object v3

    #@445
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@448
    move-result-object v15

    #@449
    .line 422
    .restart local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@44c
    move-result v17

    #@44d
    .line 423
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@44f
    move/from16 v1, v17

    #@451
    invoke-virtual {v0, v15, v1}, Landroid/app/INotificationManager$Stub;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V

    #@454
    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@457
    .line 425
    const/4 v3, 0x1

    #@458
    return v3

    #@459
    .line 429
    .end local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v17    # "_arg1":I
    :sswitch_1f
    const-string/jumbo v3, "android.app.INotificationManager"

    #@45c
    move-object/from16 v0, p2

    #@45e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@461
    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@464
    move-result-object v4

    #@465
    .line 433
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@468
    move-result v17

    #@469
    .line 434
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@46b
    move/from16 v1, v17

    #@46d
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->setInterruptionFilter(Ljava/lang/String;I)V

    #@470
    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@473
    .line 436
    const/4 v3, 0x1

    #@474
    return v3

    #@475
    .line 440
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    :sswitch_20
    const-string/jumbo v3, "android.app.INotificationManager"

    #@478
    move-object/from16 v0, p2

    #@47a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47d
    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@480
    move-result-object v3

    #@481
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@484
    move-result-object v15

    #@485
    .line 444
    .restart local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@488
    move-result v3

    #@489
    if-eqz v3, :cond_7

    #@48b
    .line 445
    sget-object v3, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    #@48d
    move-object/from16 v0, p2

    #@48f
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@492
    move-result-object v23

    #@493
    check-cast v23, Landroid/service/notification/Adjustment;

    #@495
    .line 450
    :goto_7
    move-object/from16 v0, p0

    #@497
    move-object/from16 v1, v23

    #@499
    invoke-virtual {v0, v15, v1}, Landroid/app/INotificationManager$Stub;->applyAdjustmentFromRankerService(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    #@49c
    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49f
    .line 452
    const/4 v3, 0x1

    #@4a0
    return v3

    #@4a1
    .line 448
    :cond_7
    const/16 v23, 0x0

    #@4a3
    .local v23, "_arg1":Landroid/service/notification/Adjustment;
    goto :goto_7

    #@4a4
    .line 456
    .end local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v23    # "_arg1":Landroid/service/notification/Adjustment;
    :sswitch_21
    const-string/jumbo v3, "android.app.INotificationManager"

    #@4a7
    move-object/from16 v0, p2

    #@4a9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4ac
    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4af
    move-result-object v3

    #@4b0
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@4b3
    move-result-object v15

    #@4b4
    .line 460
    .restart local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v3, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4b6
    move-object/from16 v0, p2

    #@4b8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@4bb
    move-result-object v25

    #@4bc
    .line 461
    .local v25, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    move-object/from16 v0, p0

    #@4be
    move-object/from16 v1, v25

    #@4c0
    invoke-virtual {v0, v15, v1}, Landroid/app/INotificationManager$Stub;->applyAdjustmentsFromRankerService(Landroid/service/notification/INotificationListener;Ljava/util/List;)V

    #@4c3
    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c6
    .line 463
    const/4 v3, 0x1

    #@4c7
    return v3

    #@4c8
    .line 467
    .end local v15    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v25    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    :sswitch_22
    const-string/jumbo v3, "android.app.INotificationManager"

    #@4cb
    move-object/from16 v0, p2

    #@4cd
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d0
    .line 468
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getEffectsSuppressor()Landroid/content/ComponentName;

    #@4d3
    move-result-object v34

    #@4d4
    .line 469
    .local v34, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4d7
    .line 470
    if-eqz v34, :cond_8

    #@4d9
    .line 471
    const/4 v3, 0x1

    #@4da
    move-object/from16 v0, p3

    #@4dc
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4df
    .line 472
    const/4 v3, 0x1

    #@4e0
    move-object/from16 v0, v34

    #@4e2
    move-object/from16 v1, p3

    #@4e4
    invoke-virtual {v0, v1, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@4e7
    .line 477
    :goto_8
    const/4 v3, 0x1

    #@4e8
    return v3

    #@4e9
    .line 475
    :cond_8
    const/4 v3, 0x0

    #@4ea
    move-object/from16 v0, p3

    #@4ec
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4ef
    goto :goto_8

    #@4f0
    .line 481
    .end local v34    # "_result":Landroid/content/ComponentName;
    :sswitch_23
    const-string/jumbo v3, "android.app.INotificationManager"

    #@4f3
    move-object/from16 v0, p2

    #@4f5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f8
    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4fb
    move-result v3

    #@4fc
    if-eqz v3, :cond_9

    #@4fe
    .line 484
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@500
    move-object/from16 v0, p2

    #@502
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@505
    move-result-object v14

    #@506
    check-cast v14, Landroid/os/Bundle;

    #@508
    .line 489
    :goto_9
    move-object/from16 v0, p0

    #@50a
    invoke-virtual {v0, v14}, Landroid/app/INotificationManager$Stub;->matchesCallFilter(Landroid/os/Bundle;)Z

    #@50d
    move-result v39

    #@50e
    .line 490
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@511
    .line 491
    if-eqz v39, :cond_a

    #@513
    const/4 v3, 0x1

    #@514
    :goto_a
    move-object/from16 v0, p3

    #@516
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@519
    .line 492
    const/4 v3, 0x1

    #@51a
    return v3

    #@51b
    .line 487
    .end local v39    # "_result":Z
    :cond_9
    const/4 v14, 0x0

    #@51c
    .local v14, "_arg0":Landroid/os/Bundle;
    goto :goto_9

    #@51d
    .line 491
    .end local v14    # "_arg0":Landroid/os/Bundle;
    .restart local v39    # "_result":Z
    :cond_a
    const/4 v3, 0x0

    #@51e
    goto :goto_a

    #@51f
    .line 496
    .end local v39    # "_result":Z
    :sswitch_24
    const-string/jumbo v3, "android.app.INotificationManager"

    #@522
    move-object/from16 v0, p2

    #@524
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@527
    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@52a
    move-result-object v4

    #@52b
    .line 499
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@52d
    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    #@530
    move-result v39

    #@531
    .line 500
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@534
    .line 501
    if-eqz v39, :cond_b

    #@536
    const/4 v3, 0x1

    #@537
    :goto_b
    move-object/from16 v0, p3

    #@539
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@53c
    .line 502
    const/4 v3, 0x1

    #@53d
    return v3

    #@53e
    .line 501
    :cond_b
    const/4 v3, 0x0

    #@53f
    goto :goto_b

    #@540
    .line 506
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":Z
    :sswitch_25
    const-string/jumbo v3, "android.app.INotificationManager"

    #@543
    move-object/from16 v0, p2

    #@545
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@548
    .line 507
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenMode()I

    #@54b
    move-result v31

    #@54c
    .line 508
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54f
    .line 509
    move-object/from16 v0, p3

    #@551
    move/from16 v1, v31

    #@553
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@556
    .line 510
    const/4 v3, 0x1

    #@557
    return v3

    #@558
    .line 514
    .end local v31    # "_result":I
    :sswitch_26
    const-string/jumbo v3, "android.app.INotificationManager"

    #@55b
    move-object/from16 v0, p2

    #@55d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@560
    .line 515
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    #@563
    move-result-object v36

    #@564
    .line 516
    .local v36, "_result":Landroid/service/notification/ZenModeConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@567
    .line 517
    if-eqz v36, :cond_c

    #@569
    .line 518
    const/4 v3, 0x1

    #@56a
    move-object/from16 v0, p3

    #@56c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@56f
    .line 519
    const/4 v3, 0x1

    #@570
    move-object/from16 v0, v36

    #@572
    move-object/from16 v1, p3

    #@574
    invoke-virtual {v0, v1, v3}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    #@577
    .line 524
    :goto_c
    const/4 v3, 0x1

    #@578
    return v3

    #@579
    .line 522
    :cond_c
    const/4 v3, 0x0

    #@57a
    move-object/from16 v0, p3

    #@57c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@57f
    goto :goto_c

    #@580
    .line 528
    .end local v36    # "_result":Landroid/service/notification/ZenModeConfig;
    :sswitch_27
    const-string/jumbo v3, "android.app.INotificationManager"

    #@583
    move-object/from16 v0, p2

    #@585
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@588
    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@58b
    move-result v11

    #@58c
    .line 532
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@58f
    move-result v3

    #@590
    if-eqz v3, :cond_d

    #@592
    .line 533
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@594
    move-object/from16 v0, p2

    #@596
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@599
    move-result-object v22

    #@59a
    check-cast v22, Landroid/net/Uri;

    #@59c
    .line 539
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@59f
    move-result-object v6

    #@5a0
    .line 540
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5a2
    move-object/from16 v1, v22

    #@5a4
    invoke-virtual {v0, v11, v1, v6}, Landroid/app/INotificationManager$Stub;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    #@5a7
    .line 541
    const/4 v3, 0x1

    #@5a8
    return v3

    #@5a9
    .line 536
    .end local v6    # "_arg2":Ljava/lang/String;
    :cond_d
    const/16 v22, 0x0

    #@5ab
    .local v22, "_arg1":Landroid/net/Uri;
    goto :goto_d

    #@5ac
    .line 545
    .end local v11    # "_arg0":I
    .end local v22    # "_arg1":Landroid/net/Uri;
    :sswitch_28
    const-string/jumbo v3, "android.app.INotificationManager"

    #@5af
    move-object/from16 v0, p2

    #@5b1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b4
    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5b7
    move-result-object v4

    #@5b8
    .line 549
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5bb
    move-result-object v3

    #@5bc
    invoke-static {v3}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    #@5bf
    move-result-object v24

    #@5c0
    .line 551
    .local v24, "_arg1":Landroid/service/notification/IConditionProvider;
    sget-object v3, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5c2
    move-object/from16 v0, p2

    #@5c4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@5c7
    move-result-object v30

    #@5c8
    check-cast v30, [Landroid/service/notification/Condition;

    #@5ca
    .line 552
    .local v30, "_arg2":[Landroid/service/notification/Condition;
    move-object/from16 v0, p0

    #@5cc
    move-object/from16 v1, v24

    #@5ce
    move-object/from16 v2, v30

    #@5d0
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V

    #@5d3
    .line 553
    const/4 v3, 0x1

    #@5d4
    return v3

    #@5d5
    .line 557
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg1":Landroid/service/notification/IConditionProvider;
    .end local v30    # "_arg2":[Landroid/service/notification/Condition;
    :sswitch_29
    const-string/jumbo v3, "android.app.INotificationManager"

    #@5d8
    move-object/from16 v0, p2

    #@5da
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5dd
    .line 559
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5e0
    move-result-object v4

    #@5e1
    .line 560
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5e3
    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z

    #@5e6
    move-result v39

    #@5e7
    .line 561
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ea
    .line 562
    if-eqz v39, :cond_e

    #@5ec
    const/4 v3, 0x1

    #@5ed
    :goto_e
    move-object/from16 v0, p3

    #@5ef
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5f2
    .line 563
    const/4 v3, 0x1

    #@5f3
    return v3

    #@5f4
    .line 562
    :cond_e
    const/4 v3, 0x0

    #@5f5
    goto :goto_e

    #@5f6
    .line 567
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":Z
    :sswitch_2a
    const-string/jumbo v3, "android.app.INotificationManager"

    #@5f9
    move-object/from16 v0, p2

    #@5fb
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5fe
    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@601
    move-result-object v4

    #@602
    .line 570
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@604
    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

    #@607
    move-result-object v33

    #@608
    .line 571
    .local v33, "_result":Landroid/app/NotificationManager$Policy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@60b
    .line 572
    if-eqz v33, :cond_f

    #@60d
    .line 573
    const/4 v3, 0x1

    #@60e
    move-object/from16 v0, p3

    #@610
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@613
    .line 574
    const/4 v3, 0x1

    #@614
    move-object/from16 v0, v33

    #@616
    move-object/from16 v1, p3

    #@618
    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager$Policy;->writeToParcel(Landroid/os/Parcel;I)V

    #@61b
    .line 579
    :goto_f
    const/4 v3, 0x1

    #@61c
    return v3

    #@61d
    .line 577
    :cond_f
    const/4 v3, 0x0

    #@61e
    move-object/from16 v0, p3

    #@620
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@623
    goto :goto_f

    #@624
    .line 583
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":Landroid/app/NotificationManager$Policy;
    :sswitch_2b
    const-string/jumbo v3, "android.app.INotificationManager"

    #@627
    move-object/from16 v0, p2

    #@629
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62c
    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@62f
    move-result-object v4

    #@630
    .line 587
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@633
    move-result v3

    #@634
    if-eqz v3, :cond_10

    #@636
    .line 588
    sget-object v3, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@638
    move-object/from16 v0, p2

    #@63a
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@63d
    move-result-object v20

    #@63e
    check-cast v20, Landroid/app/NotificationManager$Policy;

    #@640
    .line 593
    :goto_10
    move-object/from16 v0, p0

    #@642
    move-object/from16 v1, v20

    #@644
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V

    #@647
    .line 594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@64a
    .line 595
    const/4 v3, 0x1

    #@64b
    return v3

    #@64c
    .line 591
    :cond_10
    const/16 v20, 0x0

    #@64e
    .local v20, "_arg1":Landroid/app/NotificationManager$Policy;
    goto :goto_10

    #@64f
    .line 599
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Landroid/app/NotificationManager$Policy;
    :sswitch_2c
    const-string/jumbo v3, "android.app.INotificationManager"

    #@652
    move-object/from16 v0, p2

    #@654
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@657
    .line 600
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getPackagesRequestingNotificationPolicyAccess()[Ljava/lang/String;

    #@65a
    move-result-object v42

    #@65b
    .line 601
    .local v42, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@65e
    .line 602
    move-object/from16 v0, p3

    #@660
    move-object/from16 v1, v42

    #@662
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@665
    .line 603
    const/4 v3, 0x1

    #@666
    return v3

    #@667
    .line 607
    .end local v42    # "_result":[Ljava/lang/String;
    :sswitch_2d
    const-string/jumbo v3, "android.app.INotificationManager"

    #@66a
    move-object/from16 v0, p2

    #@66c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@66f
    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@672
    move-result-object v4

    #@673
    .line 610
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@675
    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    #@678
    move-result v39

    #@679
    .line 611
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@67c
    .line 612
    if-eqz v39, :cond_11

    #@67e
    const/4 v3, 0x1

    #@67f
    :goto_11
    move-object/from16 v0, p3

    #@681
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@684
    .line 613
    const/4 v3, 0x1

    #@685
    return v3

    #@686
    .line 612
    :cond_11
    const/4 v3, 0x0

    #@687
    goto :goto_11

    #@688
    .line 617
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":Z
    :sswitch_2e
    const-string/jumbo v3, "android.app.INotificationManager"

    #@68b
    move-object/from16 v0, p2

    #@68d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@690
    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@693
    move-result-object v4

    #@694
    .line 621
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@697
    move-result v3

    #@698
    if-eqz v3, :cond_12

    #@69a
    const/16 v26, 0x1

    #@69c
    .line 622
    .local v26, "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    #@69e
    move/from16 v1, v26

    #@6a0
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    #@6a3
    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a6
    .line 624
    const/4 v3, 0x1

    #@6a7
    return v3

    #@6a8
    .line 621
    .end local v26    # "_arg1":Z
    :cond_12
    const/16 v26, 0x0

    #@6aa
    goto :goto_12

    #@6ab
    .line 628
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v3, "android.app.INotificationManager"

    #@6ae
    move-object/from16 v0, p2

    #@6b0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6b3
    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6b6
    move-result-object v4

    #@6b7
    .line 631
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6b9
    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    #@6bc
    move-result-object v32

    #@6bd
    .line 632
    .local v32, "_result":Landroid/app/AutomaticZenRule;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6c0
    .line 633
    if-eqz v32, :cond_13

    #@6c2
    .line 634
    const/4 v3, 0x1

    #@6c3
    move-object/from16 v0, p3

    #@6c5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6c8
    .line 635
    const/4 v3, 0x1

    #@6c9
    move-object/from16 v0, v32

    #@6cb
    move-object/from16 v1, p3

    #@6cd
    invoke-virtual {v0, v1, v3}, Landroid/app/AutomaticZenRule;->writeToParcel(Landroid/os/Parcel;I)V

    #@6d0
    .line 640
    :goto_13
    const/4 v3, 0x1

    #@6d1
    return v3

    #@6d2
    .line 638
    :cond_13
    const/4 v3, 0x0

    #@6d3
    move-object/from16 v0, p3

    #@6d5
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6d8
    goto :goto_13

    #@6d9
    .line 644
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v32    # "_result":Landroid/app/AutomaticZenRule;
    :sswitch_30
    const-string/jumbo v3, "android.app.INotificationManager"

    #@6dc
    move-object/from16 v0, p2

    #@6de
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e1
    .line 645
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenRules()Ljava/util/List;

    #@6e4
    move-result-object v38

    #@6e5
    .line 646
    .local v38, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e8
    .line 647
    move-object/from16 v0, p3

    #@6ea
    move-object/from16 v1, v38

    #@6ec
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@6ef
    .line 648
    const/4 v3, 0x1

    #@6f0
    return v3

    #@6f1
    .line 652
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    :sswitch_31
    const-string/jumbo v3, "android.app.INotificationManager"

    #@6f4
    move-object/from16 v0, p2

    #@6f6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f9
    .line 654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6fc
    move-result v3

    #@6fd
    if-eqz v3, :cond_14

    #@6ff
    .line 655
    sget-object v3, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    #@701
    move-object/from16 v0, p2

    #@703
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@706
    move-result-object v12

    #@707
    check-cast v12, Landroid/app/AutomaticZenRule;

    #@709
    .line 660
    :goto_14
    move-object/from16 v0, p0

    #@70b
    invoke-virtual {v0, v12}, Landroid/app/INotificationManager$Stub;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    #@70e
    move-result-object v37

    #@70f
    .line 661
    .local v37, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@712
    .line 662
    move-object/from16 v0, p3

    #@714
    move-object/from16 v1, v37

    #@716
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@719
    .line 663
    const/4 v3, 0x1

    #@71a
    return v3

    #@71b
    .line 658
    .end local v37    # "_result":Ljava/lang/String;
    :cond_14
    const/4 v12, 0x0

    #@71c
    .local v12, "_arg0":Landroid/app/AutomaticZenRule;
    goto :goto_14

    #@71d
    .line 667
    .end local v12    # "_arg0":Landroid/app/AutomaticZenRule;
    :sswitch_32
    const-string/jumbo v3, "android.app.INotificationManager"

    #@720
    move-object/from16 v0, p2

    #@722
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@725
    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@728
    move-result-object v4

    #@729
    .line 671
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@72c
    move-result v3

    #@72d
    if-eqz v3, :cond_15

    #@72f
    .line 672
    sget-object v3, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    #@731
    move-object/from16 v0, p2

    #@733
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@736
    move-result-object v18

    #@737
    check-cast v18, Landroid/app/AutomaticZenRule;

    #@739
    .line 677
    :goto_15
    move-object/from16 v0, p0

    #@73b
    move-object/from16 v1, v18

    #@73d
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    #@740
    move-result v39

    #@741
    .line 678
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@744
    .line 679
    if-eqz v39, :cond_16

    #@746
    const/4 v3, 0x1

    #@747
    :goto_16
    move-object/from16 v0, p3

    #@749
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@74c
    .line 680
    const/4 v3, 0x1

    #@74d
    return v3

    #@74e
    .line 675
    .end local v39    # "_result":Z
    :cond_15
    const/16 v18, 0x0

    #@750
    .local v18, "_arg1":Landroid/app/AutomaticZenRule;
    goto :goto_15

    #@751
    .line 679
    .end local v18    # "_arg1":Landroid/app/AutomaticZenRule;
    .restart local v39    # "_result":Z
    :cond_16
    const/4 v3, 0x0

    #@752
    goto :goto_16

    #@753
    .line 684
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":Z
    :sswitch_33
    const-string/jumbo v3, "android.app.INotificationManager"

    #@756
    move-object/from16 v0, p2

    #@758
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@75b
    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@75e
    move-result-object v4

    #@75f
    .line 687
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@761
    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRule(Ljava/lang/String;)Z

    #@764
    move-result v39

    #@765
    .line 688
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@768
    .line 689
    if-eqz v39, :cond_17

    #@76a
    const/4 v3, 0x1

    #@76b
    :goto_17
    move-object/from16 v0, p3

    #@76d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@770
    .line 690
    const/4 v3, 0x1

    #@771
    return v3

    #@772
    .line 689
    :cond_17
    const/4 v3, 0x0

    #@773
    goto :goto_17

    #@774
    .line 694
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":Z
    :sswitch_34
    const-string/jumbo v3, "android.app.INotificationManager"

    #@777
    move-object/from16 v0, p2

    #@779
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77c
    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@77f
    move-result-object v4

    #@780
    .line 697
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@782
    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRules(Ljava/lang/String;)Z

    #@785
    move-result v39

    #@786
    .line 698
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@789
    .line 699
    if-eqz v39, :cond_18

    #@78b
    const/4 v3, 0x1

    #@78c
    :goto_18
    move-object/from16 v0, p3

    #@78e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@791
    .line 700
    const/4 v3, 0x1

    #@792
    return v3

    #@793
    .line 699
    :cond_18
    const/4 v3, 0x0

    #@794
    goto :goto_18

    #@795
    .line 704
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":Z
    :sswitch_35
    const-string/jumbo v3, "android.app.INotificationManager"

    #@798
    move-object/from16 v0, p2

    #@79a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@79d
    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7a0
    move-result v3

    #@7a1
    if-eqz v3, :cond_19

    #@7a3
    .line 707
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7a5
    move-object/from16 v0, p2

    #@7a7
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7aa
    move-result-object v13

    #@7ab
    check-cast v13, Landroid/content/ComponentName;

    #@7ad
    .line 712
    :goto_19
    move-object/from16 v0, p0

    #@7af
    invoke-virtual {v0, v13}, Landroid/app/INotificationManager$Stub;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    #@7b2
    move-result v31

    #@7b3
    .line 713
    .restart local v31    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b6
    .line 714
    move-object/from16 v0, p3

    #@7b8
    move/from16 v1, v31

    #@7ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7bd
    .line 715
    const/4 v3, 0x1

    #@7be
    return v3

    #@7bf
    .line 710
    .end local v31    # "_result":I
    :cond_19
    const/4 v13, 0x0

    #@7c0
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_19

    #@7c1
    .line 719
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_36
    const-string/jumbo v3, "android.app.INotificationManager"

    #@7c4
    move-object/from16 v0, p2

    #@7c6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c9
    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7cc
    move-result v11

    #@7cd
    .line 722
    .restart local v11    # "_arg0":I
    move-object/from16 v0, p0

    #@7cf
    invoke-virtual {v0, v11}, Landroid/app/INotificationManager$Stub;->getBackupPayload(I)[B

    #@7d2
    move-result-object v40

    #@7d3
    .line 723
    .local v40, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d6
    .line 724
    move-object/from16 v0, p3

    #@7d8
    move-object/from16 v1, v40

    #@7da
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@7dd
    .line 725
    const/4 v3, 0x1

    #@7de
    return v3

    #@7df
    .line 729
    .end local v11    # "_arg0":I
    .end local v40    # "_result":[B
    :sswitch_37
    const-string/jumbo v3, "android.app.INotificationManager"

    #@7e2
    move-object/from16 v0, p2

    #@7e4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e7
    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@7ea
    move-result-object v16

    #@7eb
    .line 733
    .local v16, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7ee
    move-result v17

    #@7ef
    .line 734
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@7f1
    move-object/from16 v1, v16

    #@7f3
    move/from16 v2, v17

    #@7f5
    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyRestore([BI)V

    #@7f8
    .line 735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7fb
    .line 736
    const/4 v3, 0x1

    #@7fc
    return v3

    #@7fd
    .line 740
    .end local v16    # "_arg0":[B
    .end local v17    # "_arg1":I
    :sswitch_38
    const-string/jumbo v3, "android.app.INotificationManager"

    #@800
    move-object/from16 v0, p2

    #@802
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@805
    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@808
    move-result-object v4

    #@809
    .line 744
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@80c
    move-result v17

    #@80d
    .line 745
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@80f
    move/from16 v1, v17

    #@811
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@814
    move-result-object v35

    #@815
    .line 746
    .restart local v35    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@818
    .line 747
    if-eqz v35, :cond_1a

    #@81a
    .line 748
    const/4 v3, 0x1

    #@81b
    move-object/from16 v0, p3

    #@81d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@820
    .line 749
    const/4 v3, 0x1

    #@821
    move-object/from16 v0, v35

    #@823
    move-object/from16 v1, p3

    #@825
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@828
    .line 754
    :goto_1a
    const/4 v3, 0x1

    #@829
    return v3

    #@82a
    .line 752
    :cond_1a
    const/4 v3, 0x0

    #@82b
    move-object/from16 v0, p3

    #@82d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@830
    goto :goto_1a

    #@831
    .line 39
    nop

    #@832
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
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
