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

.field static final TRANSACTION_cancelTaskThumbnailTransition:I = 0x44

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0x43

.field static final TRANSACTION_clearForcedDisplayDensity:I = 0xd

.field static final TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x54

.field static final TRANSACTION_closeSystemDialogs:I = 0x39

.field static final TRANSACTION_createWallpaperInputConsumer:I = 0x5e

.field static final TRANSACTION_disableKeyguard:I = 0x31

.field static final TRANSACTION_dismissKeyguard:I = 0x37

.field static final TRANSACTION_enableScreenIfNeeded:I = 0x53

.field static final TRANSACTION_endProlongedAnimations:I = 0x2b

.field static final TRANSACTION_executeAppTransition:I = 0x24

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x33

.field static final TRANSACTION_freezeRotation:I = 0x4a

.field static final TRANSACTION_getAnimationScale:I = 0x3a

.field static final TRANSACTION_getAnimationScales:I = 0x3b

.field static final TRANSACTION_getAppOrientation:I = 0x18

.field static final TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final TRANSACTION_getBoundsForNewConfiguration:I = 0x2e

.field static final TRANSACTION_getCurrentAnimatorScale:I = 0x3e

.field static final TRANSACTION_getDockedStackSide:I = 0x56

.field static final TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final TRANSACTION_getPendingAppTransition:I = 0x1b

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x49

.field static final TRANSACTION_getRotation:I = 0x46

.field static final TRANSACTION_getStableInsets:I = 0x5c

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x55

.field static final TRANSACTION_hasNavigationBar:I = 0x50

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x36

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isKeyguardLocked:I = 0x34

.field static final TRANSACTION_isKeyguardSecure:I = 0x35

.field static final TRANSACTION_isRotationFrozen:I = 0x4c

.field static final TRANSACTION_isSafeModeEnabled:I = 0x52

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_keyguardGoingAway:I = 0x38

.field static final TRANSACTION_lockNow:I = 0x51

.field static final TRANSACTION_notifyAppStopped:I = 0x27

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

.field static final TRANSACTION_reenableKeyguard:I = 0x32

.field static final TRANSACTION_registerDockedStackListener:I = 0x59

.field static final TRANSACTION_registerShortcutKey:I = 0x5d

.field static final TRANSACTION_removeAppToken:I = 0x2a

.field static final TRANSACTION_removeRotationWatcher:I = 0x48

.field static final TRANSACTION_removeWallpaperInputConsumer:I = 0x5f

.field static final TRANSACTION_removeWindowToken:I = 0x14

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0x5b

.field static final TRANSACTION_requestAssistScreenshot:I = 0x4d

.field static final TRANSACTION_resumeKeyDispatching:I = 0x11

.field static final TRANSACTION_screenshotApplications:I = 0x4e

.field static final TRANSACTION_setAnimationScale:I = 0x3c

.field static final TRANSACTION_setAnimationScales:I = 0x3d

.field static final TRANSACTION_setAppOrientation:I = 0x17

.field static final TRANSACTION_setAppStartingWindow:I = 0x25

.field static final TRANSACTION_setAppTask:I = 0x16

.field static final TRANSACTION_setAppVisibility:I = 0x26

.field static final TRANSACTION_setDockedStackDividerTouchRegion:I = 0x58

.field static final TRANSACTION_setDockedStackResizing:I = 0x57

.field static final TRANSACTION_setEventDispatching:I = 0x12

.field static final TRANSACTION_setFocusedApp:I = 0x19

.field static final TRANSACTION_setForcedDisplayDensity:I = 0xc

.field static final TRANSACTION_setForcedDisplayScalingMode:I = 0xe

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setInTouchMode:I = 0x3f

.field static final TRANSACTION_setNewConfiguration:I = 0x2d

.field static final TRANSACTION_setOverscan:I = 0xf

.field static final TRANSACTION_setResizeDimLayer:I = 0x5a

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x42

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x41

.field static final TRANSACTION_showStrictModeViolation:I = 0x40

.field static final TRANSACTION_startAppFreezingScreen:I = 0x28

.field static final TRANSACTION_startFreezingScreen:I = 0x2f

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x4f

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x29

.field static final TRANSACTION_stopFreezingScreen:I = 0x30

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_thawRotation:I = 0x4b

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x2c

.field static final TRANSACTION_updateRotation:I = 0x45

.field static final TRANSACTION_watchRotation:I = 0x47


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
    .locals 103
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
    .line 1187
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
    move-result v100

    #@24
    .line 56
    .local v100, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    .line 57
    if-eqz v100, :cond_0

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
    .end local v100    # "_result":Z
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
    move-result v100

    #@3f
    .line 64
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@42
    .line 65
    if-eqz v100, :cond_1

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
    .end local v100    # "_result":Z
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
    move-result v100

    #@5a
    .line 72
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d
    .line 73
    if-eqz v100, :cond_2

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
    .end local v100    # "_result":Z
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
    move-result-object v72

    #@79
    .line 82
    .local v72, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7c
    move-result-object v6

    #@7d
    invoke-static {v6}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@80
    move-result-object v86

    #@81
    .line 84
    .local v86, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@84
    move-result-object v6

    #@85
    invoke-static {v6}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    #@88
    move-result-object v90

    #@89
    .line 85
    .local v90, "_arg2":Lcom/android/internal/view/IInputContext;
    move-object/from16 v0, p0

    #@8b
    move-object/from16 v1, v72

    #@8d
    move-object/from16 v2, v86

    #@8f
    move-object/from16 v3, v90

    #@91
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    #@94
    move-result-object v98

    #@95
    .line 86
    .local v98, "_result":Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@98
    .line 87
    if-eqz v98, :cond_3

    #@9a
    invoke-interface/range {v98 .. v98}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

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
    .end local v72    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v86    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v90    # "_arg2":Lcom/android/internal/view/IInputContext;
    .end local v98    # "_result":Landroid/view/IWindowSession;
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
    move-result-object v76

    #@b7
    .line 95
    .local v76, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    #@b9
    move-object/from16 v1, v76

    #@bb
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    #@be
    move-result v100

    #@bf
    .line 96
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c2
    .line 97
    if-eqz v100, :cond_4

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
    .end local v76    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v100    # "_result":Z
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
    new-instance v82, Landroid/graphics/Point;

    #@dc
    invoke-direct/range {v82 .. v82}, Landroid/graphics/Point;-><init>()V

    #@df
    .line 107
    .local v82, "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    #@e1
    move-object/from16 v1, v82

    #@e3
    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    #@e6
    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e9
    .line 109
    if-eqz v82, :cond_5

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
    move-object/from16 v0, v82

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
    .end local v82    # "_arg1":Landroid/graphics/Point;
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
    new-instance v82, Landroid/graphics/Point;

    #@110
    invoke-direct/range {v82 .. v82}, Landroid/graphics/Point;-><init>()V

    #@113
    .line 125
    .restart local v82    # "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    #@115
    move-object/from16 v1, v82

    #@117
    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    #@11a
    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11d
    .line 127
    if-eqz v82, :cond_6

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
    move-object/from16 v0, v82

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
    .end local v82    # "_arg1":Landroid/graphics/Point;
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
    move-result v94

    #@17c
    .line 164
    .local v94, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17f
    .line 165
    move-object/from16 v0, p3

    #@181
    move/from16 v1, v94

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
    .end local v94    # "_result":I
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
    move-result v94

    #@19a
    .line 174
    .restart local v94    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19d
    .line 175
    move-object/from16 v0, p3

    #@19f
    move/from16 v1, v94

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
    .end local v94    # "_result":I
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
    .line 185
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@1b8
    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensity(II)V

    #@1bb
    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1be
    .line 187
    const/4 v6, 0x1

    #@1bf
    return v6

    #@1c0
    .line 191
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_d
    const-string/jumbo v6, "android.view.IWindowManager"

    #@1c3
    move-object/from16 v0, p2

    #@1c5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c8
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cb
    move-result v7

    #@1cc
    .line 194
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@1ce
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensity(I)V

    #@1d1
    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d4
    .line 196
    const/4 v6, 0x1

    #@1d5
    return v6

    #@1d6
    .line 200
    .end local v7    # "_arg0":I
    :sswitch_e
    const-string/jumbo v6, "android.view.IWindowManager"

    #@1d9
    move-object/from16 v0, p2

    #@1db
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1de
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e1
    move-result v7

    #@1e2
    .line 204
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e5
    move-result v8

    #@1e6
    .line 205
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@1e8
    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    #@1eb
    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ee
    .line 207
    const/4 v6, 0x1

    #@1ef
    return v6

    #@1f0
    .line 211
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_f
    const-string/jumbo v6, "android.view.IWindowManager"

    #@1f3
    move-object/from16 v0, p2

    #@1f5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f8
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fb
    move-result v7

    #@1fc
    .line 215
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ff
    move-result v8

    #@200
    .line 217
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@203
    move-result v9

    #@204
    .line 219
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@207
    move-result v10

    #@208
    .line 221
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20b
    move-result v11

    #@20c
    .local v11, "_arg4":I
    move-object/from16 v6, p0

    #@20e
    .line 222
    invoke-virtual/range {v6 .. v11}, Landroid/view/IWindowManager$Stub;->setOverscan(IIIII)V

    #@211
    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@214
    .line 224
    const/4 v6, 0x1

    #@215
    return v6

    #@216
    .line 228
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :sswitch_10
    const-string/jumbo v6, "android.view.IWindowManager"

    #@219
    move-object/from16 v0, p2

    #@21b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21e
    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@221
    move-result-object v31

    #@222
    .line 231
    .local v31, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@224
    move-object/from16 v1, v31

    #@226
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    #@229
    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22c
    .line 233
    const/4 v6, 0x1

    #@22d
    return v6

    #@22e
    .line 237
    .end local v31    # "_arg0":Landroid/os/IBinder;
    :sswitch_11
    const-string/jumbo v6, "android.view.IWindowManager"

    #@231
    move-object/from16 v0, p2

    #@233
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@236
    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@239
    move-result-object v31

    #@23a
    .line 240
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@23c
    move-object/from16 v1, v31

    #@23e
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    #@241
    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@244
    .line 242
    const/4 v6, 0x1

    #@245
    return v6

    #@246
    .line 246
    .end local v31    # "_arg0":Landroid/os/IBinder;
    :sswitch_12
    const-string/jumbo v6, "android.view.IWindowManager"

    #@249
    move-object/from16 v0, p2

    #@24b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24e
    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@251
    move-result v6

    #@252
    if-eqz v6, :cond_7

    #@254
    const/16 v78, 0x1

    #@256
    .line 249
    .local v78, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    #@258
    move/from16 v1, v78

    #@25a
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    #@25d
    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@260
    .line 251
    const/4 v6, 0x1

    #@261
    return v6

    #@262
    .line 248
    .end local v78    # "_arg0":Z
    :cond_7
    const/16 v78, 0x0

    #@264
    goto :goto_7

    #@265
    .line 255
    :sswitch_13
    const-string/jumbo v6, "android.view.IWindowManager"

    #@268
    move-object/from16 v0, p2

    #@26a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26d
    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@270
    move-result-object v31

    #@271
    .line 259
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@274
    move-result v8

    #@275
    .line 260
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@277
    move-object/from16 v1, v31

    #@279
    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    #@27c
    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27f
    .line 262
    const/4 v6, 0x1

    #@280
    return v6

    #@281
    .line 266
    .end local v8    # "_arg1":I
    .end local v31    # "_arg0":Landroid/os/IBinder;
    :sswitch_14
    const-string/jumbo v6, "android.view.IWindowManager"

    #@284
    move-object/from16 v0, p2

    #@286
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@289
    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@28c
    move-result-object v31

    #@28d
    .line 269
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@28f
    move-object/from16 v1, v31

    #@291
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    #@294
    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@297
    .line 271
    const/4 v6, 0x1

    #@298
    return v6

    #@299
    .line 275
    .end local v31    # "_arg0":Landroid/os/IBinder;
    :sswitch_15
    const-string/jumbo v6, "android.view.IWindowManager"

    #@29c
    move-object/from16 v0, p2

    #@29e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a1
    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a4
    move-result v7

    #@2a5
    .line 279
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a8
    move-result-object v6

    #@2a9
    invoke-static {v6}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    #@2ac
    move-result-object v14

    #@2ad
    .line 281
    .local v14, "_arg1":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b0
    move-result v9

    #@2b1
    .line 283
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b4
    move-result v10

    #@2b5
    .line 285
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b8
    move-result v11

    #@2b9
    .line 287
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2bc
    move-result v6

    #@2bd
    if-eqz v6, :cond_8

    #@2bf
    const/16 v18, 0x1

    #@2c1
    .line 289
    .local v18, "_arg5":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c4
    move-result v6

    #@2c5
    if-eqz v6, :cond_9

    #@2c7
    const/16 v19, 0x1

    #@2c9
    .line 291
    .local v19, "_arg6":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cc
    move-result v20

    #@2cd
    .line 293
    .local v20, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d0
    move-result v21

    #@2d1
    .line 295
    .local v21, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d4
    move-result v6

    #@2d5
    if-eqz v6, :cond_a

    #@2d7
    const/16 v22, 0x1

    #@2d9
    .line 297
    .local v22, "_arg9":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2dc
    move-result v6

    #@2dd
    if-eqz v6, :cond_b

    #@2df
    const/16 v23, 0x1

    #@2e1
    .line 299
    .local v23, "_arg10":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e4
    move-result v6

    #@2e5
    if-eqz v6, :cond_c

    #@2e7
    .line 300
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e9
    move-object/from16 v0, p2

    #@2eb
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2ee
    move-result-object v24

    #@2ef
    check-cast v24, Landroid/graphics/Rect;

    #@2f1
    .line 306
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f4
    move-result v6

    #@2f5
    if-eqz v6, :cond_d

    #@2f7
    .line 307
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f9
    move-object/from16 v0, p2

    #@2fb
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2fe
    move-result-object v25

    #@2ff
    check-cast v25, Landroid/content/res/Configuration;

    #@301
    .line 313
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@304
    move-result v26

    #@305
    .line 315
    .local v26, "_arg13":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@308
    move-result v6

    #@309
    if-eqz v6, :cond_e

    #@30b
    const/16 v27, 0x1

    #@30d
    .line 317
    .local v27, "_arg14":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@310
    move-result v6

    #@311
    if-eqz v6, :cond_f

    #@313
    const/16 v28, 0x1

    #@315
    .line 319
    .local v28, "_arg15":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@318
    move-result v29

    #@319
    .local v29, "_arg16":I
    move-object/from16 v12, p0

    #@31b
    move v13, v7

    #@31c
    move v15, v9

    #@31d
    move/from16 v16, v10

    #@31f
    move/from16 v17, v11

    #@321
    .line 320
    invoke-virtual/range {v12 .. v29}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLandroid/graphics/Rect;Landroid/content/res/Configuration;IZZI)V

    #@324
    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@327
    .line 322
    const/4 v6, 0x1

    #@328
    return v6

    #@329
    .line 287
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
    :cond_8
    const/16 v18, 0x0

    #@32b
    .restart local v18    # "_arg5":Z
    goto :goto_8

    #@32c
    .line 289
    :cond_9
    const/16 v19, 0x0

    #@32e
    .restart local v19    # "_arg6":Z
    goto :goto_9

    #@32f
    .line 295
    .restart local v20    # "_arg7":I
    .restart local v21    # "_arg8":I
    :cond_a
    const/16 v22, 0x0

    #@331
    .restart local v22    # "_arg9":Z
    goto :goto_a

    #@332
    .line 297
    :cond_b
    const/16 v23, 0x0

    #@334
    .restart local v23    # "_arg10":Z
    goto :goto_b

    #@335
    .line 303
    :cond_c
    const/16 v24, 0x0

    #@337
    .local v24, "_arg11":Landroid/graphics/Rect;
    goto :goto_c

    #@338
    .line 310
    .end local v24    # "_arg11":Landroid/graphics/Rect;
    :cond_d
    const/16 v25, 0x0

    #@33a
    .local v25, "_arg12":Landroid/content/res/Configuration;
    goto :goto_d

    #@33b
    .line 315
    .end local v25    # "_arg12":Landroid/content/res/Configuration;
    .restart local v26    # "_arg13":I
    :cond_e
    const/16 v27, 0x0

    #@33d
    .restart local v27    # "_arg14":Z
    goto :goto_e

    #@33e
    .line 317
    :cond_f
    const/16 v28, 0x0

    #@340
    .restart local v28    # "_arg15":Z
    goto :goto_f

    #@341
    .line 326
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

    #@344
    move-object/from16 v0, p2

    #@346
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@349
    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@34c
    move-result-object v31

    #@34d
    .line 330
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@350
    move-result v8

    #@351
    .line 332
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@354
    move-result v9

    #@355
    .line 334
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@358
    move-result v6

    #@359
    if-eqz v6, :cond_10

    #@35b
    .line 335
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@35d
    move-object/from16 v0, p2

    #@35f
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@362
    move-result-object v34

    #@363
    check-cast v34, Landroid/graphics/Rect;

    #@365
    .line 341
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@368
    move-result v6

    #@369
    if-eqz v6, :cond_11

    #@36b
    .line 342
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@36d
    move-object/from16 v0, p2

    #@36f
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@372
    move-result-object v35

    #@373
    check-cast v35, Landroid/content/res/Configuration;

    #@375
    .line 348
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@378
    move-result v36

    #@379
    .line 350
    .local v36, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37c
    move-result v6

    #@37d
    if-eqz v6, :cond_12

    #@37f
    const/16 v19, 0x1

    #@381
    .local v19, "_arg6":Z
    :goto_12
    move-object/from16 v30, p0

    #@383
    move/from16 v32, v8

    #@385
    move/from16 v33, v9

    #@387
    move/from16 v37, v19

    #@389
    .line 351
    invoke-virtual/range {v30 .. v37}, Landroid/view/IWindowManager$Stub;->setAppTask(Landroid/os/IBinder;IILandroid/graphics/Rect;Landroid/content/res/Configuration;IZ)V

    #@38c
    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38f
    .line 353
    const/4 v6, 0x1

    #@390
    return v6

    #@391
    .line 338
    .end local v19    # "_arg6":Z
    .end local v36    # "_arg5":I
    :cond_10
    const/16 v34, 0x0

    #@393
    .local v34, "_arg3":Landroid/graphics/Rect;
    goto :goto_10

    #@394
    .line 345
    .end local v34    # "_arg3":Landroid/graphics/Rect;
    :cond_11
    const/16 v35, 0x0

    #@396
    .local v35, "_arg4":Landroid/content/res/Configuration;
    goto :goto_11

    #@397
    .line 350
    .end local v35    # "_arg4":Landroid/content/res/Configuration;
    .restart local v36    # "_arg5":I
    :cond_12
    const/16 v19, 0x0

    #@399
    goto :goto_12

    #@39a
    .line 357
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v31    # "_arg0":Landroid/os/IBinder;
    .end local v36    # "_arg5":I
    :sswitch_17
    const-string/jumbo v6, "android.view.IWindowManager"

    #@39d
    move-object/from16 v0, p2

    #@39f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a2
    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3a5
    move-result-object v6

    #@3a6
    invoke-static {v6}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    #@3a9
    move-result-object v68

    #@3aa
    .line 361
    .local v68, "_arg0":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ad
    move-result v8

    #@3ae
    .line 362
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@3b0
    move-object/from16 v1, v68

    #@3b2
    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    #@3b5
    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b8
    .line 364
    const/4 v6, 0x1

    #@3b9
    return v6

    #@3ba
    .line 368
    .end local v8    # "_arg1":I
    .end local v68    # "_arg0":Landroid/view/IApplicationToken;
    :sswitch_18
    const-string/jumbo v6, "android.view.IWindowManager"

    #@3bd
    move-object/from16 v0, p2

    #@3bf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c2
    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3c5
    move-result-object v6

    #@3c6
    invoke-static {v6}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    #@3c9
    move-result-object v68

    #@3ca
    .line 371
    .restart local v68    # "_arg0":Landroid/view/IApplicationToken;
    move-object/from16 v0, p0

    #@3cc
    move-object/from16 v1, v68

    #@3ce
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    #@3d1
    move-result v94

    #@3d2
    .line 372
    .restart local v94    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d5
    .line 373
    move-object/from16 v0, p3

    #@3d7
    move/from16 v1, v94

    #@3d9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3dc
    .line 374
    const/4 v6, 0x1

    #@3dd
    return v6

    #@3de
    .line 378
    .end local v68    # "_arg0":Landroid/view/IApplicationToken;
    .end local v94    # "_result":I
    :sswitch_19
    const-string/jumbo v6, "android.view.IWindowManager"

    #@3e1
    move-object/from16 v0, p2

    #@3e3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e6
    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3e9
    move-result-object v31

    #@3ea
    .line 382
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ed
    move-result v6

    #@3ee
    if-eqz v6, :cond_13

    #@3f0
    const/16 v87, 0x1

    #@3f2
    .line 383
    .local v87, "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    #@3f4
    move-object/from16 v1, v31

    #@3f6
    move/from16 v2, v87

    #@3f8
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    #@3fb
    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3fe
    .line 385
    const/4 v6, 0x1

    #@3ff
    return v6

    #@400
    .line 382
    .end local v87    # "_arg1":Z
    :cond_13
    const/16 v87, 0x0

    #@402
    goto :goto_13

    #@403
    .line 389
    .end local v31    # "_arg0":Landroid/os/IBinder;
    :sswitch_1a
    const-string/jumbo v6, "android.view.IWindowManager"

    #@406
    move-object/from16 v0, p2

    #@408
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40b
    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@40e
    move-result v7

    #@40f
    .line 393
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@412
    move-result v6

    #@413
    if-eqz v6, :cond_14

    #@415
    const/16 v87, 0x1

    #@417
    .line 394
    .restart local v87    # "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    #@419
    move/from16 v1, v87

    #@41b
    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    #@41e
    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@421
    .line 396
    const/4 v6, 0x1

    #@422
    return v6

    #@423
    .line 393
    .end local v87    # "_arg1":Z
    :cond_14
    const/16 v87, 0x0

    #@425
    goto :goto_14

    #@426
    .line 400
    .end local v7    # "_arg0":I
    :sswitch_1b
    const-string/jumbo v6, "android.view.IWindowManager"

    #@429
    move-object/from16 v0, p2

    #@42b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42e
    .line 401
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    #@431
    move-result v94

    #@432
    .line 402
    .restart local v94    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@435
    .line 403
    move-object/from16 v0, p3

    #@437
    move/from16 v1, v94

    #@439
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@43c
    .line 404
    const/4 v6, 0x1

    #@43d
    return v6

    #@43e
    .line 408
    .end local v94    # "_result":I
    :sswitch_1c
    const-string/jumbo v6, "android.view.IWindowManager"

    #@441
    move-object/from16 v0, p2

    #@443
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@446
    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@449
    move-result-object v77

    #@44a
    .line 412
    .local v77, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@44d
    move-result v8

    #@44e
    .line 414
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@451
    move-result v9

    #@452
    .line 416
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@455
    move-result-object v6

    #@456
    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@459
    move-result-object v41

    #@45a
    .line 417
    .local v41, "_arg3":Landroid/os/IRemoteCallback;
    move-object/from16 v0, p0

    #@45c
    move-object/from16 v1, v77

    #@45e
    move-object/from16 v2, v41

    #@460
    invoke-virtual {v0, v1, v8, v9, v2}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    #@463
    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@466
    .line 419
    const/4 v6, 0x1

    #@467
    return v6

    #@468
    .line 423
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v41    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v77    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v6, "android.view.IWindowManager"

    #@46b
    move-object/from16 v0, p2

    #@46d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@470
    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@473
    move-result v7

    #@474
    .line 427
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@477
    move-result v8

    #@478
    .line 429
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47b
    move-result v9

    #@47c
    .line 431
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47f
    move-result v10

    #@480
    .line 432
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@482
    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionScaleUp(IIII)V

    #@485
    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@488
    .line 434
    const/4 v6, 0x1

    #@489
    return v6

    #@48a
    .line 438
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_1e
    const-string/jumbo v6, "android.view.IWindowManager"

    #@48d
    move-object/from16 v0, p2

    #@48f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@492
    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@495
    move-result v7

    #@496
    .line 442
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@499
    move-result v8

    #@49a
    .line 444
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49d
    move-result v9

    #@49e
    .line 446
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a1
    move-result v10

    #@4a2
    .line 447
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@4a4
    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionClipReveal(IIII)V

    #@4a7
    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4aa
    .line 449
    const/4 v6, 0x1

    #@4ab
    return v6

    #@4ac
    .line 453
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_1f
    const-string/jumbo v6, "android.view.IWindowManager"

    #@4af
    move-object/from16 v0, p2

    #@4b1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b4
    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4b7
    move-result v6

    #@4b8
    if-eqz v6, :cond_15

    #@4ba
    .line 456
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4bc
    move-object/from16 v0, p2

    #@4be
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4c1
    move-result-object v38

    #@4c2
    check-cast v38, Landroid/graphics/Bitmap;

    #@4c4
    .line 462
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4c7
    move-result v8

    #@4c8
    .line 464
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4cb
    move-result v9

    #@4cc
    .line 466
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4cf
    move-result-object v6

    #@4d0
    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@4d3
    move-result-object v41

    #@4d4
    .line 468
    .restart local v41    # "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d7
    move-result v6

    #@4d8
    if-eqz v6, :cond_16

    #@4da
    const/16 v42, 0x1

    #@4dc
    .local v42, "_arg4":Z
    :goto_16
    move-object/from16 v37, p0

    #@4de
    move/from16 v39, v8

    #@4e0
    move/from16 v40, v9

    #@4e2
    .line 469
    invoke-virtual/range {v37 .. v42}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    #@4e5
    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e8
    .line 471
    const/4 v6, 0x1

    #@4e9
    return v6

    #@4ea
    .line 459
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v41    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v42    # "_arg4":Z
    :cond_15
    const/16 v38, 0x0

    #@4ec
    .local v38, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_15

    #@4ed
    .line 468
    .end local v38    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v41    # "_arg3":Landroid/os/IRemoteCallback;
    :cond_16
    const/16 v42, 0x0

    #@4ef
    goto :goto_16

    #@4f0
    .line 475
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v41    # "_arg3":Landroid/os/IRemoteCallback;
    :sswitch_20
    const-string/jumbo v6, "android.view.IWindowManager"

    #@4f3
    move-object/from16 v0, p2

    #@4f5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f8
    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4fb
    move-result v6

    #@4fc
    if-eqz v6, :cond_17

    #@4fe
    .line 478
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@500
    move-object/from16 v0, p2

    #@502
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@505
    move-result-object v38

    #@506
    check-cast v38, Landroid/graphics/Bitmap;

    #@508
    .line 484
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@50b
    move-result v8

    #@50c
    .line 486
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@50f
    move-result v9

    #@510
    .line 488
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@513
    move-result v10

    #@514
    .line 490
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@517
    move-result v11

    #@518
    .line 492
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@51b
    move-result-object v6

    #@51c
    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@51f
    move-result-object v49

    #@520
    .line 494
    .local v49, "_arg5":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@523
    move-result v6

    #@524
    if-eqz v6, :cond_18

    #@526
    const/16 v19, 0x1

    #@528
    .restart local v19    # "_arg6":Z
    :goto_18
    move-object/from16 v43, p0

    #@52a
    move-object/from16 v44, v38

    #@52c
    move/from16 v45, v8

    #@52e
    move/from16 v46, v9

    #@530
    move/from16 v47, v10

    #@532
    move/from16 v48, v11

    #@534
    move/from16 v50, v19

    #@536
    .line 495
    invoke-virtual/range {v43 .. v50}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V

    #@539
    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@53c
    .line 497
    const/4 v6, 0x1

    #@53d
    return v6

    #@53e
    .line 481
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v19    # "_arg6":Z
    .end local v49    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_17
    const/16 v38, 0x0

    #@540
    .restart local v38    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_17

    #@541
    .line 494
    .end local v38    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v11    # "_arg4":I
    .restart local v49    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_18
    const/16 v19, 0x0

    #@543
    goto :goto_18

    #@544
    .line 501
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v49    # "_arg5":Landroid/os/IRemoteCallback;
    :sswitch_21
    const-string/jumbo v6, "android.view.IWindowManager"

    #@547
    move-object/from16 v0, p2

    #@549
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54c
    .line 503
    sget-object v6, Landroid/view/AppTransitionAnimationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    #@54e
    move-object/from16 v0, p2

    #@550
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@553
    move-result-object v80

    #@554
    check-cast v80, [Landroid/view/AppTransitionAnimationSpec;

    #@556
    .line 505
    .local v80, "_arg0":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@559
    move-result-object v6

    #@55a
    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@55d
    move-result-object v84

    #@55e
    .line 507
    .local v84, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@561
    move-result-object v6

    #@562
    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@565
    move-result-object v89

    #@566
    .line 509
    .local v89, "_arg2":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@569
    move-result v6

    #@56a
    if-eqz v6, :cond_19

    #@56c
    const/16 v92, 0x1

    #@56e
    .line 510
    .local v92, "_arg3":Z
    :goto_19
    move-object/from16 v0, p0

    #@570
    move-object/from16 v1, v80

    #@572
    move-object/from16 v2, v84

    #@574
    move-object/from16 v3, v89

    #@576
    move/from16 v4, v92

    #@578
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    #@57b
    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@57e
    .line 512
    const/4 v6, 0x1

    #@57f
    return v6

    #@580
    .line 509
    .end local v92    # "_arg3":Z
    :cond_19
    const/16 v92, 0x0

    #@582
    goto :goto_19

    #@583
    .line 516
    .end local v80    # "_arg0":[Landroid/view/AppTransitionAnimationSpec;
    .end local v84    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v89    # "_arg2":Landroid/os/IRemoteCallback;
    :sswitch_22
    const-string/jumbo v6, "android.view.IWindowManager"

    #@586
    move-object/from16 v0, p2

    #@588
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58b
    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@58e
    move-result-object v77

    #@58f
    .line 520
    .restart local v77    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@592
    move-result v8

    #@593
    .line 521
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@595
    move-object/from16 v1, v77

    #@597
    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionInPlace(Ljava/lang/String;I)V

    #@59a
    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@59d
    .line 523
    const/4 v6, 0x1

    #@59e
    return v6

    #@59f
    .line 527
    .end local v8    # "_arg1":I
    .end local v77    # "_arg0":Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v6, "android.view.IWindowManager"

    #@5a2
    move-object/from16 v0, p2

    #@5a4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a7
    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5aa
    move-result-object v6

    #@5ab
    invoke-static {v6}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    #@5ae
    move-result-object v67

    #@5af
    .line 531
    .local v67, "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5b2
    move-result-object v6

    #@5b3
    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@5b6
    move-result-object v84

    #@5b7
    .line 533
    .restart local v84    # "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ba
    move-result v6

    #@5bb
    if-eqz v6, :cond_1a

    #@5bd
    const/16 v91, 0x1

    #@5bf
    .line 534
    .local v91, "_arg2":Z
    :goto_1a
    move-object/from16 v0, p0

    #@5c1
    move-object/from16 v1, v67

    #@5c3
    move-object/from16 v2, v84

    #@5c5
    move/from16 v3, v91

    #@5c7
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    #@5ca
    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5cd
    .line 536
    const/4 v6, 0x1

    #@5ce
    return v6

    #@5cf
    .line 533
    .end local v91    # "_arg2":Z
    :cond_1a
    const/16 v91, 0x0

    #@5d1
    goto :goto_1a

    #@5d2
    .line 540
    .end local v67    # "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v84    # "_arg1":Landroid/os/IRemoteCallback;
    :sswitch_24
    const-string/jumbo v6, "android.view.IWindowManager"

    #@5d5
    move-object/from16 v0, p2

    #@5d7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5da
    .line 541
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    #@5dd
    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e0
    .line 543
    const/4 v6, 0x1

    #@5e1
    return v6

    #@5e2
    .line 547
    :sswitch_25
    const-string/jumbo v6, "android.view.IWindowManager"

    #@5e5
    move-object/from16 v0, p2

    #@5e7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5ea
    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5ed
    move-result-object v31

    #@5ee
    .line 551
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5f1
    move-result-object v52

    #@5f2
    .line 553
    .local v52, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f5
    move-result v9

    #@5f6
    .line 555
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f9
    move-result v6

    #@5fa
    if-eqz v6, :cond_1b

    #@5fc
    .line 556
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5fe
    move-object/from16 v0, p2

    #@600
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@603
    move-result-object v54

    #@604
    check-cast v54, Landroid/content/res/CompatibilityInfo;

    #@606
    .line 562
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@609
    move-result v6

    #@60a
    if-eqz v6, :cond_1c

    #@60c
    .line 563
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@60e
    move-object/from16 v0, p2

    #@610
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@613
    move-result-object v55

    #@614
    check-cast v55, Ljava/lang/CharSequence;

    #@616
    .line 569
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@619
    move-result v36

    #@61a
    .line 571
    .restart local v36    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61d
    move-result v57

    #@61e
    .line 573
    .local v57, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@621
    move-result v20

    #@622
    .line 575
    .restart local v20    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@625
    move-result v21

    #@626
    .line 577
    .restart local v21    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@629
    move-result-object v60

    #@62a
    .line 579
    .local v60, "_arg9":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62d
    move-result v6

    #@62e
    if-eqz v6, :cond_1d

    #@630
    const/16 v23, 0x1

    #@632
    .local v23, "_arg10":Z
    :goto_1d
    move-object/from16 v50, p0

    #@634
    move-object/from16 v51, v31

    #@636
    move/from16 v53, v9

    #@638
    move/from16 v56, v36

    #@63a
    move/from16 v58, v20

    #@63c
    move/from16 v59, v21

    #@63e
    move/from16 v61, v23

    #@640
    .line 580
    invoke-virtual/range {v50 .. v61}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)Z

    #@643
    move-result v100

    #@644
    .line 581
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@647
    .line 582
    if-eqz v100, :cond_1e

    #@649
    const/4 v6, 0x1

    #@64a
    :goto_1e
    move-object/from16 v0, p3

    #@64c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@64f
    .line 583
    const/4 v6, 0x1

    #@650
    return v6

    #@651
    .line 559
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v23    # "_arg10":Z
    .end local v36    # "_arg5":I
    .end local v57    # "_arg6":I
    .end local v60    # "_arg9":Landroid/os/IBinder;
    .end local v100    # "_result":Z
    :cond_1b
    const/16 v54, 0x0

    #@653
    .local v54, "_arg3":Landroid/content/res/CompatibilityInfo;
    goto :goto_1b

    #@654
    .line 566
    .end local v54    # "_arg3":Landroid/content/res/CompatibilityInfo;
    :cond_1c
    const/16 v55, 0x0

    #@656
    .local v55, "_arg4":Ljava/lang/CharSequence;
    goto :goto_1c

    #@657
    .line 579
    .end local v55    # "_arg4":Ljava/lang/CharSequence;
    .restart local v20    # "_arg7":I
    .restart local v21    # "_arg8":I
    .restart local v36    # "_arg5":I
    .restart local v57    # "_arg6":I
    .restart local v60    # "_arg9":Landroid/os/IBinder;
    :cond_1d
    const/16 v23, 0x0

    #@659
    goto :goto_1d

    #@65a
    .line 582
    .restart local v23    # "_arg10":Z
    .restart local v100    # "_result":Z
    :cond_1e
    const/4 v6, 0x0

    #@65b
    goto :goto_1e

    #@65c
    .line 587
    .end local v9    # "_arg2":I
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v23    # "_arg10":Z
    .end local v31    # "_arg0":Landroid/os/IBinder;
    .end local v36    # "_arg5":I
    .end local v52    # "_arg1":Ljava/lang/String;
    .end local v57    # "_arg6":I
    .end local v60    # "_arg9":Landroid/os/IBinder;
    .end local v100    # "_result":Z
    :sswitch_26
    const-string/jumbo v6, "android.view.IWindowManager"

    #@65f
    move-object/from16 v0, p2

    #@661
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@664
    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@667
    move-result-object v31

    #@668
    .line 591
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@66b
    move-result v6

    #@66c
    if-eqz v6, :cond_1f

    #@66e
    const/16 v87, 0x1

    #@670
    .line 592
    .restart local v87    # "_arg1":Z
    :goto_1f
    move-object/from16 v0, p0

    #@672
    move-object/from16 v1, v31

    #@674
    move/from16 v2, v87

    #@676
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@679
    .line 593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@67c
    .line 594
    const/4 v6, 0x1

    #@67d
    return v6

    #@67e
    .line 591
    .end local v87    # "_arg1":Z
    :cond_1f
    const/16 v87, 0x0

    #@680
    goto :goto_1f

    #@681
    .line 598
    .end local v31    # "_arg0":Landroid/os/IBinder;
    :sswitch_27
    const-string/jumbo v6, "android.view.IWindowManager"

    #@684
    move-object/from16 v0, p2

    #@686
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@689
    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@68c
    move-result-object v31

    #@68d
    .line 602
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@690
    move-result v6

    #@691
    if-eqz v6, :cond_20

    #@693
    const/16 v87, 0x1

    #@695
    .line 603
    .restart local v87    # "_arg1":Z
    :goto_20
    move-object/from16 v0, p0

    #@697
    move-object/from16 v1, v31

    #@699
    move/from16 v2, v87

    #@69b
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->notifyAppStopped(Landroid/os/IBinder;Z)V

    #@69e
    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a1
    .line 605
    const/4 v6, 0x1

    #@6a2
    return v6

    #@6a3
    .line 602
    .end local v87    # "_arg1":Z
    :cond_20
    const/16 v87, 0x0

    #@6a5
    goto :goto_20

    #@6a6
    .line 609
    .end local v31    # "_arg0":Landroid/os/IBinder;
    :sswitch_28
    const-string/jumbo v6, "android.view.IWindowManager"

    #@6a9
    move-object/from16 v0, p2

    #@6ab
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ae
    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6b1
    move-result-object v31

    #@6b2
    .line 613
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6b5
    move-result v8

    #@6b6
    .line 614
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@6b8
    move-object/from16 v1, v31

    #@6ba
    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    #@6bd
    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6c0
    .line 616
    const/4 v6, 0x1

    #@6c1
    return v6

    #@6c2
    .line 620
    .end local v8    # "_arg1":I
    .end local v31    # "_arg0":Landroid/os/IBinder;
    :sswitch_29
    const-string/jumbo v6, "android.view.IWindowManager"

    #@6c5
    move-object/from16 v0, p2

    #@6c7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ca
    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6cd
    move-result-object v31

    #@6ce
    .line 624
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d1
    move-result v6

    #@6d2
    if-eqz v6, :cond_21

    #@6d4
    const/16 v87, 0x1

    #@6d6
    .line 625
    .restart local v87    # "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    #@6d8
    move-object/from16 v1, v31

    #@6da
    move/from16 v2, v87

    #@6dc
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    #@6df
    .line 626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e2
    .line 627
    const/4 v6, 0x1

    #@6e3
    return v6

    #@6e4
    .line 624
    .end local v87    # "_arg1":Z
    :cond_21
    const/16 v87, 0x0

    #@6e6
    goto :goto_21

    #@6e7
    .line 631
    .end local v31    # "_arg0":Landroid/os/IBinder;
    :sswitch_2a
    const-string/jumbo v6, "android.view.IWindowManager"

    #@6ea
    move-object/from16 v0, p2

    #@6ec
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ef
    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6f2
    move-result-object v31

    #@6f3
    .line 634
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@6f5
    move-object/from16 v1, v31

    #@6f7
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    #@6fa
    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6fd
    .line 636
    const/4 v6, 0x1

    #@6fe
    return v6

    #@6ff
    .line 640
    .end local v31    # "_arg0":Landroid/os/IBinder;
    :sswitch_2b
    const-string/jumbo v6, "android.view.IWindowManager"

    #@702
    move-object/from16 v0, p2

    #@704
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@707
    .line 641
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    #@70a
    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@70d
    .line 643
    const/4 v6, 0x1

    #@70e
    return v6

    #@70f
    .line 647
    :sswitch_2c
    const-string/jumbo v6, "android.view.IWindowManager"

    #@712
    move-object/from16 v0, p2

    #@714
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@717
    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71a
    move-result v6

    #@71b
    if-eqz v6, :cond_22

    #@71d
    .line 650
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@71f
    move-object/from16 v0, p2

    #@721
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@724
    move-result-object v64

    #@725
    check-cast v64, Landroid/content/res/Configuration;

    #@727
    .line 656
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@72a
    move-result-object v83

    #@72b
    .line 657
    .local v83, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@72d
    move-object/from16 v1, v64

    #@72f
    move-object/from16 v2, v83

    #@731
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    #@734
    move-result-object v95

    #@735
    .line 658
    .local v95, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@738
    .line 659
    if-eqz v95, :cond_23

    #@73a
    .line 660
    const/4 v6, 0x1

    #@73b
    move-object/from16 v0, p3

    #@73d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@740
    .line 661
    const/4 v6, 0x1

    #@741
    move-object/from16 v0, v95

    #@743
    move-object/from16 v1, p3

    #@745
    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@748
    .line 666
    :goto_23
    const/4 v6, 0x1

    #@749
    return v6

    #@74a
    .line 653
    .end local v83    # "_arg1":Landroid/os/IBinder;
    .end local v95    # "_result":Landroid/content/res/Configuration;
    :cond_22
    const/16 v64, 0x0

    #@74c
    .local v64, "_arg0":Landroid/content/res/Configuration;
    goto :goto_22

    #@74d
    .line 664
    .end local v64    # "_arg0":Landroid/content/res/Configuration;
    .restart local v83    # "_arg1":Landroid/os/IBinder;
    .restart local v95    # "_result":Landroid/content/res/Configuration;
    :cond_23
    const/4 v6, 0x0

    #@74e
    move-object/from16 v0, p3

    #@750
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@753
    goto :goto_23

    #@754
    .line 670
    .end local v83    # "_arg1":Landroid/os/IBinder;
    .end local v95    # "_result":Landroid/content/res/Configuration;
    :sswitch_2d
    const-string/jumbo v6, "android.view.IWindowManager"

    #@757
    move-object/from16 v0, p2

    #@759
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@75c
    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@75f
    move-result v6

    #@760
    if-eqz v6, :cond_24

    #@762
    .line 673
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@764
    move-object/from16 v0, p2

    #@766
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@769
    move-result-object v64

    #@76a
    check-cast v64, Landroid/content/res/Configuration;

    #@76c
    .line 678
    :goto_24
    move-object/from16 v0, p0

    #@76e
    move-object/from16 v1, v64

    #@770
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)[I

    #@773
    move-result-object v102

    #@774
    .line 679
    .local v102, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@777
    .line 680
    move-object/from16 v0, p3

    #@779
    move-object/from16 v1, v102

    #@77b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@77e
    .line 681
    const/4 v6, 0x1

    #@77f
    return v6

    #@780
    .line 676
    .end local v102    # "_result":[I
    :cond_24
    const/16 v64, 0x0

    #@782
    .restart local v64    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_24

    #@783
    .line 685
    .end local v64    # "_arg0":Landroid/content/res/Configuration;
    :sswitch_2e
    const-string/jumbo v6, "android.view.IWindowManager"

    #@786
    move-object/from16 v0, p2

    #@788
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78b
    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@78e
    move-result v7

    #@78f
    .line 688
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@791
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getBoundsForNewConfiguration(I)Landroid/graphics/Rect;

    #@794
    move-result-object v97

    #@795
    .line 689
    .local v97, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@798
    .line 690
    if-eqz v97, :cond_25

    #@79a
    .line 691
    const/4 v6, 0x1

    #@79b
    move-object/from16 v0, p3

    #@79d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@7a0
    .line 692
    const/4 v6, 0x1

    #@7a1
    move-object/from16 v0, v97

    #@7a3
    move-object/from16 v1, p3

    #@7a5
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@7a8
    .line 697
    :goto_25
    const/4 v6, 0x1

    #@7a9
    return v6

    #@7aa
    .line 695
    :cond_25
    const/4 v6, 0x0

    #@7ab
    move-object/from16 v0, p3

    #@7ad
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@7b0
    goto :goto_25

    #@7b1
    .line 701
    .end local v7    # "_arg0":I
    .end local v97    # "_result":Landroid/graphics/Rect;
    :sswitch_2f
    const-string/jumbo v6, "android.view.IWindowManager"

    #@7b4
    move-object/from16 v0, p2

    #@7b6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b9
    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7bc
    move-result v7

    #@7bd
    .line 705
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7c0
    move-result v8

    #@7c1
    .line 706
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@7c3
    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    #@7c6
    .line 707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c9
    .line 708
    const/4 v6, 0x1

    #@7ca
    return v6

    #@7cb
    .line 712
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_30
    const-string/jumbo v6, "android.view.IWindowManager"

    #@7ce
    move-object/from16 v0, p2

    #@7d0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7d3
    .line 713
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    #@7d6
    .line 714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d9
    .line 715
    const/4 v6, 0x1

    #@7da
    return v6

    #@7db
    .line 719
    :sswitch_31
    const-string/jumbo v6, "android.view.IWindowManager"

    #@7de
    move-object/from16 v0, p2

    #@7e0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e3
    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7e6
    move-result-object v31

    #@7e7
    .line 723
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7ea
    move-result-object v52

    #@7eb
    .line 724
    .restart local v52    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7ed
    move-object/from16 v1, v31

    #@7ef
    move-object/from16 v2, v52

    #@7f1
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    #@7f4
    .line 725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f7
    .line 726
    const/4 v6, 0x1

    #@7f8
    return v6

    #@7f9
    .line 730
    .end local v31    # "_arg0":Landroid/os/IBinder;
    .end local v52    # "_arg1":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v6, "android.view.IWindowManager"

    #@7fc
    move-object/from16 v0, p2

    #@7fe
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@801
    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@804
    move-result-object v31

    #@805
    .line 733
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@807
    move-object/from16 v1, v31

    #@809
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    #@80c
    .line 734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@80f
    .line 735
    const/4 v6, 0x1

    #@810
    return v6

    #@811
    .line 739
    .end local v31    # "_arg0":Landroid/os/IBinder;
    :sswitch_33
    const-string/jumbo v6, "android.view.IWindowManager"

    #@814
    move-object/from16 v0, p2

    #@816
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@819
    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@81c
    move-result-object v6

    #@81d
    invoke-static {v6}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    #@820
    move-result-object v70

    #@821
    .line 742
    .local v70, "_arg0":Landroid/view/IOnKeyguardExitResult;
    move-object/from16 v0, p0

    #@823
    move-object/from16 v1, v70

    #@825
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    #@828
    .line 743
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@82b
    .line 744
    const/4 v6, 0x1

    #@82c
    return v6

    #@82d
    .line 748
    .end local v70    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :sswitch_34
    const-string/jumbo v6, "android.view.IWindowManager"

    #@830
    move-object/from16 v0, p2

    #@832
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@835
    .line 749
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    #@838
    move-result v100

    #@839
    .line 750
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@83c
    .line 751
    if-eqz v100, :cond_26

    #@83e
    const/4 v6, 0x1

    #@83f
    :goto_26
    move-object/from16 v0, p3

    #@841
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@844
    .line 752
    const/4 v6, 0x1

    #@845
    return v6

    #@846
    .line 751
    :cond_26
    const/4 v6, 0x0

    #@847
    goto :goto_26

    #@848
    .line 756
    .end local v100    # "_result":Z
    :sswitch_35
    const-string/jumbo v6, "android.view.IWindowManager"

    #@84b
    move-object/from16 v0, p2

    #@84d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@850
    .line 757
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    #@853
    move-result v100

    #@854
    .line 758
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@857
    .line 759
    if-eqz v100, :cond_27

    #@859
    const/4 v6, 0x1

    #@85a
    :goto_27
    move-object/from16 v0, p3

    #@85c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@85f
    .line 760
    const/4 v6, 0x1

    #@860
    return v6

    #@861
    .line 759
    :cond_27
    const/4 v6, 0x0

    #@862
    goto :goto_27

    #@863
    .line 764
    .end local v100    # "_result":Z
    :sswitch_36
    const-string/jumbo v6, "android.view.IWindowManager"

    #@866
    move-object/from16 v0, p2

    #@868
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86b
    .line 765
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    #@86e
    move-result v100

    #@86f
    .line 766
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@872
    .line 767
    if-eqz v100, :cond_28

    #@874
    const/4 v6, 0x1

    #@875
    :goto_28
    move-object/from16 v0, p3

    #@877
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@87a
    .line 768
    const/4 v6, 0x1

    #@87b
    return v6

    #@87c
    .line 767
    :cond_28
    const/4 v6, 0x0

    #@87d
    goto :goto_28

    #@87e
    .line 772
    .end local v100    # "_result":Z
    :sswitch_37
    const-string/jumbo v6, "android.view.IWindowManager"

    #@881
    move-object/from16 v0, p2

    #@883
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@886
    .line 773
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->dismissKeyguard()V

    #@889
    .line 774
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@88c
    .line 775
    const/4 v6, 0x1

    #@88d
    return v6

    #@88e
    .line 779
    :sswitch_38
    const-string/jumbo v6, "android.view.IWindowManager"

    #@891
    move-object/from16 v0, p2

    #@893
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@896
    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@899
    move-result v7

    #@89a
    .line 782
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@89c
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->keyguardGoingAway(I)V

    #@89f
    .line 783
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a2
    .line 784
    const/4 v6, 0x1

    #@8a3
    return v6

    #@8a4
    .line 788
    .end local v7    # "_arg0":I
    :sswitch_39
    const-string/jumbo v6, "android.view.IWindowManager"

    #@8a7
    move-object/from16 v0, p2

    #@8a9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8ac
    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8af
    move-result-object v77

    #@8b0
    .line 791
    .restart local v77    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8b2
    move-object/from16 v1, v77

    #@8b4
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    #@8b7
    .line 792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ba
    .line 793
    const/4 v6, 0x1

    #@8bb
    return v6

    #@8bc
    .line 797
    .end local v77    # "_arg0":Ljava/lang/String;
    :sswitch_3a
    const-string/jumbo v6, "android.view.IWindowManager"

    #@8bf
    move-object/from16 v0, p2

    #@8c1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c4
    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8c7
    move-result v7

    #@8c8
    .line 800
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@8ca
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    #@8cd
    move-result v93

    #@8ce
    .line 801
    .local v93, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8d1
    .line 802
    move-object/from16 v0, p3

    #@8d3
    move/from16 v1, v93

    #@8d5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@8d8
    .line 803
    const/4 v6, 0x1

    #@8d9
    return v6

    #@8da
    .line 807
    .end local v7    # "_arg0":I
    .end local v93    # "_result":F
    :sswitch_3b
    const-string/jumbo v6, "android.view.IWindowManager"

    #@8dd
    move-object/from16 v0, p2

    #@8df
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e2
    .line 808
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    #@8e5
    move-result-object v101

    #@8e6
    .line 809
    .local v101, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8e9
    .line 810
    move-object/from16 v0, p3

    #@8eb
    move-object/from16 v1, v101

    #@8ed
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@8f0
    .line 811
    const/4 v6, 0x1

    #@8f1
    return v6

    #@8f2
    .line 815
    .end local v101    # "_result":[F
    :sswitch_3c
    const-string/jumbo v6, "android.view.IWindowManager"

    #@8f5
    move-object/from16 v0, p2

    #@8f7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8fa
    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8fd
    move-result v7

    #@8fe
    .line 819
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@901
    move-result v81

    #@902
    .line 820
    .local v81, "_arg1":F
    move-object/from16 v0, p0

    #@904
    move/from16 v1, v81

    #@906
    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    #@909
    .line 821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@90c
    .line 822
    const/4 v6, 0x1

    #@90d
    return v6

    #@90e
    .line 826
    .end local v7    # "_arg0":I
    .end local v81    # "_arg1":F
    :sswitch_3d
    const-string/jumbo v6, "android.view.IWindowManager"

    #@911
    move-object/from16 v0, p2

    #@913
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@916
    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    #@919
    move-result-object v79

    #@91a
    .line 829
    .local v79, "_arg0":[F
    move-object/from16 v0, p0

    #@91c
    move-object/from16 v1, v79

    #@91e
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    #@921
    .line 830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@924
    .line 831
    const/4 v6, 0x1

    #@925
    return v6

    #@926
    .line 835
    .end local v79    # "_arg0":[F
    :sswitch_3e
    const-string/jumbo v6, "android.view.IWindowManager"

    #@929
    move-object/from16 v0, p2

    #@92b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@92e
    .line 836
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    #@931
    move-result v93

    #@932
    .line 837
    .restart local v93    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@935
    .line 838
    move-object/from16 v0, p3

    #@937
    move/from16 v1, v93

    #@939
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@93c
    .line 839
    const/4 v6, 0x1

    #@93d
    return v6

    #@93e
    .line 843
    .end local v93    # "_result":F
    :sswitch_3f
    const-string/jumbo v6, "android.view.IWindowManager"

    #@941
    move-object/from16 v0, p2

    #@943
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@946
    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@949
    move-result v6

    #@94a
    if-eqz v6, :cond_29

    #@94c
    const/16 v78, 0x1

    #@94e
    .line 846
    .restart local v78    # "_arg0":Z
    :goto_29
    move-object/from16 v0, p0

    #@950
    move/from16 v1, v78

    #@952
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    #@955
    .line 847
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@958
    .line 848
    const/4 v6, 0x1

    #@959
    return v6

    #@95a
    .line 845
    .end local v78    # "_arg0":Z
    :cond_29
    const/16 v78, 0x0

    #@95c
    goto :goto_29

    #@95d
    .line 852
    :sswitch_40
    const-string/jumbo v6, "android.view.IWindowManager"

    #@960
    move-object/from16 v0, p2

    #@962
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@965
    .line 854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@968
    move-result v6

    #@969
    if-eqz v6, :cond_2a

    #@96b
    const/16 v78, 0x1

    #@96d
    .line 855
    .restart local v78    # "_arg0":Z
    :goto_2a
    move-object/from16 v0, p0

    #@96f
    move/from16 v1, v78

    #@971
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    #@974
    .line 856
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@977
    .line 857
    const/4 v6, 0x1

    #@978
    return v6

    #@979
    .line 854
    .end local v78    # "_arg0":Z
    :cond_2a
    const/16 v78, 0x0

    #@97b
    goto :goto_2a

    #@97c
    .line 861
    :sswitch_41
    const-string/jumbo v6, "android.view.IWindowManager"

    #@97f
    move-object/from16 v0, p2

    #@981
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@984
    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@987
    move-result-object v77

    #@988
    .line 864
    .restart local v77    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@98a
    move-object/from16 v1, v77

    #@98c
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    #@98f
    .line 865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@992
    .line 866
    const/4 v6, 0x1

    #@993
    return v6

    #@994
    .line 870
    .end local v77    # "_arg0":Ljava/lang/String;
    :sswitch_42
    const-string/jumbo v6, "android.view.IWindowManager"

    #@997
    move-object/from16 v0, p2

    #@999
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@99c
    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@99f
    move-result v7

    #@9a0
    .line 874
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9a3
    move-result v6

    #@9a4
    if-eqz v6, :cond_2b

    #@9a6
    const/16 v87, 0x1

    #@9a8
    .line 875
    .restart local v87    # "_arg1":Z
    :goto_2b
    move-object/from16 v0, p0

    #@9aa
    move/from16 v1, v87

    #@9ac
    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->setScreenCaptureDisabled(IZ)V

    #@9af
    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9b2
    .line 877
    const/4 v6, 0x1

    #@9b3
    return v6

    #@9b4
    .line 874
    .end local v87    # "_arg1":Z
    :cond_2b
    const/16 v87, 0x0

    #@9b6
    goto :goto_2b

    #@9b7
    .line 881
    .end local v7    # "_arg0":I
    :sswitch_43
    const-string/jumbo v6, "android.view.IWindowManager"

    #@9ba
    move-object/from16 v0, p2

    #@9bc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9bf
    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9c2
    move-result v7

    #@9c3
    .line 884
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@9c5
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->cancelTaskWindowTransition(I)V

    #@9c8
    .line 885
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9cb
    .line 886
    const/4 v6, 0x1

    #@9cc
    return v6

    #@9cd
    .line 890
    .end local v7    # "_arg0":I
    :sswitch_44
    const-string/jumbo v6, "android.view.IWindowManager"

    #@9d0
    move-object/from16 v0, p2

    #@9d2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d5
    .line 892
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9d8
    move-result v7

    #@9d9
    .line 893
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@9db
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->cancelTaskThumbnailTransition(I)V

    #@9de
    .line 894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9e1
    .line 895
    const/4 v6, 0x1

    #@9e2
    return v6

    #@9e3
    .line 899
    .end local v7    # "_arg0":I
    :sswitch_45
    const-string/jumbo v6, "android.view.IWindowManager"

    #@9e6
    move-object/from16 v0, p2

    #@9e8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9eb
    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9ee
    move-result v6

    #@9ef
    if-eqz v6, :cond_2c

    #@9f1
    const/16 v78, 0x1

    #@9f3
    .line 903
    .local v78, "_arg0":Z
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9f6
    move-result v6

    #@9f7
    if-eqz v6, :cond_2d

    #@9f9
    const/16 v87, 0x1

    #@9fb
    .line 904
    .restart local v87    # "_arg1":Z
    :goto_2d
    move-object/from16 v0, p0

    #@9fd
    move/from16 v1, v78

    #@9ff
    move/from16 v2, v87

    #@a01
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    #@a04
    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a07
    .line 906
    const/4 v6, 0x1

    #@a08
    return v6

    #@a09
    .line 901
    .end local v78    # "_arg0":Z
    .end local v87    # "_arg1":Z
    :cond_2c
    const/16 v78, 0x0

    #@a0b
    .restart local v78    # "_arg0":Z
    goto :goto_2c

    #@a0c
    .line 903
    :cond_2d
    const/16 v87, 0x0

    #@a0e
    goto :goto_2d

    #@a0f
    .line 910
    .end local v78    # "_arg0":Z
    :sswitch_46
    const-string/jumbo v6, "android.view.IWindowManager"

    #@a12
    move-object/from16 v0, p2

    #@a14
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a17
    .line 911
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    #@a1a
    move-result v94

    #@a1b
    .line 912
    .restart local v94    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a1e
    .line 913
    move-object/from16 v0, p3

    #@a20
    move/from16 v1, v94

    #@a22
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a25
    .line 914
    const/4 v6, 0x1

    #@a26
    return v6

    #@a27
    .line 918
    .end local v94    # "_result":I
    :sswitch_47
    const-string/jumbo v6, "android.view.IWindowManager"

    #@a2a
    move-object/from16 v0, p2

    #@a2c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2f
    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a32
    move-result-object v6

    #@a33
    invoke-static {v6}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    #@a36
    move-result-object v71

    #@a37
    .line 921
    .local v71, "_arg0":Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    #@a39
    move-object/from16 v1, v71

    #@a3b
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    #@a3e
    move-result v94

    #@a3f
    .line 922
    .restart local v94    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a42
    .line 923
    move-object/from16 v0, p3

    #@a44
    move/from16 v1, v94

    #@a46
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a49
    .line 924
    const/4 v6, 0x1

    #@a4a
    return v6

    #@a4b
    .line 928
    .end local v71    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v94    # "_result":I
    :sswitch_48
    const-string/jumbo v6, "android.view.IWindowManager"

    #@a4e
    move-object/from16 v0, p2

    #@a50
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a53
    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a56
    move-result-object v6

    #@a57
    invoke-static {v6}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    #@a5a
    move-result-object v71

    #@a5b
    .line 931
    .restart local v71    # "_arg0":Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    #@a5d
    move-object/from16 v1, v71

    #@a5f
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    #@a62
    .line 932
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a65
    .line 933
    const/4 v6, 0x1

    #@a66
    return v6

    #@a67
    .line 937
    .end local v71    # "_arg0":Landroid/view/IRotationWatcher;
    :sswitch_49
    const-string/jumbo v6, "android.view.IWindowManager"

    #@a6a
    move-object/from16 v0, p2

    #@a6c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6f
    .line 938
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity()I

    #@a72
    move-result v94

    #@a73
    .line 939
    .restart local v94    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a76
    .line 940
    move-object/from16 v0, p3

    #@a78
    move/from16 v1, v94

    #@a7a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a7d
    .line 941
    const/4 v6, 0x1

    #@a7e
    return v6

    #@a7f
    .line 945
    .end local v94    # "_result":I
    :sswitch_4a
    const-string/jumbo v6, "android.view.IWindowManager"

    #@a82
    move-object/from16 v0, p2

    #@a84
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a87
    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a8a
    move-result v7

    #@a8b
    .line 948
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@a8d
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    #@a90
    .line 949
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a93
    .line 950
    const/4 v6, 0x1

    #@a94
    return v6

    #@a95
    .line 954
    .end local v7    # "_arg0":I
    :sswitch_4b
    const-string/jumbo v6, "android.view.IWindowManager"

    #@a98
    move-object/from16 v0, p2

    #@a9a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a9d
    .line 955
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    #@aa0
    .line 956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@aa3
    .line 957
    const/4 v6, 0x1

    #@aa4
    return v6

    #@aa5
    .line 961
    :sswitch_4c
    const-string/jumbo v6, "android.view.IWindowManager"

    #@aa8
    move-object/from16 v0, p2

    #@aaa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aad
    .line 962
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    #@ab0
    move-result v100

    #@ab1
    .line 963
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ab4
    .line 964
    if-eqz v100, :cond_2e

    #@ab6
    const/4 v6, 0x1

    #@ab7
    :goto_2e
    move-object/from16 v0, p3

    #@ab9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@abc
    .line 965
    const/4 v6, 0x1

    #@abd
    return v6

    #@abe
    .line 964
    :cond_2e
    const/4 v6, 0x0

    #@abf
    goto :goto_2e

    #@ac0
    .line 969
    .end local v100    # "_result":Z
    :sswitch_4d
    const-string/jumbo v6, "android.view.IWindowManager"

    #@ac3
    move-object/from16 v0, p2

    #@ac5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ac8
    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@acb
    move-result-object v6

    #@acc
    invoke-static {v6}, Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAssistScreenshotReceiver;

    #@acf
    move-result-object v74

    #@ad0
    .line 972
    .local v74, "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    move-object/from16 v0, p0

    #@ad2
    move-object/from16 v1, v74

    #@ad4
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z

    #@ad7
    move-result v100

    #@ad8
    .line 973
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@adb
    .line 974
    if-eqz v100, :cond_2f

    #@add
    const/4 v6, 0x1

    #@ade
    :goto_2f
    move-object/from16 v0, p3

    #@ae0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@ae3
    .line 975
    const/4 v6, 0x1

    #@ae4
    return v6

    #@ae5
    .line 974
    :cond_2f
    const/4 v6, 0x0

    #@ae6
    goto :goto_2f

    #@ae7
    .line 979
    .end local v74    # "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    .end local v100    # "_result":Z
    :sswitch_4e
    const-string/jumbo v6, "android.view.IWindowManager"

    #@aea
    move-object/from16 v0, p2

    #@aec
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aef
    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@af2
    move-result-object v31

    #@af3
    .line 983
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@af6
    move-result v8

    #@af7
    .line 985
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@afa
    move-result v9

    #@afb
    .line 987
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@afe
    move-result v10

    #@aff
    .line 989
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@b02
    move-result v48

    #@b03
    .local v48, "_arg4":F
    move-object/from16 v43, p0

    #@b05
    move-object/from16 v44, v31

    #@b07
    move/from16 v45, v8

    #@b09
    move/from16 v46, v9

    #@b0b
    move/from16 v47, v10

    #@b0d
    .line 990
    invoke-virtual/range {v43 .. v48}, Landroid/view/IWindowManager$Stub;->screenshotApplications(Landroid/os/IBinder;IIIF)Landroid/graphics/Bitmap;

    #@b10
    move-result-object v96

    #@b11
    .line 991
    .local v96, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b14
    .line 992
    if-eqz v96, :cond_30

    #@b16
    .line 993
    const/4 v6, 0x1

    #@b17
    move-object/from16 v0, p3

    #@b19
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b1c
    .line 994
    const/4 v6, 0x1

    #@b1d
    move-object/from16 v0, v96

    #@b1f
    move-object/from16 v1, p3

    #@b21
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@b24
    .line 999
    :goto_30
    const/4 v6, 0x1

    #@b25
    return v6

    #@b26
    .line 997
    :cond_30
    const/4 v6, 0x0

    #@b27
    move-object/from16 v0, p3

    #@b29
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b2c
    goto :goto_30

    #@b2d
    .line 1003
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v31    # "_arg0":Landroid/os/IBinder;
    .end local v48    # "_arg4":F
    .end local v96    # "_result":Landroid/graphics/Bitmap;
    :sswitch_4f
    const-string/jumbo v6, "android.view.IWindowManager"

    #@b30
    move-object/from16 v0, p2

    #@b32
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b35
    .line 1005
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b38
    move-result v7

    #@b39
    .line 1006
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@b3b
    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    #@b3e
    .line 1007
    const/4 v6, 0x1

    #@b3f
    return v6

    #@b40
    .line 1011
    .end local v7    # "_arg0":I
    :sswitch_50
    const-string/jumbo v6, "android.view.IWindowManager"

    #@b43
    move-object/from16 v0, p2

    #@b45
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b48
    .line 1012
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar()Z

    #@b4b
    move-result v100

    #@b4c
    .line 1013
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b4f
    .line 1014
    if-eqz v100, :cond_31

    #@b51
    const/4 v6, 0x1

    #@b52
    :goto_31
    move-object/from16 v0, p3

    #@b54
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b57
    .line 1015
    const/4 v6, 0x1

    #@b58
    return v6

    #@b59
    .line 1014
    :cond_31
    const/4 v6, 0x0

    #@b5a
    goto :goto_31

    #@b5b
    .line 1019
    .end local v100    # "_result":Z
    :sswitch_51
    const-string/jumbo v6, "android.view.IWindowManager"

    #@b5e
    move-object/from16 v0, p2

    #@b60
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b63
    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b66
    move-result v6

    #@b67
    if-eqz v6, :cond_32

    #@b69
    .line 1022
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b6b
    move-object/from16 v0, p2

    #@b6d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b70
    move-result-object v66

    #@b71
    check-cast v66, Landroid/os/Bundle;

    #@b73
    .line 1027
    :goto_32
    move-object/from16 v0, p0

    #@b75
    move-object/from16 v1, v66

    #@b77
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    #@b7a
    .line 1028
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b7d
    .line 1029
    const/4 v6, 0x1

    #@b7e
    return v6

    #@b7f
    .line 1025
    :cond_32
    const/16 v66, 0x0

    #@b81
    .local v66, "_arg0":Landroid/os/Bundle;
    goto :goto_32

    #@b82
    .line 1033
    .end local v66    # "_arg0":Landroid/os/Bundle;
    :sswitch_52
    const-string/jumbo v6, "android.view.IWindowManager"

    #@b85
    move-object/from16 v0, p2

    #@b87
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8a
    .line 1034
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    #@b8d
    move-result v100

    #@b8e
    .line 1035
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b91
    .line 1036
    if-eqz v100, :cond_33

    #@b93
    const/4 v6, 0x1

    #@b94
    :goto_33
    move-object/from16 v0, p3

    #@b96
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b99
    .line 1037
    const/4 v6, 0x1

    #@b9a
    return v6

    #@b9b
    .line 1036
    :cond_33
    const/4 v6, 0x0

    #@b9c
    goto :goto_33

    #@b9d
    .line 1041
    .end local v100    # "_result":Z
    :sswitch_53
    const-string/jumbo v6, "android.view.IWindowManager"

    #@ba0
    move-object/from16 v0, p2

    #@ba2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ba5
    .line 1042
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    #@ba8
    .line 1043
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bab
    .line 1044
    const/4 v6, 0x1

    #@bac
    return v6

    #@bad
    .line 1048
    :sswitch_54
    const-string/jumbo v6, "android.view.IWindowManager"

    #@bb0
    move-object/from16 v0, p2

    #@bb2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bb5
    .line 1050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@bb8
    move-result-object v31

    #@bb9
    .line 1051
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@bbb
    move-object/from16 v1, v31

    #@bbd
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    #@bc0
    move-result v100

    #@bc1
    .line 1052
    .restart local v100    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bc4
    .line 1053
    if-eqz v100, :cond_34

    #@bc6
    const/4 v6, 0x1

    #@bc7
    :goto_34
    move-object/from16 v0, p3

    #@bc9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@bcc
    .line 1054
    const/4 v6, 0x1

    #@bcd
    return v6

    #@bce
    .line 1053
    :cond_34
    const/4 v6, 0x0

    #@bcf
    goto :goto_34

    #@bd0
    .line 1058
    .end local v31    # "_arg0":Landroid/os/IBinder;
    .end local v100    # "_result":Z
    :sswitch_55
    const-string/jumbo v6, "android.view.IWindowManager"

    #@bd3
    move-object/from16 v0, p2

    #@bd5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bd8
    .line 1060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@bdb
    move-result-object v31

    #@bdc
    .line 1061
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@bde
    move-object/from16 v1, v31

    #@be0
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    #@be3
    move-result-object v99

    #@be4
    .line 1062
    .local v99, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@be7
    .line 1063
    if-eqz v99, :cond_35

    #@be9
    .line 1064
    const/4 v6, 0x1

    #@bea
    move-object/from16 v0, p3

    #@bec
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@bef
    .line 1065
    const/4 v6, 0x1

    #@bf0
    move-object/from16 v0, v99

    #@bf2
    move-object/from16 v1, p3

    #@bf4
    invoke-virtual {v0, v1, v6}, Landroid/view/WindowContentFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@bf7
    .line 1070
    :goto_35
    const/4 v6, 0x1

    #@bf8
    return v6

    #@bf9
    .line 1068
    :cond_35
    const/4 v6, 0x0

    #@bfa
    move-object/from16 v0, p3

    #@bfc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@bff
    goto :goto_35

    #@c00
    .line 1074
    .end local v31    # "_arg0":Landroid/os/IBinder;
    .end local v99    # "_result":Landroid/view/WindowContentFrameStats;
    :sswitch_56
    const-string/jumbo v6, "android.view.IWindowManager"

    #@c03
    move-object/from16 v0, p2

    #@c05
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c08
    .line 1075
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    #@c0b
    move-result v94

    #@c0c
    .line 1076
    .restart local v94    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c0f
    .line 1077
    move-object/from16 v0, p3

    #@c11
    move/from16 v1, v94

    #@c13
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c16
    .line 1078
    const/4 v6, 0x1

    #@c17
    return v6

    #@c18
    .line 1082
    .end local v94    # "_result":I
    :sswitch_57
    const-string/jumbo v6, "android.view.IWindowManager"

    #@c1b
    move-object/from16 v0, p2

    #@c1d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c20
    .line 1084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c23
    move-result v6

    #@c24
    if-eqz v6, :cond_36

    #@c26
    const/16 v78, 0x1

    #@c28
    .line 1085
    .local v78, "_arg0":Z
    :goto_36
    move-object/from16 v0, p0

    #@c2a
    move/from16 v1, v78

    #@c2c
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setDockedStackResizing(Z)V

    #@c2f
    .line 1086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c32
    .line 1087
    const/4 v6, 0x1

    #@c33
    return v6

    #@c34
    .line 1084
    .end local v78    # "_arg0":Z
    :cond_36
    const/16 v78, 0x0

    #@c36
    goto :goto_36

    #@c37
    .line 1091
    :sswitch_58
    const-string/jumbo v6, "android.view.IWindowManager"

    #@c3a
    move-object/from16 v0, p2

    #@c3c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c3f
    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c42
    move-result v6

    #@c43
    if-eqz v6, :cond_37

    #@c45
    .line 1094
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c47
    move-object/from16 v0, p2

    #@c49
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c4c
    move-result-object v65

    #@c4d
    check-cast v65, Landroid/graphics/Rect;

    #@c4f
    .line 1099
    :goto_37
    move-object/from16 v0, p0

    #@c51
    move-object/from16 v1, v65

    #@c53
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V

    #@c56
    .line 1100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c59
    .line 1101
    const/4 v6, 0x1

    #@c5a
    return v6

    #@c5b
    .line 1097
    :cond_37
    const/16 v65, 0x0

    #@c5d
    .local v65, "_arg0":Landroid/graphics/Rect;
    goto :goto_37

    #@c5e
    .line 1105
    .end local v65    # "_arg0":Landroid/graphics/Rect;
    :sswitch_59
    const-string/jumbo v6, "android.view.IWindowManager"

    #@c61
    move-object/from16 v0, p2

    #@c63
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c66
    .line 1107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c69
    move-result-object v6

    #@c6a
    invoke-static {v6}, Landroid/view/IDockedStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDockedStackListener;

    #@c6d
    move-result-object v69

    #@c6e
    .line 1108
    .local v69, "_arg0":Landroid/view/IDockedStackListener;
    move-object/from16 v0, p0

    #@c70
    move-object/from16 v1, v69

    #@c72
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    #@c75
    .line 1109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c78
    .line 1110
    const/4 v6, 0x1

    #@c79
    return v6

    #@c7a
    .line 1114
    .end local v69    # "_arg0":Landroid/view/IDockedStackListener;
    :sswitch_5a
    const-string/jumbo v6, "android.view.IWindowManager"

    #@c7d
    move-object/from16 v0, p2

    #@c7f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c82
    .line 1116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c85
    move-result v6

    #@c86
    if-eqz v6, :cond_38

    #@c88
    const/16 v78, 0x1

    #@c8a
    .line 1118
    .local v78, "_arg0":Z
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c8d
    move-result v8

    #@c8e
    .line 1120
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@c91
    move-result v88

    #@c92
    .line 1121
    .local v88, "_arg2":F
    move-object/from16 v0, p0

    #@c94
    move/from16 v1, v78

    #@c96
    move/from16 v2, v88

    #@c98
    invoke-virtual {v0, v1, v8, v2}, Landroid/view/IWindowManager$Stub;->setResizeDimLayer(ZIF)V

    #@c9b
    .line 1122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c9e
    .line 1123
    const/4 v6, 0x1

    #@c9f
    return v6

    #@ca0
    .line 1116
    .end local v8    # "_arg1":I
    .end local v78    # "_arg0":Z
    .end local v88    # "_arg2":F
    :cond_38
    const/16 v78, 0x0

    #@ca2
    .restart local v78    # "_arg0":Z
    goto :goto_38

    #@ca3
    .line 1127
    .end local v78    # "_arg0":Z
    :sswitch_5b
    const-string/jumbo v6, "android.view.IWindowManager"

    #@ca6
    move-object/from16 v0, p2

    #@ca8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cab
    .line 1129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@cae
    move-result-object v6

    #@caf
    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    #@cb2
    move-result-object v75

    #@cb3
    .line 1131
    .local v75, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cb6
    move-result v8

    #@cb7
    .line 1132
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@cb9
    move-object/from16 v1, v75

    #@cbb
    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    #@cbe
    .line 1133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cc1
    .line 1134
    const/4 v6, 0x1

    #@cc2
    return v6

    #@cc3
    .line 1138
    .end local v8    # "_arg1":I
    .end local v75    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :sswitch_5c
    const-string/jumbo v6, "android.view.IWindowManager"

    #@cc6
    move-object/from16 v0, p2

    #@cc8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ccb
    .line 1140
    new-instance v65, Landroid/graphics/Rect;

    #@ccd
    invoke-direct/range {v65 .. v65}, Landroid/graphics/Rect;-><init>()V

    #@cd0
    .line 1141
    .local v65, "_arg0":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@cd2
    move-object/from16 v1, v65

    #@cd4
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getStableInsets(Landroid/graphics/Rect;)V

    #@cd7
    .line 1142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cda
    .line 1143
    if-eqz v65, :cond_39

    #@cdc
    .line 1144
    const/4 v6, 0x1

    #@cdd
    move-object/from16 v0, p3

    #@cdf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@ce2
    .line 1145
    const/4 v6, 0x1

    #@ce3
    move-object/from16 v0, v65

    #@ce5
    move-object/from16 v1, p3

    #@ce7
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@cea
    .line 1150
    :goto_39
    const/4 v6, 0x1

    #@ceb
    return v6

    #@cec
    .line 1148
    :cond_39
    const/4 v6, 0x0

    #@ced
    move-object/from16 v0, p3

    #@cef
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@cf2
    goto :goto_39

    #@cf3
    .line 1154
    .end local v65    # "_arg0":Landroid/graphics/Rect;
    :sswitch_5d
    const-string/jumbo v6, "android.view.IWindowManager"

    #@cf6
    move-object/from16 v0, p2

    #@cf8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cfb
    .line 1156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@cfe
    move-result-wide v62

    #@cff
    .line 1158
    .local v62, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d02
    move-result-object v6

    #@d03
    invoke-static {v6}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    #@d06
    move-result-object v85

    #@d07
    .line 1159
    .local v85, "_arg1":Lcom/android/internal/policy/IShortcutService;
    move-object/from16 v0, p0

    #@d09
    move-wide/from16 v1, v62

    #@d0b
    move-object/from16 v3, v85

    #@d0d
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    #@d10
    .line 1160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d13
    .line 1161
    const/4 v6, 0x1

    #@d14
    return v6

    #@d15
    .line 1165
    .end local v62    # "_arg0":J
    .end local v85    # "_arg1":Lcom/android/internal/policy/IShortcutService;
    :sswitch_5e
    const-string/jumbo v6, "android.view.IWindowManager"

    #@d18
    move-object/from16 v0, p2

    #@d1a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d1d
    .line 1167
    new-instance v73, Landroid/view/InputChannel;

    #@d1f
    invoke-direct/range {v73 .. v73}, Landroid/view/InputChannel;-><init>()V

    #@d22
    .line 1168
    .local v73, "_arg0":Landroid/view/InputChannel;
    move-object/from16 v0, p0

    #@d24
    move-object/from16 v1, v73

    #@d26
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->createWallpaperInputConsumer(Landroid/view/InputChannel;)V

    #@d29
    .line 1169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d2c
    .line 1170
    if-eqz v73, :cond_3a

    #@d2e
    .line 1171
    const/4 v6, 0x1

    #@d2f
    move-object/from16 v0, p3

    #@d31
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@d34
    .line 1172
    const/4 v6, 0x1

    #@d35
    move-object/from16 v0, v73

    #@d37
    move-object/from16 v1, p3

    #@d39
    invoke-virtual {v0, v1, v6}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    #@d3c
    .line 1177
    :goto_3a
    const/4 v6, 0x1

    #@d3d
    return v6

    #@d3e
    .line 1175
    :cond_3a
    const/4 v6, 0x0

    #@d3f
    move-object/from16 v0, p3

    #@d41
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@d44
    goto :goto_3a

    #@d45
    .line 1181
    .end local v73    # "_arg0":Landroid/view/InputChannel;
    :sswitch_5f
    const-string/jumbo v6, "android.view.IWindowManager"

    #@d48
    move-object/from16 v0, p2

    #@d4a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d4d
    .line 1182
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->removeWallpaperInputConsumer()V

    #@d50
    .line 1183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d53
    .line 1184
    const/4 v6, 0x1

    #@d54
    return v6

    #@d55
    .line 43
    nop

    #@d56
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
