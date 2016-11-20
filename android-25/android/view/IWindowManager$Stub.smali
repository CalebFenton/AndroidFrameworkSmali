.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addAppToken:I = 0x15

.field static final TRANSACTION_addWindowToken:I = 0x13

.field static final TRANSACTION_cancelTaskThumbnailTransition:I = 0x45

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0x44

.field static final TRANSACTION_clearForcedDisplayDensityForUser:I = 0xd

.field static final TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x58

.field static final TRANSACTION_closeSystemDialogs:I = 0x3a

.field static final TRANSACTION_createWallpaperInputConsumer:I = 0x62

.field static final TRANSACTION_disableKeyguard:I = 0x32

.field static final TRANSACTION_dismissKeyguard:I = 0x38

.field static final TRANSACTION_enableScreenIfNeeded:I = 0x57

.field static final TRANSACTION_endProlongedAnimations:I = 0x2c

.field static final TRANSACTION_executeAppTransition:I = 0x24

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x34

.field static final TRANSACTION_freezeRotation:I = 0x4b

.field static final TRANSACTION_getAnimationScale:I = 0x3b

.field static final TRANSACTION_getAnimationScales:I = 0x3c

.field static final TRANSACTION_getAppOrientation:I = 0x18

.field static final TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final TRANSACTION_getBoundsForNewConfiguration:I = 0x2f

.field static final TRANSACTION_getCurrentAnimatorScale:I = 0x3f

.field static final TRANSACTION_getDockedStackSide:I = 0x5a

.field static final TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final TRANSACTION_getPendingAppTransition:I = 0x1b

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x4a

.field static final TRANSACTION_getRotation:I = 0x47

.field static final TRANSACTION_getStableInsets:I = 0x60

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x59

.field static final TRANSACTION_hasNavigationBar:I = 0x54

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x37

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isKeyguardLocked:I = 0x35

.field static final TRANSACTION_isKeyguardSecure:I = 0x36

.field static final TRANSACTION_isRotationFrozen:I = 0x4d

.field static final TRANSACTION_isSafeModeEnabled:I = 0x56

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_keyguardGoingAway:I = 0x39

.field static final TRANSACTION_lockNow:I = 0x55

.field static final TRANSACTION_notifyAppResumed:I = 0x27

.field static final TRANSACTION_notifyAppStopped:I = 0x28

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransition:I = 0x1c

.field static final TRANSACTION_overridePendingAppTransitionAspectScaledThumb:I = 0x20

.field static final TRANSACTION_overridePendingAppTransitionClipReveal:I = 0x1e

.field static final TRANSACTION_overridePendingAppTransitionInPlace:I = 0x22

.field static final TRANSACTION_overridePendingAppTransitionMultiThumb:I = 0x21

.field static final TRANSACTION_overridePendingAppTransitionMultiThumbFuture:I = 0x23

.field static final TRANSACTION_overridePendingAppTransitionScaleUp:I = 0x1d

.field static final TRANSACTION_overridePendingAppTransitionThumb:I = 0x1f

.field static final TRANSACTION_pauseKeyDispatching:I = 0x10

.field static final TRANSACTION_prepareAppTransition:I = 0x1a

.field static final TRANSACTION_reenableKeyguard:I = 0x33

.field static final TRANSACTION_registerDockedStackListener:I = 0x5d

.field static final TRANSACTION_registerShortcutKey:I = 0x61

.field static final TRANSACTION_removeAppToken:I = 0x2b

.field static final TRANSACTION_removeRotationWatcher:I = 0x49

.field static final TRANSACTION_removeWallpaperInputConsumer:I = 0x63

.field static final TRANSACTION_removeWindowToken:I = 0x14

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0x5f

.field static final TRANSACTION_requestAssistScreenshot:I = 0x4f

.field static final TRANSACTION_resumeKeyDispatching:I = 0x11

.field static final TRANSACTION_screenshotApplications:I = 0x50

.field static final TRANSACTION_screenshotWallpaper:I = 0x4e

.field static final TRANSACTION_setAnimationScale:I = 0x3d

.field static final TRANSACTION_setAnimationScales:I = 0x3e

.field static final TRANSACTION_setAppOrientation:I = 0x17

.field static final TRANSACTION_setAppStartingWindow:I = 0x25

.field static final TRANSACTION_setAppTask:I = 0x16

.field static final TRANSACTION_setAppVisibility:I = 0x26

.field static final TRANSACTION_setDockedStackDividerTouchRegion:I = 0x5c

.field static final TRANSACTION_setDockedStackResizing:I = 0x5b

.field static final TRANSACTION_setEventDispatching:I = 0x12

.field static final TRANSACTION_setFocusedApp:I = 0x19

.field static final TRANSACTION_setForcedDisplayDensityForUser:I = 0xc

.field static final TRANSACTION_setForcedDisplayScalingMode:I = 0xe

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setInTouchMode:I = 0x40

.field static final TRANSACTION_setNewConfiguration:I = 0x2e

.field static final TRANSACTION_setOverscan:I = 0xf

.field static final TRANSACTION_setRecentsVisibility:I = 0x52

.field static final TRANSACTION_setResizeDimLayer:I = 0x5e

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x43

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x42

.field static final TRANSACTION_setTvPipVisibility:I = 0x53

.field static final TRANSACTION_showStrictModeViolation:I = 0x41

.field static final TRANSACTION_startAppFreezingScreen:I = 0x29

.field static final TRANSACTION_startFreezingScreen:I = 0x30

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x51

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x2a

.field static final TRANSACTION_stopFreezingScreen:I = 0x31

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_thawRotation:I = 0x4c

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x2d

.field static final TRANSACTION_updateRotation:I = 0x46

.field static final TRANSACTION_watchRotation:I = 0x48


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.view.IWindowManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.view.IWindowManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/view/IWindowManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/view/IWindowManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 104
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1234
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v6

    #@7
    return v6

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v6, "android.view.IWindowManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v6, 0x1

    #@11
    return v6

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v6, "android.view.IWindowManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v7

    #@1e
    .line 55
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    #@23
    move-result v101

    #@24
    .line 56
    .local v101, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    .line 57
    if-eqz v101, :cond_0

    #@29
    const/4 v6, 0x1

    #@2a
    :goto_0
    move-object/from16 v0, p3

    #@2c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 58
    const/4 v6, 0x1

    #@30
    return v6

    #@31
    .line 57
    :cond_0
    const/4 v6, 0x0

    #@32
    goto :goto_0

    #@33
    .line 62
    .end local v7    # "_arg0":I
    .end local v101    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "android.view.IWindowManager"

    #@36
    move-object/from16 v0, p2

    #@38
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b
    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    #@3e
    move-result v101

    #@3f
    .line 64
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@42
    .line 65
    if-eqz v101, :cond_1

    #@44
    const/4 v6, 0x1

    #@45
    :goto_1
    move-object/from16 v0, p3

    #@47
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 66
    const/4 v6, 0x1

    #@4b
    return v6

    #@4c
    .line 65
    :cond_1
    const/4 v6, 0x0

    #@4d
    goto :goto_1

    #@4e
    .line 70
    .end local v101    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "android.view.IWindowManager"

    #@51
    move-object/from16 v0, p2

    #@53
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56
    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    #@59
    move-result v101

    #@5a
    .line 72
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d
    .line 73
    if-eqz v101, :cond_2

    #@5f
    const/4 v6, 0x1

    #@60
    :goto_2
    move-object/from16 v0, p3

    #@62
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 74
    const/4 v6, 0x1

    #@66
    return v6

    #@67
    .line 73
    :cond_2
    const/4 v6, 0x0

    #@68
    goto :goto_2

    #@69
    .line 78
    .end local v101    # "_result":Z
    :sswitch_4
    const-string/jumbo v6, "android.view.IWindowManager"

    #@6c
    move-object/from16 v0, p2

    #@6e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@71
    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@74
    move-result-object v6

    #@75
    invoke-static {v6}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    #@78
    move-result-object v73

    #@79
    .line 82
    .local v73, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7c
    move-result-object v6

    #@7d
    invoke-static {v6}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@80
    move-result-object v87

    #@81
    .line 84
    .local v87, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@84
    move-result-object v6

    #@85
    invoke-static {v6}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    #@88
    move-result-object v91

    #@89
    .line 85
    .local v91, "_arg2":Lcom/android/internal/view/IInputContext;
    move-object/from16 v0, p0

    #@8b
    move-object/from16 v1, v73

    #@8d
    move-object/from16 v2, v87

    #@8f
    move-object/from16 v3, v91

    #@91
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    #@94
    move-result-object v99

    #@95
    .line 86
    .local v99, "_result":Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@98
    .line 87
    if-eqz v99, :cond_3

    #@9a
    invoke-interface/range {v99 .. v99}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    #@9d
    move-result-object v6

    #@9e
    :goto_3
    move-object/from16 v0, p3

    #@a0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@a3
    .line 88
    const/4 v6, 0x1

    #@a4
    return v6

    #@a5
    .line 87
    :cond_3
    const/4 v6, 0x0

    #@a6
    goto :goto_3

    #@a7
    .line 92
    .end local v73    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v87    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v91    # "_arg2":Lcom/android/internal/view/IInputContext;
    .end local v99    # "_result":Landroid/view/IWindowSession;
    :sswitch_5
    const-string/jumbo v6, "android.view.IWindowManager"

    #@aa
    move-object/from16 v0, p2

    #@ac
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b2
    move-result-object v6

    #@b3
    invoke-static {v6}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@b6
    move-result-object v77

    #@b7
    .line 95
    .local v77, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    #@b9
    move-object/from16 v1, v77

    #@bb
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    #@be
    move-result v101

    #@bf
    .line 96
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c2
    .line 97
    if-eqz v101, :cond_4

    #@c4
    const/4 v6, 0x1

    #@c5
    :goto_4
    move-object/from16 v0, p3

    #@c7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@ca
    .line 98
    const/4 v6, 0x1

    #@cb
    return v6

    #@cc
    .line 97
    :cond_4
    const/4 v6, 0x0

    #@cd
    goto :goto_4

    #@ce
    .line 102
    .end local v77    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v101    # "_result":Z
    :sswitch_6
    const-string/jumbo v6, "android.view.IWindowManager"

    #@d1
    move-object/from16 v0, p2

    #@d3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d6
    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d9
    move-result v7

    #@da
    .line 106
    .restart local v7    # "_arg0":I
    new-instance v83, Landroid/graphics/Point;

    #@dc
    invoke-direct/range {v83 .. v83}, Landroid/graphics/Point;-><init>()V

    #@df
    .line 107
    .local v83, "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    #@e1
    move-object/from16 v1, v83

    #@e3
    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    #@e6
    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e9
    .line 109
    if-eqz v83, :cond_5

    #@eb
    .line 110
    const/4 v6, 0x1

    #@ec
    move-object/from16 v0, p3

    #@ee
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@f1
    .line 111
    const/4 v6, 0x1

    #@f2
    move-object/from16 v0, v83

    #@f4
    move-object/from16 v1, p3

    #@f6
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    #@f9
    .line 116
    :goto_5
    const/4 v6, 0x1

    #@fa
    return v6

    #@fb
    .line 114
    :cond_5
    const/4 v6, 0x0

    #@fc
    move-object/from16 v0, p3

    #@fe
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@101
    goto :goto_5

    #@102
    .line 120
    .end local v7    # "_arg0":I
    .end local v83    # "_arg1":Landroid/graphics/Point;
    :sswitch_7
    const-string/jumbo v6, "android.view.IWindowManager"

    #@105
    move-object/from16 v0, p2

    #@107
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10a
    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10d
    move-result v7

    #@10e
    .line 124
    .restart local v7    # "_arg0":I
    new-instance v83, Landroid/graphics/Point;

    #@110
    invoke-direct/range {v83 .. v83}, Landroid/graphics/Point;-><init>()V

    #@113
    .line 125
    .restart local v83    # "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    #@115
    move-object/from16 v1, v83

    #@117
    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    #@11a
    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11d
    .line 127
    if-eqz v83, :cond_6

    #@11f
    .line 128
    const/4 v6, 0x1

    #@120
    move-object/from16 v0, p3

    #@122
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@125
    .line 129
    const/4 v6, 0x1

    #@126
    move-object/from16 v0, v83

    #@128
    move-object/from16 v1, p3

    #@12a
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    #@12d
    .line 134
    :goto_6
    const/4 v6, 0x1

    #@12e
    return v6

    #@12f
    .line 132
    :cond_6
    const/4 v6, 0x0

    #@130
    move-object/from16 v0, p3

    #@132
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@135
    goto :goto_6

    #@136
    .line 138
    .end local v7    # "_arg0":I
    .end local v83    # "_arg1":Landroid/graphics/Point;
    :sswitch_8
    const-string/jumbo v6, "android.view.IWindowManager"

    #@139
    move-object/from16 v0, p2

    #@13b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13e
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@141
    move-result v7

    #@142
    .line 142
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@145
    move-result v8

    #@146
    .line 144
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@149
    move-result v9

    #@14a
    .line 145
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    #@14c
    invoke-virtual {v0, v7, v8, v9}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    #@14f
    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@152
    .line 147
    const/4 v6, 0x1

    #@153
    return v6

    #@154
    .line 151
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_9
    const-string/jumbo v6, "android.view.IWindowManager"

    #@157
    move-object/from16 v0, p2

    #@159
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15c
    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15f
    move-result v7

    #@160
    .line 154
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@162
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    #@165
    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@168
    .line 156
    const/4 v6, 0x1

    #@169
    return v6

    #@16a
    .line 160
    .end local v7    # "_arg0":I
    :sswitch_a
    const-string/jumbo v6, "android.view.IWindowManager"

    #@16d
    move-object/from16 v0, p2

    #@16f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@172
    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@175
    move-result v7

    #@176
    .line 163
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@178
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    #@17b
    move-result v95

    #@17c
    .line 164
    .local v95, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17f
    .line 165
    move-object/from16 v0, p3

    #@181
    move/from16 v1, v95

    #@183
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@186
    .line 166
    const/4 v6, 0x1

    #@187
    return v6

    #@188
    .line 170
    .end local v7    # "_arg0":I
    .end local v95    # "_result":I
    :sswitch_b
    const-string/jumbo v6, "android.view.IWindowManager"

    #@18b
    move-object/from16 v0, p2

    #@18d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@190
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@193
    move-result v7

    #@194
    .line 173
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@196
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    #@199
    move-result v95

    #@19a
    .line 174
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19d
    .line 175
    move-object/from16 v0, p3

    #@19f
    move/from16 v1, v95

    #@1a1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a4
    .line 176
    const/4 v6, 0x1

    #@1a5
    return v6

    #@1a6
    .line 180
    .end local v7    # "_arg0":I
    .end local v95    # "_result":I
    :sswitch_c
    const-string/jumbo v6, "android.view.IWindowManager"

    #@1a9
    move-object/from16 v0, p2

    #@1ab
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ae
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b1
    move-result v7

    #@1b2
    .line 184
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b5
    move-result v8

    #@1b6
    .line 186
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b9
    move-result v9

    #@1ba
    .line 187
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@1bc
    invoke-virtual {v0, v7, v8, v9}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityForUser(III)V

    #@1bf
    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c2
    .line 189
    const/4 v6, 0x1

    #@1c3
    return v6

    #@1c4
    .line 193
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_d
    const-string/jumbo v6, "android.view.IWindowManager"

    #@1c7
    move-object/from16 v0, p2

    #@1c9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cc
    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cf
    move-result v7

    #@1d0
    .line 197
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d3
    move-result v8

    #@1d4
    .line 198
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@1d6
    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensityForUser(II)V

    #@1d9
    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1dc
    .line 200
    const/4 v6, 0x1

    #@1dd
    return v6

    #@1de
    .line 204
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_e
    const-string/jumbo v6, "android.view.IWindowManager"

    #@1e1
    move-object/from16 v0, p2

    #@1e3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e6
    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e9
    move-result v7

    #@1ea
    .line 208
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ed
    move-result v8

    #@1ee
    .line 209
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@1f0
    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    #@1f3
    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f6
    .line 211
    const/4 v6, 0x1

    #@1f7
    return v6

    #@1f8
    .line 215
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_f
    const-string/jumbo v6, "android.view.IWindowManager"

    #@1fb
    move-object/from16 v0, p2

    #@1fd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@200
    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@203
    move-result v7

    #@204
    .line 219
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@207
    move-result v8

    #@208
    .line 221
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20b
    move-result v9

    #@20c
    .line 223
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20f
    move-result v10

    #@210
    .line 225
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@213
    move-result v11

    #@214
    .local v11, "_arg4":I
    move-object/from16 v6, p0

    #@216
    .line 226
    invoke-virtual/range {v6 .. v11}, Landroid/view/IWindowManager$Stub;->setOverscan(IIIII)V

    #@219
    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21c
    .line 228
    const/4 v6, 0x1

    #@21d
    return v6

    #@21e
    .line 232
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :sswitch_10
    const-string/jumbo v6, "android.view.IWindowManager"

    #@221
    move-object/from16 v0, p2

    #@223
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@226
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@229
    move-result-object v32

    #@22a
    .line 235
    .local v32, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@22c
    move-object/from16 v1, v32

    #@22e
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    #@231
    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@234
    .line 237
    const/4 v6, 0x1

    #@235
    return v6

    #@236
    .line 241
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_11
    const-string/jumbo v6, "android.view.IWindowManager"

    #@239
    move-object/from16 v0, p2

    #@23b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23e
    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@241
    move-result-object v32

    #@242
    .line 244
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@244
    move-object/from16 v1, v32

    #@246
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    #@249
    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24c
    .line 246
    const/4 v6, 0x1

    #@24d
    return v6

    #@24e
    .line 250
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_12
    const-string/jumbo v6, "android.view.IWindowManager"

    #@251
    move-object/from16 v0, p2

    #@253
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@256
    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@259
    move-result v6

    #@25a
    if-eqz v6, :cond_7

    #@25c
    const/16 v79, 0x1

    #@25e
    .line 253
    .local v79, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    #@260
    move/from16 v1, v79

    #@262
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    #@265
    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@268
    .line 255
    const/4 v6, 0x1

    #@269
    return v6

    #@26a
    .line 252
    .end local v79    # "_arg0":Z
    :cond_7
    const/16 v79, 0x0

    #@26c
    goto :goto_7

    #@26d
    .line 259
    :sswitch_13
    const-string/jumbo v6, "android.view.IWindowManager"

    #@270
    move-object/from16 v0, p2

    #@272
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@275
    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@278
    move-result-object v32

    #@279
    .line 263
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27c
    move-result v8

    #@27d
    .line 264
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@27f
    move-object/from16 v1, v32

    #@281
    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    #@284
    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@287
    .line 266
    const/4 v6, 0x1

    #@288
    return v6

    #@289
    .line 270
    .end local v8    # "_arg1":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_14
    const-string/jumbo v6, "android.view.IWindowManager"

    #@28c
    move-object/from16 v0, p2

    #@28e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@291
    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@294
    move-result-object v32

    #@295
    .line 273
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@297
    move-object/from16 v1, v32

    #@299
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    #@29c
    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29f
    .line 275
    const/4 v6, 0x1

    #@2a0
    return v6

    #@2a1
    .line 279
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_15
    const-string/jumbo v6, "android.view.IWindowManager"

    #@2a4
    move-object/from16 v0, p2

    #@2a6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a9
    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ac
    move-result v7

    #@2ad
    .line 283
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b0
    move-result-object v6

    #@2b1
    invoke-static {v6}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    #@2b4
    move-result-object v14

    #@2b5
    .line 285
    .local v14, "_arg1":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b8
    move-result v9

    #@2b9
    .line 287
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2bc
    move-result v10

    #@2bd
    .line 289
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c0
    move-result v11

    #@2c1
    .line 291
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c4
    move-result v6

    #@2c5
    if-eqz v6, :cond_8

    #@2c7
    const/16 v18, 0x1

    #@2c9
    .line 293
    .local v18, "_arg5":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cc
    move-result v6

    #@2cd
    if-eqz v6, :cond_9

    #@2cf
    const/16 v19, 0x1

    #@2d1
    .line 295
    .local v19, "_arg6":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d4
    move-result v20

    #@2d5
    .line 297
    .local v20, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d8
    move-result v21

    #@2d9
    .line 299
    .local v21, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2dc
    move-result v6

    #@2dd
    if-eqz v6, :cond_a

    #@2df
    const/16 v22, 0x1

    #@2e1
    .line 301
    .local v22, "_arg9":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e4
    move-result v6

    #@2e5
    if-eqz v6, :cond_b

    #@2e7
    const/16 v23, 0x1

    #@2e9
    .line 303
    .local v23, "_arg10":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ec
    move-result v6

    #@2ed
    if-eqz v6, :cond_c

    #@2ef
    .line 304
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f1
    move-object/from16 v0, p2

    #@2f3
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f6
    move-result-object v24

    #@2f7
    check-cast v24, Landroid/graphics/Rect;

    #@2f9
    .line 310
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2fc
    move-result v6

    #@2fd
    if-eqz v6, :cond_d

    #@2ff
    .line 311
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@301
    move-object/from16 v0, p2

    #@303
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@306
    move-result-object v25

    #@307
    check-cast v25, Landroid/content/res/Configuration;

    #@309
    .line 317
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30c
    move-result v26

    #@30d
    .line 319
    .local v26, "_arg13":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@310
    move-result v6

    #@311
    if-eqz v6, :cond_e

    #@313
    const/16 v27, 0x1

    #@315
    .line 321
    .local v27, "_arg14":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@318
    move-result v6

    #@319
    if-eqz v6, :cond_f

    #@31b
    const/16 v28, 0x1

    #@31d
    .line 323
    .local v28, "_arg15":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@320
    move-result v29

    #@321
    .line 325
    .local v29, "_arg16":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@324
    move-result v30

    #@325
    .local v30, "_arg17":I
    move-object/from16 v12, p0

    #@327
    move v13, v7

    #@328
    move v15, v9

    #@329
    move/from16 v16, v10

    #@32b
    move/from16 v17, v11

    #@32d
    .line 326
    invoke-virtual/range {v12 .. v30}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLandroid/graphics/Rect;Landroid/content/res/Configuration;IZZII)V

    #@330
    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@333
    .line 328
    const/4 v6, 0x1

    #@334
    return v6

    #@335
    .line 291
    .end local v18    # "_arg5":Z
    .end local v19    # "_arg6":Z
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v22    # "_arg9":Z
    .end local v23    # "_arg10":Z
    .end local v26    # "_arg13":I
    .end local v27    # "_arg14":Z
    .end local v28    # "_arg15":Z
    .end local v29    # "_arg16":I
    .end local v30    # "_arg17":I
    :cond_8
    const/16 v18, 0x0

    #@337
    .restart local v18    # "_arg5":Z
    goto :goto_8

    #@338
    .line 293
    :cond_9
    const/16 v19, 0x0

    #@33a
    .restart local v19    # "_arg6":Z
    goto :goto_9

    #@33b
    .line 299
    .restart local v20    # "_arg7":I
    .restart local v21    # "_arg8":I
    :cond_a
    const/16 v22, 0x0

    #@33d
    .restart local v22    # "_arg9":Z
    goto :goto_a

    #@33e
    .line 301
    :cond_b
    const/16 v23, 0x0

    #@340
    .restart local v23    # "_arg10":Z
    goto :goto_b

    #@341
    .line 307
    :cond_c
    const/16 v24, 0x0

    #@343
    .local v24, "_arg11":Landroid/graphics/Rect;
    goto :goto_c

    #@344
    .line 314
    .end local v24    # "_arg11":Landroid/graphics/Rect;
    :cond_d
    const/16 v25, 0x0

    #@346
    .local v25, "_arg12":Landroid/content/res/Configuration;
    goto :goto_d

    #@347
    .line 319
    .end local v25    # "_arg12":Landroid/content/res/Configuration;
    .restart local v26    # "_arg13":I
    :cond_e
    const/16 v27, 0x0

    #@349
    .restart local v27    # "_arg14":Z
    goto :goto_e

    #@34a
    .line 321
    :cond_f
    const/16 v28, 0x0

    #@34c
    .restart local v28    # "_arg15":Z
    goto :goto_f

    #@34d
    .line 332
    .end local v7    # "_arg0":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v14    # "_arg1":Landroid/view/IApplicationToken;
    .end local v18    # "_arg5":Z
    .end local v19    # "_arg6":Z
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v22    # "_arg9":Z
    .end local v23    # "_arg10":Z
    .end local v26    # "_arg13":I
    .end local v27    # "_arg14":Z
    .end local v28    # "_arg15":Z
    :sswitch_16
    const-string/jumbo v6, "android.view.IWindowManager"

    #@350
    move-object/from16 v0, p2

    #@352
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@355
    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@358
    move-result-object v32

    #@359
    .line 336
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35c
    move-result v8

    #@35d
    .line 338
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@360
    move-result v9

    #@361
    .line 340
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@364
    move-result v6

    #@365
    if-eqz v6, :cond_10

    #@367
    .line 341
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@369
    move-object/from16 v0, p2

    #@36b
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@36e
    move-result-object v35

    #@36f
    check-cast v35, Landroid/graphics/Rect;

    #@371
    .line 347
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@374
    move-result v6

    #@375
    if-eqz v6, :cond_11

    #@377
    .line 348
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@379
    move-object/from16 v0, p2

    #@37b
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@37e
    move-result-object v36

    #@37f
    check-cast v36, Landroid/content/res/Configuration;

    #@381
    .line 354
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@384
    move-result v37

    #@385
    .line 356
    .local v37, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@388
    move-result v6

    #@389
    if-eqz v6, :cond_12

    #@38b
    const/16 v19, 0x1

    #@38d
    .local v19, "_arg6":Z
    :goto_12
    move-object/from16 v31, p0

    #@38f
    move/from16 v33, v8

    #@391
    move/from16 v34, v9

    #@393
    move/from16 v38, v19

    #@395
    .line 357
    invoke-virtual/range {v31 .. v38}, Landroid/view/IWindowManager$Stub;->setAppTask(Landroid/os/IBinder;IILandroid/graphics/Rect;Landroid/content/res/Configuration;IZ)V

    #@398
    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39b
    .line 359
    const/4 v6, 0x1

    #@39c
    return v6

    #@39d
    .line 344
    .end local v19    # "_arg6":Z
    .end local v37    # "_arg5":I
    :cond_10
    const/16 v35, 0x0

    #@39f
    .local v35, "_arg3":Landroid/graphics/Rect;
    goto :goto_10

    #@3a0
    .line 351
    .end local v35    # "_arg3":Landroid/graphics/Rect;
    :cond_11
    const/16 v36, 0x0

    #@3a2
    .local v36, "_arg4":Landroid/content/res/Configuration;
    goto :goto_11

    #@3a3
    .line 356
    .end local v36    # "_arg4":Landroid/content/res/Configuration;
    .restart local v37    # "_arg5":I
    :cond_12
    const/16 v19, 0x0

    #@3a5
    goto :goto_12

    #@3a6
    .line 363
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_arg5":I
    :sswitch_17
    const-string/jumbo v6, "android.view.IWindowManager"

    #@3a9
    move-object/from16 v0, p2

    #@3ab
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ae
    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3b1
    move-result-object v6

    #@3b2
    invoke-static {v6}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    #@3b5
    move-result-object v69

    #@3b6
    .line 367
    .local v69, "_arg0":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b9
    move-result v8

    #@3ba
    .line 368
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@3bc
    move-object/from16 v1, v69

    #@3be
    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    #@3c1
    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c4
    .line 370
    const/4 v6, 0x1

    #@3c5
    return v6

    #@3c6
    .line 374
    .end local v8    # "_arg1":I
    .end local v69    # "_arg0":Landroid/view/IApplicationToken;
    :sswitch_18
    const-string/jumbo v6, "android.view.IWindowManager"

    #@3c9
    move-object/from16 v0, p2

    #@3cb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ce
    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3d1
    move-result-object v6

    #@3d2
    invoke-static {v6}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    #@3d5
    move-result-object v69

    #@3d6
    .line 377
    .restart local v69    # "_arg0":Landroid/view/IApplicationToken;
    move-object/from16 v0, p0

    #@3d8
    move-object/from16 v1, v69

    #@3da
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    #@3dd
    move-result v95

    #@3de
    .line 378
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e1
    .line 379
    move-object/from16 v0, p3

    #@3e3
    move/from16 v1, v95

    #@3e5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3e8
    .line 380
    const/4 v6, 0x1

    #@3e9
    return v6

    #@3ea
    .line 384
    .end local v69    # "_arg0":Landroid/view/IApplicationToken;
    .end local v95    # "_result":I
    :sswitch_19
    const-string/jumbo v6, "android.view.IWindowManager"

    #@3ed
    move-object/from16 v0, p2

    #@3ef
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f2
    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3f5
    move-result-object v32

    #@3f6
    .line 388
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f9
    move-result v6

    #@3fa
    if-eqz v6, :cond_13

    #@3fc
    const/16 v88, 0x1

    #@3fe
    .line 389
    .local v88, "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    #@400
    move-object/from16 v1, v32

    #@402
    move/from16 v2, v88

    #@404
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    #@407
    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@40a
    .line 391
    const/4 v6, 0x1

    #@40b
    return v6

    #@40c
    .line 388
    .end local v88    # "_arg1":Z
    :cond_13
    const/16 v88, 0x0

    #@40e
    goto :goto_13

    #@40f
    .line 395
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_1a
    const-string/jumbo v6, "android.view.IWindowManager"

    #@412
    move-object/from16 v0, p2

    #@414
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@417
    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41a
    move-result v7

    #@41b
    .line 399
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41e
    move-result v6

    #@41f
    if-eqz v6, :cond_14

    #@421
    const/16 v88, 0x1

    #@423
    .line 400
    .restart local v88    # "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    #@425
    move/from16 v1, v88

    #@427
    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    #@42a
    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@42d
    .line 402
    const/4 v6, 0x1

    #@42e
    return v6

    #@42f
    .line 399
    .end local v88    # "_arg1":Z
    :cond_14
    const/16 v88, 0x0

    #@431
    goto :goto_14

    #@432
    .line 406
    .end local v7    # "_arg0":I
    :sswitch_1b
    const-string/jumbo v6, "android.view.IWindowManager"

    #@435
    move-object/from16 v0, p2

    #@437
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43a
    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    #@43d
    move-result v95

    #@43e
    .line 408
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@441
    .line 409
    move-object/from16 v0, p3

    #@443
    move/from16 v1, v95

    #@445
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@448
    .line 410
    const/4 v6, 0x1

    #@449
    return v6

    #@44a
    .line 414
    .end local v95    # "_result":I
    :sswitch_1c
    const-string/jumbo v6, "android.view.IWindowManager"

    #@44d
    move-object/from16 v0, p2

    #@44f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@452
    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@455
    move-result-object v78

    #@456
    .line 418
    .local v78, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@459
    move-result v8

    #@45a
    .line 420
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@45d
    move-result v9

    #@45e
    .line 422
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@461
    move-result-object v6

    #@462
    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@465
    move-result-object v42

    #@466
    .line 423
    .local v42, "_arg3":Landroid/os/IRemoteCallback;
    move-object/from16 v0, p0

    #@468
    move-object/from16 v1, v78

    #@46a
    move-object/from16 v2, v42

    #@46c
    invoke-virtual {v0, v1, v8, v9, v2}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    #@46f
    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@472
    .line 425
    const/4 v6, 0x1

    #@473
    return v6

    #@474
    .line 429
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v42    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v6, "android.view.IWindowManager"

    #@477
    move-object/from16 v0, p2

    #@479
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47c
    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47f
    move-result v7

    #@480
    .line 433
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@483
    move-result v8

    #@484
    .line 435
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@487
    move-result v9

    #@488
    .line 437
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@48b
    move-result v10

    #@48c
    .line 438
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@48e
    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionScaleUp(IIII)V

    #@491
    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@494
    .line 440
    const/4 v6, 0x1

    #@495
    return v6

    #@496
    .line 444
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_1e
    const-string/jumbo v6, "android.view.IWindowManager"

    #@499
    move-object/from16 v0, p2

    #@49b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@49e
    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a1
    move-result v7

    #@4a2
    .line 448
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a5
    move-result v8

    #@4a6
    .line 450
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a9
    move-result v9

    #@4aa
    .line 452
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4ad
    move-result v10

    #@4ae
    .line 453
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@4b0
    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionClipReveal(IIII)V

    #@4b3
    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b6
    .line 455
    const/4 v6, 0x1

    #@4b7
    return v6

    #@4b8
    .line 459
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_1f
    const-string/jumbo v6, "android.view.IWindowManager"

    #@4bb
    move-object/from16 v0, p2

    #@4bd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c0
    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4c3
    move-result v6

    #@4c4
    if-eqz v6, :cond_15

    #@4c6
    .line 462
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4c8
    move-object/from16 v0, p2

    #@4ca
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4cd
    move-result-object v39

    #@4ce
    check-cast v39, Landroid/graphics/Bitmap;

    #@4d0
    .line 468
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d3
    move-result v8

    #@4d4
    .line 470
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d7
    move-result v9

    #@4d8
    .line 472
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4db
    move-result-object v6

    #@4dc
    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@4df
    move-result-object v42

    #@4e0
    .line 474
    .restart local v42    # "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4e3
    move-result v6

    #@4e4
    if-eqz v6, :cond_16

    #@4e6
    const/16 v43, 0x1

    #@4e8
    .local v43, "_arg4":Z
    :goto_16
    move-object/from16 v38, p0

    #@4ea
    move/from16 v40, v8

    #@4ec
    move/from16 v41, v9

    #@4ee
    .line 475
    invoke-virtual/range {v38 .. v43}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    #@4f1
    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f4
    .line 477
    const/4 v6, 0x1

    #@4f5
    return v6

    #@4f6
    .line 465
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v42    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v43    # "_arg4":Z
    :cond_15
    const/16 v39, 0x0

    #@4f8
    .local v39, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_15

    #@4f9
    .line 474
    .end local v39    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v42    # "_arg3":Landroid/os/IRemoteCallback;
    :cond_16
    const/16 v43, 0x0

    #@4fb
    goto :goto_16

    #@4fc
    .line 481
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v42    # "_arg3":Landroid/os/IRemoteCallback;
    :sswitch_20
    const-string/jumbo v6, "android.view.IWindowManager"

    #@4ff
    move-object/from16 v0, p2

    #@501
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@504
    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@507
    move-result v6

    #@508
    if-eqz v6, :cond_17

    #@50a
    .line 484
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@50c
    move-object/from16 v0, p2

    #@50e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@511
    move-result-object v39

    #@512
    check-cast v39, Landroid/graphics/Bitmap;

    #@514
    .line 490
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@517
    move-result v8

    #@518
    .line 492
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51b
    move-result v9

    #@51c
    .line 494
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51f
    move-result v10

    #@520
    .line 496
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@523
    move-result v11

    #@524
    .line 498
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@527
    move-result-object v6

    #@528
    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@52b
    move-result-object v50

    #@52c
    .line 500
    .local v50, "_arg5":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@52f
    move-result v6

    #@530
    if-eqz v6, :cond_18

    #@532
    const/16 v19, 0x1

    #@534
    .restart local v19    # "_arg6":Z
    :goto_18
    move-object/from16 v44, p0

    #@536
    move-object/from16 v45, v39

    #@538
    move/from16 v46, v8

    #@53a
    move/from16 v47, v9

    #@53c
    move/from16 v48, v10

    #@53e
    move/from16 v49, v11

    #@540
    move/from16 v51, v19

    #@542
    .line 501
    invoke-virtual/range {v44 .. v51}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V

    #@545
    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@548
    .line 503
    const/4 v6, 0x1

    #@549
    return v6

    #@54a
    .line 487
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v19    # "_arg6":Z
    .end local v50    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_17
    const/16 v39, 0x0

    #@54c
    .restart local v39    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_17

    #@54d
    .line 500
    .end local v39    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v11    # "_arg4":I
    .restart local v50    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_18
    const/16 v19, 0x0

    #@54f
    goto :goto_18

    #@550
    .line 507
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v50    # "_arg5":Landroid/os/IRemoteCallback;
    :sswitch_21
    const-string/jumbo v6, "android.view.IWindowManager"

    #@553
    move-object/from16 v0, p2

    #@555
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@558
    .line 509
    sget-object v6, Landroid/view/AppTransitionAnimationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    #@55a
    move-object/from16 v0, p2

    #@55c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@55f
    move-result-object v81

    #@560
    check-cast v81, [Landroid/view/AppTransitionAnimationSpec;

    #@562
    .line 511
    .local v81, "_arg0":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@565
    move-result-object v6

    #@566
    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@569
    move-result-object v85

    #@56a
    .line 513
    .local v85, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@56d
    move-result-object v6

    #@56e
    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@571
    move-result-object v90

    #@572
    .line 515
    .local v90, "_arg2":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@575
    move-result v6

    #@576
    if-eqz v6, :cond_19

    #@578
    const/16 v93, 0x1

    #@57a
    .line 516
    .local v93, "_arg3":Z
    :goto_19
    move-object/from16 v0, p0

    #@57c
    move-object/from16 v1, v81

    #@57e
    move-object/from16 v2, v85

    #@580
    move-object/from16 v3, v90

    #@582
    move/from16 v4, v93

    #@584
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    #@587
    .line 517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@58a
    .line 518
    const/4 v6, 0x1

    #@58b
    return v6

    #@58c
    .line 515
    .end local v93    # "_arg3":Z
    :cond_19
    const/16 v93, 0x0

    #@58e
    goto :goto_19

    #@58f
    .line 522
    .end local v81    # "_arg0":[Landroid/view/AppTransitionAnimationSpec;
    .end local v85    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v90    # "_arg2":Landroid/os/IRemoteCallback;
    :sswitch_22
    const-string/jumbo v6, "android.view.IWindowManager"

    #@592
    move-object/from16 v0, p2

    #@594
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@597
    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@59a
    move-result-object v78

    #@59b
    .line 526
    .restart local v78    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@59e
    move-result v8

    #@59f
    .line 527
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@5a1
    move-object/from16 v1, v78

    #@5a3
    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionInPlace(Ljava/lang/String;I)V

    #@5a6
    .line 528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5a9
    .line 529
    const/4 v6, 0x1

    #@5aa
    return v6

    #@5ab
    .line 533
    .end local v8    # "_arg1":I
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v6, "android.view.IWindowManager"

    #@5ae
    move-object/from16 v0, p2

    #@5b0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b3
    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5b6
    move-result-object v6

    #@5b7
    invoke-static {v6}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    #@5ba
    move-result-object v68

    #@5bb
    .line 537
    .local v68, "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5be
    move-result-object v6

    #@5bf
    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@5c2
    move-result-object v85

    #@5c3
    .line 539
    .restart local v85    # "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c6
    move-result v6

    #@5c7
    if-eqz v6, :cond_1a

    #@5c9
    const/16 v92, 0x1

    #@5cb
    .line 540
    .local v92, "_arg2":Z
    :goto_1a
    move-object/from16 v0, p0

    #@5cd
    move-object/from16 v1, v68

    #@5cf
    move-object/from16 v2, v85

    #@5d1
    move/from16 v3, v92

    #@5d3
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    #@5d6
    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d9
    .line 542
    const/4 v6, 0x1

    #@5da
    return v6

    #@5db
    .line 539
    .end local v92    # "_arg2":Z
    :cond_1a
    const/16 v92, 0x0

    #@5dd
    goto :goto_1a

    #@5de
    .line 546
    .end local v68    # "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v85    # "_arg1":Landroid/os/IRemoteCallback;
    :sswitch_24
    const-string/jumbo v6, "android.view.IWindowManager"

    #@5e1
    move-object/from16 v0, p2

    #@5e3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e6
    .line 547
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    #@5e9
    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ec
    .line 549
    const/4 v6, 0x1

    #@5ed
    return v6

    #@5ee
    .line 553
    :sswitch_25
    const-string/jumbo v6, "android.view.IWindowManager"

    #@5f1
    move-object/from16 v0, p2

    #@5f3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f6
    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5f9
    move-result-object v32

    #@5fa
    .line 557
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5fd
    move-result-object v53

    #@5fe
    .line 559
    .local v53, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@601
    move-result v9

    #@602
    .line 561
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@605
    move-result v6

    #@606
    if-eqz v6, :cond_1b

    #@608
    .line 562
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@60a
    move-object/from16 v0, p2

    #@60c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@60f
    move-result-object v55

    #@610
    check-cast v55, Landroid/content/res/CompatibilityInfo;

    #@612
    .line 568
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@615
    move-result v6

    #@616
    if-eqz v6, :cond_1c

    #@618
    .line 569
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@61a
    move-object/from16 v0, p2

    #@61c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@61f
    move-result-object v56

    #@620
    check-cast v56, Ljava/lang/CharSequence;

    #@622
    .line 575
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@625
    move-result v37

    #@626
    .line 577
    .restart local v37    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@629
    move-result v58

    #@62a
    .line 579
    .local v58, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62d
    move-result v20

    #@62e
    .line 581
    .restart local v20    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@631
    move-result v21

    #@632
    .line 583
    .restart local v21    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@635
    move-result-object v61

    #@636
    .line 585
    .local v61, "_arg9":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@639
    move-result v6

    #@63a
    if-eqz v6, :cond_1d

    #@63c
    const/16 v23, 0x1

    #@63e
    .local v23, "_arg10":Z
    :goto_1d
    move-object/from16 v51, p0

    #@640
    move-object/from16 v52, v32

    #@642
    move/from16 v54, v9

    #@644
    move/from16 v57, v37

    #@646
    move/from16 v59, v20

    #@648
    move/from16 v60, v21

    #@64a
    move/from16 v62, v23

    #@64c
    .line 586
    invoke-virtual/range {v51 .. v62}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)Z

    #@64f
    move-result v101

    #@650
    .line 587
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@653
    .line 588
    if-eqz v101, :cond_1e

    #@655
    const/4 v6, 0x1

    #@656
    :goto_1e
    move-object/from16 v0, p3

    #@658
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@65b
    .line 589
    const/4 v6, 0x1

    #@65c
    return v6

    #@65d
    .line 565
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v23    # "_arg10":Z
    .end local v37    # "_arg5":I
    .end local v58    # "_arg6":I
    .end local v61    # "_arg9":Landroid/os/IBinder;
    .end local v101    # "_result":Z
    :cond_1b
    const/16 v55, 0x0

    #@65f
    .local v55, "_arg3":Landroid/content/res/CompatibilityInfo;
    goto :goto_1b

    #@660
    .line 572
    .end local v55    # "_arg3":Landroid/content/res/CompatibilityInfo;
    :cond_1c
    const/16 v56, 0x0

    #@662
    .local v56, "_arg4":Ljava/lang/CharSequence;
    goto :goto_1c

    #@663
    .line 585
    .end local v56    # "_arg4":Ljava/lang/CharSequence;
    .restart local v20    # "_arg7":I
    .restart local v21    # "_arg8":I
    .restart local v37    # "_arg5":I
    .restart local v58    # "_arg6":I
    .restart local v61    # "_arg9":Landroid/os/IBinder;
    :cond_1d
    const/16 v23, 0x0

    #@665
    goto :goto_1d

    #@666
    .line 588
    .restart local v23    # "_arg10":Z
    .restart local v101    # "_result":Z
    :cond_1e
    const/4 v6, 0x0

    #@667
    goto :goto_1e

    #@668
    .line 593
    .end local v9    # "_arg2":I
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v23    # "_arg10":Z
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_arg5":I
    .end local v53    # "_arg1":Ljava/lang/String;
    .end local v58    # "_arg6":I
    .end local v61    # "_arg9":Landroid/os/IBinder;
    .end local v101    # "_result":Z
    :sswitch_26
    const-string/jumbo v6, "android.view.IWindowManager"

    #@66b
    move-object/from16 v0, p2

    #@66d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@670
    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@673
    move-result-object v32

    #@674
    .line 597
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@677
    move-result v6

    #@678
    if-eqz v6, :cond_1f

    #@67a
    const/16 v88, 0x1

    #@67c
    .line 598
    .restart local v88    # "_arg1":Z
    :goto_1f
    move-object/from16 v0, p0

    #@67e
    move-object/from16 v1, v32

    #@680
    move/from16 v2, v88

    #@682
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@685
    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@688
    .line 600
    const/4 v6, 0x1

    #@689
    return v6

    #@68a
    .line 597
    .end local v88    # "_arg1":Z
    :cond_1f
    const/16 v88, 0x0

    #@68c
    goto :goto_1f

    #@68d
    .line 604
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_27
    const-string/jumbo v6, "android.view.IWindowManager"

    #@690
    move-object/from16 v0, p2

    #@692
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@695
    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@698
    move-result-object v32

    #@699
    .line 608
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@69c
    move-result v6

    #@69d
    if-eqz v6, :cond_20

    #@69f
    const/16 v88, 0x1

    #@6a1
    .line 610
    .local v88, "_arg1":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a4
    move-result v6

    #@6a5
    if-eqz v6, :cond_21

    #@6a7
    const/16 v92, 0x1

    #@6a9
    .line 611
    .restart local v92    # "_arg2":Z
    :goto_21
    move-object/from16 v0, p0

    #@6ab
    move-object/from16 v1, v32

    #@6ad
    move/from16 v2, v88

    #@6af
    move/from16 v3, v92

    #@6b1
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->notifyAppResumed(Landroid/os/IBinder;ZZ)V

    #@6b4
    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6b7
    .line 613
    const/4 v6, 0x1

    #@6b8
    return v6

    #@6b9
    .line 608
    .end local v88    # "_arg1":Z
    .end local v92    # "_arg2":Z
    :cond_20
    const/16 v88, 0x0

    #@6bb
    .restart local v88    # "_arg1":Z
    goto :goto_20

    #@6bc
    .line 610
    :cond_21
    const/16 v92, 0x0

    #@6be
    goto :goto_21

    #@6bf
    .line 617
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v88    # "_arg1":Z
    :sswitch_28
    const-string/jumbo v6, "android.view.IWindowManager"

    #@6c2
    move-object/from16 v0, p2

    #@6c4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c7
    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6ca
    move-result-object v32

    #@6cb
    .line 620
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@6cd
    move-object/from16 v1, v32

    #@6cf
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->notifyAppStopped(Landroid/os/IBinder;)V

    #@6d2
    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d5
    .line 622
    const/4 v6, 0x1

    #@6d6
    return v6

    #@6d7
    .line 626
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_29
    const-string/jumbo v6, "android.view.IWindowManager"

    #@6da
    move-object/from16 v0, p2

    #@6dc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6df
    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6e2
    move-result-object v32

    #@6e3
    .line 630
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6e6
    move-result v8

    #@6e7
    .line 631
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@6e9
    move-object/from16 v1, v32

    #@6eb
    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    #@6ee
    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f1
    .line 633
    const/4 v6, 0x1

    #@6f2
    return v6

    #@6f3
    .line 637
    .end local v8    # "_arg1":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_2a
    const-string/jumbo v6, "android.view.IWindowManager"

    #@6f6
    move-object/from16 v0, p2

    #@6f8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6fb
    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6fe
    move-result-object v32

    #@6ff
    .line 641
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@702
    move-result v6

    #@703
    if-eqz v6, :cond_22

    #@705
    const/16 v88, 0x1

    #@707
    .line 642
    .local v88, "_arg1":Z
    :goto_22
    move-object/from16 v0, p0

    #@709
    move-object/from16 v1, v32

    #@70b
    move/from16 v2, v88

    #@70d
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    #@710
    .line 643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@713
    .line 644
    const/4 v6, 0x1

    #@714
    return v6

    #@715
    .line 641
    .end local v88    # "_arg1":Z
    :cond_22
    const/16 v88, 0x0

    #@717
    goto :goto_22

    #@718
    .line 648
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_2b
    const-string/jumbo v6, "android.view.IWindowManager"

    #@71b
    move-object/from16 v0, p2

    #@71d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@720
    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@723
    move-result-object v32

    #@724
    .line 651
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@726
    move-object/from16 v1, v32

    #@728
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    #@72b
    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@72e
    .line 653
    const/4 v6, 0x1

    #@72f
    return v6

    #@730
    .line 657
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_2c
    const-string/jumbo v6, "android.view.IWindowManager"

    #@733
    move-object/from16 v0, p2

    #@735
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@738
    .line 658
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    #@73b
    .line 659
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@73e
    .line 660
    const/4 v6, 0x1

    #@73f
    return v6

    #@740
    .line 664
    :sswitch_2d
    const-string/jumbo v6, "android.view.IWindowManager"

    #@743
    move-object/from16 v0, p2

    #@745
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@748
    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@74b
    move-result v6

    #@74c
    if-eqz v6, :cond_23

    #@74e
    .line 667
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@750
    move-object/from16 v0, p2

    #@752
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@755
    move-result-object v63

    #@756
    check-cast v63, Landroid/content/res/Configuration;

    #@758
    .line 673
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@75b
    move-result-object v84

    #@75c
    .line 674
    .local v84, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@75e
    move-object/from16 v1, v63

    #@760
    move-object/from16 v2, v84

    #@762
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    #@765
    move-result-object v96

    #@766
    .line 675
    .local v96, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@769
    .line 676
    if-eqz v96, :cond_24

    #@76b
    .line 677
    const/4 v6, 0x1

    #@76c
    move-object/from16 v0, p3

    #@76e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@771
    .line 678
    const/4 v6, 0x1

    #@772
    move-object/from16 v0, v96

    #@774
    move-object/from16 v1, p3

    #@776
    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@779
    .line 683
    :goto_24
    const/4 v6, 0x1

    #@77a
    return v6

    #@77b
    .line 670
    .end local v84    # "_arg1":Landroid/os/IBinder;
    .end local v96    # "_result":Landroid/content/res/Configuration;
    :cond_23
    const/16 v63, 0x0

    #@77d
    .local v63, "_arg0":Landroid/content/res/Configuration;
    goto :goto_23

    #@77e
    .line 681
    .end local v63    # "_arg0":Landroid/content/res/Configuration;
    .restart local v84    # "_arg1":Landroid/os/IBinder;
    .restart local v96    # "_result":Landroid/content/res/Configuration;
    :cond_24
    const/4 v6, 0x0

    #@77f
    move-object/from16 v0, p3

    #@781
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@784
    goto :goto_24

    #@785
    .line 687
    .end local v84    # "_arg1":Landroid/os/IBinder;
    .end local v96    # "_result":Landroid/content/res/Configuration;
    :sswitch_2e
    const-string/jumbo v6, "android.view.IWindowManager"

    #@788
    move-object/from16 v0, p2

    #@78a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78d
    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@790
    move-result v6

    #@791
    if-eqz v6, :cond_25

    #@793
    .line 690
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@795
    move-object/from16 v0, p2

    #@797
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@79a
    move-result-object v63

    #@79b
    check-cast v63, Landroid/content/res/Configuration;

    #@79d
    .line 695
    :goto_25
    move-object/from16 v0, p0

    #@79f
    move-object/from16 v1, v63

    #@7a1
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)[I

    #@7a4
    move-result-object v103

    #@7a5
    .line 696
    .local v103, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7a8
    .line 697
    move-object/from16 v0, p3

    #@7aa
    move-object/from16 v1, v103

    #@7ac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@7af
    .line 698
    const/4 v6, 0x1

    #@7b0
    return v6

    #@7b1
    .line 693
    .end local v103    # "_result":[I
    :cond_25
    const/16 v63, 0x0

    #@7b3
    .restart local v63    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_25

    #@7b4
    .line 702
    .end local v63    # "_arg0":Landroid/content/res/Configuration;
    :sswitch_2f
    const-string/jumbo v6, "android.view.IWindowManager"

    #@7b7
    move-object/from16 v0, p2

    #@7b9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7bc
    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7bf
    move-result v7

    #@7c0
    .line 705
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@7c2
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getBoundsForNewConfiguration(I)Landroid/graphics/Rect;

    #@7c5
    move-result-object v98

    #@7c6
    .line 706
    .local v98, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c9
    .line 707
    if-eqz v98, :cond_26

    #@7cb
    .line 708
    const/4 v6, 0x1

    #@7cc
    move-object/from16 v0, p3

    #@7ce
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@7d1
    .line 709
    const/4 v6, 0x1

    #@7d2
    move-object/from16 v0, v98

    #@7d4
    move-object/from16 v1, p3

    #@7d6
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@7d9
    .line 714
    :goto_26
    const/4 v6, 0x1

    #@7da
    return v6

    #@7db
    .line 712
    :cond_26
    const/4 v6, 0x0

    #@7dc
    move-object/from16 v0, p3

    #@7de
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@7e1
    goto :goto_26

    #@7e2
    .line 718
    .end local v7    # "_arg0":I
    .end local v98    # "_result":Landroid/graphics/Rect;
    :sswitch_30
    const-string/jumbo v6, "android.view.IWindowManager"

    #@7e5
    move-object/from16 v0, p2

    #@7e7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ea
    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7ed
    move-result v7

    #@7ee
    .line 722
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f1
    move-result v8

    #@7f2
    .line 723
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@7f4
    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    #@7f7
    .line 724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7fa
    .line 725
    const/4 v6, 0x1

    #@7fb
    return v6

    #@7fc
    .line 729
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_31
    const-string/jumbo v6, "android.view.IWindowManager"

    #@7ff
    move-object/from16 v0, p2

    #@801
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@804
    .line 730
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    #@807
    .line 731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@80a
    .line 732
    const/4 v6, 0x1

    #@80b
    return v6

    #@80c
    .line 736
    :sswitch_32
    const-string/jumbo v6, "android.view.IWindowManager"

    #@80f
    move-object/from16 v0, p2

    #@811
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@814
    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@817
    move-result-object v32

    #@818
    .line 740
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@81b
    move-result-object v53

    #@81c
    .line 741
    .restart local v53    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@81e
    move-object/from16 v1, v32

    #@820
    move-object/from16 v2, v53

    #@822
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    #@825
    .line 742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@828
    .line 743
    const/4 v6, 0x1

    #@829
    return v6

    #@82a
    .line 747
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v53    # "_arg1":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v6, "android.view.IWindowManager"

    #@82d
    move-object/from16 v0, p2

    #@82f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@832
    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@835
    move-result-object v32

    #@836
    .line 750
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@838
    move-object/from16 v1, v32

    #@83a
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    #@83d
    .line 751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@840
    .line 752
    const/4 v6, 0x1

    #@841
    return v6

    #@842
    .line 756
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_34
    const-string/jumbo v6, "android.view.IWindowManager"

    #@845
    move-object/from16 v0, p2

    #@847
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84a
    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@84d
    move-result-object v6

    #@84e
    invoke-static {v6}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    #@851
    move-result-object v71

    #@852
    .line 759
    .local v71, "_arg0":Landroid/view/IOnKeyguardExitResult;
    move-object/from16 v0, p0

    #@854
    move-object/from16 v1, v71

    #@856
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    #@859
    .line 760
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@85c
    .line 761
    const/4 v6, 0x1

    #@85d
    return v6

    #@85e
    .line 765
    .end local v71    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :sswitch_35
    const-string/jumbo v6, "android.view.IWindowManager"

    #@861
    move-object/from16 v0, p2

    #@863
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@866
    .line 766
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    #@869
    move-result v101

    #@86a
    .line 767
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@86d
    .line 768
    if-eqz v101, :cond_27

    #@86f
    const/4 v6, 0x1

    #@870
    :goto_27
    move-object/from16 v0, p3

    #@872
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@875
    .line 769
    const/4 v6, 0x1

    #@876
    return v6

    #@877
    .line 768
    :cond_27
    const/4 v6, 0x0

    #@878
    goto :goto_27

    #@879
    .line 773
    .end local v101    # "_result":Z
    :sswitch_36
    const-string/jumbo v6, "android.view.IWindowManager"

    #@87c
    move-object/from16 v0, p2

    #@87e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@881
    .line 774
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    #@884
    move-result v101

    #@885
    .line 775
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@888
    .line 776
    if-eqz v101, :cond_28

    #@88a
    const/4 v6, 0x1

    #@88b
    :goto_28
    move-object/from16 v0, p3

    #@88d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@890
    .line 777
    const/4 v6, 0x1

    #@891
    return v6

    #@892
    .line 776
    :cond_28
    const/4 v6, 0x0

    #@893
    goto :goto_28

    #@894
    .line 781
    .end local v101    # "_result":Z
    :sswitch_37
    const-string/jumbo v6, "android.view.IWindowManager"

    #@897
    move-object/from16 v0, p2

    #@899
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@89c
    .line 782
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    #@89f
    move-result v101

    #@8a0
    .line 783
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a3
    .line 784
    if-eqz v101, :cond_29

    #@8a5
    const/4 v6, 0x1

    #@8a6
    :goto_29
    move-object/from16 v0, p3

    #@8a8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@8ab
    .line 785
    const/4 v6, 0x1

    #@8ac
    return v6

    #@8ad
    .line 784
    :cond_29
    const/4 v6, 0x0

    #@8ae
    goto :goto_29

    #@8af
    .line 789
    .end local v101    # "_result":Z
    :sswitch_38
    const-string/jumbo v6, "android.view.IWindowManager"

    #@8b2
    move-object/from16 v0, p2

    #@8b4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b7
    .line 790
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->dismissKeyguard()V

    #@8ba
    .line 791
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8bd
    .line 792
    const/4 v6, 0x1

    #@8be
    return v6

    #@8bf
    .line 796
    :sswitch_39
    const-string/jumbo v6, "android.view.IWindowManager"

    #@8c2
    move-object/from16 v0, p2

    #@8c4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c7
    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8ca
    move-result v7

    #@8cb
    .line 799
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@8cd
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->keyguardGoingAway(I)V

    #@8d0
    .line 800
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8d3
    .line 801
    const/4 v6, 0x1

    #@8d4
    return v6

    #@8d5
    .line 805
    .end local v7    # "_arg0":I
    :sswitch_3a
    const-string/jumbo v6, "android.view.IWindowManager"

    #@8d8
    move-object/from16 v0, p2

    #@8da
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8dd
    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8e0
    move-result-object v78

    #@8e1
    .line 808
    .restart local v78    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8e3
    move-object/from16 v1, v78

    #@8e5
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    #@8e8
    .line 809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8eb
    .line 810
    const/4 v6, 0x1

    #@8ec
    return v6

    #@8ed
    .line 814
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_3b
    const-string/jumbo v6, "android.view.IWindowManager"

    #@8f0
    move-object/from16 v0, p2

    #@8f2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8f5
    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8f8
    move-result v7

    #@8f9
    .line 817
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@8fb
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    #@8fe
    move-result v94

    #@8ff
    .line 818
    .local v94, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@902
    .line 819
    move-object/from16 v0, p3

    #@904
    move/from16 v1, v94

    #@906
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@909
    .line 820
    const/4 v6, 0x1

    #@90a
    return v6

    #@90b
    .line 824
    .end local v7    # "_arg0":I
    .end local v94    # "_result":F
    :sswitch_3c
    const-string/jumbo v6, "android.view.IWindowManager"

    #@90e
    move-object/from16 v0, p2

    #@910
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@913
    .line 825
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    #@916
    move-result-object v102

    #@917
    .line 826
    .local v102, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@91a
    .line 827
    move-object/from16 v0, p3

    #@91c
    move-object/from16 v1, v102

    #@91e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@921
    .line 828
    const/4 v6, 0x1

    #@922
    return v6

    #@923
    .line 832
    .end local v102    # "_result":[F
    :sswitch_3d
    const-string/jumbo v6, "android.view.IWindowManager"

    #@926
    move-object/from16 v0, p2

    #@928
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@92b
    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92e
    move-result v7

    #@92f
    .line 836
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@932
    move-result v82

    #@933
    .line 837
    .local v82, "_arg1":F
    move-object/from16 v0, p0

    #@935
    move/from16 v1, v82

    #@937
    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    #@93a
    .line 838
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@93d
    .line 839
    const/4 v6, 0x1

    #@93e
    return v6

    #@93f
    .line 843
    .end local v7    # "_arg0":I
    .end local v82    # "_arg1":F
    :sswitch_3e
    const-string/jumbo v6, "android.view.IWindowManager"

    #@942
    move-object/from16 v0, p2

    #@944
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@947
    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    #@94a
    move-result-object v80

    #@94b
    .line 846
    .local v80, "_arg0":[F
    move-object/from16 v0, p0

    #@94d
    move-object/from16 v1, v80

    #@94f
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    #@952
    .line 847
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@955
    .line 848
    const/4 v6, 0x1

    #@956
    return v6

    #@957
    .line 852
    .end local v80    # "_arg0":[F
    :sswitch_3f
    const-string/jumbo v6, "android.view.IWindowManager"

    #@95a
    move-object/from16 v0, p2

    #@95c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@95f
    .line 853
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    #@962
    move-result v94

    #@963
    .line 854
    .restart local v94    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@966
    .line 855
    move-object/from16 v0, p3

    #@968
    move/from16 v1, v94

    #@96a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@96d
    .line 856
    const/4 v6, 0x1

    #@96e
    return v6

    #@96f
    .line 860
    .end local v94    # "_result":F
    :sswitch_40
    const-string/jumbo v6, "android.view.IWindowManager"

    #@972
    move-object/from16 v0, p2

    #@974
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@977
    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@97a
    move-result v6

    #@97b
    if-eqz v6, :cond_2a

    #@97d
    const/16 v79, 0x1

    #@97f
    .line 863
    .restart local v79    # "_arg0":Z
    :goto_2a
    move-object/from16 v0, p0

    #@981
    move/from16 v1, v79

    #@983
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    #@986
    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@989
    .line 865
    const/4 v6, 0x1

    #@98a
    return v6

    #@98b
    .line 862
    .end local v79    # "_arg0":Z
    :cond_2a
    const/16 v79, 0x0

    #@98d
    goto :goto_2a

    #@98e
    .line 869
    :sswitch_41
    const-string/jumbo v6, "android.view.IWindowManager"

    #@991
    move-object/from16 v0, p2

    #@993
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@996
    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@999
    move-result v6

    #@99a
    if-eqz v6, :cond_2b

    #@99c
    const/16 v79, 0x1

    #@99e
    .line 872
    .restart local v79    # "_arg0":Z
    :goto_2b
    move-object/from16 v0, p0

    #@9a0
    move/from16 v1, v79

    #@9a2
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    #@9a5
    .line 873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9a8
    .line 874
    const/4 v6, 0x1

    #@9a9
    return v6

    #@9aa
    .line 871
    .end local v79    # "_arg0":Z
    :cond_2b
    const/16 v79, 0x0

    #@9ac
    goto :goto_2b

    #@9ad
    .line 878
    :sswitch_42
    const-string/jumbo v6, "android.view.IWindowManager"

    #@9b0
    move-object/from16 v0, p2

    #@9b2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b5
    .line 880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9b8
    move-result-object v78

    #@9b9
    .line 881
    .restart local v78    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9bb
    move-object/from16 v1, v78

    #@9bd
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    #@9c0
    .line 882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9c3
    .line 883
    const/4 v6, 0x1

    #@9c4
    return v6

    #@9c5
    .line 887
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_43
    const-string/jumbo v6, "android.view.IWindowManager"

    #@9c8
    move-object/from16 v0, p2

    #@9ca
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9cd
    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9d0
    move-result v7

    #@9d1
    .line 891
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9d4
    move-result v6

    #@9d5
    if-eqz v6, :cond_2c

    #@9d7
    const/16 v88, 0x1

    #@9d9
    .line 892
    .restart local v88    # "_arg1":Z
    :goto_2c
    move-object/from16 v0, p0

    #@9db
    move/from16 v1, v88

    #@9dd
    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->setScreenCaptureDisabled(IZ)V

    #@9e0
    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9e3
    .line 894
    const/4 v6, 0x1

    #@9e4
    return v6

    #@9e5
    .line 891
    .end local v88    # "_arg1":Z
    :cond_2c
    const/16 v88, 0x0

    #@9e7
    goto :goto_2c

    #@9e8
    .line 898
    .end local v7    # "_arg0":I
    :sswitch_44
    const-string/jumbo v6, "android.view.IWindowManager"

    #@9eb
    move-object/from16 v0, p2

    #@9ed
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9f0
    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9f3
    move-result v7

    #@9f4
    .line 901
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@9f6
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->cancelTaskWindowTransition(I)V

    #@9f9
    .line 902
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9fc
    .line 903
    const/4 v6, 0x1

    #@9fd
    return v6

    #@9fe
    .line 907
    .end local v7    # "_arg0":I
    :sswitch_45
    const-string/jumbo v6, "android.view.IWindowManager"

    #@a01
    move-object/from16 v0, p2

    #@a03
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a06
    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a09
    move-result v7

    #@a0a
    .line 910
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@a0c
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->cancelTaskThumbnailTransition(I)V

    #@a0f
    .line 911
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a12
    .line 912
    const/4 v6, 0x1

    #@a13
    return v6

    #@a14
    .line 916
    .end local v7    # "_arg0":I
    :sswitch_46
    const-string/jumbo v6, "android.view.IWindowManager"

    #@a17
    move-object/from16 v0, p2

    #@a19
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a1c
    .line 918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a1f
    move-result v6

    #@a20
    if-eqz v6, :cond_2d

    #@a22
    const/16 v79, 0x1

    #@a24
    .line 920
    .local v79, "_arg0":Z
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a27
    move-result v6

    #@a28
    if-eqz v6, :cond_2e

    #@a2a
    const/16 v88, 0x1

    #@a2c
    .line 921
    .restart local v88    # "_arg1":Z
    :goto_2e
    move-object/from16 v0, p0

    #@a2e
    move/from16 v1, v79

    #@a30
    move/from16 v2, v88

    #@a32
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    #@a35
    .line 922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a38
    .line 923
    const/4 v6, 0x1

    #@a39
    return v6

    #@a3a
    .line 918
    .end local v79    # "_arg0":Z
    .end local v88    # "_arg1":Z
    :cond_2d
    const/16 v79, 0x0

    #@a3c
    .restart local v79    # "_arg0":Z
    goto :goto_2d

    #@a3d
    .line 920
    :cond_2e
    const/16 v88, 0x0

    #@a3f
    goto :goto_2e

    #@a40
    .line 927
    .end local v79    # "_arg0":Z
    :sswitch_47
    const-string/jumbo v6, "android.view.IWindowManager"

    #@a43
    move-object/from16 v0, p2

    #@a45
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a48
    .line 928
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    #@a4b
    move-result v95

    #@a4c
    .line 929
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a4f
    .line 930
    move-object/from16 v0, p3

    #@a51
    move/from16 v1, v95

    #@a53
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a56
    .line 931
    const/4 v6, 0x1

    #@a57
    return v6

    #@a58
    .line 935
    .end local v95    # "_result":I
    :sswitch_48
    const-string/jumbo v6, "android.view.IWindowManager"

    #@a5b
    move-object/from16 v0, p2

    #@a5d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a60
    .line 937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a63
    move-result-object v6

    #@a64
    invoke-static {v6}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    #@a67
    move-result-object v72

    #@a68
    .line 938
    .local v72, "_arg0":Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    #@a6a
    move-object/from16 v1, v72

    #@a6c
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    #@a6f
    move-result v95

    #@a70
    .line 939
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a73
    .line 940
    move-object/from16 v0, p3

    #@a75
    move/from16 v1, v95

    #@a77
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a7a
    .line 941
    const/4 v6, 0x1

    #@a7b
    return v6

    #@a7c
    .line 945
    .end local v72    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v95    # "_result":I
    :sswitch_49
    const-string/jumbo v6, "android.view.IWindowManager"

    #@a7f
    move-object/from16 v0, p2

    #@a81
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a84
    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a87
    move-result-object v6

    #@a88
    invoke-static {v6}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    #@a8b
    move-result-object v72

    #@a8c
    .line 948
    .restart local v72    # "_arg0":Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    #@a8e
    move-object/from16 v1, v72

    #@a90
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    #@a93
    .line 949
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a96
    .line 950
    const/4 v6, 0x1

    #@a97
    return v6

    #@a98
    .line 954
    .end local v72    # "_arg0":Landroid/view/IRotationWatcher;
    :sswitch_4a
    const-string/jumbo v6, "android.view.IWindowManager"

    #@a9b
    move-object/from16 v0, p2

    #@a9d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aa0
    .line 955
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity()I

    #@aa3
    move-result v95

    #@aa4
    .line 956
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@aa7
    .line 957
    move-object/from16 v0, p3

    #@aa9
    move/from16 v1, v95

    #@aab
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@aae
    .line 958
    const/4 v6, 0x1

    #@aaf
    return v6

    #@ab0
    .line 962
    .end local v95    # "_result":I
    :sswitch_4b
    const-string/jumbo v6, "android.view.IWindowManager"

    #@ab3
    move-object/from16 v0, p2

    #@ab5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ab8
    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@abb
    move-result v7

    #@abc
    .line 965
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@abe
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    #@ac1
    .line 966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac4
    .line 967
    const/4 v6, 0x1

    #@ac5
    return v6

    #@ac6
    .line 971
    .end local v7    # "_arg0":I
    :sswitch_4c
    const-string/jumbo v6, "android.view.IWindowManager"

    #@ac9
    move-object/from16 v0, p2

    #@acb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ace
    .line 972
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    #@ad1
    .line 973
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ad4
    .line 974
    const/4 v6, 0x1

    #@ad5
    return v6

    #@ad6
    .line 978
    :sswitch_4d
    const-string/jumbo v6, "android.view.IWindowManager"

    #@ad9
    move-object/from16 v0, p2

    #@adb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ade
    .line 979
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    #@ae1
    move-result v101

    #@ae2
    .line 980
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ae5
    .line 981
    if-eqz v101, :cond_2f

    #@ae7
    const/4 v6, 0x1

    #@ae8
    :goto_2f
    move-object/from16 v0, p3

    #@aea
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@aed
    .line 982
    const/4 v6, 0x1

    #@aee
    return v6

    #@aef
    .line 981
    :cond_2f
    const/4 v6, 0x0

    #@af0
    goto :goto_2f

    #@af1
    .line 986
    .end local v101    # "_result":Z
    :sswitch_4e
    const-string/jumbo v6, "android.view.IWindowManager"

    #@af4
    move-object/from16 v0, p2

    #@af6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af9
    .line 987
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->screenshotWallpaper()Landroid/graphics/Bitmap;

    #@afc
    move-result-object v97

    #@afd
    .line 988
    .local v97, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b00
    .line 989
    if-eqz v97, :cond_30

    #@b02
    .line 990
    const/4 v6, 0x1

    #@b03
    move-object/from16 v0, p3

    #@b05
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b08
    .line 991
    const/4 v6, 0x1

    #@b09
    move-object/from16 v0, v97

    #@b0b
    move-object/from16 v1, p3

    #@b0d
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@b10
    .line 996
    :goto_30
    const/4 v6, 0x1

    #@b11
    return v6

    #@b12
    .line 994
    :cond_30
    const/4 v6, 0x0

    #@b13
    move-object/from16 v0, p3

    #@b15
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b18
    goto :goto_30

    #@b19
    .line 1000
    .end local v97    # "_result":Landroid/graphics/Bitmap;
    :sswitch_4f
    const-string/jumbo v6, "android.view.IWindowManager"

    #@b1c
    move-object/from16 v0, p2

    #@b1e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b21
    .line 1002
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b24
    move-result-object v6

    #@b25
    invoke-static {v6}, Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAssistScreenshotReceiver;

    #@b28
    move-result-object v75

    #@b29
    .line 1003
    .local v75, "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    move-object/from16 v0, p0

    #@b2b
    move-object/from16 v1, v75

    #@b2d
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z

    #@b30
    move-result v101

    #@b31
    .line 1004
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b34
    .line 1005
    if-eqz v101, :cond_31

    #@b36
    const/4 v6, 0x1

    #@b37
    :goto_31
    move-object/from16 v0, p3

    #@b39
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b3c
    .line 1006
    const/4 v6, 0x1

    #@b3d
    return v6

    #@b3e
    .line 1005
    :cond_31
    const/4 v6, 0x0

    #@b3f
    goto :goto_31

    #@b40
    .line 1010
    .end local v75    # "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    .end local v101    # "_result":Z
    :sswitch_50
    const-string/jumbo v6, "android.view.IWindowManager"

    #@b43
    move-object/from16 v0, p2

    #@b45
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b48
    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b4b
    move-result-object v32

    #@b4c
    .line 1014
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b4f
    move-result v8

    #@b50
    .line 1016
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b53
    move-result v9

    #@b54
    .line 1018
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b57
    move-result v10

    #@b58
    .line 1020
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@b5b
    move-result v49

    #@b5c
    .local v49, "_arg4":F
    move-object/from16 v44, p0

    #@b5e
    move-object/from16 v45, v32

    #@b60
    move/from16 v46, v8

    #@b62
    move/from16 v47, v9

    #@b64
    move/from16 v48, v10

    #@b66
    .line 1021
    invoke-virtual/range {v44 .. v49}, Landroid/view/IWindowManager$Stub;->screenshotApplications(Landroid/os/IBinder;IIIF)Landroid/graphics/Bitmap;

    #@b69
    move-result-object v97

    #@b6a
    .line 1022
    .restart local v97    # "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6d
    .line 1023
    if-eqz v97, :cond_32

    #@b6f
    .line 1024
    const/4 v6, 0x1

    #@b70
    move-object/from16 v0, p3

    #@b72
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b75
    .line 1025
    const/4 v6, 0x1

    #@b76
    move-object/from16 v0, v97

    #@b78
    move-object/from16 v1, p3

    #@b7a
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@b7d
    .line 1030
    :goto_32
    const/4 v6, 0x1

    #@b7e
    return v6

    #@b7f
    .line 1028
    :cond_32
    const/4 v6, 0x0

    #@b80
    move-object/from16 v0, p3

    #@b82
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b85
    goto :goto_32

    #@b86
    .line 1034
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v49    # "_arg4":F
    .end local v97    # "_result":Landroid/graphics/Bitmap;
    :sswitch_51
    const-string/jumbo v6, "android.view.IWindowManager"

    #@b89
    move-object/from16 v0, p2

    #@b8b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8e
    .line 1036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b91
    move-result v7

    #@b92
    .line 1037
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@b94
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    #@b97
    .line 1038
    const/4 v6, 0x1

    #@b98
    return v6

    #@b99
    .line 1042
    .end local v7    # "_arg0":I
    :sswitch_52
    const-string/jumbo v6, "android.view.IWindowManager"

    #@b9c
    move-object/from16 v0, p2

    #@b9e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ba1
    .line 1044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ba4
    move-result v6

    #@ba5
    if-eqz v6, :cond_33

    #@ba7
    const/16 v79, 0x1

    #@ba9
    .line 1045
    .local v79, "_arg0":Z
    :goto_33
    move-object/from16 v0, p0

    #@bab
    move/from16 v1, v79

    #@bad
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setRecentsVisibility(Z)V

    #@bb0
    .line 1046
    const/4 v6, 0x1

    #@bb1
    return v6

    #@bb2
    .line 1044
    .end local v79    # "_arg0":Z
    :cond_33
    const/16 v79, 0x0

    #@bb4
    goto :goto_33

    #@bb5
    .line 1050
    :sswitch_53
    const-string/jumbo v6, "android.view.IWindowManager"

    #@bb8
    move-object/from16 v0, p2

    #@bba
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bbd
    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bc0
    move-result v6

    #@bc1
    if-eqz v6, :cond_34

    #@bc3
    const/16 v79, 0x1

    #@bc5
    .line 1053
    .restart local v79    # "_arg0":Z
    :goto_34
    move-object/from16 v0, p0

    #@bc7
    move/from16 v1, v79

    #@bc9
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setTvPipVisibility(Z)V

    #@bcc
    .line 1054
    const/4 v6, 0x1

    #@bcd
    return v6

    #@bce
    .line 1052
    .end local v79    # "_arg0":Z
    :cond_34
    const/16 v79, 0x0

    #@bd0
    goto :goto_34

    #@bd1
    .line 1058
    :sswitch_54
    const-string/jumbo v6, "android.view.IWindowManager"

    #@bd4
    move-object/from16 v0, p2

    #@bd6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bd9
    .line 1059
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar()Z

    #@bdc
    move-result v101

    #@bdd
    .line 1060
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@be0
    .line 1061
    if-eqz v101, :cond_35

    #@be2
    const/4 v6, 0x1

    #@be3
    :goto_35
    move-object/from16 v0, p3

    #@be5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@be8
    .line 1062
    const/4 v6, 0x1

    #@be9
    return v6

    #@bea
    .line 1061
    :cond_35
    const/4 v6, 0x0

    #@beb
    goto :goto_35

    #@bec
    .line 1066
    .end local v101    # "_result":Z
    :sswitch_55
    const-string/jumbo v6, "android.view.IWindowManager"

    #@bef
    move-object/from16 v0, p2

    #@bf1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bf4
    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bf7
    move-result v6

    #@bf8
    if-eqz v6, :cond_36

    #@bfa
    .line 1069
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bfc
    move-object/from16 v0, p2

    #@bfe
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c01
    move-result-object v67

    #@c02
    check-cast v67, Landroid/os/Bundle;

    #@c04
    .line 1074
    :goto_36
    move-object/from16 v0, p0

    #@c06
    move-object/from16 v1, v67

    #@c08
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    #@c0b
    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c0e
    .line 1076
    const/4 v6, 0x1

    #@c0f
    return v6

    #@c10
    .line 1072
    :cond_36
    const/16 v67, 0x0

    #@c12
    .local v67, "_arg0":Landroid/os/Bundle;
    goto :goto_36

    #@c13
    .line 1080
    .end local v67    # "_arg0":Landroid/os/Bundle;
    :sswitch_56
    const-string/jumbo v6, "android.view.IWindowManager"

    #@c16
    move-object/from16 v0, p2

    #@c18
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c1b
    .line 1081
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    #@c1e
    move-result v101

    #@c1f
    .line 1082
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c22
    .line 1083
    if-eqz v101, :cond_37

    #@c24
    const/4 v6, 0x1

    #@c25
    :goto_37
    move-object/from16 v0, p3

    #@c27
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@c2a
    .line 1084
    const/4 v6, 0x1

    #@c2b
    return v6

    #@c2c
    .line 1083
    :cond_37
    const/4 v6, 0x0

    #@c2d
    goto :goto_37

    #@c2e
    .line 1088
    .end local v101    # "_result":Z
    :sswitch_57
    const-string/jumbo v6, "android.view.IWindowManager"

    #@c31
    move-object/from16 v0, p2

    #@c33
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c36
    .line 1089
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    #@c39
    .line 1090
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c3c
    .line 1091
    const/4 v6, 0x1

    #@c3d
    return v6

    #@c3e
    .line 1095
    :sswitch_58
    const-string/jumbo v6, "android.view.IWindowManager"

    #@c41
    move-object/from16 v0, p2

    #@c43
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c46
    .line 1097
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c49
    move-result-object v32

    #@c4a
    .line 1098
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@c4c
    move-object/from16 v1, v32

    #@c4e
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    #@c51
    move-result v101

    #@c52
    .line 1099
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c55
    .line 1100
    if-eqz v101, :cond_38

    #@c57
    const/4 v6, 0x1

    #@c58
    :goto_38
    move-object/from16 v0, p3

    #@c5a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@c5d
    .line 1101
    const/4 v6, 0x1

    #@c5e
    return v6

    #@c5f
    .line 1100
    :cond_38
    const/4 v6, 0x0

    #@c60
    goto :goto_38

    #@c61
    .line 1105
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v101    # "_result":Z
    :sswitch_59
    const-string/jumbo v6, "android.view.IWindowManager"

    #@c64
    move-object/from16 v0, p2

    #@c66
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c69
    .line 1107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c6c
    move-result-object v32

    #@c6d
    .line 1108
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@c6f
    move-object/from16 v1, v32

    #@c71
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    #@c74
    move-result-object v100

    #@c75
    .line 1109
    .local v100, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c78
    .line 1110
    if-eqz v100, :cond_39

    #@c7a
    .line 1111
    const/4 v6, 0x1

    #@c7b
    move-object/from16 v0, p3

    #@c7d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@c80
    .line 1112
    const/4 v6, 0x1

    #@c81
    move-object/from16 v0, v100

    #@c83
    move-object/from16 v1, p3

    #@c85
    invoke-virtual {v0, v1, v6}, Landroid/view/WindowContentFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@c88
    .line 1117
    :goto_39
    const/4 v6, 0x1

    #@c89
    return v6

    #@c8a
    .line 1115
    :cond_39
    const/4 v6, 0x0

    #@c8b
    move-object/from16 v0, p3

    #@c8d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@c90
    goto :goto_39

    #@c91
    .line 1121
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v100    # "_result":Landroid/view/WindowContentFrameStats;
    :sswitch_5a
    const-string/jumbo v6, "android.view.IWindowManager"

    #@c94
    move-object/from16 v0, p2

    #@c96
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c99
    .line 1122
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    #@c9c
    move-result v95

    #@c9d
    .line 1123
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ca0
    .line 1124
    move-object/from16 v0, p3

    #@ca2
    move/from16 v1, v95

    #@ca4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ca7
    .line 1125
    const/4 v6, 0x1

    #@ca8
    return v6

    #@ca9
    .line 1129
    .end local v95    # "_result":I
    :sswitch_5b
    const-string/jumbo v6, "android.view.IWindowManager"

    #@cac
    move-object/from16 v0, p2

    #@cae
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cb1
    .line 1131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cb4
    move-result v6

    #@cb5
    if-eqz v6, :cond_3a

    #@cb7
    const/16 v79, 0x1

    #@cb9
    .line 1132
    .restart local v79    # "_arg0":Z
    :goto_3a
    move-object/from16 v0, p0

    #@cbb
    move/from16 v1, v79

    #@cbd
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setDockedStackResizing(Z)V

    #@cc0
    .line 1133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cc3
    .line 1134
    const/4 v6, 0x1

    #@cc4
    return v6

    #@cc5
    .line 1131
    .end local v79    # "_arg0":Z
    :cond_3a
    const/16 v79, 0x0

    #@cc7
    goto :goto_3a

    #@cc8
    .line 1138
    :sswitch_5c
    const-string/jumbo v6, "android.view.IWindowManager"

    #@ccb
    move-object/from16 v0, p2

    #@ccd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cd0
    .line 1140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cd3
    move-result v6

    #@cd4
    if-eqz v6, :cond_3b

    #@cd6
    .line 1141
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cd8
    move-object/from16 v0, p2

    #@cda
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cdd
    move-result-object v66

    #@cde
    check-cast v66, Landroid/graphics/Rect;

    #@ce0
    .line 1146
    :goto_3b
    move-object/from16 v0, p0

    #@ce2
    move-object/from16 v1, v66

    #@ce4
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V

    #@ce7
    .line 1147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cea
    .line 1148
    const/4 v6, 0x1

    #@ceb
    return v6

    #@cec
    .line 1144
    :cond_3b
    const/16 v66, 0x0

    #@cee
    .local v66, "_arg0":Landroid/graphics/Rect;
    goto :goto_3b

    #@cef
    .line 1152
    .end local v66    # "_arg0":Landroid/graphics/Rect;
    :sswitch_5d
    const-string/jumbo v6, "android.view.IWindowManager"

    #@cf2
    move-object/from16 v0, p2

    #@cf4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cf7
    .line 1154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@cfa
    move-result-object v6

    #@cfb
    invoke-static {v6}, Landroid/view/IDockedStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDockedStackListener;

    #@cfe
    move-result-object v70

    #@cff
    .line 1155
    .local v70, "_arg0":Landroid/view/IDockedStackListener;
    move-object/from16 v0, p0

    #@d01
    move-object/from16 v1, v70

    #@d03
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    #@d06
    .line 1156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d09
    .line 1157
    const/4 v6, 0x1

    #@d0a
    return v6

    #@d0b
    .line 1161
    .end local v70    # "_arg0":Landroid/view/IDockedStackListener;
    :sswitch_5e
    const-string/jumbo v6, "android.view.IWindowManager"

    #@d0e
    move-object/from16 v0, p2

    #@d10
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d13
    .line 1163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d16
    move-result v6

    #@d17
    if-eqz v6, :cond_3c

    #@d19
    const/16 v79, 0x1

    #@d1b
    .line 1165
    .local v79, "_arg0":Z
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d1e
    move-result v8

    #@d1f
    .line 1167
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@d22
    move-result v89

    #@d23
    .line 1168
    .local v89, "_arg2":F
    move-object/from16 v0, p0

    #@d25
    move/from16 v1, v79

    #@d27
    move/from16 v2, v89

    #@d29
    invoke-virtual {v0, v1, v8, v2}, Landroid/view/IWindowManager$Stub;->setResizeDimLayer(ZIF)V

    #@d2c
    .line 1169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d2f
    .line 1170
    const/4 v6, 0x1

    #@d30
    return v6

    #@d31
    .line 1163
    .end local v8    # "_arg1":I
    .end local v79    # "_arg0":Z
    .end local v89    # "_arg2":F
    :cond_3c
    const/16 v79, 0x0

    #@d33
    .restart local v79    # "_arg0":Z
    goto :goto_3c

    #@d34
    .line 1174
    .end local v79    # "_arg0":Z
    :sswitch_5f
    const-string/jumbo v6, "android.view.IWindowManager"

    #@d37
    move-object/from16 v0, p2

    #@d39
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d3c
    .line 1176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d3f
    move-result-object v6

    #@d40
    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    #@d43
    move-result-object v76

    #@d44
    .line 1178
    .local v76, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d47
    move-result v8

    #@d48
    .line 1179
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@d4a
    move-object/from16 v1, v76

    #@d4c
    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    #@d4f
    .line 1180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d52
    .line 1181
    const/4 v6, 0x1

    #@d53
    return v6

    #@d54
    .line 1185
    .end local v8    # "_arg1":I
    .end local v76    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :sswitch_60
    const-string/jumbo v6, "android.view.IWindowManager"

    #@d57
    move-object/from16 v0, p2

    #@d59
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d5c
    .line 1187
    new-instance v66, Landroid/graphics/Rect;

    #@d5e
    invoke-direct/range {v66 .. v66}, Landroid/graphics/Rect;-><init>()V

    #@d61
    .line 1188
    .local v66, "_arg0":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@d63
    move-object/from16 v1, v66

    #@d65
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getStableInsets(Landroid/graphics/Rect;)V

    #@d68
    .line 1189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d6b
    .line 1190
    if-eqz v66, :cond_3d

    #@d6d
    .line 1191
    const/4 v6, 0x1

    #@d6e
    move-object/from16 v0, p3

    #@d70
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@d73
    .line 1192
    const/4 v6, 0x1

    #@d74
    move-object/from16 v0, v66

    #@d76
    move-object/from16 v1, p3

    #@d78
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@d7b
    .line 1197
    :goto_3d
    const/4 v6, 0x1

    #@d7c
    return v6

    #@d7d
    .line 1195
    :cond_3d
    const/4 v6, 0x0

    #@d7e
    move-object/from16 v0, p3

    #@d80
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@d83
    goto :goto_3d

    #@d84
    .line 1201
    .end local v66    # "_arg0":Landroid/graphics/Rect;
    :sswitch_61
    const-string/jumbo v6, "android.view.IWindowManager"

    #@d87
    move-object/from16 v0, p2

    #@d89
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d8c
    .line 1203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@d8f
    move-result-wide v64

    #@d90
    .line 1205
    .local v64, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d93
    move-result-object v6

    #@d94
    invoke-static {v6}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    #@d97
    move-result-object v86

    #@d98
    .line 1206
    .local v86, "_arg1":Lcom/android/internal/policy/IShortcutService;
    move-object/from16 v0, p0

    #@d9a
    move-wide/from16 v1, v64

    #@d9c
    move-object/from16 v3, v86

    #@d9e
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    #@da1
    .line 1207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@da4
    .line 1208
    const/4 v6, 0x1

    #@da5
    return v6

    #@da6
    .line 1212
    .end local v64    # "_arg0":J
    .end local v86    # "_arg1":Lcom/android/internal/policy/IShortcutService;
    :sswitch_62
    const-string/jumbo v6, "android.view.IWindowManager"

    #@da9
    move-object/from16 v0, p2

    #@dab
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dae
    .line 1214
    new-instance v74, Landroid/view/InputChannel;

    #@db0
    invoke-direct/range {v74 .. v74}, Landroid/view/InputChannel;-><init>()V

    #@db3
    .line 1215
    .local v74, "_arg0":Landroid/view/InputChannel;
    move-object/from16 v0, p0

    #@db5
    move-object/from16 v1, v74

    #@db7
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->createWallpaperInputConsumer(Landroid/view/InputChannel;)V

    #@dba
    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dbd
    .line 1217
    if-eqz v74, :cond_3e

    #@dbf
    .line 1218
    const/4 v6, 0x1

    #@dc0
    move-object/from16 v0, p3

    #@dc2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@dc5
    .line 1219
    const/4 v6, 0x1

    #@dc6
    move-object/from16 v0, v74

    #@dc8
    move-object/from16 v1, p3

    #@dca
    invoke-virtual {v0, v1, v6}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    #@dcd
    .line 1224
    :goto_3e
    const/4 v6, 0x1

    #@dce
    return v6

    #@dcf
    .line 1222
    :cond_3e
    const/4 v6, 0x0

    #@dd0
    move-object/from16 v0, p3

    #@dd2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@dd5
    goto :goto_3e

    #@dd6
    .line 1228
    .end local v74    # "_arg0":Landroid/view/InputChannel;
    :sswitch_63
    const-string/jumbo v6, "android.view.IWindowManager"

    #@dd9
    move-object/from16 v0, p2

    #@ddb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dde
    .line 1229
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->removeWallpaperInputConsumer()V

    #@de1
    .line 1230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@de4
    .line 1231
    const/4 v6, 0x1

    #@de5
    return v6

    #@de6
    .line 43
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
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
