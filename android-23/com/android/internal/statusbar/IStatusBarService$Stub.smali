.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final TRANSACTION_appTransitionCancelled:I = 0x21

.field static final TRANSACTION_appTransitionPending:I = 0x20

.field static final TRANSACTION_appTransitionStarting:I = 0x22

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x1f

.field static final TRANSACTION_clearNotificationEffects:I = 0x11

.field static final TRANSACTION_collapsePanels:I = 0x2

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_disable2:I = 0x5

.field static final TRANSACTION_disable2ForUser:I = 0x6

.field static final TRANSACTION_disableForUser:I = 0x4

.field static final TRANSACTION_expandNotificationsPanel:I = 0x1

.field static final TRANSACTION_expandSettingsPanel:I = 0xc

.field static final TRANSACTION_hideRecentApps:I = 0x1c

.field static final TRANSACTION_onClearAllNotifications:I = 0x15

.field static final TRANSACTION_onNotificationActionClick:I = 0x13

.field static final TRANSACTION_onNotificationClear:I = 0x16

.field static final TRANSACTION_onNotificationClick:I = 0x12

.field static final TRANSACTION_onNotificationError:I = 0x14

.field static final TRANSACTION_onNotificationExpansionChanged:I = 0x18

.field static final TRANSACTION_onNotificationVisibilityChanged:I = 0x17

.field static final TRANSACTION_onPanelHidden:I = 0x10

.field static final TRANSACTION_onPanelRevealed:I = 0xf

.field static final TRANSACTION_preloadRecentApps:I = 0x1e

.field static final TRANSACTION_registerStatusBar:I = 0xe

.field static final TRANSACTION_removeIcon:I = 0x9

.field static final TRANSACTION_setCurrentUser:I = 0xd

.field static final TRANSACTION_setIcon:I = 0x7

.field static final TRANSACTION_setIconVisibility:I = 0x8

.field static final TRANSACTION_setImeWindowStatus:I = 0xb

.field static final TRANSACTION_setSystemUiVisibility:I = 0x19

.field static final TRANSACTION_setWindowState:I = 0x1a

.field static final TRANSACTION_showRecentApps:I = 0x1b

.field static final TRANSACTION_startAssist:I = 0x23

.field static final TRANSACTION_toggleRecentApps:I = 0x1d

.field static final TRANSACTION_topAppWindowChanged:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "com.android.internal.statusbar.IStatusBarService"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
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
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBarService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Lcom/android/internal/statusbar/IStatusBarService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 41
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
    .line 442
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v6

    #@7
    return v6

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v6, 0x1

    #@11
    return v6

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    #@1d
    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20
    .line 51
    const/4 v6, 0x1

    #@21
    return v6

    #@22
    .line 55
    :sswitch_2
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@25
    move-object/from16 v0, p2

    #@27
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    #@2d
    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@30
    .line 58
    const/4 v6, 0x1

    #@31
    return v6

    #@32
    .line 62
    :sswitch_3
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@35
    move-object/from16 v0, p2

    #@37
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v20

    #@3e
    .line 66
    .local v20, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@41
    move-result-object v29

    #@42
    .line 68
    .local v29, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@45
    move-result-object v35

    #@46
    .line 69
    .local v35, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@48
    move/from16 v1, v20

    #@4a
    move-object/from16 v2, v29

    #@4c
    move-object/from16 v3, v35

    #@4e
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    #@51
    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54
    .line 71
    const/4 v6, 0x1

    #@55
    return v6

    #@56
    .line 75
    .end local v20    # "_arg0":I
    .end local v29    # "_arg1":Landroid/os/IBinder;
    .end local v35    # "_arg2":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@59
    move-object/from16 v0, p2

    #@5b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v20

    #@62
    .line 79
    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@65
    move-result-object v29

    #@66
    .line 81
    .restart local v29    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@69
    move-result-object v35

    #@6a
    .line 83
    .restart local v35    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v10

    #@6e
    .line 84
    .local v10, "_arg3":I
    move-object/from16 v0, p0

    #@70
    move/from16 v1, v20

    #@72
    move-object/from16 v2, v29

    #@74
    move-object/from16 v3, v35

    #@76
    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    #@79
    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c
    .line 86
    const/4 v6, 0x1

    #@7d
    return v6

    #@7e
    .line 90
    .end local v10    # "_arg3":I
    .end local v20    # "_arg0":I
    .end local v29    # "_arg1":Landroid/os/IBinder;
    .end local v35    # "_arg2":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@81
    move-object/from16 v0, p2

    #@83
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86
    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@89
    move-result v20

    #@8a
    .line 94
    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8d
    move-result-object v29

    #@8e
    .line 96
    .restart local v29    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@91
    move-result-object v35

    #@92
    .line 97
    .restart local v35    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@94
    move/from16 v1, v20

    #@96
    move-object/from16 v2, v29

    #@98
    move-object/from16 v3, v35

    #@9a
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    #@9d
    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a0
    .line 99
    const/4 v6, 0x1

    #@a1
    return v6

    #@a2
    .line 103
    .end local v20    # "_arg0":I
    .end local v29    # "_arg1":Landroid/os/IBinder;
    .end local v35    # "_arg2":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@a5
    move-object/from16 v0, p2

    #@a7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aa
    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v20

    #@ae
    .line 107
    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b1
    move-result-object v29

    #@b2
    .line 109
    .restart local v29    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b5
    move-result-object v35

    #@b6
    .line 111
    .restart local v35    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b9
    move-result v10

    #@ba
    .line 112
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@bc
    move/from16 v1, v20

    #@be
    move-object/from16 v2, v29

    #@c0
    move-object/from16 v3, v35

    #@c2
    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    #@c5
    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c8
    .line 114
    const/4 v6, 0x1

    #@c9
    return v6

    #@ca
    .line 118
    .end local v10    # "_arg3":I
    .end local v20    # "_arg0":I
    .end local v29    # "_arg1":Landroid/os/IBinder;
    .end local v35    # "_arg2":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@cd
    move-object/from16 v0, p2

    #@cf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d2
    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d5
    move-result-object v7

    #@d6
    .line 122
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d9
    move-result-object v8

    #@da
    .line 124
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dd
    move-result v9

    #@de
    .line 126
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e1
    move-result v10

    #@e2
    .line 128
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e5
    move-result-object v11

    #@e6
    .local v11, "_arg4":Ljava/lang/String;
    move-object/from16 v6, p0

    #@e8
    .line 129
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    #@eb
    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ee
    .line 131
    const/4 v6, 0x1

    #@ef
    return v6

    #@f0
    .line 135
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@f3
    move-object/from16 v0, p2

    #@f5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f8
    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fb
    move-result-object v7

    #@fc
    .line 139
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ff
    move-result v6

    #@100
    if-eqz v6, :cond_0

    #@102
    const/16 v33, 0x1

    #@104
    .line 140
    .local v33, "_arg1":Z
    :goto_0
    move-object/from16 v0, p0

    #@106
    move/from16 v1, v33

    #@108
    invoke-virtual {v0, v7, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    #@10b
    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10e
    .line 142
    const/4 v6, 0x1

    #@10f
    return v6

    #@110
    .line 139
    .end local v33    # "_arg1":Z
    :cond_0
    const/16 v33, 0x0

    #@112
    .restart local v33    # "_arg1":Z
    goto :goto_0

    #@113
    .line 146
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v33    # "_arg1":Z
    :sswitch_9
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@116
    move-object/from16 v0, p2

    #@118
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11b
    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11e
    move-result-object v7

    #@11f
    .line 149
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@121
    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    #@124
    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@127
    .line 151
    const/4 v6, 0x1

    #@128
    return v6

    #@129
    .line 155
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@12c
    move-object/from16 v0, p2

    #@12e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@131
    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@134
    move-result v6

    #@135
    if-eqz v6, :cond_1

    #@137
    const/16 v26, 0x1

    #@139
    .line 158
    .local v26, "_arg0":Z
    :goto_1
    move-object/from16 v0, p0

    #@13b
    move/from16 v1, v26

    #@13d
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->topAppWindowChanged(Z)V

    #@140
    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@143
    .line 160
    const/4 v6, 0x1

    #@144
    return v6

    #@145
    .line 157
    .end local v26    # "_arg0":Z
    :cond_1
    const/16 v26, 0x0

    #@147
    .restart local v26    # "_arg0":Z
    goto :goto_1

    #@148
    .line 164
    .end local v26    # "_arg0":Z
    :sswitch_b
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@14b
    move-object/from16 v0, p2

    #@14d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@150
    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@153
    move-result-object v24

    #@154
    .line 168
    .local v24, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@157
    move-result v28

    #@158
    .line 170
    .local v28, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15b
    move-result v9

    #@15c
    .line 172
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15f
    move-result v6

    #@160
    if-eqz v6, :cond_2

    #@162
    const/16 v40, 0x1

    #@164
    .line 173
    .local v40, "_arg3":Z
    :goto_2
    move-object/from16 v0, p0

    #@166
    move-object/from16 v1, v24

    #@168
    move/from16 v2, v28

    #@16a
    move/from16 v3, v40

    #@16c
    invoke-virtual {v0, v1, v2, v9, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    #@16f
    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@172
    .line 175
    const/4 v6, 0x1

    #@173
    return v6

    #@174
    .line 172
    .end local v40    # "_arg3":Z
    :cond_2
    const/16 v40, 0x0

    #@176
    .restart local v40    # "_arg3":Z
    goto :goto_2

    #@177
    .line 179
    .end local v9    # "_arg2":I
    .end local v24    # "_arg0":Landroid/os/IBinder;
    .end local v28    # "_arg1":I
    .end local v40    # "_arg3":Z
    :sswitch_c
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@17a
    move-object/from16 v0, p2

    #@17c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17f
    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel()V

    #@182
    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@185
    .line 182
    const/4 v6, 0x1

    #@186
    return v6

    #@187
    .line 186
    :sswitch_d
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@18a
    move-object/from16 v0, p2

    #@18c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18f
    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@192
    move-result v20

    #@193
    .line 189
    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    #@195
    move/from16 v1, v20

    #@197
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setCurrentUser(I)V

    #@19a
    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19d
    .line 191
    const/4 v6, 0x1

    #@19e
    return v6

    #@19f
    .line 195
    .end local v20    # "_arg0":I
    :sswitch_e
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@1a2
    move-object/from16 v0, p2

    #@1a4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a7
    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1aa
    move-result-object v6

    #@1ab
    invoke-static {v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    #@1ae
    move-result-object v25

    #@1af
    .line 199
    .local v25, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    new-instance v32, Lcom/android/internal/statusbar/StatusBarIconList;

    #@1b1
    invoke-direct/range {v32 .. v32}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    #@1b4
    .line 201
    .local v32, "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b7
    move-result v38

    #@1b8
    .line 202
    .local v38, "_arg2_length":I
    if-gez v38, :cond_3

    #@1ba
    .line 203
    const/16 v37, 0x0

    #@1bc
    .line 209
    :goto_3
    new-instance v39, Ljava/util/ArrayList;

    #@1be
    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    #@1c1
    .line 210
    .local v39, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    #@1c3
    move-object/from16 v1, v25

    #@1c5
    move-object/from16 v2, v32

    #@1c7
    move-object/from16 v3, v37

    #@1c9
    move-object/from16 v4, v39

    #@1cb
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V

    #@1ce
    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d1
    .line 212
    if-eqz v32, :cond_4

    #@1d3
    .line 213
    const/4 v6, 0x1

    #@1d4
    move-object/from16 v0, p3

    #@1d6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1d9
    .line 214
    const/4 v6, 0x1

    #@1da
    move-object/from16 v0, v32

    #@1dc
    move-object/from16 v1, p3

    #@1de
    invoke-virtual {v0, v1, v6}, Lcom/android/internal/statusbar/StatusBarIconList;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e1
    .line 219
    :goto_4
    move-object/from16 v0, p3

    #@1e3
    move-object/from16 v1, v37

    #@1e5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1e8
    .line 220
    move-object/from16 v0, p3

    #@1ea
    move-object/from16 v1, v39

    #@1ec
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    #@1ef
    .line 221
    const/4 v6, 0x1

    #@1f0
    return v6

    #@1f1
    .line 206
    .end local v39    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_3
    move/from16 v0, v38

    #@1f3
    new-array v0, v0, [I

    #@1f5
    move-object/from16 v37, v0

    #@1f7
    .local v37, "_arg2":[I
    goto :goto_3

    #@1f8
    .line 217
    .end local v37    # "_arg2":[I
    .restart local v39    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_4
    const/4 v6, 0x0

    #@1f9
    move-object/from16 v0, p3

    #@1fb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1fe
    goto :goto_4

    #@1ff
    .line 225
    .end local v25    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v32    # "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v38    # "_arg2_length":I
    .end local v39    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_f
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@202
    move-object/from16 v0, p2

    #@204
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@207
    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20a
    move-result v6

    #@20b
    if-eqz v6, :cond_5

    #@20d
    const/16 v26, 0x1

    #@20f
    .line 229
    .restart local v26    # "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@212
    move-result v28

    #@213
    .line 230
    .restart local v28    # "_arg1":I
    move-object/from16 v0, p0

    #@215
    move/from16 v1, v26

    #@217
    move/from16 v2, v28

    #@219
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed(ZI)V

    #@21c
    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21f
    .line 232
    const/4 v6, 0x1

    #@220
    return v6

    #@221
    .line 227
    .end local v26    # "_arg0":Z
    .end local v28    # "_arg1":I
    :cond_5
    const/16 v26, 0x0

    #@223
    .restart local v26    # "_arg0":Z
    goto :goto_5

    #@224
    .line 236
    .end local v26    # "_arg0":Z
    :sswitch_10
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@227
    move-object/from16 v0, p2

    #@229
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22c
    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelHidden()V

    #@22f
    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@232
    .line 239
    const/4 v6, 0x1

    #@233
    return v6

    #@234
    .line 243
    :sswitch_11
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@237
    move-object/from16 v0, p2

    #@239
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23c
    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearNotificationEffects()V

    #@23f
    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@242
    .line 246
    const/4 v6, 0x1

    #@243
    return v6

    #@244
    .line 250
    :sswitch_12
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@247
    move-object/from16 v0, p2

    #@249
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24c
    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24f
    move-result-object v7

    #@250
    .line 253
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@252
    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;)V

    #@255
    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@258
    .line 255
    const/4 v6, 0x1

    #@259
    return v6

    #@25a
    .line 259
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@25d
    move-object/from16 v0, p2

    #@25f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@262
    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@265
    move-result-object v7

    #@266
    .line 263
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@269
    move-result v28

    #@26a
    .line 264
    .restart local v28    # "_arg1":I
    move-object/from16 v0, p0

    #@26c
    move/from16 v1, v28

    #@26e
    invoke-virtual {v0, v7, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationActionClick(Ljava/lang/String;I)V

    #@271
    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@274
    .line 266
    const/4 v6, 0x1

    #@275
    return v6

    #@276
    .line 270
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":I
    :sswitch_14
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@279
    move-object/from16 v0, p2

    #@27b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@27e
    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@281
    move-result-object v7

    #@282
    .line 274
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@285
    move-result-object v8

    #@286
    .line 276
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@289
    move-result v9

    #@28a
    .line 278
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28d
    move-result v10

    #@28e
    .line 280
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@291
    move-result v17

    #@292
    .line 282
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@295
    move-result-object v18

    #@296
    .line 284
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@299
    move-result v19

    #@29a
    .local v19, "_arg6":I
    move-object/from16 v12, p0

    #@29c
    move-object v13, v7

    #@29d
    move-object v14, v8

    #@29e
    move v15, v9

    #@29f
    move/from16 v16, v10

    #@2a1
    .line 285
    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    #@2a4
    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a7
    .line 287
    const/4 v6, 0x1

    #@2a8
    return v6

    #@2a9
    .line 291
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v19    # "_arg6":I
    :sswitch_15
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@2ac
    move-object/from16 v0, p2

    #@2ae
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b1
    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b4
    move-result v20

    #@2b5
    .line 294
    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    #@2b7
    move/from16 v1, v20

    #@2b9
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications(I)V

    #@2bc
    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2bf
    .line 296
    const/4 v6, 0x1

    #@2c0
    return v6

    #@2c1
    .line 300
    .end local v20    # "_arg0":I
    :sswitch_16
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@2c4
    move-object/from16 v0, p2

    #@2c6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c9
    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2cc
    move-result-object v7

    #@2cd
    .line 304
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d0
    move-result-object v8

    #@2d1
    .line 306
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d4
    move-result v9

    #@2d5
    .line 308
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d8
    move-result v10

    #@2d9
    .line 309
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@2db
    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V

    #@2de
    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e1
    .line 311
    const/4 v6, 0x1

    #@2e2
    return v6

    #@2e3
    .line 315
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_17
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@2e6
    move-object/from16 v0, p2

    #@2e8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2eb
    .line 317
    sget-object v6, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2ed
    move-object/from16 v0, p2

    #@2ef
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@2f2
    move-result-object v27

    #@2f3
    check-cast v27, [Lcom/android/internal/statusbar/NotificationVisibility;

    #@2f5
    .line 319
    .local v27, "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    sget-object v6, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f7
    move-object/from16 v0, p2

    #@2f9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@2fc
    move-result-object v34

    #@2fd
    check-cast v34, [Lcom/android/internal/statusbar/NotificationVisibility;

    #@2ff
    .line 320
    .local v34, "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    move-object/from16 v0, p0

    #@301
    move-object/from16 v1, v27

    #@303
    move-object/from16 v2, v34

    #@305
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    #@308
    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@30b
    .line 322
    const/4 v6, 0x1

    #@30c
    return v6

    #@30d
    .line 326
    .end local v27    # "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v34    # "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    :sswitch_18
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@310
    move-object/from16 v0, p2

    #@312
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@315
    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@318
    move-result-object v7

    #@319
    .line 330
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31c
    move-result v6

    #@31d
    if-eqz v6, :cond_6

    #@31f
    const/16 v33, 0x1

    #@321
    .line 332
    .restart local v33    # "_arg1":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@324
    move-result v6

    #@325
    if-eqz v6, :cond_7

    #@327
    const/16 v36, 0x1

    #@329
    .line 333
    .local v36, "_arg2":Z
    :goto_7
    move-object/from16 v0, p0

    #@32b
    move/from16 v1, v33

    #@32d
    move/from16 v2, v36

    #@32f
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    #@332
    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@335
    .line 335
    const/4 v6, 0x1

    #@336
    return v6

    #@337
    .line 330
    .end local v33    # "_arg1":Z
    .end local v36    # "_arg2":Z
    :cond_6
    const/16 v33, 0x0

    #@339
    .restart local v33    # "_arg1":Z
    goto :goto_6

    #@33a
    .line 332
    :cond_7
    const/16 v36, 0x0

    #@33c
    .restart local v36    # "_arg2":Z
    goto :goto_7

    #@33d
    .line 339
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v33    # "_arg1":Z
    .end local v36    # "_arg2":Z
    :sswitch_19
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@340
    move-object/from16 v0, p2

    #@342
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@345
    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@348
    move-result v20

    #@349
    .line 343
    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@34c
    move-result v28

    #@34d
    .line 345
    .restart local v28    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@350
    move-result-object v35

    #@351
    .line 346
    .restart local v35    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@353
    move/from16 v1, v20

    #@355
    move/from16 v2, v28

    #@357
    move-object/from16 v3, v35

    #@359
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setSystemUiVisibility(IILjava/lang/String;)V

    #@35c
    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@35f
    .line 348
    const/4 v6, 0x1

    #@360
    return v6

    #@361
    .line 352
    .end local v20    # "_arg0":I
    .end local v28    # "_arg1":I
    .end local v35    # "_arg2":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@364
    move-object/from16 v0, p2

    #@366
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@369
    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@36c
    move-result v20

    #@36d
    .line 356
    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@370
    move-result v28

    #@371
    .line 357
    .restart local v28    # "_arg1":I
    move-object/from16 v0, p0

    #@373
    move/from16 v1, v20

    #@375
    move/from16 v2, v28

    #@377
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setWindowState(II)V

    #@37a
    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37d
    .line 359
    const/4 v6, 0x1

    #@37e
    return v6

    #@37f
    .line 363
    .end local v20    # "_arg0":I
    .end local v28    # "_arg1":I
    :sswitch_1b
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@382
    move-object/from16 v0, p2

    #@384
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@387
    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38a
    move-result v6

    #@38b
    if-eqz v6, :cond_8

    #@38d
    const/16 v26, 0x1

    #@38f
    .line 366
    .restart local v26    # "_arg0":Z
    :goto_8
    move-object/from16 v0, p0

    #@391
    move/from16 v1, v26

    #@393
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showRecentApps(Z)V

    #@396
    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@399
    .line 368
    const/4 v6, 0x1

    #@39a
    return v6

    #@39b
    .line 365
    .end local v26    # "_arg0":Z
    :cond_8
    const/16 v26, 0x0

    #@39d
    .restart local v26    # "_arg0":Z
    goto :goto_8

    #@39e
    .line 372
    .end local v26    # "_arg0":Z
    :sswitch_1c
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@3a1
    move-object/from16 v0, p2

    #@3a3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a6
    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a9
    move-result v6

    #@3aa
    if-eqz v6, :cond_9

    #@3ac
    const/16 v26, 0x1

    #@3ae
    .line 376
    .restart local v26    # "_arg0":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b1
    move-result v6

    #@3b2
    if-eqz v6, :cond_a

    #@3b4
    const/16 v33, 0x1

    #@3b6
    .line 377
    .restart local v33    # "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    #@3b8
    move/from16 v1, v26

    #@3ba
    move/from16 v2, v33

    #@3bc
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideRecentApps(ZZ)V

    #@3bf
    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c2
    .line 379
    const/4 v6, 0x1

    #@3c3
    return v6

    #@3c4
    .line 374
    .end local v26    # "_arg0":Z
    .end local v33    # "_arg1":Z
    :cond_9
    const/16 v26, 0x0

    #@3c6
    .restart local v26    # "_arg0":Z
    goto :goto_9

    #@3c7
    .line 376
    :cond_a
    const/16 v33, 0x0

    #@3c9
    .restart local v33    # "_arg1":Z
    goto :goto_a

    #@3ca
    .line 383
    .end local v26    # "_arg0":Z
    .end local v33    # "_arg1":Z
    :sswitch_1d
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@3cd
    move-object/from16 v0, p2

    #@3cf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d2
    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->toggleRecentApps()V

    #@3d5
    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d8
    .line 386
    const/4 v6, 0x1

    #@3d9
    return v6

    #@3da
    .line 390
    :sswitch_1e
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@3dd
    move-object/from16 v0, p2

    #@3df
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e2
    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->preloadRecentApps()V

    #@3e5
    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e8
    .line 393
    const/4 v6, 0x1

    #@3e9
    return v6

    #@3ea
    .line 397
    :sswitch_1f
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@3ed
    move-object/from16 v0, p2

    #@3ef
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f2
    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->cancelPreloadRecentApps()V

    #@3f5
    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f8
    .line 400
    const/4 v6, 0x1

    #@3f9
    return v6

    #@3fa
    .line 404
    :sswitch_20
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@3fd
    move-object/from16 v0, p2

    #@3ff
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@402
    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->appTransitionPending()V

    #@405
    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@408
    .line 407
    const/4 v6, 0x1

    #@409
    return v6

    #@40a
    .line 411
    :sswitch_21
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@40d
    move-object/from16 v0, p2

    #@40f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@412
    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->appTransitionCancelled()V

    #@415
    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@418
    .line 414
    const/4 v6, 0x1

    #@419
    return v6

    #@41a
    .line 418
    :sswitch_22
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@41d
    move-object/from16 v0, p2

    #@41f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@422
    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@425
    move-result-wide v22

    #@426
    .line 422
    .local v22, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@429
    move-result-wide v30

    #@42a
    .line 423
    .local v30, "_arg1":J
    move-object/from16 v0, p0

    #@42c
    move-wide/from16 v1, v22

    #@42e
    move-wide/from16 v3, v30

    #@430
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->appTransitionStarting(JJ)V

    #@433
    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@436
    .line 425
    const/4 v6, 0x1

    #@437
    return v6

    #@438
    .line 429
    .end local v22    # "_arg0":J
    .end local v30    # "_arg1":J
    :sswitch_23
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    #@43b
    move-object/from16 v0, p2

    #@43d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@440
    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@443
    move-result v6

    #@444
    if-eqz v6, :cond_b

    #@446
    .line 432
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@448
    move-object/from16 v0, p2

    #@44a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@44d
    move-result-object v21

    #@44e
    check-cast v21, Landroid/os/Bundle;

    #@450
    .line 437
    :goto_b
    move-object/from16 v0, p0

    #@452
    move-object/from16 v1, v21

    #@454
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->startAssist(Landroid/os/Bundle;)V

    #@457
    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@45a
    .line 439
    const/4 v6, 0x1

    #@45b
    return v6

    #@45c
    .line 435
    :cond_b
    const/16 v21, 0x0

    #@45e
    .local v21, "_arg0":Landroid/os/Bundle;
    goto :goto_b

    #@45f
    .line 39
    nop

    #@460
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
