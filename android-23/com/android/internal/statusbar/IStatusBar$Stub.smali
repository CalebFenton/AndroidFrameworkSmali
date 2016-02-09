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

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_appTransitionCancelled:I = 0x15

.field static final TRANSACTION_appTransitionPending:I = 0x14

.field static final TRANSACTION_appTransitionStarting:I = 0x16

.field static final TRANSACTION_buzzBeepBlinked:I = 0xb

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_hideRecentApps:I = 0xf

.field static final TRANSACTION_notificationLightOff:I = 0xc

.field static final TRANSACTION_notificationLightPulse:I = 0xd

.field static final TRANSACTION_preloadRecentApps:I = 0x11

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0x9

.field static final TRANSACTION_setSystemUiVisibility:I = 0x7

.field static final TRANSACTION_setWindowState:I = 0xa

.field static final TRANSACTION_showAssistDisclosure:I = 0x17

.field static final TRANSACTION_showRecentApps:I = 0xe

.field static final TRANSACTION_showScreenPinningRequest:I = 0x13

.field static final TRANSACTION_startAssist:I = 0x18

.field static final TRANSACTION_toggleRecentApps:I = 0x10

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
    .locals 16
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
    .line 247
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v15

    #@7
    return v15

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v15, 0x1

    #@11
    return v15

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v2

    #@1e
    .line 52
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v15

    #@22
    if-eqz v15, :cond_0

    #@24
    .line 53
    sget-object v15, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    move-object/from16 v0, p2

    #@28
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b
    move-result-object v9

    #@2c
    check-cast v9, Lcom/android/internal/statusbar/StatusBarIcon;

    #@2e
    .line 58
    :goto_0
    move-object/from16 v0, p0

    #@30
    invoke-virtual {v0, v2, v9}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    #@33
    .line 59
    const/4 v15, 0x1

    #@34
    return v15

    #@35
    .line 56
    :cond_0
    const/4 v9, 0x0

    #@36
    .local v9, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_0

    #@37
    .line 63
    .end local v2    # "_arg0":I
    .end local v9    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :sswitch_2
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@3a
    move-object/from16 v0, p2

    #@3c
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v2

    #@43
    .line 66
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    #@45
    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(I)V

    #@48
    .line 67
    const/4 v15, 0x1

    #@49
    return v15

    #@4a
    .line 71
    .end local v2    # "_arg0":I
    :sswitch_3
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@4d
    move-object/from16 v0, p2

    #@4f
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v2

    #@56
    .line 75
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v8

    #@5a
    .line 76
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    #@5c
    invoke-virtual {v0, v2, v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(II)V

    #@5f
    .line 77
    const/4 v15, 0x1

    #@60
    return v15

    #@61
    .line 81
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_4
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@64
    move-object/from16 v0, p2

    #@66
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69
    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    #@6c
    .line 83
    const/4 v15, 0x1

    #@6d
    return v15

    #@6e
    .line 87
    :sswitch_5
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@71
    move-object/from16 v0, p2

    #@73
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76
    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel()V

    #@79
    .line 89
    const/4 v15, 0x1

    #@7a
    return v15

    #@7b
    .line 93
    :sswitch_6
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@7e
    move-object/from16 v0, p2

    #@80
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83
    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    #@86
    .line 95
    const/4 v15, 0x1

    #@87
    return v15

    #@88
    .line 99
    :sswitch_7
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@8b
    move-object/from16 v0, p2

    #@8d
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@90
    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@93
    move-result v2

    #@94
    .line 103
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@97
    move-result v8

    #@98
    .line 104
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@9a
    invoke-virtual {v0, v2, v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(II)V

    #@9d
    .line 105
    const/4 v15, 0x1

    #@9e
    return v15

    #@9f
    .line 109
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_8
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@a2
    move-object/from16 v0, p2

    #@a4
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a7
    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@aa
    move-result v15

    #@ab
    if-eqz v15, :cond_1

    #@ad
    const/4 v7, 0x1

    #@ae
    .line 112
    .local v7, "_arg0":Z
    :goto_1
    move-object/from16 v0, p0

    #@b0
    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    #@b3
    .line 113
    const/4 v15, 0x1

    #@b4
    return v15

    #@b5
    .line 111
    .end local v7    # "_arg0":Z
    :cond_1
    const/4 v7, 0x0

    #@b6
    .restart local v7    # "_arg0":Z
    goto :goto_1

    #@b7
    .line 117
    .end local v7    # "_arg0":Z
    :sswitch_9
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@ba
    move-object/from16 v0, p2

    #@bc
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bf
    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c2
    move-result-object v6

    #@c3
    .line 121
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c6
    move-result v8

    #@c7
    .line 123
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ca
    move-result v13

    #@cb
    .line 125
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ce
    move-result v15

    #@cf
    if-eqz v15, :cond_2

    #@d1
    const/4 v14, 0x1

    #@d2
    .line 126
    .local v14, "_arg3":Z
    :goto_2
    move-object/from16 v0, p0

    #@d4
    invoke-virtual {v0, v6, v8, v13, v14}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    #@d7
    .line 127
    const/4 v15, 0x1

    #@d8
    return v15

    #@d9
    .line 125
    .end local v14    # "_arg3":Z
    :cond_2
    const/4 v14, 0x0

    #@da
    .restart local v14    # "_arg3":Z
    goto :goto_2

    #@db
    .line 131
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":Z
    :sswitch_a
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@de
    move-object/from16 v0, p2

    #@e0
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e3
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e6
    move-result v2

    #@e7
    .line 135
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ea
    move-result v8

    #@eb
    .line 136
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@ed
    invoke-virtual {v0, v2, v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    #@f0
    .line 137
    const/4 v15, 0x1

    #@f1
    return v15

    #@f2
    .line 141
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_b
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@f5
    move-object/from16 v0, p2

    #@f7
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fa
    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->buzzBeepBlinked()V

    #@fd
    .line 143
    const/4 v15, 0x1

    #@fe
    return v15

    #@ff
    .line 147
    :sswitch_c
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@102
    move-object/from16 v0, p2

    #@104
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@107
    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightOff()V

    #@10a
    .line 149
    const/4 v15, 0x1

    #@10b
    return v15

    #@10c
    .line 153
    :sswitch_d
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@10f
    move-object/from16 v0, p2

    #@111
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@114
    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@117
    move-result v2

    #@118
    .line 157
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11b
    move-result v8

    #@11c
    .line 159
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11f
    move-result v13

    #@120
    .line 160
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    #@122
    invoke-virtual {v0, v2, v8, v13}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightPulse(III)V

    #@125
    .line 161
    const/4 v15, 0x1

    #@126
    return v15

    #@127
    .line 165
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v13    # "_arg2":I
    :sswitch_e
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@12a
    move-object/from16 v0, p2

    #@12c
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12f
    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@132
    move-result v15

    #@133
    if-eqz v15, :cond_3

    #@135
    const/4 v7, 0x1

    #@136
    .line 168
    .restart local v7    # "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    #@138
    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    #@13b
    .line 169
    const/4 v15, 0x1

    #@13c
    return v15

    #@13d
    .line 167
    .end local v7    # "_arg0":Z
    :cond_3
    const/4 v7, 0x0

    #@13e
    .restart local v7    # "_arg0":Z
    goto :goto_3

    #@13f
    .line 173
    .end local v7    # "_arg0":Z
    :sswitch_f
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@142
    move-object/from16 v0, p2

    #@144
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@147
    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14a
    move-result v15

    #@14b
    if-eqz v15, :cond_4

    #@14d
    const/4 v7, 0x1

    #@14e
    .line 177
    .restart local v7    # "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@151
    move-result v15

    #@152
    if-eqz v15, :cond_5

    #@154
    const/4 v12, 0x1

    #@155
    .line 178
    .local v12, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    #@157
    invoke-virtual {v0, v7, v12}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    #@15a
    .line 179
    const/4 v15, 0x1

    #@15b
    return v15

    #@15c
    .line 175
    .end local v7    # "_arg0":Z
    .end local v12    # "_arg1":Z
    :cond_4
    const/4 v7, 0x0

    #@15d
    .restart local v7    # "_arg0":Z
    goto :goto_4

    #@15e
    .line 177
    :cond_5
    const/4 v12, 0x0

    #@15f
    .restart local v12    # "_arg1":Z
    goto :goto_5

    #@160
    .line 183
    .end local v7    # "_arg0":Z
    .end local v12    # "_arg1":Z
    :sswitch_10
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@163
    move-object/from16 v0, p2

    #@165
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@168
    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    #@16b
    .line 185
    const/4 v15, 0x1

    #@16c
    return v15

    #@16d
    .line 189
    :sswitch_11
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@170
    move-object/from16 v0, p2

    #@172
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@175
    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    #@178
    .line 191
    const/4 v15, 0x1

    #@179
    return v15

    #@17a
    .line 195
    :sswitch_12
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@17d
    move-object/from16 v0, p2

    #@17f
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@182
    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    #@185
    .line 197
    const/4 v15, 0x1

    #@186
    return v15

    #@187
    .line 201
    :sswitch_13
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@18a
    move-object/from16 v0, p2

    #@18c
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18f
    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest()V

    #@192
    .line 203
    const/4 v15, 0x1

    #@193
    return v15

    #@194
    .line 207
    :sswitch_14
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@197
    move-object/from16 v0, p2

    #@199
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19c
    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending()V

    #@19f
    .line 209
    const/4 v15, 0x1

    #@1a0
    return v15

    #@1a1
    .line 213
    :sswitch_15
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@1a4
    move-object/from16 v0, p2

    #@1a6
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a9
    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled()V

    #@1ac
    .line 215
    const/4 v15, 0x1

    #@1ad
    return v15

    #@1ae
    .line 219
    :sswitch_16
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@1b1
    move-object/from16 v0, p2

    #@1b3
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b6
    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1b9
    move-result-wide v4

    #@1ba
    .line 223
    .local v4, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1bd
    move-result-wide v10

    #@1be
    .line 224
    .local v10, "_arg1":J
    move-object/from16 v0, p0

    #@1c0
    invoke-virtual {v0, v4, v5, v10, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(JJ)V

    #@1c3
    .line 225
    const/4 v15, 0x1

    #@1c4
    return v15

    #@1c5
    .line 229
    .end local v4    # "_arg0":J
    .end local v10    # "_arg1":J
    :sswitch_17
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@1c8
    move-object/from16 v0, p2

    #@1ca
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cd
    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    #@1d0
    .line 231
    const/4 v15, 0x1

    #@1d1
    return v15

    #@1d2
    .line 235
    :sswitch_18
    const-string/jumbo v15, "com.android.internal.statusbar.IStatusBar"

    #@1d5
    move-object/from16 v0, p2

    #@1d7
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1da
    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1dd
    move-result v15

    #@1de
    if-eqz v15, :cond_6

    #@1e0
    .line 238
    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e2
    move-object/from16 v0, p2

    #@1e4
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e7
    move-result-object v3

    #@1e8
    check-cast v3, Landroid/os/Bundle;

    #@1ea
    .line 243
    :goto_6
    move-object/from16 v0, p0

    #@1ec
    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    #@1ef
    .line 244
    const/4 v15, 0x1

    #@1f0
    return v15

    #@1f1
    .line 241
    :cond_6
    const/4 v3, 0x0

    #@1f2
    .local v3, "_arg0":Landroid/os/Bundle;
    goto :goto_6

    #@1f3
    .line 39
    nop

    #@1f4
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
