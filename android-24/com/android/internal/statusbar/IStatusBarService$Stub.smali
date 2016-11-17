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

.field static final TRANSACTION_addTile:I = 0x18

.field static final TRANSACTION_clearNotificationEffects:I = 0xf

.field static final TRANSACTION_clickTile:I = 0x1a

.field static final TRANSACTION_collapsePanels:I = 0x2

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_disable2:I = 0x5

.field static final TRANSACTION_disable2ForUser:I = 0x6

.field static final TRANSACTION_disableForUser:I = 0x4

.field static final TRANSACTION_expandNotificationsPanel:I = 0x1

.field static final TRANSACTION_expandSettingsPanel:I = 0xb

.field static final TRANSACTION_onClearAllNotifications:I = 0x13

.field static final TRANSACTION_onNotificationActionClick:I = 0x11

.field static final TRANSACTION_onNotificationClear:I = 0x14

.field static final TRANSACTION_onNotificationClick:I = 0x10

.field static final TRANSACTION_onNotificationError:I = 0x12

.field static final TRANSACTION_onNotificationExpansionChanged:I = 0x16

.field static final TRANSACTION_onNotificationVisibilityChanged:I = 0x15

.field static final TRANSACTION_onPanelHidden:I = 0xe

.field static final TRANSACTION_onPanelRevealed:I = 0xd

.field static final TRANSACTION_registerStatusBar:I = 0xc

.field static final TRANSACTION_remTile:I = 0x19

.field static final TRANSACTION_removeIcon:I = 0x9

.field static final TRANSACTION_setIcon:I = 0x7

.field static final TRANSACTION_setIconVisibility:I = 0x8

.field static final TRANSACTION_setImeWindowStatus:I = 0xa

.field static final TRANSACTION_setSystemUiVisibility:I = 0x17


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
    .locals 39
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
    .line 392
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

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
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    #@1d
    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20
    .line 51
    const/4 v4, 0x1

    #@21
    return v4

    #@22
    .line 55
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@25
    move-object/from16 v0, p2

    #@27
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    #@2d
    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@30
    .line 58
    const/4 v4, 0x1

    #@31
    return v4

    #@32
    .line 62
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@35
    move-object/from16 v0, p2

    #@37
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a
    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v26

    #@3e
    .line 66
    .local v26, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@41
    move-result-object v32

    #@42
    .line 68
    .local v32, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@45
    move-result-object v35

    #@46
    .line 69
    .local v35, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@48
    move/from16 v1, v26

    #@4a
    move-object/from16 v2, v32

    #@4c
    move-object/from16 v3, v35

    #@4e
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    #@51
    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54
    .line 71
    const/4 v4, 0x1

    #@55
    return v4

    #@56
    .line 75
    .end local v26    # "_arg0":I
    .end local v32    # "_arg1":Landroid/os/IBinder;
    .end local v35    # "_arg2":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@59
    move-object/from16 v0, p2

    #@5b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v26

    #@62
    .line 79
    .restart local v26    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@65
    move-result-object v32

    #@66
    .line 81
    .restart local v32    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@69
    move-result-object v35

    #@6a
    .line 83
    .restart local v35    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v8

    #@6e
    .line 84
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    #@70
    move/from16 v1, v26

    #@72
    move-object/from16 v2, v32

    #@74
    move-object/from16 v3, v35

    #@76
    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    #@79
    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c
    .line 86
    const/4 v4, 0x1

    #@7d
    return v4

    #@7e
    .line 90
    .end local v8    # "_arg3":I
    .end local v26    # "_arg0":I
    .end local v32    # "_arg1":Landroid/os/IBinder;
    .end local v35    # "_arg2":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@81
    move-object/from16 v0, p2

    #@83
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86
    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@89
    move-result v26

    #@8a
    .line 94
    .restart local v26    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8d
    move-result-object v32

    #@8e
    .line 96
    .restart local v32    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@91
    move-result-object v35

    #@92
    .line 97
    .restart local v35    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@94
    move/from16 v1, v26

    #@96
    move-object/from16 v2, v32

    #@98
    move-object/from16 v3, v35

    #@9a
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    #@9d
    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a0
    .line 99
    const/4 v4, 0x1

    #@a1
    return v4

    #@a2
    .line 103
    .end local v26    # "_arg0":I
    .end local v32    # "_arg1":Landroid/os/IBinder;
    .end local v35    # "_arg2":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@a5
    move-object/from16 v0, p2

    #@a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aa
    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad
    move-result v26

    #@ae
    .line 107
    .restart local v26    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b1
    move-result-object v32

    #@b2
    .line 109
    .restart local v32    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b5
    move-result-object v35

    #@b6
    .line 111
    .restart local v35    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b9
    move-result v8

    #@ba
    .line 112
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@bc
    move/from16 v1, v26

    #@be
    move-object/from16 v2, v32

    #@c0
    move-object/from16 v3, v35

    #@c2
    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    #@c5
    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c8
    .line 114
    const/4 v4, 0x1

    #@c9
    return v4

    #@ca
    .line 118
    .end local v8    # "_arg3":I
    .end local v26    # "_arg0":I
    .end local v32    # "_arg1":Landroid/os/IBinder;
    .end local v35    # "_arg2":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@cd
    move-object/from16 v0, p2

    #@cf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d2
    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d5
    move-result-object v5

    #@d6
    .line 122
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d9
    move-result-object v6

    #@da
    .line 124
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dd
    move-result v7

    #@de
    .line 126
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e1
    move-result v8

    #@e2
    .line 128
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e5
    move-result-object v9

    #@e6
    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    #@e8
    .line 129
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    #@eb
    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ee
    .line 131
    const/4 v4, 0x1

    #@ef
    return v4

    #@f0
    .line 135
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@f3
    move-object/from16 v0, p2

    #@f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f8
    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fb
    move-result-object v5

    #@fc
    .line 139
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ff
    move-result v4

    #@100
    if-eqz v4, :cond_0

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
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    #@10b
    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10e
    .line 142
    const/4 v4, 0x1

    #@10f
    return v4

    #@110
    .line 139
    .end local v33    # "_arg1":Z
    :cond_0
    const/16 v33, 0x0

    #@112
    goto :goto_0

    #@113
    .line 146
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@116
    move-object/from16 v0, p2

    #@118
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11b
    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11e
    move-result-object v5

    #@11f
    .line 149
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@121
    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    #@124
    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@127
    .line 151
    const/4 v4, 0x1

    #@128
    return v4

    #@129
    .line 155
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@12c
    move-object/from16 v0, p2

    #@12e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@131
    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@134
    move-result-object v28

    #@135
    .line 159
    .local v28, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@138
    move-result v31

    #@139
    .line 161
    .local v31, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13c
    move-result v7

    #@13d
    .line 163
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@140
    move-result v4

    #@141
    if-eqz v4, :cond_1

    #@143
    const/16 v37, 0x1

    #@145
    .line 164
    .local v37, "_arg3":Z
    :goto_1
    move-object/from16 v0, p0

    #@147
    move-object/from16 v1, v28

    #@149
    move/from16 v2, v31

    #@14b
    move/from16 v3, v37

    #@14d
    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    #@150
    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@153
    .line 166
    const/4 v4, 0x1

    #@154
    return v4

    #@155
    .line 163
    .end local v37    # "_arg3":Z
    :cond_1
    const/16 v37, 0x0

    #@157
    goto :goto_1

    #@158
    .line 170
    .end local v7    # "_arg2":I
    .end local v28    # "_arg0":Landroid/os/IBinder;
    .end local v31    # "_arg1":I
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@15b
    move-object/from16 v0, p2

    #@15d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@160
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@163
    move-result-object v5

    #@164
    .line 173
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@166
    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel(Ljava/lang/String;)V

    #@169
    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16c
    .line 175
    const/4 v4, 0x1

    #@16d
    return v4

    #@16e
    .line 179
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@171
    move-object/from16 v0, p2

    #@173
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@176
    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@179
    move-result-object v4

    #@17a
    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    #@17d
    move-result-object v11

    #@17e
    .line 183
    .local v11, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    new-instance v12, Ljava/util/ArrayList;

    #@180
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@183
    .line 185
    .local v12, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    #@185
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@188
    .line 187
    .local v13, "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18b
    move-result v38

    #@18c
    .line 188
    .local v38, "_arg3_length":I
    if-gez v38, :cond_2

    #@18e
    .line 189
    const/4 v14, 0x0

    #@18f
    .line 195
    :goto_2
    new-instance v15, Ljava/util/ArrayList;

    #@191
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    #@194
    .line 197
    .local v15, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    new-instance v16, Landroid/graphics/Rect;

    #@196
    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    #@199
    .line 199
    .local v16, "_arg5":Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Rect;

    #@19b
    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    #@19e
    .local v17, "_arg6":Landroid/graphics/Rect;
    move-object/from16 v10, p0

    #@1a0
    .line 200
    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@1a3
    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a6
    .line 202
    move-object/from16 v0, p3

    #@1a8
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@1ab
    .line 203
    move-object/from16 v0, p3

    #@1ad
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1b0
    .line 204
    move-object/from16 v0, p3

    #@1b2
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    #@1b5
    .line 205
    move-object/from16 v0, p3

    #@1b7
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    #@1ba
    .line 206
    if-eqz v16, :cond_3

    #@1bc
    .line 207
    const/4 v4, 0x1

    #@1bd
    move-object/from16 v0, p3

    #@1bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c2
    .line 208
    const/4 v4, 0x1

    #@1c3
    move-object/from16 v0, v16

    #@1c5
    move-object/from16 v1, p3

    #@1c7
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@1ca
    .line 213
    :goto_3
    if-eqz v17, :cond_4

    #@1cc
    .line 214
    const/4 v4, 0x1

    #@1cd
    move-object/from16 v0, p3

    #@1cf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1d2
    .line 215
    const/4 v4, 0x1

    #@1d3
    move-object/from16 v0, v17

    #@1d5
    move-object/from16 v1, p3

    #@1d7
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@1da
    .line 220
    :goto_4
    const/4 v4, 0x1

    #@1db
    return v4

    #@1dc
    .line 192
    .end local v15    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v16    # "_arg5":Landroid/graphics/Rect;
    .end local v17    # "_arg6":Landroid/graphics/Rect;
    :cond_2
    move/from16 v0, v38

    #@1de
    new-array v14, v0, [I

    #@1e0
    .local v14, "_arg3":[I
    goto :goto_2

    #@1e1
    .line 211
    .end local v14    # "_arg3":[I
    .restart local v15    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v16    # "_arg5":Landroid/graphics/Rect;
    .restart local v17    # "_arg6":Landroid/graphics/Rect;
    :cond_3
    const/4 v4, 0x0

    #@1e2
    move-object/from16 v0, p3

    #@1e4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1e7
    goto :goto_3

    #@1e8
    .line 218
    :cond_4
    const/4 v4, 0x0

    #@1e9
    move-object/from16 v0, p3

    #@1eb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1ee
    goto :goto_4

    #@1ef
    .line 224
    .end local v11    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v12    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    .end local v15    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v16    # "_arg5":Landroid/graphics/Rect;
    .end local v17    # "_arg6":Landroid/graphics/Rect;
    .end local v38    # "_arg3_length":I
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@1f2
    move-object/from16 v0, p2

    #@1f4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f7
    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fa
    move-result v4

    #@1fb
    if-eqz v4, :cond_5

    #@1fd
    const/16 v29, 0x1

    #@1ff
    .line 228
    .local v29, "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@202
    move-result v31

    #@203
    .line 229
    .restart local v31    # "_arg1":I
    move-object/from16 v0, p0

    #@205
    move/from16 v1, v29

    #@207
    move/from16 v2, v31

    #@209
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed(ZI)V

    #@20c
    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20f
    .line 231
    const/4 v4, 0x1

    #@210
    return v4

    #@211
    .line 226
    .end local v29    # "_arg0":Z
    .end local v31    # "_arg1":I
    :cond_5
    const/16 v29, 0x0

    #@213
    .restart local v29    # "_arg0":Z
    goto :goto_5

    #@214
    .line 235
    .end local v29    # "_arg0":Z
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@217
    move-object/from16 v0, p2

    #@219
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21c
    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelHidden()V

    #@21f
    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@222
    .line 238
    const/4 v4, 0x1

    #@223
    return v4

    #@224
    .line 242
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@227
    move-object/from16 v0, p2

    #@229
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22c
    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearNotificationEffects()V

    #@22f
    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@232
    .line 245
    const/4 v4, 0x1

    #@233
    return v4

    #@234
    .line 249
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@237
    move-object/from16 v0, p2

    #@239
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23c
    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23f
    move-result-object v5

    #@240
    .line 252
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@242
    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;)V

    #@245
    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@248
    .line 254
    const/4 v4, 0x1

    #@249
    return v4

    #@24a
    .line 258
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@24d
    move-object/from16 v0, p2

    #@24f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@252
    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@255
    move-result-object v5

    #@256
    .line 262
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@259
    move-result v31

    #@25a
    .line 263
    .restart local v31    # "_arg1":I
    move-object/from16 v0, p0

    #@25c
    move/from16 v1, v31

    #@25e
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationActionClick(Ljava/lang/String;I)V

    #@261
    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@264
    .line 265
    const/4 v4, 0x1

    #@265
    return v4

    #@266
    .line 269
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":I
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@269
    move-object/from16 v0, p2

    #@26b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26e
    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@271
    move-result-object v5

    #@272
    .line 273
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@275
    move-result-object v6

    #@276
    .line 275
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@279
    move-result v7

    #@27a
    .line 277
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27d
    move-result v8

    #@27e
    .line 279
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@281
    move-result v23

    #@282
    .line 281
    .local v23, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@285
    move-result-object v24

    #@286
    .line 283
    .local v24, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@289
    move-result v25

    #@28a
    .local v25, "_arg6":I
    move-object/from16 v18, p0

    #@28c
    move-object/from16 v19, v5

    #@28e
    move-object/from16 v20, v6

    #@290
    move/from16 v21, v7

    #@292
    move/from16 v22, v8

    #@294
    .line 284
    invoke-virtual/range {v18 .. v25}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    #@297
    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29a
    .line 286
    const/4 v4, 0x1

    #@29b
    return v4

    #@29c
    .line 290
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v23    # "_arg4":I
    .end local v24    # "_arg5":Ljava/lang/String;
    .end local v25    # "_arg6":I
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@29f
    move-object/from16 v0, p2

    #@2a1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a4
    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a7
    move-result v26

    #@2a8
    .line 293
    .restart local v26    # "_arg0":I
    move-object/from16 v0, p0

    #@2aa
    move/from16 v1, v26

    #@2ac
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications(I)V

    #@2af
    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b2
    .line 295
    const/4 v4, 0x1

    #@2b3
    return v4

    #@2b4
    .line 299
    .end local v26    # "_arg0":I
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@2b7
    move-object/from16 v0, p2

    #@2b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2bc
    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2bf
    move-result-object v5

    #@2c0
    .line 303
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2c3
    move-result-object v6

    #@2c4
    .line 305
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c7
    move-result v7

    #@2c8
    .line 307
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cb
    move-result v8

    #@2cc
    .line 308
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@2ce
    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V

    #@2d1
    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2d4
    .line 310
    const/4 v4, 0x1

    #@2d5
    return v4

    #@2d6
    .line 314
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@2d9
    move-object/from16 v0, p2

    #@2db
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2de
    .line 316
    sget-object v4, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e0
    move-object/from16 v0, p2

    #@2e2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@2e5
    move-result-object v30

    #@2e6
    check-cast v30, [Lcom/android/internal/statusbar/NotificationVisibility;

    #@2e8
    .line 318
    .local v30, "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    sget-object v4, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2ea
    move-object/from16 v0, p2

    #@2ec
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@2ef
    move-result-object v34

    #@2f0
    check-cast v34, [Lcom/android/internal/statusbar/NotificationVisibility;

    #@2f2
    .line 319
    .local v34, "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    move-object/from16 v0, p0

    #@2f4
    move-object/from16 v1, v30

    #@2f6
    move-object/from16 v2, v34

    #@2f8
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    #@2fb
    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2fe
    .line 321
    const/4 v4, 0x1

    #@2ff
    return v4

    #@300
    .line 325
    .end local v30    # "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v34    # "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@303
    move-object/from16 v0, p2

    #@305
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@308
    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30b
    move-result-object v5

    #@30c
    .line 329
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30f
    move-result v4

    #@310
    if-eqz v4, :cond_6

    #@312
    const/16 v33, 0x1

    #@314
    .line 331
    .local v33, "_arg1":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@317
    move-result v4

    #@318
    if-eqz v4, :cond_7

    #@31a
    const/16 v36, 0x1

    #@31c
    .line 332
    .local v36, "_arg2":Z
    :goto_7
    move-object/from16 v0, p0

    #@31e
    move/from16 v1, v33

    #@320
    move/from16 v2, v36

    #@322
    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    #@325
    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@328
    .line 334
    const/4 v4, 0x1

    #@329
    return v4

    #@32a
    .line 329
    .end local v33    # "_arg1":Z
    .end local v36    # "_arg2":Z
    :cond_6
    const/16 v33, 0x0

    #@32c
    .restart local v33    # "_arg1":Z
    goto :goto_6

    #@32d
    .line 331
    :cond_7
    const/16 v36, 0x0

    #@32f
    goto :goto_7

    #@330
    .line 338
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v33    # "_arg1":Z
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@333
    move-object/from16 v0, p2

    #@335
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@338
    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@33b
    move-result v26

    #@33c
    .line 342
    .restart local v26    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@33f
    move-result v31

    #@340
    .line 344
    .restart local v31    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@343
    move-result-object v35

    #@344
    .line 345
    .restart local v35    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@346
    move/from16 v1, v26

    #@348
    move/from16 v2, v31

    #@34a
    move-object/from16 v3, v35

    #@34c
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setSystemUiVisibility(IILjava/lang/String;)V

    #@34f
    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@352
    .line 347
    const/4 v4, 0x1

    #@353
    return v4

    #@354
    .line 351
    .end local v26    # "_arg0":I
    .end local v31    # "_arg1":I
    .end local v35    # "_arg2":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@357
    move-object/from16 v0, p2

    #@359
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35c
    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35f
    move-result v4

    #@360
    if-eqz v4, :cond_8

    #@362
    .line 354
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@364
    move-object/from16 v0, p2

    #@366
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@369
    move-result-object v27

    #@36a
    check-cast v27, Landroid/content/ComponentName;

    #@36c
    .line 359
    :goto_8
    move-object/from16 v0, p0

    #@36e
    move-object/from16 v1, v27

    #@370
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->addTile(Landroid/content/ComponentName;)V

    #@373
    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@376
    .line 361
    const/4 v4, 0x1

    #@377
    return v4

    #@378
    .line 357
    :cond_8
    const/16 v27, 0x0

    #@37a
    .local v27, "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    #@37b
    .line 365
    .end local v27    # "_arg0":Landroid/content/ComponentName;
    :sswitch_19
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@37e
    move-object/from16 v0, p2

    #@380
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@383
    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@386
    move-result v4

    #@387
    if-eqz v4, :cond_9

    #@389
    .line 368
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@38b
    move-object/from16 v0, p2

    #@38d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@390
    move-result-object v27

    #@391
    check-cast v27, Landroid/content/ComponentName;

    #@393
    .line 373
    :goto_9
    move-object/from16 v0, p0

    #@395
    move-object/from16 v1, v27

    #@397
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->remTile(Landroid/content/ComponentName;)V

    #@39a
    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39d
    .line 375
    const/4 v4, 0x1

    #@39e
    return v4

    #@39f
    .line 371
    :cond_9
    const/16 v27, 0x0

    #@3a1
    .restart local v27    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    #@3a2
    .line 379
    .end local v27    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1a
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBarService"

    #@3a5
    move-object/from16 v0, p2

    #@3a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3aa
    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ad
    move-result v4

    #@3ae
    if-eqz v4, :cond_a

    #@3b0
    .line 382
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b2
    move-object/from16 v0, p2

    #@3b4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b7
    move-result-object v27

    #@3b8
    check-cast v27, Landroid/content/ComponentName;

    #@3ba
    .line 387
    :goto_a
    move-object/from16 v0, p0

    #@3bc
    move-object/from16 v1, v27

    #@3be
    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clickTile(Landroid/content/ComponentName;)V

    #@3c1
    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c4
    .line 389
    const/4 v4, 0x1

    #@3c5
    return v4

    #@3c6
    .line 385
    :cond_a
    const/16 v27, 0x0

    #@3c8
    .restart local v27    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    #@3c9
    .line 39
    nop

    #@3ca
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
