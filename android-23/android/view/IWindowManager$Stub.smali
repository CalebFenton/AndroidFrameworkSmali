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

.field static final TRANSACTION_clearForcedDisplayDensity:I = 0xd

.field static final TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x4e

.field static final TRANSACTION_closeSystemDialogs:I = 0x35

.field static final TRANSACTION_disableKeyguard:I = 0x2d

.field static final TRANSACTION_dismissKeyguard:I = 0x33

.field static final TRANSACTION_enableScreenIfNeeded:I = 0x4d

.field static final TRANSACTION_executeAppTransition:I = 0x22

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x2f

.field static final TRANSACTION_freezeRotation:I = 0x44

.field static final TRANSACTION_getAnimationScale:I = 0x36

.field static final TRANSACTION_getAnimationScales:I = 0x37

.field static final TRANSACTION_getAppOrientation:I = 0x18

.field static final TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final TRANSACTION_getCurrentAnimatorScale:I = 0x3a

.field static final TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final TRANSACTION_getPendingAppTransition:I = 0x1b

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x43

.field static final TRANSACTION_getRotation:I = 0x40

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x4f

.field static final TRANSACTION_hasNavigationBar:I = 0x4a

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x32

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isKeyguardLocked:I = 0x30

.field static final TRANSACTION_isKeyguardSecure:I = 0x31

.field static final TRANSACTION_isRotationFrozen:I = 0x46

.field static final TRANSACTION_isSafeModeEnabled:I = 0x4c

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_keyguardGoingAway:I = 0x34

.field static final TRANSACTION_lockNow:I = 0x4b

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransition:I = 0x1c

.field static final TRANSACTION_overridePendingAppTransitionAspectScaledThumb:I = 0x20

.field static final TRANSACTION_overridePendingAppTransitionClipReveal:I = 0x1e

.field static final TRANSACTION_overridePendingAppTransitionInPlace:I = 0x21

.field static final TRANSACTION_overridePendingAppTransitionScaleUp:I = 0x1d

.field static final TRANSACTION_overridePendingAppTransitionThumb:I = 0x1f

.field static final TRANSACTION_pauseKeyDispatching:I = 0x10

.field static final TRANSACTION_prepareAppTransition:I = 0x1a

.field static final TRANSACTION_reenableKeyguard:I = 0x2e

.field static final TRANSACTION_removeAppToken:I = 0x28

.field static final TRANSACTION_removeRotationWatcher:I = 0x42

.field static final TRANSACTION_removeWindowToken:I = 0x14

.field static final TRANSACTION_requestAssistScreenshot:I = 0x47

.field static final TRANSACTION_resumeKeyDispatching:I = 0x11

.field static final TRANSACTION_screenshotApplications:I = 0x48

.field static final TRANSACTION_setAnimationScale:I = 0x38

.field static final TRANSACTION_setAnimationScales:I = 0x39

.field static final TRANSACTION_setAppOrientation:I = 0x17

.field static final TRANSACTION_setAppStartingWindow:I = 0x23

.field static final TRANSACTION_setAppTask:I = 0x16

.field static final TRANSACTION_setAppVisibility:I = 0x25

.field static final TRANSACTION_setAppWillBeHidden:I = 0x24

.field static final TRANSACTION_setEventDispatching:I = 0x12

.field static final TRANSACTION_setFocusedApp:I = 0x19

.field static final TRANSACTION_setForcedDisplayDensity:I = 0xc

.field static final TRANSACTION_setForcedDisplayScalingMode:I = 0xe

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setInTouchMode:I = 0x3b

.field static final TRANSACTION_setNewConfiguration:I = 0x2a

.field static final TRANSACTION_setOverscan:I = 0xf

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x3e

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x3d

.field static final TRANSACTION_showStrictModeViolation:I = 0x3c

.field static final TRANSACTION_startAppFreezingScreen:I = 0x26

.field static final TRANSACTION_startFreezingScreen:I = 0x2b

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x49

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x27

.field static final TRANSACTION_stopFreezingScreen:I = 0x2c

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_thawRotation:I = 0x45

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x29

.field static final TRANSACTION_updateRotation:I = 0x3f

.field static final TRANSACTION_watchRotation:I = 0x41


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
    .locals 72
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
    .line 958
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.view.IWindowManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.view.IWindowManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v5

    #@1e
    .line 55
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    #@23
    move-result v70

    #@24
    .line 56
    .local v70, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    .line 57
    if-eqz v70, :cond_0

    #@29
    const/4 v4, 0x1

    #@2a
    :goto_0
    move-object/from16 v0, p3

    #@2c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 58
    const/4 v4, 0x1

    #@30
    return v4

    #@31
    .line 57
    :cond_0
    const/4 v4, 0x0

    #@32
    goto :goto_0

    #@33
    .line 62
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_2
    const-string/jumbo v4, "android.view.IWindowManager"

    #@36
    move-object/from16 v0, p2

    #@38
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b
    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    #@3e
    move-result v70

    #@3f
    .line 64
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@42
    .line 65
    if-eqz v70, :cond_1

    #@44
    const/4 v4, 0x1

    #@45
    :goto_1
    move-object/from16 v0, p3

    #@47
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 66
    const/4 v4, 0x1

    #@4b
    return v4

    #@4c
    .line 65
    :cond_1
    const/4 v4, 0x0

    #@4d
    goto :goto_1

    #@4e
    .line 70
    .end local v70    # "_result":Z
    :sswitch_3
    const-string/jumbo v4, "android.view.IWindowManager"

    #@51
    move-object/from16 v0, p2

    #@53
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56
    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    #@59
    move-result v70

    #@5a
    .line 72
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d
    .line 73
    if-eqz v70, :cond_2

    #@5f
    const/4 v4, 0x1

    #@60
    :goto_2
    move-object/from16 v0, p3

    #@62
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 74
    const/4 v4, 0x1

    #@66
    return v4

    #@67
    .line 73
    :cond_2
    const/4 v4, 0x0

    #@68
    goto :goto_2

    #@69
    .line 78
    .end local v70    # "_result":Z
    :sswitch_4
    const-string/jumbo v4, "android.view.IWindowManager"

    #@6c
    move-object/from16 v0, p2

    #@6e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@71
    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@74
    move-result-object v4

    #@75
    invoke-static {v4}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    #@78
    move-result-object v52

    #@79
    .line 82
    .local v52, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7c
    move-result-object v4

    #@7d
    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@80
    move-result-object v61

    #@81
    .line 84
    .local v61, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@84
    move-result-object v4

    #@85
    invoke-static {v4}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    #@88
    move-result-object v63

    #@89
    .line 85
    .local v63, "_arg2":Lcom/android/internal/view/IInputContext;
    move-object/from16 v0, p0

    #@8b
    move-object/from16 v1, v52

    #@8d
    move-object/from16 v2, v61

    #@8f
    move-object/from16 v3, v63

    #@91
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    #@94
    move-result-object v68

    #@95
    .line 86
    .local v68, "_result":Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@98
    .line 87
    if-eqz v68, :cond_3

    #@9a
    invoke-interface/range {v68 .. v68}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    #@9d
    move-result-object v4

    #@9e
    :goto_3
    move-object/from16 v0, p3

    #@a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@a3
    .line 88
    const/4 v4, 0x1

    #@a4
    return v4

    #@a5
    .line 87
    :cond_3
    const/4 v4, 0x0

    #@a6
    goto :goto_3

    #@a7
    .line 92
    .end local v52    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v61    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v63    # "_arg2":Lcom/android/internal/view/IInputContext;
    .end local v68    # "_result":Landroid/view/IWindowSession;
    :sswitch_5
    const-string/jumbo v4, "android.view.IWindowManager"

    #@aa
    move-object/from16 v0, p2

    #@ac
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b2
    move-result-object v4

    #@b3
    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    #@b6
    move-result-object v54

    #@b7
    .line 95
    .local v54, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    #@b9
    move-object/from16 v1, v54

    #@bb
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    #@be
    move-result v70

    #@bf
    .line 96
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c2
    .line 97
    if-eqz v70, :cond_4

    #@c4
    const/4 v4, 0x1

    #@c5
    :goto_4
    move-object/from16 v0, p3

    #@c7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@ca
    .line 98
    const/4 v4, 0x1

    #@cb
    return v4

    #@cc
    .line 97
    :cond_4
    const/4 v4, 0x0

    #@cd
    goto :goto_4

    #@ce
    .line 102
    .end local v54    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v70    # "_result":Z
    :sswitch_6
    const-string/jumbo v4, "android.view.IWindowManager"

    #@d1
    move-object/from16 v0, p2

    #@d3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d6
    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d9
    move-result v5

    #@da
    .line 106
    .restart local v5    # "_arg0":I
    new-instance v59, Landroid/graphics/Point;

    #@dc
    invoke-direct/range {v59 .. v59}, Landroid/graphics/Point;-><init>()V

    #@df
    .line 107
    .local v59, "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    #@e1
    move-object/from16 v1, v59

    #@e3
    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    #@e6
    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e9
    .line 109
    if-eqz v59, :cond_5

    #@eb
    .line 110
    const/4 v4, 0x1

    #@ec
    move-object/from16 v0, p3

    #@ee
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@f1
    .line 111
    const/4 v4, 0x1

    #@f2
    move-object/from16 v0, v59

    #@f4
    move-object/from16 v1, p3

    #@f6
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    #@f9
    .line 116
    :goto_5
    const/4 v4, 0x1

    #@fa
    return v4

    #@fb
    .line 114
    :cond_5
    const/4 v4, 0x0

    #@fc
    move-object/from16 v0, p3

    #@fe
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@101
    goto :goto_5

    #@102
    .line 120
    .end local v5    # "_arg0":I
    .end local v59    # "_arg1":Landroid/graphics/Point;
    :sswitch_7
    const-string/jumbo v4, "android.view.IWindowManager"

    #@105
    move-object/from16 v0, p2

    #@107
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10a
    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10d
    move-result v5

    #@10e
    .line 124
    .restart local v5    # "_arg0":I
    new-instance v59, Landroid/graphics/Point;

    #@110
    invoke-direct/range {v59 .. v59}, Landroid/graphics/Point;-><init>()V

    #@113
    .line 125
    .restart local v59    # "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    #@115
    move-object/from16 v1, v59

    #@117
    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    #@11a
    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11d
    .line 127
    if-eqz v59, :cond_6

    #@11f
    .line 128
    const/4 v4, 0x1

    #@120
    move-object/from16 v0, p3

    #@122
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@125
    .line 129
    const/4 v4, 0x1

    #@126
    move-object/from16 v0, v59

    #@128
    move-object/from16 v1, p3

    #@12a
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    #@12d
    .line 134
    :goto_6
    const/4 v4, 0x1

    #@12e
    return v4

    #@12f
    .line 132
    :cond_6
    const/4 v4, 0x0

    #@130
    move-object/from16 v0, p3

    #@132
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@135
    goto :goto_6

    #@136
    .line 138
    .end local v5    # "_arg0":I
    .end local v59    # "_arg1":Landroid/graphics/Point;
    :sswitch_8
    const-string/jumbo v4, "android.view.IWindowManager"

    #@139
    move-object/from16 v0, p2

    #@13b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13e
    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@141
    move-result v5

    #@142
    .line 142
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@145
    move-result v6

    #@146
    .line 144
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@149
    move-result v7

    #@14a
    .line 145
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    #@14c
    invoke-virtual {v0, v5, v6, v7}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    #@14f
    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@152
    .line 147
    const/4 v4, 0x1

    #@153
    return v4

    #@154
    .line 151
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_9
    const-string/jumbo v4, "android.view.IWindowManager"

    #@157
    move-object/from16 v0, p2

    #@159
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15c
    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15f
    move-result v5

    #@160
    .line 154
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@162
    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    #@165
    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@168
    .line 156
    const/4 v4, 0x1

    #@169
    return v4

    #@16a
    .line 160
    .end local v5    # "_arg0":I
    :sswitch_a
    const-string/jumbo v4, "android.view.IWindowManager"

    #@16d
    move-object/from16 v0, p2

    #@16f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@172
    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@175
    move-result v5

    #@176
    .line 163
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@178
    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    #@17b
    move-result v65

    #@17c
    .line 164
    .local v65, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17f
    .line 165
    move-object/from16 v0, p3

    #@181
    move/from16 v1, v65

    #@183
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@186
    .line 166
    const/4 v4, 0x1

    #@187
    return v4

    #@188
    .line 170
    .end local v5    # "_arg0":I
    .end local v65    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.view.IWindowManager"

    #@18b
    move-object/from16 v0, p2

    #@18d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@190
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@193
    move-result v5

    #@194
    .line 173
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@196
    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    #@199
    move-result v65

    #@19a
    .line 174
    .restart local v65    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19d
    .line 175
    move-object/from16 v0, p3

    #@19f
    move/from16 v1, v65

    #@1a1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a4
    .line 176
    const/4 v4, 0x1

    #@1a5
    return v4

    #@1a6
    .line 180
    .end local v5    # "_arg0":I
    .end local v65    # "_result":I
    :sswitch_c
    const-string/jumbo v4, "android.view.IWindowManager"

    #@1a9
    move-object/from16 v0, p2

    #@1ab
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ae
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b1
    move-result v5

    #@1b2
    .line 184
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b5
    move-result v6

    #@1b6
    .line 185
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@1b8
    invoke-virtual {v0, v5, v6}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensity(II)V

    #@1bb
    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1be
    .line 187
    const/4 v4, 0x1

    #@1bf
    return v4

    #@1c0
    .line 191
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_d
    const-string/jumbo v4, "android.view.IWindowManager"

    #@1c3
    move-object/from16 v0, p2

    #@1c5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c8
    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cb
    move-result v5

    #@1cc
    .line 194
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@1ce
    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensity(I)V

    #@1d1
    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d4
    .line 196
    const/4 v4, 0x1

    #@1d5
    return v4

    #@1d6
    .line 200
    .end local v5    # "_arg0":I
    :sswitch_e
    const-string/jumbo v4, "android.view.IWindowManager"

    #@1d9
    move-object/from16 v0, p2

    #@1db
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1de
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e1
    move-result v5

    #@1e2
    .line 204
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e5
    move-result v6

    #@1e6
    .line 205
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@1e8
    invoke-virtual {v0, v5, v6}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    #@1eb
    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ee
    .line 207
    const/4 v4, 0x1

    #@1ef
    return v4

    #@1f0
    .line 211
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_f
    const-string/jumbo v4, "android.view.IWindowManager"

    #@1f3
    move-object/from16 v0, p2

    #@1f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f8
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fb
    move-result v5

    #@1fc
    .line 215
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ff
    move-result v6

    #@200
    .line 217
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@203
    move-result v7

    #@204
    .line 219
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@207
    move-result v8

    #@208
    .line 221
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20b
    move-result v9

    #@20c
    .local v9, "_arg4":I
    move-object/from16 v4, p0

    #@20e
    .line 222
    invoke-virtual/range {v4 .. v9}, Landroid/view/IWindowManager$Stub;->setOverscan(IIIII)V

    #@211
    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@214
    .line 224
    const/4 v4, 0x1

    #@215
    return v4

    #@216
    .line 228
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :sswitch_10
    const-string/jumbo v4, "android.view.IWindowManager"

    #@219
    move-object/from16 v0, p2

    #@21b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21e
    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@221
    move-result-object v36

    #@222
    .line 231
    .local v36, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@224
    move-object/from16 v1, v36

    #@226
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    #@229
    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22c
    .line 233
    const/4 v4, 0x1

    #@22d
    return v4

    #@22e
    .line 237
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_11
    const-string/jumbo v4, "android.view.IWindowManager"

    #@231
    move-object/from16 v0, p2

    #@233
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@236
    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@239
    move-result-object v36

    #@23a
    .line 240
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@23c
    move-object/from16 v1, v36

    #@23e
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    #@241
    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@244
    .line 242
    const/4 v4, 0x1

    #@245
    return v4

    #@246
    .line 246
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_12
    const-string/jumbo v4, "android.view.IWindowManager"

    #@249
    move-object/from16 v0, p2

    #@24b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24e
    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@251
    move-result v4

    #@252
    if-eqz v4, :cond_7

    #@254
    const/16 v56, 0x1

    #@256
    .line 249
    .local v56, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    #@258
    move/from16 v1, v56

    #@25a
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    #@25d
    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@260
    .line 251
    const/4 v4, 0x1

    #@261
    return v4

    #@262
    .line 248
    .end local v56    # "_arg0":Z
    :cond_7
    const/16 v56, 0x0

    #@264
    .restart local v56    # "_arg0":Z
    goto :goto_7

    #@265
    .line 255
    .end local v56    # "_arg0":Z
    :sswitch_13
    const-string/jumbo v4, "android.view.IWindowManager"

    #@268
    move-object/from16 v0, p2

    #@26a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26d
    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@270
    move-result-object v36

    #@271
    .line 259
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@274
    move-result v6

    #@275
    .line 260
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@277
    move-object/from16 v1, v36

    #@279
    invoke-virtual {v0, v1, v6}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    #@27c
    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27f
    .line 262
    const/4 v4, 0x1

    #@280
    return v4

    #@281
    .line 266
    .end local v6    # "_arg1":I
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_14
    const-string/jumbo v4, "android.view.IWindowManager"

    #@284
    move-object/from16 v0, p2

    #@286
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@289
    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@28c
    move-result-object v36

    #@28d
    .line 269
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@28f
    move-object/from16 v1, v36

    #@291
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    #@294
    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@297
    .line 271
    const/4 v4, 0x1

    #@298
    return v4

    #@299
    .line 275
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_15
    const-string/jumbo v4, "android.view.IWindowManager"

    #@29c
    move-object/from16 v0, p2

    #@29e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a1
    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a4
    move-result v5

    #@2a5
    .line 279
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2a8
    move-result-object v4

    #@2a9
    invoke-static {v4}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    #@2ac
    move-result-object v12

    #@2ad
    .line 281
    .local v12, "_arg1":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b0
    move-result v7

    #@2b1
    .line 283
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b4
    move-result v8

    #@2b5
    .line 285
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b8
    move-result v9

    #@2b9
    .line 287
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2bc
    move-result v4

    #@2bd
    if-eqz v4, :cond_8

    #@2bf
    const/16 v16, 0x1

    #@2c1
    .line 289
    .local v16, "_arg5":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c4
    move-result v4

    #@2c5
    if-eqz v4, :cond_9

    #@2c7
    const/16 v17, 0x1

    #@2c9
    .line 291
    .local v17, "_arg6":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cc
    move-result v18

    #@2cd
    .line 293
    .local v18, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d0
    move-result v19

    #@2d1
    .line 295
    .local v19, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d4
    move-result v4

    #@2d5
    if-eqz v4, :cond_a

    #@2d7
    const/16 v20, 0x1

    #@2d9
    .line 297
    .local v20, "_arg9":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2dc
    move-result v4

    #@2dd
    if-eqz v4, :cond_b

    #@2df
    const/16 v21, 0x1

    #@2e1
    .local v21, "_arg10":Z
    :goto_b
    move-object/from16 v10, p0

    #@2e3
    move v11, v5

    #@2e4
    move v13, v7

    #@2e5
    move v14, v8

    #@2e6
    move v15, v9

    #@2e7
    .line 298
    invoke-virtual/range {v10 .. v21}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    #@2ea
    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ed
    .line 300
    const/4 v4, 0x1

    #@2ee
    return v4

    #@2ef
    .line 287
    .end local v16    # "_arg5":Z
    .end local v17    # "_arg6":Z
    .end local v18    # "_arg7":I
    .end local v19    # "_arg8":I
    .end local v20    # "_arg9":Z
    .end local v21    # "_arg10":Z
    :cond_8
    const/16 v16, 0x0

    #@2f1
    .restart local v16    # "_arg5":Z
    goto :goto_8

    #@2f2
    .line 289
    :cond_9
    const/16 v17, 0x0

    #@2f4
    .restart local v17    # "_arg6":Z
    goto :goto_9

    #@2f5
    .line 295
    .restart local v18    # "_arg7":I
    .restart local v19    # "_arg8":I
    :cond_a
    const/16 v20, 0x0

    #@2f7
    .restart local v20    # "_arg9":Z
    goto :goto_a

    #@2f8
    .line 297
    :cond_b
    const/16 v21, 0x0

    #@2fa
    .restart local v21    # "_arg10":Z
    goto :goto_b

    #@2fb
    .line 304
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v12    # "_arg1":Landroid/view/IApplicationToken;
    .end local v16    # "_arg5":Z
    .end local v17    # "_arg6":Z
    .end local v18    # "_arg7":I
    .end local v19    # "_arg8":I
    .end local v20    # "_arg9":Z
    .end local v21    # "_arg10":Z
    :sswitch_16
    const-string/jumbo v4, "android.view.IWindowManager"

    #@2fe
    move-object/from16 v0, p2

    #@300
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@303
    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@306
    move-result-object v36

    #@307
    .line 308
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30a
    move-result v6

    #@30b
    .line 309
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@30d
    move-object/from16 v1, v36

    #@30f
    invoke-virtual {v0, v1, v6}, Landroid/view/IWindowManager$Stub;->setAppTask(Landroid/os/IBinder;I)V

    #@312
    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@315
    .line 311
    const/4 v4, 0x1

    #@316
    return v4

    #@317
    .line 315
    .end local v6    # "_arg1":I
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_17
    const-string/jumbo v4, "android.view.IWindowManager"

    #@31a
    move-object/from16 v0, p2

    #@31c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31f
    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@322
    move-result-object v4

    #@323
    invoke-static {v4}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    #@326
    move-result-object v49

    #@327
    .line 319
    .local v49, "_arg0":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@32a
    move-result v6

    #@32b
    .line 320
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@32d
    move-object/from16 v1, v49

    #@32f
    invoke-virtual {v0, v1, v6}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    #@332
    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@335
    .line 322
    const/4 v4, 0x1

    #@336
    return v4

    #@337
    .line 326
    .end local v6    # "_arg1":I
    .end local v49    # "_arg0":Landroid/view/IApplicationToken;
    :sswitch_18
    const-string/jumbo v4, "android.view.IWindowManager"

    #@33a
    move-object/from16 v0, p2

    #@33c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@33f
    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@342
    move-result-object v4

    #@343
    invoke-static {v4}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    #@346
    move-result-object v49

    #@347
    .line 329
    .restart local v49    # "_arg0":Landroid/view/IApplicationToken;
    move-object/from16 v0, p0

    #@349
    move-object/from16 v1, v49

    #@34b
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    #@34e
    move-result v65

    #@34f
    .line 330
    .restart local v65    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@352
    .line 331
    move-object/from16 v0, p3

    #@354
    move/from16 v1, v65

    #@356
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@359
    .line 332
    const/4 v4, 0x1

    #@35a
    return v4

    #@35b
    .line 336
    .end local v49    # "_arg0":Landroid/view/IApplicationToken;
    .end local v65    # "_result":I
    :sswitch_19
    const-string/jumbo v4, "android.view.IWindowManager"

    #@35e
    move-object/from16 v0, p2

    #@360
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@363
    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@366
    move-result-object v36

    #@367
    .line 340
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@36a
    move-result v4

    #@36b
    if-eqz v4, :cond_c

    #@36d
    const/16 v62, 0x1

    #@36f
    .line 341
    .local v62, "_arg1":Z
    :goto_c
    move-object/from16 v0, p0

    #@371
    move-object/from16 v1, v36

    #@373
    move/from16 v2, v62

    #@375
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    #@378
    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37b
    .line 343
    const/4 v4, 0x1

    #@37c
    return v4

    #@37d
    .line 340
    .end local v62    # "_arg1":Z
    :cond_c
    const/16 v62, 0x0

    #@37f
    .restart local v62    # "_arg1":Z
    goto :goto_c

    #@380
    .line 347
    .end local v36    # "_arg0":Landroid/os/IBinder;
    .end local v62    # "_arg1":Z
    :sswitch_1a
    const-string/jumbo v4, "android.view.IWindowManager"

    #@383
    move-object/from16 v0, p2

    #@385
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@388
    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38b
    move-result v5

    #@38c
    .line 351
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38f
    move-result v4

    #@390
    if-eqz v4, :cond_d

    #@392
    const/16 v62, 0x1

    #@394
    .line 352
    .restart local v62    # "_arg1":Z
    :goto_d
    move-object/from16 v0, p0

    #@396
    move/from16 v1, v62

    #@398
    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    #@39b
    .line 353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39e
    .line 354
    const/4 v4, 0x1

    #@39f
    return v4

    #@3a0
    .line 351
    .end local v62    # "_arg1":Z
    :cond_d
    const/16 v62, 0x0

    #@3a2
    .restart local v62    # "_arg1":Z
    goto :goto_d

    #@3a3
    .line 358
    .end local v5    # "_arg0":I
    .end local v62    # "_arg1":Z
    :sswitch_1b
    const-string/jumbo v4, "android.view.IWindowManager"

    #@3a6
    move-object/from16 v0, p2

    #@3a8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ab
    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    #@3ae
    move-result v65

    #@3af
    .line 360
    .restart local v65    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b2
    .line 361
    move-object/from16 v0, p3

    #@3b4
    move/from16 v1, v65

    #@3b6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3b9
    .line 362
    const/4 v4, 0x1

    #@3ba
    return v4

    #@3bb
    .line 366
    .end local v65    # "_result":I
    :sswitch_1c
    const-string/jumbo v4, "android.view.IWindowManager"

    #@3be
    move-object/from16 v0, p2

    #@3c0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c3
    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c6
    move-result-object v55

    #@3c7
    .line 370
    .local v55, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ca
    move-result v6

    #@3cb
    .line 372
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ce
    move-result v7

    #@3cf
    .line 374
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3d2
    move-result-object v4

    #@3d3
    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@3d6
    move-result-object v26

    #@3d7
    .line 375
    .local v26, "_arg3":Landroid/os/IRemoteCallback;
    move-object/from16 v0, p0

    #@3d9
    move-object/from16 v1, v55

    #@3db
    move-object/from16 v2, v26

    #@3dd
    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    #@3e0
    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e3
    .line 377
    const/4 v4, 0x1

    #@3e4
    return v4

    #@3e5
    .line 381
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v26    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v55    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v4, "android.view.IWindowManager"

    #@3e8
    move-object/from16 v0, p2

    #@3ea
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ed
    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f0
    move-result v5

    #@3f1
    .line 385
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f4
    move-result v6

    #@3f5
    .line 387
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f8
    move-result v7

    #@3f9
    .line 389
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3fc
    move-result v8

    #@3fd
    .line 390
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@3ff
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionScaleUp(IIII)V

    #@402
    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@405
    .line 392
    const/4 v4, 0x1

    #@406
    return v4

    #@407
    .line 396
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :sswitch_1e
    const-string/jumbo v4, "android.view.IWindowManager"

    #@40a
    move-object/from16 v0, p2

    #@40c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40f
    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@412
    move-result v5

    #@413
    .line 400
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@416
    move-result v6

    #@417
    .line 402
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41a
    move-result v7

    #@41b
    .line 404
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41e
    move-result v8

    #@41f
    .line 405
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@421
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionClipReveal(IIII)V

    #@424
    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@427
    .line 407
    const/4 v4, 0x1

    #@428
    return v4

    #@429
    .line 411
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :sswitch_1f
    const-string/jumbo v4, "android.view.IWindowManager"

    #@42c
    move-object/from16 v0, p2

    #@42e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@431
    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@434
    move-result v4

    #@435
    if-eqz v4, :cond_e

    #@437
    .line 414
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@439
    move-object/from16 v0, p2

    #@43b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43e
    move-result-object v23

    #@43f
    check-cast v23, Landroid/graphics/Bitmap;

    #@441
    .line 420
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@444
    move-result v6

    #@445
    .line 422
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@448
    move-result v7

    #@449
    .line 424
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@44c
    move-result-object v4

    #@44d
    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@450
    move-result-object v26

    #@451
    .line 426
    .restart local v26    # "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@454
    move-result v4

    #@455
    if-eqz v4, :cond_f

    #@457
    const/16 v27, 0x1

    #@459
    .local v27, "_arg4":Z
    :goto_f
    move-object/from16 v22, p0

    #@45b
    move/from16 v24, v6

    #@45d
    move/from16 v25, v7

    #@45f
    .line 427
    invoke-virtual/range {v22 .. v27}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    #@462
    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@465
    .line 429
    const/4 v4, 0x1

    #@466
    return v4

    #@467
    .line 417
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v26    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v27    # "_arg4":Z
    :cond_e
    const/16 v23, 0x0

    #@469
    .local v23, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_e

    #@46a
    .line 426
    .end local v23    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v26    # "_arg3":Landroid/os/IRemoteCallback;
    :cond_f
    const/16 v27, 0x0

    #@46c
    .restart local v27    # "_arg4":Z
    goto :goto_f

    #@46d
    .line 433
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v26    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v27    # "_arg4":Z
    :sswitch_20
    const-string/jumbo v4, "android.view.IWindowManager"

    #@470
    move-object/from16 v0, p2

    #@472
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@475
    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@478
    move-result v4

    #@479
    if-eqz v4, :cond_10

    #@47b
    .line 436
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@47d
    move-object/from16 v0, p2

    #@47f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@482
    move-result-object v23

    #@483
    check-cast v23, Landroid/graphics/Bitmap;

    #@485
    .line 442
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@488
    move-result v6

    #@489
    .line 444
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@48c
    move-result v7

    #@48d
    .line 446
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@490
    move-result v8

    #@491
    .line 448
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@494
    move-result v9

    #@495
    .line 450
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@498
    move-result-object v4

    #@499
    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    #@49c
    move-result-object v34

    #@49d
    .line 452
    .local v34, "_arg5":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a0
    move-result v4

    #@4a1
    if-eqz v4, :cond_11

    #@4a3
    const/16 v17, 0x1

    #@4a5
    .restart local v17    # "_arg6":Z
    :goto_11
    move-object/from16 v28, p0

    #@4a7
    move-object/from16 v29, v23

    #@4a9
    move/from16 v30, v6

    #@4ab
    move/from16 v31, v7

    #@4ad
    move/from16 v32, v8

    #@4af
    move/from16 v33, v9

    #@4b1
    move/from16 v35, v17

    #@4b3
    .line 453
    invoke-virtual/range {v28 .. v35}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V

    #@4b6
    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b9
    .line 455
    const/4 v4, 0x1

    #@4ba
    return v4

    #@4bb
    .line 439
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v17    # "_arg6":Z
    .end local v34    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_10
    const/16 v23, 0x0

    #@4bd
    .restart local v23    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_10

    #@4be
    .line 452
    .end local v23    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":I
    .restart local v34    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_11
    const/16 v17, 0x0

    #@4c0
    .restart local v17    # "_arg6":Z
    goto :goto_11

    #@4c1
    .line 459
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v17    # "_arg6":Z
    .end local v34    # "_arg5":Landroid/os/IRemoteCallback;
    :sswitch_21
    const-string/jumbo v4, "android.view.IWindowManager"

    #@4c4
    move-object/from16 v0, p2

    #@4c6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c9
    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4cc
    move-result-object v55

    #@4cd
    .line 463
    .restart local v55    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d0
    move-result v6

    #@4d1
    .line 464
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@4d3
    move-object/from16 v1, v55

    #@4d5
    invoke-virtual {v0, v1, v6}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionInPlace(Ljava/lang/String;I)V

    #@4d8
    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4db
    .line 466
    const/4 v4, 0x1

    #@4dc
    return v4

    #@4dd
    .line 470
    .end local v6    # "_arg1":I
    .end local v55    # "_arg0":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v4, "android.view.IWindowManager"

    #@4e0
    move-object/from16 v0, p2

    #@4e2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4e5
    .line 471
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    #@4e8
    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4eb
    .line 473
    const/4 v4, 0x1

    #@4ec
    return v4

    #@4ed
    .line 477
    :sswitch_23
    const-string/jumbo v4, "android.view.IWindowManager"

    #@4f0
    move-object/from16 v0, p2

    #@4f2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f5
    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4f8
    move-result-object v36

    #@4f9
    .line 481
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4fc
    move-result-object v37

    #@4fd
    .line 483
    .local v37, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@500
    move-result v7

    #@501
    .line 485
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@504
    move-result v4

    #@505
    if-eqz v4, :cond_12

    #@507
    .line 486
    sget-object v4, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@509
    move-object/from16 v0, p2

    #@50b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@50e
    move-result-object v39

    #@50f
    check-cast v39, Landroid/content/res/CompatibilityInfo;

    #@511
    .line 492
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@514
    move-result v4

    #@515
    if-eqz v4, :cond_13

    #@517
    .line 493
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@519
    move-object/from16 v0, p2

    #@51b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@51e
    move-result-object v40

    #@51f
    check-cast v40, Ljava/lang/CharSequence;

    #@521
    .line 499
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@524
    move-result v41

    #@525
    .line 501
    .local v41, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@528
    move-result v42

    #@529
    .line 503
    .local v42, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@52c
    move-result v18

    #@52d
    .line 505
    .restart local v18    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@530
    move-result v19

    #@531
    .line 507
    .restart local v19    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@534
    move-result-object v45

    #@535
    .line 509
    .local v45, "_arg9":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@538
    move-result v4

    #@539
    if-eqz v4, :cond_14

    #@53b
    const/16 v21, 0x1

    #@53d
    .restart local v21    # "_arg10":Z
    :goto_14
    move-object/from16 v35, p0

    #@53f
    move/from16 v38, v7

    #@541
    move/from16 v43, v18

    #@543
    move/from16 v44, v19

    #@545
    move/from16 v46, v21

    #@547
    .line 510
    invoke-virtual/range {v35 .. v46}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    #@54a
    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@54d
    .line 512
    const/4 v4, 0x1

    #@54e
    return v4

    #@54f
    .line 489
    .end local v18    # "_arg7":I
    .end local v19    # "_arg8":I
    .end local v21    # "_arg10":Z
    .end local v41    # "_arg5":I
    .end local v42    # "_arg6":I
    .end local v45    # "_arg9":Landroid/os/IBinder;
    :cond_12
    const/16 v39, 0x0

    #@551
    .local v39, "_arg3":Landroid/content/res/CompatibilityInfo;
    goto :goto_12

    #@552
    .line 496
    .end local v39    # "_arg3":Landroid/content/res/CompatibilityInfo;
    :cond_13
    const/16 v40, 0x0

    #@554
    .local v40, "_arg4":Ljava/lang/CharSequence;
    goto :goto_13

    #@555
    .line 509
    .end local v40    # "_arg4":Ljava/lang/CharSequence;
    .restart local v18    # "_arg7":I
    .restart local v19    # "_arg8":I
    .restart local v41    # "_arg5":I
    .restart local v42    # "_arg6":I
    .restart local v45    # "_arg9":Landroid/os/IBinder;
    :cond_14
    const/16 v21, 0x0

    #@557
    .restart local v21    # "_arg10":Z
    goto :goto_14

    #@558
    .line 516
    .end local v7    # "_arg2":I
    .end local v18    # "_arg7":I
    .end local v19    # "_arg8":I
    .end local v21    # "_arg10":Z
    .end local v36    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v41    # "_arg5":I
    .end local v42    # "_arg6":I
    .end local v45    # "_arg9":Landroid/os/IBinder;
    :sswitch_24
    const-string/jumbo v4, "android.view.IWindowManager"

    #@55b
    move-object/from16 v0, p2

    #@55d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@560
    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@563
    move-result-object v36

    #@564
    .line 519
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@566
    move-object/from16 v1, v36

    #@568
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setAppWillBeHidden(Landroid/os/IBinder;)V

    #@56b
    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@56e
    .line 521
    const/4 v4, 0x1

    #@56f
    return v4

    #@570
    .line 525
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_25
    const-string/jumbo v4, "android.view.IWindowManager"

    #@573
    move-object/from16 v0, p2

    #@575
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@578
    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@57b
    move-result-object v36

    #@57c
    .line 529
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@57f
    move-result v4

    #@580
    if-eqz v4, :cond_15

    #@582
    const/16 v62, 0x1

    #@584
    .line 530
    .restart local v62    # "_arg1":Z
    :goto_15
    move-object/from16 v0, p0

    #@586
    move-object/from16 v1, v36

    #@588
    move/from16 v2, v62

    #@58a
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@58d
    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@590
    .line 532
    const/4 v4, 0x1

    #@591
    return v4

    #@592
    .line 529
    .end local v62    # "_arg1":Z
    :cond_15
    const/16 v62, 0x0

    #@594
    .restart local v62    # "_arg1":Z
    goto :goto_15

    #@595
    .line 536
    .end local v36    # "_arg0":Landroid/os/IBinder;
    .end local v62    # "_arg1":Z
    :sswitch_26
    const-string/jumbo v4, "android.view.IWindowManager"

    #@598
    move-object/from16 v0, p2

    #@59a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59d
    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5a0
    move-result-object v36

    #@5a1
    .line 540
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a4
    move-result v6

    #@5a5
    .line 541
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@5a7
    move-object/from16 v1, v36

    #@5a9
    invoke-virtual {v0, v1, v6}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    #@5ac
    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5af
    .line 543
    const/4 v4, 0x1

    #@5b0
    return v4

    #@5b1
    .line 547
    .end local v6    # "_arg1":I
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_27
    const-string/jumbo v4, "android.view.IWindowManager"

    #@5b4
    move-object/from16 v0, p2

    #@5b6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b9
    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5bc
    move-result-object v36

    #@5bd
    .line 551
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c0
    move-result v4

    #@5c1
    if-eqz v4, :cond_16

    #@5c3
    const/16 v62, 0x1

    #@5c5
    .line 552
    .restart local v62    # "_arg1":Z
    :goto_16
    move-object/from16 v0, p0

    #@5c7
    move-object/from16 v1, v36

    #@5c9
    move/from16 v2, v62

    #@5cb
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    #@5ce
    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d1
    .line 554
    const/4 v4, 0x1

    #@5d2
    return v4

    #@5d3
    .line 551
    .end local v62    # "_arg1":Z
    :cond_16
    const/16 v62, 0x0

    #@5d5
    .restart local v62    # "_arg1":Z
    goto :goto_16

    #@5d6
    .line 558
    .end local v36    # "_arg0":Landroid/os/IBinder;
    .end local v62    # "_arg1":Z
    :sswitch_28
    const-string/jumbo v4, "android.view.IWindowManager"

    #@5d9
    move-object/from16 v0, p2

    #@5db
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5de
    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5e1
    move-result-object v36

    #@5e2
    .line 561
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@5e4
    move-object/from16 v1, v36

    #@5e6
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    #@5e9
    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ec
    .line 563
    const/4 v4, 0x1

    #@5ed
    return v4

    #@5ee
    .line 567
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_29
    const-string/jumbo v4, "android.view.IWindowManager"

    #@5f1
    move-object/from16 v0, p2

    #@5f3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f6
    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f9
    move-result v4

    #@5fa
    if-eqz v4, :cond_17

    #@5fc
    .line 570
    sget-object v4, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5fe
    move-object/from16 v0, p2

    #@600
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@603
    move-result-object v47

    #@604
    check-cast v47, Landroid/content/res/Configuration;

    #@606
    .line 576
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@609
    move-result-object v60

    #@60a
    .line 577
    .local v60, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@60c
    move-object/from16 v1, v47

    #@60e
    move-object/from16 v2, v60

    #@610
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    #@613
    move-result-object v66

    #@614
    .line 578
    .local v66, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@617
    .line 579
    if-eqz v66, :cond_18

    #@619
    .line 580
    const/4 v4, 0x1

    #@61a
    move-object/from16 v0, p3

    #@61c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@61f
    .line 581
    const/4 v4, 0x1

    #@620
    move-object/from16 v0, v66

    #@622
    move-object/from16 v1, p3

    #@624
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    #@627
    .line 586
    :goto_18
    const/4 v4, 0x1

    #@628
    return v4

    #@629
    .line 573
    .end local v60    # "_arg1":Landroid/os/IBinder;
    .end local v66    # "_result":Landroid/content/res/Configuration;
    :cond_17
    const/16 v47, 0x0

    #@62b
    .local v47, "_arg0":Landroid/content/res/Configuration;
    goto :goto_17

    #@62c
    .line 584
    .end local v47    # "_arg0":Landroid/content/res/Configuration;
    .restart local v60    # "_arg1":Landroid/os/IBinder;
    .restart local v66    # "_result":Landroid/content/res/Configuration;
    :cond_18
    const/4 v4, 0x0

    #@62d
    move-object/from16 v0, p3

    #@62f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@632
    goto :goto_18

    #@633
    .line 590
    .end local v60    # "_arg1":Landroid/os/IBinder;
    .end local v66    # "_result":Landroid/content/res/Configuration;
    :sswitch_2a
    const-string/jumbo v4, "android.view.IWindowManager"

    #@636
    move-object/from16 v0, p2

    #@638
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@63b
    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63e
    move-result v4

    #@63f
    if-eqz v4, :cond_19

    #@641
    .line 593
    sget-object v4, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@643
    move-object/from16 v0, p2

    #@645
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@648
    move-result-object v47

    #@649
    check-cast v47, Landroid/content/res/Configuration;

    #@64b
    .line 598
    :goto_19
    move-object/from16 v0, p0

    #@64d
    move-object/from16 v1, v47

    #@64f
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)V

    #@652
    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@655
    .line 600
    const/4 v4, 0x1

    #@656
    return v4

    #@657
    .line 596
    :cond_19
    const/16 v47, 0x0

    #@659
    .restart local v47    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_19

    #@65a
    .line 604
    .end local v47    # "_arg0":Landroid/content/res/Configuration;
    :sswitch_2b
    const-string/jumbo v4, "android.view.IWindowManager"

    #@65d
    move-object/from16 v0, p2

    #@65f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@662
    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@665
    move-result v5

    #@666
    .line 608
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@669
    move-result v6

    #@66a
    .line 609
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@66c
    invoke-virtual {v0, v5, v6}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    #@66f
    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@672
    .line 611
    const/4 v4, 0x1

    #@673
    return v4

    #@674
    .line 615
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_2c
    const-string/jumbo v4, "android.view.IWindowManager"

    #@677
    move-object/from16 v0, p2

    #@679
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67c
    .line 616
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    #@67f
    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@682
    .line 618
    const/4 v4, 0x1

    #@683
    return v4

    #@684
    .line 622
    :sswitch_2d
    const-string/jumbo v4, "android.view.IWindowManager"

    #@687
    move-object/from16 v0, p2

    #@689
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68c
    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@68f
    move-result-object v36

    #@690
    .line 626
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@693
    move-result-object v37

    #@694
    .line 627
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@696
    move-object/from16 v1, v36

    #@698
    move-object/from16 v2, v37

    #@69a
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    #@69d
    .line 628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a0
    .line 629
    const/4 v4, 0x1

    #@6a1
    return v4

    #@6a2
    .line 633
    .end local v36    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_arg1":Ljava/lang/String;
    :sswitch_2e
    const-string/jumbo v4, "android.view.IWindowManager"

    #@6a5
    move-object/from16 v0, p2

    #@6a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6aa
    .line 635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6ad
    move-result-object v36

    #@6ae
    .line 636
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@6b0
    move-object/from16 v1, v36

    #@6b2
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    #@6b5
    .line 637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6b8
    .line 638
    const/4 v4, 0x1

    #@6b9
    return v4

    #@6ba
    .line 642
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_2f
    const-string/jumbo v4, "android.view.IWindowManager"

    #@6bd
    move-object/from16 v0, p2

    #@6bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c2
    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6c5
    move-result-object v4

    #@6c6
    invoke-static {v4}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    #@6c9
    move-result-object v50

    #@6ca
    .line 645
    .local v50, "_arg0":Landroid/view/IOnKeyguardExitResult;
    move-object/from16 v0, p0

    #@6cc
    move-object/from16 v1, v50

    #@6ce
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    #@6d1
    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d4
    .line 647
    const/4 v4, 0x1

    #@6d5
    return v4

    #@6d6
    .line 651
    .end local v50    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :sswitch_30
    const-string/jumbo v4, "android.view.IWindowManager"

    #@6d9
    move-object/from16 v0, p2

    #@6db
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6de
    .line 652
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    #@6e1
    move-result v70

    #@6e2
    .line 653
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6e5
    .line 654
    if-eqz v70, :cond_1a

    #@6e7
    const/4 v4, 0x1

    #@6e8
    :goto_1a
    move-object/from16 v0, p3

    #@6ea
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6ed
    .line 655
    const/4 v4, 0x1

    #@6ee
    return v4

    #@6ef
    .line 654
    :cond_1a
    const/4 v4, 0x0

    #@6f0
    goto :goto_1a

    #@6f1
    .line 659
    .end local v70    # "_result":Z
    :sswitch_31
    const-string/jumbo v4, "android.view.IWindowManager"

    #@6f4
    move-object/from16 v0, p2

    #@6f6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f9
    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    #@6fc
    move-result v70

    #@6fd
    .line 661
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@700
    .line 662
    if-eqz v70, :cond_1b

    #@702
    const/4 v4, 0x1

    #@703
    :goto_1b
    move-object/from16 v0, p3

    #@705
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@708
    .line 663
    const/4 v4, 0x1

    #@709
    return v4

    #@70a
    .line 662
    :cond_1b
    const/4 v4, 0x0

    #@70b
    goto :goto_1b

    #@70c
    .line 667
    .end local v70    # "_result":Z
    :sswitch_32
    const-string/jumbo v4, "android.view.IWindowManager"

    #@70f
    move-object/from16 v0, p2

    #@711
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@714
    .line 668
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    #@717
    move-result v70

    #@718
    .line 669
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@71b
    .line 670
    if-eqz v70, :cond_1c

    #@71d
    const/4 v4, 0x1

    #@71e
    :goto_1c
    move-object/from16 v0, p3

    #@720
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@723
    .line 671
    const/4 v4, 0x1

    #@724
    return v4

    #@725
    .line 670
    :cond_1c
    const/4 v4, 0x0

    #@726
    goto :goto_1c

    #@727
    .line 675
    .end local v70    # "_result":Z
    :sswitch_33
    const-string/jumbo v4, "android.view.IWindowManager"

    #@72a
    move-object/from16 v0, p2

    #@72c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72f
    .line 676
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->dismissKeyguard()V

    #@732
    .line 677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@735
    .line 678
    const/4 v4, 0x1

    #@736
    return v4

    #@737
    .line 682
    :sswitch_34
    const-string/jumbo v4, "android.view.IWindowManager"

    #@73a
    move-object/from16 v0, p2

    #@73c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@73f
    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@742
    move-result v4

    #@743
    if-eqz v4, :cond_1d

    #@745
    const/16 v56, 0x1

    #@747
    .line 686
    .restart local v56    # "_arg0":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@74a
    move-result v4

    #@74b
    if-eqz v4, :cond_1e

    #@74d
    const/16 v62, 0x1

    #@74f
    .line 687
    .restart local v62    # "_arg1":Z
    :goto_1e
    move-object/from16 v0, p0

    #@751
    move/from16 v1, v56

    #@753
    move/from16 v2, v62

    #@755
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->keyguardGoingAway(ZZ)V

    #@758
    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@75b
    .line 689
    const/4 v4, 0x1

    #@75c
    return v4

    #@75d
    .line 684
    .end local v56    # "_arg0":Z
    .end local v62    # "_arg1":Z
    :cond_1d
    const/16 v56, 0x0

    #@75f
    .restart local v56    # "_arg0":Z
    goto :goto_1d

    #@760
    .line 686
    :cond_1e
    const/16 v62, 0x0

    #@762
    .restart local v62    # "_arg1":Z
    goto :goto_1e

    #@763
    .line 693
    .end local v56    # "_arg0":Z
    .end local v62    # "_arg1":Z
    :sswitch_35
    const-string/jumbo v4, "android.view.IWindowManager"

    #@766
    move-object/from16 v0, p2

    #@768
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@76b
    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@76e
    move-result-object v55

    #@76f
    .line 696
    .restart local v55    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@771
    move-object/from16 v1, v55

    #@773
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    #@776
    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@779
    .line 698
    const/4 v4, 0x1

    #@77a
    return v4

    #@77b
    .line 702
    .end local v55    # "_arg0":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v4, "android.view.IWindowManager"

    #@77e
    move-object/from16 v0, p2

    #@780
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@783
    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@786
    move-result v5

    #@787
    .line 705
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@789
    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    #@78c
    move-result v64

    #@78d
    .line 706
    .local v64, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@790
    .line 707
    move-object/from16 v0, p3

    #@792
    move/from16 v1, v64

    #@794
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@797
    .line 708
    const/4 v4, 0x1

    #@798
    return v4

    #@799
    .line 712
    .end local v5    # "_arg0":I
    .end local v64    # "_result":F
    :sswitch_37
    const-string/jumbo v4, "android.view.IWindowManager"

    #@79c
    move-object/from16 v0, p2

    #@79e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7a1
    .line 713
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    #@7a4
    move-result-object v71

    #@7a5
    .line 714
    .local v71, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7a8
    .line 715
    move-object/from16 v0, p3

    #@7aa
    move-object/from16 v1, v71

    #@7ac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@7af
    .line 716
    const/4 v4, 0x1

    #@7b0
    return v4

    #@7b1
    .line 720
    .end local v71    # "_result":[F
    :sswitch_38
    const-string/jumbo v4, "android.view.IWindowManager"

    #@7b4
    move-object/from16 v0, p2

    #@7b6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7b9
    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7bc
    move-result v5

    #@7bd
    .line 724
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@7c0
    move-result v58

    #@7c1
    .line 725
    .local v58, "_arg1":F
    move-object/from16 v0, p0

    #@7c3
    move/from16 v1, v58

    #@7c5
    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    #@7c8
    .line 726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7cb
    .line 727
    const/4 v4, 0x1

    #@7cc
    return v4

    #@7cd
    .line 731
    .end local v5    # "_arg0":I
    .end local v58    # "_arg1":F
    :sswitch_39
    const-string/jumbo v4, "android.view.IWindowManager"

    #@7d0
    move-object/from16 v0, p2

    #@7d2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7d5
    .line 733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    #@7d8
    move-result-object v57

    #@7d9
    .line 734
    .local v57, "_arg0":[F
    move-object/from16 v0, p0

    #@7db
    move-object/from16 v1, v57

    #@7dd
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    #@7e0
    .line 735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e3
    .line 736
    const/4 v4, 0x1

    #@7e4
    return v4

    #@7e5
    .line 740
    .end local v57    # "_arg0":[F
    :sswitch_3a
    const-string/jumbo v4, "android.view.IWindowManager"

    #@7e8
    move-object/from16 v0, p2

    #@7ea
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ed
    .line 741
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    #@7f0
    move-result v64

    #@7f1
    .line 742
    .restart local v64    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f4
    .line 743
    move-object/from16 v0, p3

    #@7f6
    move/from16 v1, v64

    #@7f8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@7fb
    .line 744
    const/4 v4, 0x1

    #@7fc
    return v4

    #@7fd
    .line 748
    .end local v64    # "_result":F
    :sswitch_3b
    const-string/jumbo v4, "android.view.IWindowManager"

    #@800
    move-object/from16 v0, p2

    #@802
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@805
    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@808
    move-result v4

    #@809
    if-eqz v4, :cond_1f

    #@80b
    const/16 v56, 0x1

    #@80d
    .line 751
    .restart local v56    # "_arg0":Z
    :goto_1f
    move-object/from16 v0, p0

    #@80f
    move/from16 v1, v56

    #@811
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    #@814
    .line 752
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@817
    .line 753
    const/4 v4, 0x1

    #@818
    return v4

    #@819
    .line 750
    .end local v56    # "_arg0":Z
    :cond_1f
    const/16 v56, 0x0

    #@81b
    .restart local v56    # "_arg0":Z
    goto :goto_1f

    #@81c
    .line 757
    .end local v56    # "_arg0":Z
    :sswitch_3c
    const-string/jumbo v4, "android.view.IWindowManager"

    #@81f
    move-object/from16 v0, p2

    #@821
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@824
    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@827
    move-result v4

    #@828
    if-eqz v4, :cond_20

    #@82a
    const/16 v56, 0x1

    #@82c
    .line 760
    .restart local v56    # "_arg0":Z
    :goto_20
    move-object/from16 v0, p0

    #@82e
    move/from16 v1, v56

    #@830
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    #@833
    .line 761
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@836
    .line 762
    const/4 v4, 0x1

    #@837
    return v4

    #@838
    .line 759
    .end local v56    # "_arg0":Z
    :cond_20
    const/16 v56, 0x0

    #@83a
    .restart local v56    # "_arg0":Z
    goto :goto_20

    #@83b
    .line 766
    .end local v56    # "_arg0":Z
    :sswitch_3d
    const-string/jumbo v4, "android.view.IWindowManager"

    #@83e
    move-object/from16 v0, p2

    #@840
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@843
    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@846
    move-result-object v55

    #@847
    .line 769
    .restart local v55    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@849
    move-object/from16 v1, v55

    #@84b
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    #@84e
    .line 770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@851
    .line 771
    const/4 v4, 0x1

    #@852
    return v4

    #@853
    .line 775
    .end local v55    # "_arg0":Ljava/lang/String;
    :sswitch_3e
    const-string/jumbo v4, "android.view.IWindowManager"

    #@856
    move-object/from16 v0, p2

    #@858
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@85b
    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@85e
    move-result v5

    #@85f
    .line 779
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@862
    move-result v4

    #@863
    if-eqz v4, :cond_21

    #@865
    const/16 v62, 0x1

    #@867
    .line 780
    .restart local v62    # "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    #@869
    move/from16 v1, v62

    #@86b
    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowManager$Stub;->setScreenCaptureDisabled(IZ)V

    #@86e
    .line 781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@871
    .line 782
    const/4 v4, 0x1

    #@872
    return v4

    #@873
    .line 779
    .end local v62    # "_arg1":Z
    :cond_21
    const/16 v62, 0x0

    #@875
    .restart local v62    # "_arg1":Z
    goto :goto_21

    #@876
    .line 786
    .end local v5    # "_arg0":I
    .end local v62    # "_arg1":Z
    :sswitch_3f
    const-string/jumbo v4, "android.view.IWindowManager"

    #@879
    move-object/from16 v0, p2

    #@87b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@87e
    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@881
    move-result v4

    #@882
    if-eqz v4, :cond_22

    #@884
    const/16 v56, 0x1

    #@886
    .line 790
    .restart local v56    # "_arg0":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@889
    move-result v4

    #@88a
    if-eqz v4, :cond_23

    #@88c
    const/16 v62, 0x1

    #@88e
    .line 791
    .restart local v62    # "_arg1":Z
    :goto_23
    move-object/from16 v0, p0

    #@890
    move/from16 v1, v56

    #@892
    move/from16 v2, v62

    #@894
    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    #@897
    .line 792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@89a
    .line 793
    const/4 v4, 0x1

    #@89b
    return v4

    #@89c
    .line 788
    .end local v56    # "_arg0":Z
    .end local v62    # "_arg1":Z
    :cond_22
    const/16 v56, 0x0

    #@89e
    .restart local v56    # "_arg0":Z
    goto :goto_22

    #@89f
    .line 790
    :cond_23
    const/16 v62, 0x0

    #@8a1
    .restart local v62    # "_arg1":Z
    goto :goto_23

    #@8a2
    .line 797
    .end local v56    # "_arg0":Z
    .end local v62    # "_arg1":Z
    :sswitch_40
    const-string/jumbo v4, "android.view.IWindowManager"

    #@8a5
    move-object/from16 v0, p2

    #@8a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8aa
    .line 798
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    #@8ad
    move-result v65

    #@8ae
    .line 799
    .restart local v65    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8b1
    .line 800
    move-object/from16 v0, p3

    #@8b3
    move/from16 v1, v65

    #@8b5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8b8
    .line 801
    const/4 v4, 0x1

    #@8b9
    return v4

    #@8ba
    .line 805
    .end local v65    # "_result":I
    :sswitch_41
    const-string/jumbo v4, "android.view.IWindowManager"

    #@8bd
    move-object/from16 v0, p2

    #@8bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c2
    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8c5
    move-result-object v4

    #@8c6
    invoke-static {v4}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    #@8c9
    move-result-object v51

    #@8ca
    .line 808
    .local v51, "_arg0":Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    #@8cc
    move-object/from16 v1, v51

    #@8ce
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    #@8d1
    move-result v65

    #@8d2
    .line 809
    .restart local v65    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8d5
    .line 810
    move-object/from16 v0, p3

    #@8d7
    move/from16 v1, v65

    #@8d9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8dc
    .line 811
    const/4 v4, 0x1

    #@8dd
    return v4

    #@8de
    .line 815
    .end local v51    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v65    # "_result":I
    :sswitch_42
    const-string/jumbo v4, "android.view.IWindowManager"

    #@8e1
    move-object/from16 v0, p2

    #@8e3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e6
    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8e9
    move-result-object v4

    #@8ea
    invoke-static {v4}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    #@8ed
    move-result-object v51

    #@8ee
    .line 818
    .restart local v51    # "_arg0":Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    #@8f0
    move-object/from16 v1, v51

    #@8f2
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    #@8f5
    .line 819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8f8
    .line 820
    const/4 v4, 0x1

    #@8f9
    return v4

    #@8fa
    .line 824
    .end local v51    # "_arg0":Landroid/view/IRotationWatcher;
    :sswitch_43
    const-string/jumbo v4, "android.view.IWindowManager"

    #@8fd
    move-object/from16 v0, p2

    #@8ff
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@902
    .line 825
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity()I

    #@905
    move-result v65

    #@906
    .line 826
    .restart local v65    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@909
    .line 827
    move-object/from16 v0, p3

    #@90b
    move/from16 v1, v65

    #@90d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@910
    .line 828
    const/4 v4, 0x1

    #@911
    return v4

    #@912
    .line 832
    .end local v65    # "_result":I
    :sswitch_44
    const-string/jumbo v4, "android.view.IWindowManager"

    #@915
    move-object/from16 v0, p2

    #@917
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@91a
    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@91d
    move-result v5

    #@91e
    .line 835
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@920
    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    #@923
    .line 836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@926
    .line 837
    const/4 v4, 0x1

    #@927
    return v4

    #@928
    .line 841
    .end local v5    # "_arg0":I
    :sswitch_45
    const-string/jumbo v4, "android.view.IWindowManager"

    #@92b
    move-object/from16 v0, p2

    #@92d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@930
    .line 842
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    #@933
    .line 843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@936
    .line 844
    const/4 v4, 0x1

    #@937
    return v4

    #@938
    .line 848
    :sswitch_46
    const-string/jumbo v4, "android.view.IWindowManager"

    #@93b
    move-object/from16 v0, p2

    #@93d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@940
    .line 849
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    #@943
    move-result v70

    #@944
    .line 850
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@947
    .line 851
    if-eqz v70, :cond_24

    #@949
    const/4 v4, 0x1

    #@94a
    :goto_24
    move-object/from16 v0, p3

    #@94c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@94f
    .line 852
    const/4 v4, 0x1

    #@950
    return v4

    #@951
    .line 851
    :cond_24
    const/4 v4, 0x0

    #@952
    goto :goto_24

    #@953
    .line 856
    .end local v70    # "_result":Z
    :sswitch_47
    const-string/jumbo v4, "android.view.IWindowManager"

    #@956
    move-object/from16 v0, p2

    #@958
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@95b
    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@95e
    move-result-object v4

    #@95f
    invoke-static {v4}, Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAssistScreenshotReceiver;

    #@962
    move-result-object v53

    #@963
    .line 859
    .local v53, "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    move-object/from16 v0, p0

    #@965
    move-object/from16 v1, v53

    #@967
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z

    #@96a
    move-result v70

    #@96b
    .line 860
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@96e
    .line 861
    if-eqz v70, :cond_25

    #@970
    const/4 v4, 0x1

    #@971
    :goto_25
    move-object/from16 v0, p3

    #@973
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@976
    .line 862
    const/4 v4, 0x1

    #@977
    return v4

    #@978
    .line 861
    :cond_25
    const/4 v4, 0x0

    #@979
    goto :goto_25

    #@97a
    .line 866
    .end local v53    # "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    .end local v70    # "_result":Z
    :sswitch_48
    const-string/jumbo v4, "android.view.IWindowManager"

    #@97d
    move-object/from16 v0, p2

    #@97f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@982
    .line 868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@985
    move-result-object v36

    #@986
    .line 870
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@989
    move-result v6

    #@98a
    .line 872
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@98d
    move-result v7

    #@98e
    .line 874
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@991
    move-result v8

    #@992
    .line 875
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@994
    move-object/from16 v1, v36

    #@996
    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/view/IWindowManager$Stub;->screenshotApplications(Landroid/os/IBinder;III)Landroid/graphics/Bitmap;

    #@999
    move-result-object v67

    #@99a
    .line 876
    .local v67, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@99d
    .line 877
    if-eqz v67, :cond_26

    #@99f
    .line 878
    const/4 v4, 0x1

    #@9a0
    move-object/from16 v0, p3

    #@9a2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9a5
    .line 879
    const/4 v4, 0x1

    #@9a6
    move-object/from16 v0, v67

    #@9a8
    move-object/from16 v1, p3

    #@9aa
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@9ad
    .line 884
    :goto_26
    const/4 v4, 0x1

    #@9ae
    return v4

    #@9af
    .line 882
    :cond_26
    const/4 v4, 0x0

    #@9b0
    move-object/from16 v0, p3

    #@9b2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9b5
    goto :goto_26

    #@9b6
    .line 888
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v36    # "_arg0":Landroid/os/IBinder;
    .end local v67    # "_result":Landroid/graphics/Bitmap;
    :sswitch_49
    const-string/jumbo v4, "android.view.IWindowManager"

    #@9b9
    move-object/from16 v0, p2

    #@9bb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9be
    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9c1
    move-result v5

    #@9c2
    .line 891
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@9c4
    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    #@9c7
    .line 892
    const/4 v4, 0x1

    #@9c8
    return v4

    #@9c9
    .line 896
    .end local v5    # "_arg0":I
    :sswitch_4a
    const-string/jumbo v4, "android.view.IWindowManager"

    #@9cc
    move-object/from16 v0, p2

    #@9ce
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d1
    .line 897
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar()Z

    #@9d4
    move-result v70

    #@9d5
    .line 898
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9d8
    .line 899
    if-eqz v70, :cond_27

    #@9da
    const/4 v4, 0x1

    #@9db
    :goto_27
    move-object/from16 v0, p3

    #@9dd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9e0
    .line 900
    const/4 v4, 0x1

    #@9e1
    return v4

    #@9e2
    .line 899
    :cond_27
    const/4 v4, 0x0

    #@9e3
    goto :goto_27

    #@9e4
    .line 904
    .end local v70    # "_result":Z
    :sswitch_4b
    const-string/jumbo v4, "android.view.IWindowManager"

    #@9e7
    move-object/from16 v0, p2

    #@9e9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9ec
    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9ef
    move-result v4

    #@9f0
    if-eqz v4, :cond_28

    #@9f2
    .line 907
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9f4
    move-object/from16 v0, p2

    #@9f6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9f9
    move-result-object v48

    #@9fa
    check-cast v48, Landroid/os/Bundle;

    #@9fc
    .line 912
    :goto_28
    move-object/from16 v0, p0

    #@9fe
    move-object/from16 v1, v48

    #@a00
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    #@a03
    .line 913
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a06
    .line 914
    const/4 v4, 0x1

    #@a07
    return v4

    #@a08
    .line 910
    :cond_28
    const/16 v48, 0x0

    #@a0a
    .local v48, "_arg0":Landroid/os/Bundle;
    goto :goto_28

    #@a0b
    .line 918
    .end local v48    # "_arg0":Landroid/os/Bundle;
    :sswitch_4c
    const-string/jumbo v4, "android.view.IWindowManager"

    #@a0e
    move-object/from16 v0, p2

    #@a10
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a13
    .line 919
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    #@a16
    move-result v70

    #@a17
    .line 920
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a1a
    .line 921
    if-eqz v70, :cond_29

    #@a1c
    const/4 v4, 0x1

    #@a1d
    :goto_29
    move-object/from16 v0, p3

    #@a1f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a22
    .line 922
    const/4 v4, 0x1

    #@a23
    return v4

    #@a24
    .line 921
    :cond_29
    const/4 v4, 0x0

    #@a25
    goto :goto_29

    #@a26
    .line 926
    .end local v70    # "_result":Z
    :sswitch_4d
    const-string/jumbo v4, "android.view.IWindowManager"

    #@a29
    move-object/from16 v0, p2

    #@a2b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2e
    .line 927
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    #@a31
    .line 928
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a34
    .line 929
    const/4 v4, 0x1

    #@a35
    return v4

    #@a36
    .line 933
    :sswitch_4e
    const-string/jumbo v4, "android.view.IWindowManager"

    #@a39
    move-object/from16 v0, p2

    #@a3b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a3e
    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a41
    move-result-object v36

    #@a42
    .line 936
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@a44
    move-object/from16 v1, v36

    #@a46
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    #@a49
    move-result v70

    #@a4a
    .line 937
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a4d
    .line 938
    if-eqz v70, :cond_2a

    #@a4f
    const/4 v4, 0x1

    #@a50
    :goto_2a
    move-object/from16 v0, p3

    #@a52
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a55
    .line 939
    const/4 v4, 0x1

    #@a56
    return v4

    #@a57
    .line 938
    :cond_2a
    const/4 v4, 0x0

    #@a58
    goto :goto_2a

    #@a59
    .line 943
    .end local v36    # "_arg0":Landroid/os/IBinder;
    .end local v70    # "_result":Z
    :sswitch_4f
    const-string/jumbo v4, "android.view.IWindowManager"

    #@a5c
    move-object/from16 v0, p2

    #@a5e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a61
    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a64
    move-result-object v36

    #@a65
    .line 946
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@a67
    move-object/from16 v1, v36

    #@a69
    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    #@a6c
    move-result-object v69

    #@a6d
    .line 947
    .local v69, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a70
    .line 948
    if-eqz v69, :cond_2b

    #@a72
    .line 949
    const/4 v4, 0x1

    #@a73
    move-object/from16 v0, p3

    #@a75
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a78
    .line 950
    const/4 v4, 0x1

    #@a79
    move-object/from16 v0, v69

    #@a7b
    move-object/from16 v1, p3

    #@a7d
    invoke-virtual {v0, v1, v4}, Landroid/view/WindowContentFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    #@a80
    .line 955
    :goto_2b
    const/4 v4, 0x1

    #@a81
    return v4

    #@a82
    .line 953
    :cond_2b
    const/4 v4, 0x0

    #@a83
    move-object/from16 v0, p3

    #@a85
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a88
    goto :goto_2b

    #@a89
    .line 43
    nop

    #@a8a
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
