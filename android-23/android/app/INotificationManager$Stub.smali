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

.field static final TRANSACTION_applyRestore:I = 0x2c

.field static final TRANSACTION_areNotificationsEnabledForPackage:I = 0x7

.field static final TRANSACTION_cancelAllNotifications:I = 0x1

.field static final TRANSACTION_cancelNotificationFromListener:I = 0x12

.field static final TRANSACTION_cancelNotificationWithTag:I = 0x5

.field static final TRANSACTION_cancelNotificationsFromListener:I = 0x13

.field static final TRANSACTION_cancelToast:I = 0x3

.field static final TRANSACTION_enqueueNotificationWithTag:I = 0x4

.field static final TRANSACTION_enqueueToast:I = 0x2

.field static final TRANSACTION_getActiveNotifications:I = 0xe

.field static final TRANSACTION_getActiveNotificationsFromListener:I = 0x15

.field static final TRANSACTION_getAppActiveNotifications:I = 0x2d

.field static final TRANSACTION_getBackupPayload:I = 0x2b

.field static final TRANSACTION_getEffectsSuppressor:I = 0x1c

.field static final TRANSACTION_getHintsFromListener:I = 0x17

.field static final TRANSACTION_getHistoricalNotifications:I = 0xf

.field static final TRANSACTION_getInterruptionFilterFromListener:I = 0x19

.field static final TRANSACTION_getNotificationPolicy:I = 0x26

.field static final TRANSACTION_getPackagePeekable:I = 0xb

.field static final TRANSACTION_getPackagePriority:I = 0x9

.field static final TRANSACTION_getPackageVisibilityOverride:I = 0xd

.field static final TRANSACTION_getPackagesRequestingNotificationPolicyAccess:I = 0x28

.field static final TRANSACTION_getZenMode:I = 0x1f

.field static final TRANSACTION_getZenModeConfig:I = 0x20

.field static final TRANSACTION_isNotificationPolicyAccessGranted:I = 0x25

.field static final TRANSACTION_isNotificationPolicyAccessGrantedForPackage:I = 0x29

.field static final TRANSACTION_isSystemConditionProviderEnabled:I = 0x1e

.field static final TRANSACTION_matchesCallFilter:I = 0x1d

.field static final TRANSACTION_notifyConditions:I = 0x23

.field static final TRANSACTION_registerListener:I = 0x10

.field static final TRANSACTION_requestHintsFromListener:I = 0x16

.field static final TRANSACTION_requestInterruptionFilterFromListener:I = 0x18

.field static final TRANSACTION_requestZenModeConditions:I = 0x24

.field static final TRANSACTION_setInterruptionFilter:I = 0x1b

.field static final TRANSACTION_setNotificationPolicy:I = 0x27

.field static final TRANSACTION_setNotificationPolicyAccessGranted:I = 0x2a

.field static final TRANSACTION_setNotificationsEnabledForPackage:I = 0x6

.field static final TRANSACTION_setNotificationsShownFromListener:I = 0x14

.field static final TRANSACTION_setOnNotificationPostedTrimFromListener:I = 0x1a

.field static final TRANSACTION_setPackagePeekable:I = 0xa

.field static final TRANSACTION_setPackagePriority:I = 0x8

.field static final TRANSACTION_setPackageVisibilityOverride:I = 0xc

.field static final TRANSACTION_setZenMode:I = 0x22

.field static final TRANSACTION_setZenModeConfig:I = 0x21

.field static final TRANSACTION_unregisterListener:I = 0x11


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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 623
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
    move-result-object v18

    #@42
    .line 65
    .local v18, "_arg1":Landroid/app/ITransientNotification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v25

    #@46
    .line 66
    .local v25, "_arg2":I
    move-object/from16 v0, p0

    #@48
    move-object/from16 v1, v18

    #@4a
    move/from16 v2, v25

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
    .end local v18    # "_arg1":Landroid/app/ITransientNotification;
    .end local v25    # "_arg2":I
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
    move-result-object v18

    #@68
    .line 77
    .restart local v18    # "_arg1":Landroid/app/ITransientNotification;
    move-object/from16 v0, p0

    #@6a
    move-object/from16 v1, v18

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
    .end local v18    # "_arg1":Landroid/app/ITransientNotification;
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
    move-result v25

    #@c9
    .line 118
    .restart local v25    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cc
    move-result v7

    #@cd
    .line 119
    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    #@cf
    move/from16 v1, v25

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
    .end local v25    # "_arg2":I
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
    const/16 v26, 0x1

    #@f1
    .line 132
    .local v26, "_arg2":Z
    :goto_1
    move-object/from16 v0, p0

    #@f3
    move/from16 v1, v17

    #@f5
    move/from16 v2, v26

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
    .end local v26    # "_arg2":Z
    :cond_1
    const/16 v26, 0x0

    #@101
    .restart local v26    # "_arg2":Z
    goto :goto_1

    #@102
    .line 138
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v26    # "_arg2":Z
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
    move-result v33

    #@11a
    .line 144
    .local v33, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11d
    .line 145
    if-eqz v33, :cond_2

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
    .end local v33    # "_result":Z
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
    .line 154
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@138
    move-result v17

    #@139
    .line 156
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13c
    move-result v25

    #@13d
    .line 157
    .restart local v25    # "_arg2":I
    move-object/from16 v0, p0

    #@13f
    move/from16 v1, v17

    #@141
    move/from16 v2, v25

    #@143
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->setPackagePriority(Ljava/lang/String;II)V

    #@146
    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@149
    .line 159
    const/4 v3, 0x1

    #@14a
    return v3

    #@14b
    .line 163
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v25    # "_arg2":I
    :sswitch_9
    const-string/jumbo v3, "android.app.INotificationManager"

    #@14e
    move-object/from16 v0, p2

    #@150
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@153
    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@156
    move-result-object v4

    #@157
    .line 167
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15a
    move-result v17

    #@15b
    .line 168
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@15d
    move/from16 v1, v17

    #@15f
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getPackagePriority(Ljava/lang/String;I)I

    #@162
    move-result v28

    #@163
    .line 169
    .local v28, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@166
    .line 170
    move-object/from16 v0, p3

    #@168
    move/from16 v1, v28

    #@16a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16d
    .line 171
    const/4 v3, 0x1

    #@16e
    return v3

    #@16f
    .line 175
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v28    # "_result":I
    :sswitch_a
    const-string/jumbo v3, "android.app.INotificationManager"

    #@172
    move-object/from16 v0, p2

    #@174
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@177
    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17a
    move-result-object v4

    #@17b
    .line 179
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17e
    move-result v17

    #@17f
    .line 181
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@182
    move-result v3

    #@183
    if-eqz v3, :cond_3

    #@185
    const/16 v26, 0x1

    #@187
    .line 182
    .restart local v26    # "_arg2":Z
    :goto_3
    move-object/from16 v0, p0

    #@189
    move/from16 v1, v17

    #@18b
    move/from16 v2, v26

    #@18d
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->setPackagePeekable(Ljava/lang/String;IZ)V

    #@190
    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@193
    .line 184
    const/4 v3, 0x1

    #@194
    return v3

    #@195
    .line 181
    .end local v26    # "_arg2":Z
    :cond_3
    const/16 v26, 0x0

    #@197
    .restart local v26    # "_arg2":Z
    goto :goto_3

    #@198
    .line 188
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v26    # "_arg2":Z
    :sswitch_b
    const-string/jumbo v3, "android.app.INotificationManager"

    #@19b
    move-object/from16 v0, p2

    #@19d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a0
    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a3
    move-result-object v4

    #@1a4
    .line 192
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a7
    move-result v17

    #@1a8
    .line 193
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@1aa
    move/from16 v1, v17

    #@1ac
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getPackagePeekable(Ljava/lang/String;I)Z

    #@1af
    move-result v33

    #@1b0
    .line 194
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b3
    .line 195
    if-eqz v33, :cond_4

    #@1b5
    const/4 v3, 0x1

    #@1b6
    :goto_4
    move-object/from16 v0, p3

    #@1b8
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1bb
    .line 196
    const/4 v3, 0x1

    #@1bc
    return v3

    #@1bd
    .line 195
    :cond_4
    const/4 v3, 0x0

    #@1be
    goto :goto_4

    #@1bf
    .line 200
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v33    # "_result":Z
    :sswitch_c
    const-string/jumbo v3, "android.app.INotificationManager"

    #@1c2
    move-object/from16 v0, p2

    #@1c4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c7
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ca
    move-result-object v4

    #@1cb
    .line 204
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ce
    move-result v17

    #@1cf
    .line 206
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d2
    move-result v25

    #@1d3
    .line 207
    .restart local v25    # "_arg2":I
    move-object/from16 v0, p0

    #@1d5
    move/from16 v1, v17

    #@1d7
    move/from16 v2, v25

    #@1d9
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->setPackageVisibilityOverride(Ljava/lang/String;II)V

    #@1dc
    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1df
    .line 209
    const/4 v3, 0x1

    #@1e0
    return v3

    #@1e1
    .line 213
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v25    # "_arg2":I
    :sswitch_d
    const-string/jumbo v3, "android.app.INotificationManager"

    #@1e4
    move-object/from16 v0, p2

    #@1e6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e9
    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ec
    move-result-object v4

    #@1ed
    .line 217
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f0
    move-result v17

    #@1f1
    .line 218
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@1f3
    move/from16 v1, v17

    #@1f5
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getPackageVisibilityOverride(Ljava/lang/String;I)I

    #@1f8
    move-result v28

    #@1f9
    .line 219
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fc
    .line 220
    move-object/from16 v0, p3

    #@1fe
    move/from16 v1, v28

    #@200
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@203
    .line 221
    const/4 v3, 0x1

    #@204
    return v3

    #@205
    .line 225
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v28    # "_result":I
    :sswitch_e
    const-string/jumbo v3, "android.app.INotificationManager"

    #@208
    move-object/from16 v0, p2

    #@20a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20d
    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@210
    move-result-object v4

    #@211
    .line 228
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@213
    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    #@216
    move-result-object v35

    #@217
    .line 229
    .local v35, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21a
    .line 230
    const/4 v3, 0x1

    #@21b
    move-object/from16 v0, p3

    #@21d
    move-object/from16 v1, v35

    #@21f
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@222
    .line 231
    const/4 v3, 0x1

    #@223
    return v3

    #@224
    .line 235
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":[Landroid/service/notification/StatusBarNotification;
    :sswitch_f
    const-string/jumbo v3, "android.app.INotificationManager"

    #@227
    move-object/from16 v0, p2

    #@229
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22c
    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22f
    move-result-object v4

    #@230
    .line 239
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@233
    move-result v17

    #@234
    .line 240
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@236
    move/from16 v1, v17

    #@238
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    #@23b
    move-result-object v35

    #@23c
    .line 241
    .restart local v35    # "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23f
    .line 242
    const/4 v3, 0x1

    #@240
    move-object/from16 v0, p3

    #@242
    move-object/from16 v1, v35

    #@244
    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@247
    .line 243
    const/4 v3, 0x1

    #@248
    return v3

    #@249
    .line 247
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v35    # "_result":[Landroid/service/notification/StatusBarNotification;
    :sswitch_10
    const-string/jumbo v3, "android.app.INotificationManager"

    #@24c
    move-object/from16 v0, p2

    #@24e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@251
    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@254
    move-result-object v3

    #@255
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@258
    move-result-object v14

    #@259
    .line 251
    .local v14, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25c
    move-result v3

    #@25d
    if-eqz v3, :cond_5

    #@25f
    .line 252
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@261
    move-object/from16 v0, p2

    #@263
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@266
    move-result-object v20

    #@267
    check-cast v20, Landroid/content/ComponentName;

    #@269
    .line 258
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26c
    move-result v25

    #@26d
    .line 259
    .restart local v25    # "_arg2":I
    move-object/from16 v0, p0

    #@26f
    move-object/from16 v1, v20

    #@271
    move/from16 v2, v25

    #@273
    invoke-virtual {v0, v14, v1, v2}, Landroid/app/INotificationManager$Stub;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    #@276
    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@279
    .line 261
    const/4 v3, 0x1

    #@27a
    return v3

    #@27b
    .line 255
    .end local v25    # "_arg2":I
    :cond_5
    const/16 v20, 0x0

    #@27d
    .local v20, "_arg1":Landroid/content/ComponentName;
    goto :goto_5

    #@27e
    .line 265
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v20    # "_arg1":Landroid/content/ComponentName;
    :sswitch_11
    const-string/jumbo v3, "android.app.INotificationManager"

    #@281
    move-object/from16 v0, p2

    #@283
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@286
    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@289
    move-result-object v3

    #@28a
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@28d
    move-result-object v14

    #@28e
    .line 269
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@291
    move-result v17

    #@292
    .line 270
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@294
    move/from16 v1, v17

    #@296
    invoke-virtual {v0, v14, v1}, Landroid/app/INotificationManager$Stub;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    #@299
    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29c
    .line 272
    const/4 v3, 0x1

    #@29d
    return v3

    #@29e
    .line 276
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v17    # "_arg1":I
    :sswitch_12
    const-string/jumbo v3, "android.app.INotificationManager"

    #@2a1
    move-object/from16 v0, p2

    #@2a3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a6
    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a9
    move-result-object v3

    #@2aa
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@2ad
    move-result-object v14

    #@2ae
    .line 280
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b1
    move-result-object v5

    #@2b2
    .line 282
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b5
    move-result-object v6

    #@2b6
    .line 284
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b9
    move-result v7

    #@2ba
    .line 285
    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    #@2bc
    invoke-virtual {v0, v14, v5, v6, v7}, Landroid/app/INotificationManager$Stub;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V

    #@2bf
    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c2
    .line 287
    const/4 v3, 0x1

    #@2c3
    return v3

    #@2c4
    .line 291
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    :sswitch_13
    const-string/jumbo v3, "android.app.INotificationManager"

    #@2c7
    move-object/from16 v0, p2

    #@2c9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2cc
    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2cf
    move-result-object v3

    #@2d0
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@2d3
    move-result-object v14

    #@2d4
    .line 295
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@2d7
    move-result-object v24

    #@2d8
    .line 296
    .local v24, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@2da
    move-object/from16 v1, v24

    #@2dc
    invoke-virtual {v0, v14, v1}, Landroid/app/INotificationManager$Stub;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    #@2df
    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e2
    .line 298
    const/4 v3, 0x1

    #@2e3
    return v3

    #@2e4
    .line 302
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v24    # "_arg1":[Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v3, "android.app.INotificationManager"

    #@2e7
    move-object/from16 v0, p2

    #@2e9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ec
    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2ef
    move-result-object v3

    #@2f0
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@2f3
    move-result-object v14

    #@2f4
    .line 306
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@2f7
    move-result-object v24

    #@2f8
    .line 307
    .restart local v24    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@2fa
    move-object/from16 v1, v24

    #@2fc
    invoke-virtual {v0, v14, v1}, Landroid/app/INotificationManager$Stub;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    #@2ff
    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@302
    .line 309
    const/4 v3, 0x1

    #@303
    return v3

    #@304
    .line 313
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v24    # "_arg1":[Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v3, "android.app.INotificationManager"

    #@307
    move-object/from16 v0, p2

    #@309
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30c
    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@30f
    move-result-object v3

    #@310
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@313
    move-result-object v14

    #@314
    .line 317
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@317
    move-result-object v24

    #@318
    .line 319
    .restart local v24    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31b
    move-result v25

    #@31c
    .line 320
    .restart local v25    # "_arg2":I
    move-object/from16 v0, p0

    #@31e
    move-object/from16 v1, v24

    #@320
    move/from16 v2, v25

    #@322
    invoke-virtual {v0, v14, v1, v2}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@325
    move-result-object v31

    #@326
    .line 321
    .local v31, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@329
    .line 322
    if-eqz v31, :cond_6

    #@32b
    .line 323
    const/4 v3, 0x1

    #@32c
    move-object/from16 v0, p3

    #@32e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@331
    .line 324
    const/4 v3, 0x1

    #@332
    move-object/from16 v0, v31

    #@334
    move-object/from16 v1, p3

    #@336
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@339
    .line 329
    :goto_6
    const/4 v3, 0x1

    #@33a
    return v3

    #@33b
    .line 327
    :cond_6
    const/4 v3, 0x0

    #@33c
    move-object/from16 v0, p3

    #@33e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@341
    goto :goto_6

    #@342
    .line 333
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v24    # "_arg1":[Ljava/lang/String;
    .end local v25    # "_arg2":I
    .end local v31    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_16
    const-string/jumbo v3, "android.app.INotificationManager"

    #@345
    move-object/from16 v0, p2

    #@347
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34a
    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@34d
    move-result-object v3

    #@34e
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@351
    move-result-object v14

    #@352
    .line 337
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@355
    move-result v17

    #@356
    .line 338
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@358
    move/from16 v1, v17

    #@35a
    invoke-virtual {v0, v14, v1}, Landroid/app/INotificationManager$Stub;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V

    #@35d
    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@360
    .line 340
    const/4 v3, 0x1

    #@361
    return v3

    #@362
    .line 344
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v17    # "_arg1":I
    :sswitch_17
    const-string/jumbo v3, "android.app.INotificationManager"

    #@365
    move-object/from16 v0, p2

    #@367
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36a
    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@36d
    move-result-object v3

    #@36e
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@371
    move-result-object v14

    #@372
    .line 347
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    move-object/from16 v0, p0

    #@374
    invoke-virtual {v0, v14}, Landroid/app/INotificationManager$Stub;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I

    #@377
    move-result v28

    #@378
    .line 348
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37b
    .line 349
    move-object/from16 v0, p3

    #@37d
    move/from16 v1, v28

    #@37f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@382
    .line 350
    const/4 v3, 0x1

    #@383
    return v3

    #@384
    .line 354
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v28    # "_result":I
    :sswitch_18
    const-string/jumbo v3, "android.app.INotificationManager"

    #@387
    move-object/from16 v0, p2

    #@389
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38c
    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@38f
    move-result-object v3

    #@390
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@393
    move-result-object v14

    #@394
    .line 358
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@397
    move-result v17

    #@398
    .line 359
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@39a
    move/from16 v1, v17

    #@39c
    invoke-virtual {v0, v14, v1}, Landroid/app/INotificationManager$Stub;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V

    #@39f
    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a2
    .line 361
    const/4 v3, 0x1

    #@3a3
    return v3

    #@3a4
    .line 365
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v17    # "_arg1":I
    :sswitch_19
    const-string/jumbo v3, "android.app.INotificationManager"

    #@3a7
    move-object/from16 v0, p2

    #@3a9
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ac
    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3af
    move-result-object v3

    #@3b0
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@3b3
    move-result-object v14

    #@3b4
    .line 368
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    move-object/from16 v0, p0

    #@3b6
    invoke-virtual {v0, v14}, Landroid/app/INotificationManager$Stub;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I

    #@3b9
    move-result v28

    #@3ba
    .line 369
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3bd
    .line 370
    move-object/from16 v0, p3

    #@3bf
    move/from16 v1, v28

    #@3c1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c4
    .line 371
    const/4 v3, 0x1

    #@3c5
    return v3

    #@3c6
    .line 375
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v28    # "_result":I
    :sswitch_1a
    const-string/jumbo v3, "android.app.INotificationManager"

    #@3c9
    move-object/from16 v0, p2

    #@3cb
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ce
    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3d1
    move-result-object v3

    #@3d2
    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    #@3d5
    move-result-object v14

    #@3d6
    .line 379
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d9
    move-result v17

    #@3da
    .line 380
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@3dc
    move/from16 v1, v17

    #@3de
    invoke-virtual {v0, v14, v1}, Landroid/app/INotificationManager$Stub;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V

    #@3e1
    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e4
    .line 382
    const/4 v3, 0x1

    #@3e5
    return v3

    #@3e6
    .line 386
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v17    # "_arg1":I
    :sswitch_1b
    const-string/jumbo v3, "android.app.INotificationManager"

    #@3e9
    move-object/from16 v0, p2

    #@3eb
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ee
    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3f1
    move-result-object v4

    #@3f2
    .line 390
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f5
    move-result v17

    #@3f6
    .line 391
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@3f8
    move/from16 v1, v17

    #@3fa
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->setInterruptionFilter(Ljava/lang/String;I)V

    #@3fd
    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@400
    .line 393
    const/4 v3, 0x1

    #@401
    return v3

    #@402
    .line 397
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    :sswitch_1c
    const-string/jumbo v3, "android.app.INotificationManager"

    #@405
    move-object/from16 v0, p2

    #@407
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40a
    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getEffectsSuppressor()Landroid/content/ComponentName;

    #@40d
    move-result-object v30

    #@40e
    .line 399
    .local v30, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@411
    .line 400
    if-eqz v30, :cond_7

    #@413
    .line 401
    const/4 v3, 0x1

    #@414
    move-object/from16 v0, p3

    #@416
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@419
    .line 402
    const/4 v3, 0x1

    #@41a
    move-object/from16 v0, v30

    #@41c
    move-object/from16 v1, p3

    #@41e
    invoke-virtual {v0, v1, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@421
    .line 407
    :goto_7
    const/4 v3, 0x1

    #@422
    return v3

    #@423
    .line 405
    :cond_7
    const/4 v3, 0x0

    #@424
    move-object/from16 v0, p3

    #@426
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@429
    goto :goto_7

    #@42a
    .line 411
    .end local v30    # "_result":Landroid/content/ComponentName;
    :sswitch_1d
    const-string/jumbo v3, "android.app.INotificationManager"

    #@42d
    move-object/from16 v0, p2

    #@42f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@432
    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@435
    move-result v3

    #@436
    if-eqz v3, :cond_8

    #@438
    .line 414
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@43a
    move-object/from16 v0, p2

    #@43c
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43f
    move-result-object v12

    #@440
    check-cast v12, Landroid/os/Bundle;

    #@442
    .line 419
    :goto_8
    move-object/from16 v0, p0

    #@444
    invoke-virtual {v0, v12}, Landroid/app/INotificationManager$Stub;->matchesCallFilter(Landroid/os/Bundle;)Z

    #@447
    move-result v33

    #@448
    .line 420
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@44b
    .line 421
    if-eqz v33, :cond_9

    #@44d
    const/4 v3, 0x1

    #@44e
    :goto_9
    move-object/from16 v0, p3

    #@450
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@453
    .line 422
    const/4 v3, 0x1

    #@454
    return v3

    #@455
    .line 417
    .end local v33    # "_result":Z
    :cond_8
    const/4 v12, 0x0

    #@456
    .local v12, "_arg0":Landroid/os/Bundle;
    goto :goto_8

    #@457
    .line 421
    .end local v12    # "_arg0":Landroid/os/Bundle;
    .restart local v33    # "_result":Z
    :cond_9
    const/4 v3, 0x0

    #@458
    goto :goto_9

    #@459
    .line 426
    .end local v33    # "_result":Z
    :sswitch_1e
    const-string/jumbo v3, "android.app.INotificationManager"

    #@45c
    move-object/from16 v0, p2

    #@45e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@461
    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@464
    move-result-object v4

    #@465
    .line 429
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@467
    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    #@46a
    move-result v33

    #@46b
    .line 430
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@46e
    .line 431
    if-eqz v33, :cond_a

    #@470
    const/4 v3, 0x1

    #@471
    :goto_a
    move-object/from16 v0, p3

    #@473
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@476
    .line 432
    const/4 v3, 0x1

    #@477
    return v3

    #@478
    .line 431
    :cond_a
    const/4 v3, 0x0

    #@479
    goto :goto_a

    #@47a
    .line 436
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_1f
    const-string/jumbo v3, "android.app.INotificationManager"

    #@47d
    move-object/from16 v0, p2

    #@47f
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@482
    .line 437
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenMode()I

    #@485
    move-result v28

    #@486
    .line 438
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@489
    .line 439
    move-object/from16 v0, p3

    #@48b
    move/from16 v1, v28

    #@48d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@490
    .line 440
    const/4 v3, 0x1

    #@491
    return v3

    #@492
    .line 444
    .end local v28    # "_result":I
    :sswitch_20
    const-string/jumbo v3, "android.app.INotificationManager"

    #@495
    move-object/from16 v0, p2

    #@497
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49a
    .line 445
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    #@49d
    move-result-object v32

    #@49e
    .line 446
    .local v32, "_result":Landroid/service/notification/ZenModeConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a1
    .line 447
    if-eqz v32, :cond_b

    #@4a3
    .line 448
    const/4 v3, 0x1

    #@4a4
    move-object/from16 v0, p3

    #@4a6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4a9
    .line 449
    const/4 v3, 0x1

    #@4aa
    move-object/from16 v0, v32

    #@4ac
    move-object/from16 v1, p3

    #@4ae
    invoke-virtual {v0, v1, v3}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    #@4b1
    .line 454
    :goto_b
    const/4 v3, 0x1

    #@4b2
    return v3

    #@4b3
    .line 452
    :cond_b
    const/4 v3, 0x0

    #@4b4
    move-object/from16 v0, p3

    #@4b6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4b9
    goto :goto_b

    #@4ba
    .line 458
    .end local v32    # "_result":Landroid/service/notification/ZenModeConfig;
    :sswitch_21
    const-string/jumbo v3, "android.app.INotificationManager"

    #@4bd
    move-object/from16 v0, p2

    #@4bf
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c2
    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4c5
    move-result v3

    #@4c6
    if-eqz v3, :cond_c

    #@4c8
    .line 461
    sget-object v3, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4ca
    move-object/from16 v0, p2

    #@4cc
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4cf
    move-result-object v15

    #@4d0
    check-cast v15, Landroid/service/notification/ZenModeConfig;

    #@4d2
    .line 467
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4d5
    move-result-object v5

    #@4d6
    .line 468
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4d8
    invoke-virtual {v0, v15, v5}, Landroid/app/INotificationManager$Stub;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    #@4db
    move-result v33

    #@4dc
    .line 469
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4df
    .line 470
    if-eqz v33, :cond_d

    #@4e1
    const/4 v3, 0x1

    #@4e2
    :goto_d
    move-object/from16 v0, p3

    #@4e4
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4e7
    .line 471
    const/4 v3, 0x1

    #@4e8
    return v3

    #@4e9
    .line 464
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :cond_c
    const/4 v15, 0x0

    #@4ea
    .local v15, "_arg0":Landroid/service/notification/ZenModeConfig;
    goto :goto_c

    #@4eb
    .line 470
    .end local v15    # "_arg0":Landroid/service/notification/ZenModeConfig;
    .restart local v5    # "_arg1":Ljava/lang/String;
    .restart local v33    # "_result":Z
    :cond_d
    const/4 v3, 0x0

    #@4ec
    goto :goto_d

    #@4ed
    .line 475
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_22
    const-string/jumbo v3, "android.app.INotificationManager"

    #@4f0
    move-object/from16 v0, p2

    #@4f2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f5
    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4f8
    move-result v11

    #@4f9
    .line 479
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4fc
    move-result v3

    #@4fd
    if-eqz v3, :cond_e

    #@4ff
    .line 480
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@501
    move-object/from16 v0, p2

    #@503
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@506
    move-result-object v21

    #@507
    check-cast v21, Landroid/net/Uri;

    #@509
    .line 486
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@50c
    move-result-object v6

    #@50d
    .line 487
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@50f
    move-object/from16 v1, v21

    #@511
    invoke-virtual {v0, v11, v1, v6}, Landroid/app/INotificationManager$Stub;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    #@514
    .line 488
    const/4 v3, 0x1

    #@515
    return v3

    #@516
    .line 483
    .end local v6    # "_arg2":Ljava/lang/String;
    :cond_e
    const/16 v21, 0x0

    #@518
    .local v21, "_arg1":Landroid/net/Uri;
    goto :goto_e

    #@519
    .line 492
    .end local v11    # "_arg0":I
    .end local v21    # "_arg1":Landroid/net/Uri;
    :sswitch_23
    const-string/jumbo v3, "android.app.INotificationManager"

    #@51c
    move-object/from16 v0, p2

    #@51e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@521
    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@524
    move-result-object v4

    #@525
    .line 496
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@528
    move-result-object v3

    #@529
    invoke-static {v3}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    #@52c
    move-result-object v22

    #@52d
    .line 498
    .local v22, "_arg1":Landroid/service/notification/IConditionProvider;
    sget-object v3, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    #@52f
    move-object/from16 v0, p2

    #@531
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@534
    move-result-object v27

    #@535
    check-cast v27, [Landroid/service/notification/Condition;

    #@537
    .line 499
    .local v27, "_arg2":[Landroid/service/notification/Condition;
    move-object/from16 v0, p0

    #@539
    move-object/from16 v1, v22

    #@53b
    move-object/from16 v2, v27

    #@53d
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V

    #@540
    .line 500
    const/4 v3, 0x1

    #@541
    return v3

    #@542
    .line 504
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":Landroid/service/notification/IConditionProvider;
    .end local v27    # "_arg2":[Landroid/service/notification/Condition;
    :sswitch_24
    const-string/jumbo v3, "android.app.INotificationManager"

    #@545
    move-object/from16 v0, p2

    #@547
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54a
    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@54d
    move-result-object v3

    #@54e
    invoke-static {v3}, Landroid/service/notification/IConditionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionListener;

    #@551
    move-result-object v13

    #@552
    .line 508
    .local v13, "_arg0":Landroid/service/notification/IConditionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@555
    move-result v17

    #@556
    .line 509
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@558
    move/from16 v1, v17

    #@55a
    invoke-virtual {v0, v13, v1}, Landroid/app/INotificationManager$Stub;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V

    #@55d
    .line 510
    const/4 v3, 0x1

    #@55e
    return v3

    #@55f
    .line 514
    .end local v13    # "_arg0":Landroid/service/notification/IConditionListener;
    .end local v17    # "_arg1":I
    :sswitch_25
    const-string/jumbo v3, "android.app.INotificationManager"

    #@562
    move-object/from16 v0, p2

    #@564
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@567
    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@56a
    move-result-object v4

    #@56b
    .line 517
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@56d
    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z

    #@570
    move-result v33

    #@571
    .line 518
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@574
    .line 519
    if-eqz v33, :cond_f

    #@576
    const/4 v3, 0x1

    #@577
    :goto_f
    move-object/from16 v0, p3

    #@579
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@57c
    .line 520
    const/4 v3, 0x1

    #@57d
    return v3

    #@57e
    .line 519
    :cond_f
    const/4 v3, 0x0

    #@57f
    goto :goto_f

    #@580
    .line 524
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_26
    const-string/jumbo v3, "android.app.INotificationManager"

    #@583
    move-object/from16 v0, p2

    #@585
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@588
    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@58b
    move-result-object v4

    #@58c
    .line 527
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@58e
    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

    #@591
    move-result-object v29

    #@592
    .line 528
    .local v29, "_result":Landroid/app/NotificationManager$Policy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@595
    .line 529
    if-eqz v29, :cond_10

    #@597
    .line 530
    const/4 v3, 0x1

    #@598
    move-object/from16 v0, p3

    #@59a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@59d
    .line 531
    const/4 v3, 0x1

    #@59e
    move-object/from16 v0, v29

    #@5a0
    move-object/from16 v1, p3

    #@5a2
    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager$Policy;->writeToParcel(Landroid/os/Parcel;I)V

    #@5a5
    .line 536
    :goto_10
    const/4 v3, 0x1

    #@5a6
    return v3

    #@5a7
    .line 534
    :cond_10
    const/4 v3, 0x0

    #@5a8
    move-object/from16 v0, p3

    #@5aa
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5ad
    goto :goto_10

    #@5ae
    .line 540
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v29    # "_result":Landroid/app/NotificationManager$Policy;
    :sswitch_27
    const-string/jumbo v3, "android.app.INotificationManager"

    #@5b1
    move-object/from16 v0, p2

    #@5b3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b6
    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5b9
    move-result-object v4

    #@5ba
    .line 544
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5bd
    move-result v3

    #@5be
    if-eqz v3, :cond_11

    #@5c0
    .line 545
    sget-object v3, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5c2
    move-object/from16 v0, p2

    #@5c4
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5c7
    move-result-object v19

    #@5c8
    check-cast v19, Landroid/app/NotificationManager$Policy;

    #@5ca
    .line 550
    :goto_11
    move-object/from16 v0, p0

    #@5cc
    move-object/from16 v1, v19

    #@5ce
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V

    #@5d1
    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d4
    .line 552
    const/4 v3, 0x1

    #@5d5
    return v3

    #@5d6
    .line 548
    :cond_11
    const/16 v19, 0x0

    #@5d8
    .local v19, "_arg1":Landroid/app/NotificationManager$Policy;
    goto :goto_11

    #@5d9
    .line 556
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Landroid/app/NotificationManager$Policy;
    :sswitch_28
    const-string/jumbo v3, "android.app.INotificationManager"

    #@5dc
    move-object/from16 v0, p2

    #@5de
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e1
    .line 557
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getPackagesRequestingNotificationPolicyAccess()[Ljava/lang/String;

    #@5e4
    move-result-object v36

    #@5e5
    .line 558
    .local v36, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e8
    .line 559
    move-object/from16 v0, p3

    #@5ea
    move-object/from16 v1, v36

    #@5ec
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@5ef
    .line 560
    const/4 v3, 0x1

    #@5f0
    return v3

    #@5f1
    .line 564
    .end local v36    # "_result":[Ljava/lang/String;
    :sswitch_29
    const-string/jumbo v3, "android.app.INotificationManager"

    #@5f4
    move-object/from16 v0, p2

    #@5f6
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f9
    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5fc
    move-result-object v4

    #@5fd
    .line 567
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5ff
    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    #@602
    move-result v33

    #@603
    .line 568
    .restart local v33    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@606
    .line 569
    if-eqz v33, :cond_12

    #@608
    const/4 v3, 0x1

    #@609
    :goto_12
    move-object/from16 v0, p3

    #@60b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@60e
    .line 570
    const/4 v3, 0x1

    #@60f
    return v3

    #@610
    .line 569
    :cond_12
    const/4 v3, 0x0

    #@611
    goto :goto_12

    #@612
    .line 574
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v33    # "_result":Z
    :sswitch_2a
    const-string/jumbo v3, "android.app.INotificationManager"

    #@615
    move-object/from16 v0, p2

    #@617
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@61a
    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@61d
    move-result-object v4

    #@61e
    .line 578
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@621
    move-result v3

    #@622
    if-eqz v3, :cond_13

    #@624
    const/16 v23, 0x1

    #@626
    .line 579
    .local v23, "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    #@628
    move/from16 v1, v23

    #@62a
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    #@62d
    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@630
    .line 581
    const/4 v3, 0x1

    #@631
    return v3

    #@632
    .line 578
    .end local v23    # "_arg1":Z
    :cond_13
    const/16 v23, 0x0

    #@634
    .restart local v23    # "_arg1":Z
    goto :goto_13

    #@635
    .line 585
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v23    # "_arg1":Z
    :sswitch_2b
    const-string/jumbo v3, "android.app.INotificationManager"

    #@638
    move-object/from16 v0, p2

    #@63a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@63d
    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@640
    move-result v11

    #@641
    .line 588
    .restart local v11    # "_arg0":I
    move-object/from16 v0, p0

    #@643
    invoke-virtual {v0, v11}, Landroid/app/INotificationManager$Stub;->getBackupPayload(I)[B

    #@646
    move-result-object v34

    #@647
    .line 589
    .local v34, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@64a
    .line 590
    move-object/from16 v0, p3

    #@64c
    move-object/from16 v1, v34

    #@64e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@651
    .line 591
    const/4 v3, 0x1

    #@652
    return v3

    #@653
    .line 595
    .end local v11    # "_arg0":I
    .end local v34    # "_result":[B
    :sswitch_2c
    const-string/jumbo v3, "android.app.INotificationManager"

    #@656
    move-object/from16 v0, p2

    #@658
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@65b
    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@65e
    move-result-object v16

    #@65f
    .line 599
    .local v16, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@662
    move-result v17

    #@663
    .line 600
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@665
    move-object/from16 v1, v16

    #@667
    move/from16 v2, v17

    #@669
    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyRestore([BI)V

    #@66c
    .line 601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@66f
    .line 602
    const/4 v3, 0x1

    #@670
    return v3

    #@671
    .line 606
    .end local v16    # "_arg0":[B
    .end local v17    # "_arg1":I
    :sswitch_2d
    const-string/jumbo v3, "android.app.INotificationManager"

    #@674
    move-object/from16 v0, p2

    #@676
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@679
    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@67c
    move-result-object v4

    #@67d
    .line 610
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@680
    move-result v17

    #@681
    .line 611
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    #@683
    move/from16 v1, v17

    #@685
    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@688
    move-result-object v31

    #@689
    .line 612
    .restart local v31    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@68c
    .line 613
    if-eqz v31, :cond_14

    #@68e
    .line 614
    const/4 v3, 0x1

    #@68f
    move-object/from16 v0, p3

    #@691
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@694
    .line 615
    const/4 v3, 0x1

    #@695
    move-object/from16 v0, v31

    #@697
    move-object/from16 v1, p3

    #@699
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@69c
    .line 620
    :goto_14
    const/4 v3, 0x1

    #@69d
    return v3

    #@69e
    .line 618
    :cond_14
    const/4 v3, 0x0

    #@69f
    move-object/from16 v0, p3

    #@6a1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6a4
    goto :goto_14

    #@6a5
    .line 39
    nop

    #@6a6
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
