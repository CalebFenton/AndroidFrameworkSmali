.class public Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;
.super Ljava/lang/Object;
.source "VirtualDeviceManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VirtualDevice"
.end annotation


# instance fields
.field private final blacklist mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;


# direct methods
.method private constructor blacklist <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V
    .registers 6
    .param p1, "service"    # Landroid/companion/virtual/IVirtualDeviceManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "associationId"    # I
    .param p4, "params"    # Landroid/companion/virtual/VirtualDeviceParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceInternal;-><init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    .line 570
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/VirtualDeviceManager-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    new-instance v0, Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-direct {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;-><init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    .line 575
    return-void
.end method


# virtual methods
.method public whitelist addActivityListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    .line 1128
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->addActivityListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V

    .line 1129
    return-void
.end method

.method public whitelist addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .registers 4
    .param p1, "exemption"    # Landroid/companion/virtual/ActivityPolicyExemption;

    .line 843
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/ActivityPolicyExemption;

    invoke-virtual {v0, v1}, Landroid/companion/virtual/VirtualDeviceInternal;->addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    .line 844
    return-void
.end method

.method public whitelist addActivityPolicyExemption(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 797
    new-instance v0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;

    invoke-direct {v0}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;-><init>()V

    .line 798
    invoke-virtual {v0, p1}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->setComponentName(Landroid/content/ComponentName;)Landroid/companion/virtual/ActivityPolicyExemption$Builder;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->build()Landroid/companion/virtual/ActivityPolicyExemption;

    move-result-object v0

    .line 797
    invoke-virtual {p0, v0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    .line 800
    return-void
.end method

.method public whitelist addSoundEffectListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "soundEffectListener"    # Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;

    .line 1150
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->addSoundEffectListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V

    .line 1151
    return-void
.end method

.method public whitelist test-api close()V
    .registers 2

    .line 759
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceInternal;->close()V

    .line 760
    return-void
.end method

.method public whitelist createContext()Landroid/content/Context;
    .registers 2

    .line 598
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceInternal;->createContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createVirtualAudioDevice(Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)Landroid/companion/virtual/audio/VirtualAudioDevice;
    .registers 5
    .param p1, "display"    # Landroid/hardware/display/VirtualDisplay;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    .line 1071
    const-string v0, "display must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1072
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualAudioDevice(Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)Landroid/companion/virtual/audio/VirtualAudioDevice;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)Landroid/companion/virtual/camera/VirtualCamera;
    .registers 4
    .param p1, "config"    # Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 1088
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/camera/VirtualCameraConfig;

    invoke-virtual {v0, v1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)Landroid/companion/virtual/camera/VirtualCamera;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createVirtualDisplay(IIILandroid/view/Surface;ILjava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;
    .registers 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "densityDpi"    # I
    .param p4, "surface"    # Landroid/view/Surface;
    .param p5, "flags"    # I
    .param p6, "executor"    # Ljava/util/concurrent/Executor;
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDevice_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, "virtualDisplayName":Ljava/lang/String;
    new-instance v1, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 724
    invoke-virtual {v1, p5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object v1

    .line 725
    .local v1, "builder":Landroid/hardware/display/VirtualDisplayConfig$Builder;
    if-eqz p4, :cond_25

    .line 726
    invoke-virtual {v1, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 728
    :cond_25
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object v3

    invoke-virtual {v2, v3, p6, p7}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v2

    return-object v2
.end method

.method public whitelist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;
    .registers 5
    .param p1, "config"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;

    .line 750
    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 751
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/VirtualDpad;
    .registers 3
    .param p1, "config"    # Landroid/hardware/input/VirtualDpadConfig;

    .line 893
    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 894
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;)Landroid/hardware/input/VirtualDpad;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createVirtualKeyboard(Landroid/hardware/display/VirtualDisplay;Ljava/lang/String;II)Landroid/hardware/input/VirtualKeyboard;
    .registers 7
    .param p1, "display"    # Landroid/hardware/display/VirtualDisplay;
    .param p2, "inputDeviceName"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 922
    new-instance v0, Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    invoke-direct {v0}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;-><init>()V

    .line 924
    invoke-virtual {v0, p3}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->setVendorId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    .line 925
    invoke-virtual {v0, p4}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->setProductId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    .line 926
    invoke-virtual {v0, p2}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->setInputDeviceName(Ljava/lang/String;)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    .line 927
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->setAssociatedDisplayId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/VirtualKeyboardConfig$Builder;

    .line 928
    invoke-virtual {v0}, Landroid/hardware/input/VirtualKeyboardConfig$Builder;->build()Landroid/hardware/input/VirtualKeyboardConfig;

    move-result-object v0

    .line 929
    .local v0, "keyboardConfig":Landroid/hardware/input/VirtualKeyboardConfig;
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v1, v0}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/VirtualKeyboard;

    move-result-object v1

    return-object v1
.end method

.method public whitelist createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/VirtualKeyboard;
    .registers 3
    .param p1, "config"    # Landroid/hardware/input/VirtualKeyboardConfig;

    .line 904
    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 905
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;)Landroid/hardware/input/VirtualKeyboard;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createVirtualMouse(Landroid/hardware/display/VirtualDisplay;Ljava/lang/String;II)Landroid/hardware/input/VirtualMouse;
    .registers 7
    .param p1, "display"    # Landroid/hardware/display/VirtualDisplay;
    .param p2, "inputDeviceName"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 957
    new-instance v0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseConfig$Builder;-><init>()V

    .line 959
    invoke-virtual {v0, p3}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setVendorId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    .line 960
    invoke-virtual {v0, p4}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setProductId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    .line 961
    invoke-virtual {v0, p2}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setInputDeviceName(Ljava/lang/String;)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    .line 962
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/VirtualMouseConfig$Builder;->setAssociatedDisplayId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/VirtualMouseConfig$Builder;

    .line 963
    invoke-virtual {v0}, Landroid/hardware/input/VirtualMouseConfig$Builder;->build()Landroid/hardware/input/VirtualMouseConfig;

    move-result-object v0

    .line 964
    .local v0, "mouseConfig":Landroid/hardware/input/VirtualMouseConfig;
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v1, v0}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;

    move-result-object v1

    return-object v1
.end method

.method public whitelist createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;
    .registers 3
    .param p1, "config"    # Landroid/hardware/input/VirtualMouseConfig;

    .line 939
    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 940
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;)Landroid/hardware/input/VirtualMouse;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/VirtualNavigationTouchpad;
    .registers 3
    .param p1, "config"    # Landroid/hardware/input/VirtualNavigationTouchpadConfig;

    .line 1020
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;)Landroid/hardware/input/VirtualNavigationTouchpad;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/VirtualRotaryEncoder;
    .registers 4
    .param p1, "config"    # Landroid/hardware/input/VirtualRotaryEncoderConfig;

    .line 1043
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/virtualdevice/flags/Flags;->virtualRotary()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1046
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;)Landroid/hardware/input/VirtualRotaryEncoder;

    move-result-object v0

    return-object v0

    .line 1044
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Virtual rotary support not enabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/VirtualStylus;
    .registers 3
    .param p1, "config"    # Landroid/hardware/input/VirtualStylusConfig;

    .line 1030
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;)Landroid/hardware/input/VirtualStylus;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createVirtualTouchscreen(Landroid/hardware/display/VirtualDisplay;Ljava/lang/String;II)Landroid/hardware/input/VirtualTouchscreen;
    .registers 9
    .param p1, "display"    # Landroid/hardware/display/VirtualDisplay;
    .param p2, "inputDeviceName"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 994
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 995
    .local v0, "size":Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 996
    new-instance v1, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;-><init>(II)V

    .line 998
    invoke-virtual {v1, p3}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;->setVendorId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    .line 999
    invoke-virtual {v1, p4}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;->setProductId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    .line 1000
    invoke-virtual {v1, p2}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;->setInputDeviceName(Ljava/lang/String;)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    .line 1001
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;->setAssociatedDisplayId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;

    .line 1002
    invoke-virtual {v1}, Landroid/hardware/input/VirtualTouchscreenConfig$Builder;->build()Landroid/hardware/input/VirtualTouchscreenConfig;

    move-result-object v1

    .line 1003
    .local v1, "touchscreenConfig":Landroid/hardware/input/VirtualTouchscreenConfig;
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v2, v1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/VirtualTouchscreen;

    move-result-object v2

    return-object v2
.end method

.method public whitelist createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/VirtualTouchscreen;
    .registers 3
    .param p1, "config"    # Landroid/hardware/input/VirtualTouchscreenConfig;

    .line 975
    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 976
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;)Landroid/hardware/input/VirtualTouchscreen;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceId()I
    .registers 2

    .line 581
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceInternal;->getDeviceId()I

    move-result v0

    return v0
.end method

.method public whitelist getPersistentDeviceId()Ljava/lang/String;
    .registers 2

    .line 588
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceInternal;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getVirtualSensorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensor;",
            ">;"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceInternal;->getVirtualSensorList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist goToSleep()V
    .registers 2

    .line 629
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceInternal;->goToSleep()V

    .line 630
    return-void
.end method

.method public whitelist launchPendingIntent(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Ljava/util/function/IntConsumer;

    .line 673
    const-string/jumbo v0, "pendingIntent must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 674
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 675
    const-string/jumbo v0, "listener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 676
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceInternal;->launchPendingIntent(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 678
    return-void
.end method

.method public whitelist registerIntentInterceptor(Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V
    .registers 5
    .param p1, "interceptorFilter"    # Landroid/content/IntentFilter;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "interceptorCallback"    # Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;

    .line 1178
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal;->registerIntentInterceptor(Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V

    .line 1180
    return-void
.end method

.method public whitelist removeActivityListener(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    .line 1138
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->removeActivityListener(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V

    .line 1139
    return-void
.end method

.method public whitelist removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .registers 4
    .param p1, "exemption"    # Landroid/companion/virtual/ActivityPolicyExemption;

    .line 858
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/ActivityPolicyExemption;

    invoke-virtual {v0, v1}, Landroid/companion/virtual/VirtualDeviceInternal;->removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    .line 859
    return-void
.end method

.method public whitelist removeActivityPolicyExemption(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 819
    new-instance v0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;

    invoke-direct {v0}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;-><init>()V

    .line 820
    invoke-virtual {v0, p1}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->setComponentName(Landroid/content/ComponentName;)Landroid/companion/virtual/ActivityPolicyExemption$Builder;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->build()Landroid/companion/virtual/ActivityPolicyExemption;

    move-result-object v0

    .line 819
    invoke-virtual {p0, v0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V

    .line 822
    return-void
.end method

.method public whitelist removeSoundEffectListener(Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V
    .registers 3
    .param p1, "soundEffectListener"    # Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;

    .line 1160
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->removeSoundEffectListener(Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;)V

    .line 1161
    return-void
.end method

.method public whitelist setDevicePolicy(II)V
    .registers 4
    .param p1, "policyType"    # I
    .param p2, "devicePolicy"    # I

    .line 777
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->setDevicePolicy(II)V

    .line 778
    return-void
.end method

.method public whitelist setDevicePolicy(III)V
    .registers 5
    .param p1, "policyType"    # I
    .param p2, "devicePolicy"    # I
    .param p3, "displayId"    # I

    .line 883
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p3, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->setDevicePolicyForDisplay(III)V

    .line 884
    return-void
.end method

.method public whitelist setDisplayImePolicy(II)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "policy"    # I

    .line 1115
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal;->setDisplayImePolicy(II)V

    .line 1116
    return-void
.end method

.method public whitelist setShowPointerIcon(Z)V
    .registers 3
    .param p1, "showPointerIcon"    # Z

    .line 1101
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->setShowPointerIcon(Z)V

    .line 1102
    return-void
.end method

.method public whitelist unregisterIntentInterceptor(Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V
    .registers 3
    .param p1, "interceptorCallback"    # Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;

    .line 1188
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/VirtualDeviceInternal;->unregisterIntentInterceptor(Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V

    .line 1189
    return-void
.end method

.method public whitelist wakeUp()V
    .registers 2

    .line 647
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDeviceInternal:Landroid/companion/virtual/VirtualDeviceInternal;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceInternal;->wakeUp()V

    .line 648
    return-void
.end method
