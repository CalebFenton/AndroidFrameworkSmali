.class public Landroid/hardware/input/IInputManager$Default;
.super Ljava/lang/Object;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "data"    # Landroid/hardware/input/AidlInputGestureData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addPortAssociation(Ljava/lang/String;I)V
    .registers 3
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "displayPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    return-void
.end method

.method public blacklist addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "displayUniqueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    return-void
.end method

.method public blacklist addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "displayUniqueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelCurrentTouch()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    return-void
.end method

.method public blacklist cancelVibrate(ILandroid/os/IBinder;)V
    .registers 3
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    return-void
.end method

.method public blacklist clearAllModifierKeyRemappings()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    return-void
.end method

.method public blacklist closeLightSession(ILandroid/os/IBinder;)V
    .registers 3
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    return-void
.end method

.method public blacklist disableInputDevice(I)V
    .registers 2
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist disableSensor(II)V
    .registers 3
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    return-void
.end method

.method public blacklist enableInputDevice(I)V
    .registers 2
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist enableSensor(IIII)Z
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxBatchReportLatencyUs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist flushSensor(II)Z
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppLaunchBookmarks()[Landroid/hardware/input/AidlInputGestureData;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBatteryState(I)Landroid/hardware/input/IInputDeviceBatteryState;
    .registers 3
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCustomInputGestures(II)[Landroid/hardware/input/AidlInputGestureData;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHostUsiVersionFromDisplayConfig(I)Landroid/hardware/input/HostUsiVersion;
    .registers 3
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInputDevice(I)Landroid/view/InputDevice;
    .registers 3
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInputDeviceBluetoothAddress(I)Ljava/lang/String;
    .registers 3
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInputDeviceIds()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInputGesture(ILandroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/AidlInputGestureData;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "trigger"    # Landroid/hardware/input/AidlInputGestureData$Trigger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyCharacterMap(Ljava/lang/String;)Landroid/view/KeyCharacterMap;
    .registers 3
    .param p1, "layoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyCodeForKeyLocation(II)I
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "locationKeyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getKeyGlyphMap(I)Landroid/hardware/input/KeyGlyphMap;
    .registers 3
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 3
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .registers 6
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "userId"    # I
    .param p3, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p4, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;
    .registers 6
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "userId"    # I
    .param p3, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p4, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLightState(II)Landroid/hardware/lights/LightState;
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "lightId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLights(I)Ljava/util/List;
    .registers 3
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getModifierKeyRemapping()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMousePointerSpeed()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
    .registers 3
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVelocityTrackerStrategy()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVibratorIds(I)[I
    .registers 3
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasKeys(II[I[Z)Z
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "keyExists"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist injectInputEventToTarget(Landroid/view/InputEvent;II)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .param p3, "targetUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInTabletMode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMicMuted()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVibrating(I)Z
    .registers 3
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/InputMonitor;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    return-void
.end method

.method public blacklist pilferPointers(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "inputChannelToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    return-void
.end method

.method public blacklist registerBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    .registers 3
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/hardware/input/IInputDeviceBatteryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    return-void
.end method

.method public blacklist registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    return-void
.end method

.method public blacklist registerKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/hardware/input/IKeyEventActivityListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/input/IKeyGestureEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    return-void
.end method

.method public blacklist registerKeyGestureHandler([ILandroid/hardware/input/IKeyGestureHandler;)V
    .registers 3
    .param p1, "keyGesturesToHandle"    # [I
    .param p2, "handler"    # Landroid/hardware/input/IKeyGestureHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    return-void
.end method

.method public blacklist registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/input/IKeyboardBacklightListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    return-void
.end method

.method public blacklist registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/hardware/input/IInputSensorEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/input/IStickyModifierStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    return-void
.end method

.method public blacklist registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/input/ITabletModeChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    return-void
.end method

.method public blacklist registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist remapModifierKey(II)V
    .registers 3
    .param p1, "fromKey"    # I
    .param p2, "toKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method public blacklist removeAllCustomInputGestures(II)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    return-void
.end method

.method public blacklist removeCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "data"    # Landroid/hardware/input/AidlInputGestureData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removePortAssociation(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputPort"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    return-void
.end method

.method public blacklist removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    return-void
.end method

.method public blacklist removeUniqueIdAssociationByPort(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputPort"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    return-void
.end method

.method public blacklist requestPointerCapture(Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "inputChannelToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    return-void
.end method

.method public blacklist resetLockedModifierState()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    return-void
.end method

.method public blacklist setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .registers 6
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "userId"    # I
    .param p3, "imeInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p4, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p5, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public blacklist setKeyboardLayoutOverrideForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public blacklist setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "lightIds"    # [I
    .param p3, "states"    # [Landroid/hardware/lights/LightState;
    .param p4, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    return-void
.end method

.method public blacklist setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z
    .registers 7
    .param p1, "icon"    # Landroid/view/PointerIcon;
    .param p2, "displayId"    # I
    .param p3, "deviceId"    # I
    .param p4, "pointerId"    # I
    .param p5, "inputToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .registers 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "rotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public blacklist tryPointerSpeed(I)V
    .registers 2
    .param p1, "speed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist unregisterBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    .registers 3
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/hardware/input/IInputDeviceBatteryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    return-void
.end method

.method public blacklist unregisterKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/hardware/input/IKeyEventActivityListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/input/IKeyGestureEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    return-void
.end method

.method public blacklist unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;)V
    .registers 2
    .param p1, "handler"    # Landroid/hardware/input/IKeyGestureHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    return-void
.end method

.method public blacklist unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/input/IKeyboardBacklightListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    return-void
.end method

.method public blacklist unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/input/IInputSensorEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    return-void
.end method

.method public blacklist unregisterStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/hardware/input/IStickyModifierStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    return-void
.end method

.method public blacklist unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
    .registers 3
    .param p1, "ev"    # Landroid/view/InputEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    return-void
.end method

.method public blacklist vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "vibration"    # Landroid/os/CombinedVibration;
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    return-void
.end method
