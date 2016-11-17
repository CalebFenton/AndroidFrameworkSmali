.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_addQsTile:I = 0x1f

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_appTransitionCancelled:I = 0x18

.field static final TRANSACTION_appTransitionFinished:I = 0x1a

.field static final TRANSACTION_appTransitionPending:I = 0x17

.field static final TRANSACTION_appTransitionStarting:I = 0x19

.field static final TRANSACTION_buzzBeepBlinked:I = 0xb

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x13

.field static final TRANSACTION_clickQsTile:I = 0x21

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x15

.field static final TRANSACTION_hideRecentApps:I = 0xf

.field static final TRANSACTION_notificationLightOff:I = 0xc

.field static final TRANSACTION_notificationLightPulse:I = 0xd

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x1d

.field static final TRANSACTION_preloadRecentApps:I = 0x12

.field static final TRANSACTION_remQsTile:I = 0x20

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0x9

.field static final TRANSACTION_setSystemUiVisibility:I = 0x7

.field static final TRANSACTION_setWindowState:I = 0xa

.field static final TRANSACTION_showAssistDisclosure:I = 0x1b

.field static final TRANSACTION_showRecentApps:I = 0xe

.field static final TRANSACTION_showScreenPinningRequest:I = 0x14

.field static final TRANSACTION_showTvPictureInPictureMenu:I = 0x1e

.field static final TRANSACTION_startAssist:I = 0x1c

.field static final TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x16

.field static final TRANSACTION_toggleRecentApps:I = 0x10

.field static final TRANSACTION_toggleSplitScreen:I = 0x11

.field static final TRANSACTION_topAppWindowChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "com.android.internal.statusbar.IStatusBar"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
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
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 23
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
    .line 350
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v16

    #@1e
    .line 52
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_0

    #@24
    .line 53
    sget-object v4, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    move-object/from16 v0, p2

    #@28
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b
    move-result-object v20

    #@2c
    check-cast v20, Lcom/android/internal/statusbar/StatusBarIcon;

    #@2e
    .line 58
    :goto_0
    move-object/from16 v0, p0

    #@30
    move-object/from16 v1, v16

    #@32
    move-object/from16 v2, v20

    #@34
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    #@37
    .line 59
    const/4 v4, 0x1

    #@38
    return v4

    #@39
    .line 56
    :cond_0
    const/16 v20, 0x0

    #@3b
    .local v20, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_0

    #@3c
    .line 63
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@3f
    move-object/from16 v0, p2

    #@41
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@44
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@47
    move-result-object v16

    #@48
    .line 66
    .restart local v16    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4a
    move-object/from16 v1, v16

    #@4c
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    #@4f
    .line 67
    const/4 v4, 0x1

    #@50
    return v4

    #@51
    .line 71
    .end local v16    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@54
    move-object/from16 v0, p2

    #@56
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59
    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v5

    #@5d
    .line 75
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@60
    move-result v6

    #@61
    .line 76
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    #@63
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(II)V

    #@66
    .line 77
    const/4 v4, 0x1

    #@67
    return v4

    #@68
    .line 81
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@6b
    move-object/from16 v0, p2

    #@6d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@70
    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    #@73
    .line 83
    const/4 v4, 0x1

    #@74
    return v4

    #@75
    .line 87
    :sswitch_5
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@78
    move-object/from16 v0, p2

    #@7a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7d
    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@80
    move-result-object v16

    #@81
    .line 90
    .restart local v16    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@83
    move-object/from16 v1, v16

    #@85
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    #@88
    .line 91
    const/4 v4, 0x1

    #@89
    return v4

    #@8a
    .line 95
    .end local v16    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@8d
    move-object/from16 v0, p2

    #@8f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@92
    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    #@95
    .line 97
    const/4 v4, 0x1

    #@96
    return v4

    #@97
    .line 101
    :sswitch_7
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@9a
    move-object/from16 v0, p2

    #@9c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9f
    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a2
    move-result v5

    #@a3
    .line 105
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a6
    move-result v6

    #@a7
    .line 107
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@aa
    move-result v7

    #@ab
    .line 109
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ae
    move-result v8

    #@af
    .line 111
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b2
    move-result v4

    #@b3
    if-eqz v4, :cond_1

    #@b5
    .line 112
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b7
    move-object/from16 v0, p2

    #@b9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bc
    move-result-object v9

    #@bd
    check-cast v9, Landroid/graphics/Rect;

    #@bf
    .line 118
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c2
    move-result v4

    #@c3
    if-eqz v4, :cond_2

    #@c5
    .line 119
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c7
    move-object/from16 v0, p2

    #@c9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cc
    move-result-object v10

    #@cd
    check-cast v10, Landroid/graphics/Rect;

    #@cf
    :goto_2
    move-object/from16 v4, p0

    #@d1
    .line 124
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@d4
    .line 125
    const/4 v4, 0x1

    #@d5
    return v4

    #@d6
    .line 115
    :cond_1
    const/4 v9, 0x0

    #@d7
    .local v9, "_arg4":Landroid/graphics/Rect;
    goto :goto_1

    #@d8
    .line 122
    .end local v9    # "_arg4":Landroid/graphics/Rect;
    :cond_2
    const/4 v10, 0x0

    #@d9
    .local v10, "_arg5":Landroid/graphics/Rect;
    goto :goto_2

    #@da
    .line 129
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@dd
    move-object/from16 v0, p2

    #@df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e2
    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e5
    move-result v4

    #@e6
    if-eqz v4, :cond_3

    #@e8
    const/16 v17, 0x1

    #@ea
    .line 132
    .local v17, "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    #@ec
    move/from16 v1, v17

    #@ee
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    #@f1
    .line 133
    const/4 v4, 0x1

    #@f2
    return v4

    #@f3
    .line 131
    .end local v17    # "_arg0":Z
    :cond_3
    const/16 v17, 0x0

    #@f5
    goto :goto_3

    #@f6
    .line 137
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@f9
    move-object/from16 v0, p2

    #@fb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fe
    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@101
    move-result-object v15

    #@102
    .line 141
    .local v15, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@105
    move-result v6

    #@106
    .line 143
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@109
    move-result v7

    #@10a
    .line 145
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10d
    move-result v4

    #@10e
    if-eqz v4, :cond_4

    #@110
    const/16 v22, 0x1

    #@112
    .line 146
    .local v22, "_arg3":Z
    :goto_4
    move-object/from16 v0, p0

    #@114
    move/from16 v1, v22

    #@116
    invoke-virtual {v0, v15, v6, v7, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    #@119
    .line 147
    const/4 v4, 0x1

    #@11a
    return v4

    #@11b
    .line 145
    .end local v22    # "_arg3":Z
    :cond_4
    const/16 v22, 0x0

    #@11d
    goto :goto_4

    #@11e
    .line 151
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v15    # "_arg0":Landroid/os/IBinder;
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@121
    move-object/from16 v0, p2

    #@123
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@126
    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@129
    move-result v5

    #@12a
    .line 155
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12d
    move-result v6

    #@12e
    .line 156
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@130
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    #@133
    .line 157
    const/4 v4, 0x1

    #@134
    return v4

    #@135
    .line 161
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@138
    move-object/from16 v0, p2

    #@13a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13d
    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->buzzBeepBlinked()V

    #@140
    .line 163
    const/4 v4, 0x1

    #@141
    return v4

    #@142
    .line 167
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@145
    move-object/from16 v0, p2

    #@147
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14a
    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightOff()V

    #@14d
    .line 169
    const/4 v4, 0x1

    #@14e
    return v4

    #@14f
    .line 173
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@152
    move-object/from16 v0, p2

    #@154
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@157
    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15a
    move-result v5

    #@15b
    .line 177
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15e
    move-result v6

    #@15f
    .line 179
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@162
    move-result v7

    #@163
    .line 180
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@165
    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightPulse(III)V

    #@168
    .line 181
    const/4 v4, 0x1

    #@169
    return v4

    #@16a
    .line 185
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@16d
    move-object/from16 v0, p2

    #@16f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@172
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@175
    move-result v4

    #@176
    if-eqz v4, :cond_5

    #@178
    const/16 v17, 0x1

    #@17a
    .line 189
    .local v17, "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17d
    move-result v4

    #@17e
    if-eqz v4, :cond_6

    #@180
    const/16 v21, 0x1

    #@182
    .line 190
    .local v21, "_arg1":Z
    :goto_6
    move-object/from16 v0, p0

    #@184
    move/from16 v1, v17

    #@186
    move/from16 v2, v21

    #@188
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(ZZ)V

    #@18b
    .line 191
    const/4 v4, 0x1

    #@18c
    return v4

    #@18d
    .line 187
    .end local v17    # "_arg0":Z
    .end local v21    # "_arg1":Z
    :cond_5
    const/16 v17, 0x0

    #@18f
    .restart local v17    # "_arg0":Z
    goto :goto_5

    #@190
    .line 189
    :cond_6
    const/16 v21, 0x0

    #@192
    goto :goto_6

    #@193
    .line 195
    .end local v17    # "_arg0":Z
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@196
    move-object/from16 v0, p2

    #@198
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19b
    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19e
    move-result v4

    #@19f
    if-eqz v4, :cond_7

    #@1a1
    const/16 v17, 0x1

    #@1a3
    .line 199
    .restart local v17    # "_arg0":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a6
    move-result v4

    #@1a7
    if-eqz v4, :cond_8

    #@1a9
    const/16 v21, 0x1

    #@1ab
    .line 200
    .restart local v21    # "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    #@1ad
    move/from16 v1, v17

    #@1af
    move/from16 v2, v21

    #@1b1
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    #@1b4
    .line 201
    const/4 v4, 0x1

    #@1b5
    return v4

    #@1b6
    .line 197
    .end local v17    # "_arg0":Z
    .end local v21    # "_arg1":Z
    :cond_7
    const/16 v17, 0x0

    #@1b8
    .restart local v17    # "_arg0":Z
    goto :goto_7

    #@1b9
    .line 199
    :cond_8
    const/16 v21, 0x0

    #@1bb
    goto :goto_8

    #@1bc
    .line 205
    .end local v17    # "_arg0":Z
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@1bf
    move-object/from16 v0, p2

    #@1c1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c4
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    #@1c7
    .line 207
    const/4 v4, 0x1

    #@1c8
    return v4

    #@1c9
    .line 211
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@1cc
    move-object/from16 v0, p2

    #@1ce
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d1
    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    #@1d4
    .line 213
    const/4 v4, 0x1

    #@1d5
    return v4

    #@1d6
    .line 217
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@1d9
    move-object/from16 v0, p2

    #@1db
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1de
    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    #@1e1
    .line 219
    const/4 v4, 0x1

    #@1e2
    return v4

    #@1e3
    .line 223
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@1e6
    move-object/from16 v0, p2

    #@1e8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1eb
    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    #@1ee
    .line 225
    const/4 v4, 0x1

    #@1ef
    return v4

    #@1f0
    .line 229
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@1f3
    move-object/from16 v0, p2

    #@1f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f8
    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fb
    move-result v5

    #@1fc
    .line 232
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@1fe
    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    #@201
    .line 233
    const/4 v4, 0x1

    #@202
    return v4

    #@203
    .line 237
    .end local v5    # "_arg0":I
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@206
    move-object/from16 v0, p2

    #@208
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20b
    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    #@20e
    .line 239
    const/4 v4, 0x1

    #@20f
    return v4

    #@210
    .line 243
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@213
    move-object/from16 v0, p2

    #@215
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@218
    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21b
    move-result v5

    #@21c
    .line 246
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@21e
    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    #@221
    .line 247
    const/4 v4, 0x1

    #@222
    return v4

    #@223
    .line 251
    .end local v5    # "_arg0":I
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@226
    move-object/from16 v0, p2

    #@228
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22b
    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending()V

    #@22e
    .line 253
    const/4 v4, 0x1

    #@22f
    return v4

    #@230
    .line 257
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@233
    move-object/from16 v0, p2

    #@235
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@238
    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled()V

    #@23b
    .line 259
    const/4 v4, 0x1

    #@23c
    return v4

    #@23d
    .line 263
    :sswitch_19
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@240
    move-object/from16 v0, p2

    #@242
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@245
    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@248
    move-result-wide v12

    #@249
    .line 267
    .local v12, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@24c
    move-result-wide v18

    #@24d
    .line 268
    .local v18, "_arg1":J
    move-object/from16 v0, p0

    #@24f
    move-wide/from16 v1, v18

    #@251
    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(JJ)V

    #@254
    .line 269
    const/4 v4, 0x1

    #@255
    return v4

    #@256
    .line 273
    .end local v12    # "_arg0":J
    .end local v18    # "_arg1":J
    :sswitch_1a
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@259
    move-object/from16 v0, p2

    #@25b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25e
    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished()V

    #@261
    .line 275
    const/4 v4, 0x1

    #@262
    return v4

    #@263
    .line 279
    :sswitch_1b
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@266
    move-object/from16 v0, p2

    #@268
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26b
    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    #@26e
    .line 281
    const/4 v4, 0x1

    #@26f
    return v4

    #@270
    .line 285
    :sswitch_1c
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@273
    move-object/from16 v0, p2

    #@275
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@278
    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27b
    move-result v4

    #@27c
    if-eqz v4, :cond_9

    #@27e
    .line 288
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@280
    move-object/from16 v0, p2

    #@282
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@285
    move-result-object v14

    #@286
    check-cast v14, Landroid/os/Bundle;

    #@288
    .line 293
    :goto_9
    move-object/from16 v0, p0

    #@28a
    invoke-virtual {v0, v14}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    #@28d
    .line 294
    const/4 v4, 0x1

    #@28e
    return v4

    #@28f
    .line 291
    :cond_9
    const/4 v14, 0x0

    #@290
    .local v14, "_arg0":Landroid/os/Bundle;
    goto :goto_9

    #@291
    .line 298
    .end local v14    # "_arg0":Landroid/os/Bundle;
    :sswitch_1d
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@294
    move-object/from16 v0, p2

    #@296
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@299
    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29c
    move-result v5

    #@29d
    .line 301
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@29f
    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    #@2a2
    .line 302
    const/4 v4, 0x1

    #@2a3
    return v4

    #@2a4
    .line 306
    .end local v5    # "_arg0":I
    :sswitch_1e
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@2a7
    move-object/from16 v0, p2

    #@2a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ac
    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showTvPictureInPictureMenu()V

    #@2af
    .line 308
    const/4 v4, 0x1

    #@2b0
    return v4

    #@2b1
    .line 312
    :sswitch_1f
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@2b4
    move-object/from16 v0, p2

    #@2b6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b9
    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2bc
    move-result v4

    #@2bd
    if-eqz v4, :cond_a

    #@2bf
    .line 315
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c1
    move-object/from16 v0, p2

    #@2c3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c6
    move-result-object v11

    #@2c7
    check-cast v11, Landroid/content/ComponentName;

    #@2c9
    .line 320
    :goto_a
    move-object/from16 v0, p0

    #@2cb
    invoke-virtual {v0, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    #@2ce
    .line 321
    const/4 v4, 0x1

    #@2cf
    return v4

    #@2d0
    .line 318
    :cond_a
    const/4 v11, 0x0

    #@2d1
    .local v11, "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    #@2d2
    .line 325
    .end local v11    # "_arg0":Landroid/content/ComponentName;
    :sswitch_20
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@2d5
    move-object/from16 v0, p2

    #@2d7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2da
    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2dd
    move-result v4

    #@2de
    if-eqz v4, :cond_b

    #@2e0
    .line 328
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e2
    move-object/from16 v0, p2

    #@2e4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e7
    move-result-object v11

    #@2e8
    check-cast v11, Landroid/content/ComponentName;

    #@2ea
    .line 333
    :goto_b
    move-object/from16 v0, p0

    #@2ec
    invoke-virtual {v0, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    #@2ef
    .line 334
    const/4 v4, 0x1

    #@2f0
    return v4

    #@2f1
    .line 331
    :cond_b
    const/4 v11, 0x0

    #@2f2
    .restart local v11    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    #@2f3
    .line 338
    .end local v11    # "_arg0":Landroid/content/ComponentName;
    :sswitch_21
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    #@2f6
    move-object/from16 v0, p2

    #@2f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fb
    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2fe
    move-result v4

    #@2ff
    if-eqz v4, :cond_c

    #@301
    .line 341
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@303
    move-object/from16 v0, p2

    #@305
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@308
    move-result-object v11

    #@309
    check-cast v11, Landroid/content/ComponentName;

    #@30b
    .line 346
    :goto_c
    move-object/from16 v0, p0

    #@30d
    invoke-virtual {v0, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    #@310
    .line 347
    const/4 v4, 0x1

    #@311
    return v4

    #@312
    .line 344
    :cond_c
    const/4 v11, 0x0

    #@313
    .restart local v11    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    #@314
    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
