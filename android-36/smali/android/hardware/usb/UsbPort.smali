.class public final Landroid/hardware/usb/UsbPort;
.super Ljava/lang/Object;
.source "UsbPort.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbPort$AltModeType;,
        Landroid/hardware/usb/UsbPort$EnableUsbDataWhileDockedStatus;,
        Landroid/hardware/usb/UsbPort$ResetUsbPortStatus;,
        Landroid/hardware/usb/UsbPort$EnableLimitPowerTransferStatus;,
        Landroid/hardware/usb/UsbPort$EnableUsbDataStatus;
    }
.end annotation


# static fields
.field public static final whitelist ENABLE_LIMIT_POWER_TRANSFER_ERROR_INTERNAL:I = 0x1

.field public static final whitelist ENABLE_LIMIT_POWER_TRANSFER_ERROR_NOT_SUPPORTED:I = 0x2

.field public static final whitelist ENABLE_LIMIT_POWER_TRANSFER_ERROR_OTHER:I = 0x4

.field public static final whitelist ENABLE_LIMIT_POWER_TRANSFER_ERROR_PORT_MISMATCH:I = 0x3

.field public static final whitelist ENABLE_LIMIT_POWER_TRANSFER_SUCCESS:I = 0x0

.field public static final whitelist ENABLE_USB_DATA_ERROR_INTERNAL:I = 0x1

.field public static final whitelist ENABLE_USB_DATA_ERROR_NOT_SUPPORTED:I = 0x2

.field public static final whitelist ENABLE_USB_DATA_ERROR_OTHER:I = 0x4

.field public static final whitelist ENABLE_USB_DATA_ERROR_PORT_MISMATCH:I = 0x3

.field public static final whitelist ENABLE_USB_DATA_SUCCESS:I = 0x0

.field public static final whitelist ENABLE_USB_DATA_WHILE_DOCKED_ERROR_DATA_ENABLED:I = 0x4

.field public static final whitelist ENABLE_USB_DATA_WHILE_DOCKED_ERROR_INTERNAL:I = 0x1

.field public static final whitelist ENABLE_USB_DATA_WHILE_DOCKED_ERROR_NOT_SUPPORTED:I = 0x2

.field public static final whitelist ENABLE_USB_DATA_WHILE_DOCKED_ERROR_OTHER:I = 0x5

.field public static final whitelist ENABLE_USB_DATA_WHILE_DOCKED_ERROR_PORT_MISMATCH:I = 0x3

.field public static final whitelist ENABLE_USB_DATA_WHILE_DOCKED_SUCCESS:I = 0x0

.field public static final whitelist FLAG_ALT_MODE_TYPE_DISPLAYPORT:I = 0x1

.field private static final greylist-max-o NUM_DATA_ROLES:I = 0x3

.field private static final greylist-max-o POWER_ROLE_OFFSET:I = 0x0

.field public static final whitelist RESET_USB_PORT_ERROR_INTERNAL:I = 0x1

.field public static final whitelist RESET_USB_PORT_ERROR_NOT_SUPPORTED:I = 0x2

.field public static final whitelist RESET_USB_PORT_ERROR_OTHER:I = 0x4

.field public static final whitelist RESET_USB_PORT_ERROR_PORT_MISMATCH:I = 0x3

.field public static final whitelist RESET_USB_PORT_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "UsbPort"

.field private static final blacklist sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final greylist-max-o mId:Ljava/lang/String;

.field private final blacklist mSupportedAltModes:I

.field private final blacklist mSupportedContaminantProtectionModes:I

.field private final greylist-max-o mSupportedModes:I

.field private final blacklist mSupportsComplianceWarnings:Z

.field private final blacklist mSupportsEnableContaminantPresenceDetection:Z

.field private final blacklist mSupportsEnableContaminantPresenceProtection:Z

.field private final blacklist mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbPort;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZ)V
    .registers 16
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "supportedModes"    # I
    .param p4, "supportedContaminantProtectionModes"    # I
    .param p5, "supportsEnableContaminantPresenceProtection"    # Z
    .param p6, "supportsEnableContaminantPresenceDetection"    # Z

    .line 285
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "usbManager":Landroid/hardware/usb/UsbManager;
    .end local p2    # "id":Ljava/lang/String;
    .end local p3    # "supportedModes":I
    .end local p4    # "supportedContaminantProtectionModes":I
    .end local p5    # "supportsEnableContaminantPresenceProtection":Z
    .end local p6    # "supportsEnableContaminantPresenceDetection":Z
    .local v1, "usbManager":Landroid/hardware/usb/UsbManager;
    .local v2, "id":Ljava/lang/String;
    .local v3, "supportedModes":I
    .local v4, "supportedContaminantProtectionModes":I
    .local v5, "supportsEnableContaminantPresenceProtection":Z
    .local v6, "supportsEnableContaminantPresenceDetection":Z
    invoke-direct/range {v0 .. v8}, Landroid/hardware/usb/UsbPort;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZZI)V

    .line 289
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZZI)V
    .registers 10
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "supportedModes"    # I
    .param p4, "supportedContaminantProtectionModes"    # I
    .param p5, "supportsEnableContaminantPresenceProtection"    # Z
    .param p6, "supportsEnableContaminantPresenceDetection"    # Z
    .param p7, "supportsComplianceWarnings"    # Z
    .param p8, "supportedAltModes"    # I

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const/16 v0, 0xf

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 302
    iput-object p1, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 303
    iput-object p2, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    .line 304
    iput p3, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    .line 305
    iput p4, p0, Landroid/hardware/usb/UsbPort;->mSupportedContaminantProtectionModes:I

    .line 306
    iput-boolean p5, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    .line 308
    iput-boolean p6, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    .line 310
    iput-boolean p7, p0, Landroid/hardware/usb/UsbPort;->mSupportsComplianceWarnings:Z

    .line 311
    iput p8, p0, Landroid/hardware/usb/UsbPort;->mSupportedAltModes:I

    .line 312
    return-void
.end method

.method public static greylist-max-o checkDataRole(I)V
    .registers 4
    .param p0, "mode"    # I

    .line 869
    const/4 v0, 0x2

    const-string v1, "powerRole"

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 871
    return-void
.end method

.method public static greylist-max-o checkMode(I)V
    .registers 4
    .param p0, "powerRole"    # I

    .line 857
    const/4 v0, 0x3

    const-string v1, "portMode"

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 859
    return-void
.end method

.method public static greylist-max-o checkPowerRole(I)V
    .registers 4
    .param p0, "dataRole"    # I

    .line 863
    const/4 v0, 0x2

    const-string v1, "powerRole"

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 865
    return-void
.end method

.method public static greylist-max-o checkRoles(II)V
    .registers 5
    .param p0, "powerRole"    # I
    .param p1, "dataRole"    # I

    .line 875
    const-string v0, "powerRole"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 877
    const-string v0, "dataRole"

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 878
    return-void
.end method

.method public static greylist-max-o combineRolesAsBit(II)I
    .registers 4
    .param p0, "powerRole"    # I
    .param p1, "dataRole"    # I

    .line 631
    invoke-static {p0, p1}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 632
    add-int/lit8 v0, p0, 0x0

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    .line 633
    .local v0, "index":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    return v1
.end method

.method public static blacklist complianceWarningsToString([I)Ljava/lang/String;
    .registers 7
    .param p0, "complianceWarnings"    # [I

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    .local v0, "complianceWarningString":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    if-eqz p0, :cond_60

    .line 799
    array-length v1, p0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_60

    aget v3, p0, v2

    .line 800
    .local v3, "warning":I
    packed-switch v3, :pswitch_data_70

    .line 829
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Unknown(%d), "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 826
    :pswitch_27
    const-string v4, "unreliable io, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    goto :goto_5d

    .line 823
    :pswitch_2d
    const-string v4, "flaky connection, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    goto :goto_5d

    .line 820
    :pswitch_33
    const-string v4, "enumeration fail, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    goto :goto_5d

    .line 817
    :pswitch_39
    const-string v4, "missing data lines, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    goto :goto_5d

    .line 814
    :pswitch_3f
    const-string v4, "input power limited, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    goto :goto_5d

    .line 811
    :pswitch_45
    const-string v4, "missing rp, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    goto :goto_5d

    .line 808
    :pswitch_4b
    const-string v4, "bc12, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    goto :goto_5d

    .line 805
    :pswitch_51
    const-string v4, "debug accessory, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    goto :goto_5d

    .line 802
    :pswitch_57
    const-string v4, "other, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    nop

    .line 799
    .end local v3    # "warning":I
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 835
    :cond_60
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ", ]$"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_57
        :pswitch_51
        :pswitch_4b
        :pswitch_45
        :pswitch_3f
        :pswitch_39
        :pswitch_33
        :pswitch_2d
        :pswitch_27
    .end packed-switch
.end method

.method public static blacklist contaminantPresenceStatusToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "contaminantPresenceStatus"    # I

    .line 695
    packed-switch p0, :pswitch_data_14

    .line 705
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 701
    :pswitch_8
    const-string v0, "detected"

    return-object v0

    .line 703
    :pswitch_b
    const-string v0, "not detected"

    return-object v0

    .line 699
    :pswitch_e
    const-string v0, "disabled"

    return-object v0

    .line 697
    :pswitch_11
    const-string v0, "not-supported"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o dataRoleToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "role"    # I

    .line 681
    packed-switch p0, :pswitch_data_12

    .line 689
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 687
    :pswitch_8
    const-string v0, "device"

    return-object v0

    .line 685
    :pswitch_b
    const-string v0, "host"

    return-object v0

    .line 683
    :pswitch_e
    const-string v0, "no-data"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist dpAltModeStatusToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "dpAltModeStatus"    # I

    .line 841
    packed-switch p0, :pswitch_data_14

    .line 851
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 849
    :pswitch_8
    const-string v0, "Enabled"

    return-object v0

    .line 847
    :pswitch_b
    const-string v0, "Capable-Disabled"

    return-object v0

    .line 845
    :pswitch_e
    const-string v0, "Not Capable"

    return-object v0

    .line 843
    :pswitch_11
    const-string v0, "Unknown"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o modeToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "mode"    # I

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .local v0, "modeString":Ljava/lang/StringBuilder;
    if-nez p0, :cond_a

    .line 640
    const-string v1, "none"

    return-object v1

    .line 643
    :cond_a
    and-int/lit8 v1, p0, 0x3

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v1, v2, :cond_16

    .line 644
    const-string v1, "dual, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 646
    :cond_16
    and-int/lit8 v1, p0, 0x2

    if-ne v1, v3, :cond_20

    .line 647
    const-string v1, "dfp, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 648
    :cond_20
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    .line 649
    const-string v1, "ufp, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    :cond_2a
    :goto_2a
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_34

    .line 653
    const-string v1, "audio_acc, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :cond_34
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3f

    .line 656
    const-string v1, "debug_acc, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_4a

    .line 660
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 662
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist powerBrickConnectionStatusToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "powerBrickConnectionStatus"    # I

    .line 756
    packed-switch p0, :pswitch_data_12

    .line 764
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 762
    :pswitch_8
    const-string v0, "disconnected"

    return-object v0

    .line 760
    :pswitch_b
    const-string v0, "connected"

    return-object v0

    .line 758
    :pswitch_e
    const-string v0, "unknown"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o powerRoleToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "role"    # I

    .line 667
    packed-switch p0, :pswitch_data_12

    .line 675
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 673
    :pswitch_8
    const-string v0, "sink"

    return-object v0

    .line 671
    :pswitch_b
    const-string v0, "source"

    return-object v0

    .line 669
    :pswitch_e
    const-string v0, "no-power"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o roleCombinationsToString(I)Ljava/lang/String;
    .registers 7
    .param p0, "combo"    # I

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 771
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    const/4 v1, 0x1

    .line 774
    .local v1, "first":Z
    :goto_b
    if-eqz p0, :cond_38

    .line 775
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    .line 776
    .local v2, "index":I
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    not-int v3, v3

    and-int/2addr p0, v3

    .line 777
    div-int/lit8 v3, v2, 0x3

    add-int/lit8 v3, v3, 0x0

    .line 778
    .local v3, "powerRole":I
    rem-int/lit8 v4, v2, 0x3

    .line 779
    .local v4, "dataRole":I
    if-eqz v1, :cond_1f

    .line 780
    const/4 v1, 0x0

    goto :goto_24

    .line 782
    :cond_1f
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :goto_24
    invoke-static {v3}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 786
    invoke-static {v4}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    .end local v2    # "index":I
    .end local v3    # "powerRole":I
    .end local v4    # "dataRole":I
    goto :goto_b

    .line 789
    :cond_38
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist usbDataStatusToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "usbDataStatus"    # I

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    .local v0, "statusString":Ljava/lang/StringBuilder;
    if-nez p0, :cond_a

    .line 714
    const-string v1, "unknown"

    return-object v1

    .line 717
    :cond_a
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 718
    const-string v1, "enabled"

    return-object v1

    .line 721
    :cond_12
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    .line 722
    const-string v1, "disabled-overheat, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    :cond_1c
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_26

    .line 727
    const-string v1, "disabled-contaminant, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_26
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_31

    .line 731
    const-string v1, "disabled-dock, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_31
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3c

    .line 735
    const-string v1, "disabled-force, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_3c
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_47

    .line 739
    const-string v1, "disabled-debug, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    :cond_47
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_52

    .line 744
    const-string v1, "disabled-host-dock, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    :cond_52
    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_5d

    .line 749
    const-string v1, "disabled-device-dock, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    :cond_5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", $"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist enableContaminantDetection(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 616
    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p0, p1}, Landroid/hardware/usb/UsbManager;->enableContaminantDetection(Landroid/hardware/usb/UsbPort;Z)V

    .line 617
    return-void
.end method

.method public whitelist enableLimitPowerTransfer(Z)I
    .registers 6
    .param p1, "enable"    # Z

    .line 590
    sget-object v0, Landroid/hardware/usb/UsbPort;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    .line 591
    .local v0, "operationId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLimitPowerTransfer opId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callingUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 592
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    const-string v2, "UsbPort"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v1, Landroid/hardware/usb/UsbOperationInternal;

    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/hardware/usb/UsbOperationInternal;-><init>(ILjava/lang/String;)V

    .line 595
    .local v1, "opCallback":Landroid/hardware/usb/UsbOperationInternal;
    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p0, p1, v0, v1}, Landroid/hardware/usb/UsbManager;->enableLimitPowerTransfer(Landroid/hardware/usb/UsbPort;ZILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 596
    invoke-virtual {v1}, Landroid/hardware/usb/UsbOperationInternal;->waitForOperationComplete()V

    .line 597
    invoke-virtual {v1}, Landroid/hardware/usb/UsbOperationInternal;->getStatus()I

    move-result v2

    .line 598
    .local v2, "result":I
    packed-switch v2, :pswitch_data_52

    .line 608
    const/4 v3, 0x4

    return v3

    .line 606
    :pswitch_49
    const/4 v3, 0x3

    return v3

    .line 604
    :pswitch_4b
    const/4 v3, 0x2

    return v3

    .line 602
    :pswitch_4d
    const/4 v3, 0x1

    return v3

    .line 600
    :pswitch_4f
    const/4 v3, 0x0

    return v3

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_4d
        :pswitch_4b
        :pswitch_49
    .end packed-switch
.end method

.method public whitelist enableUsbData(Z)I
    .registers 6
    .param p1, "enable"    # Z

    .line 501
    sget-object v0, Landroid/hardware/usb/UsbPort;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    .line 502
    .local v0, "operationId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUsbData opId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callingUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 503
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    const-string v2, "UsbPort"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v1, Landroid/hardware/usb/UsbOperationInternal;

    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/hardware/usb/UsbOperationInternal;-><init>(ILjava/lang/String;)V

    .line 506
    .local v1, "opCallback":Landroid/hardware/usb/UsbOperationInternal;
    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p0, p1, v0, v1}, Landroid/hardware/usb/UsbManager;->enableUsbData(Landroid/hardware/usb/UsbPort;ZILandroid/hardware/usb/IUsbOperationInternal;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_44

    .line 507
    invoke-virtual {v1}, Landroid/hardware/usb/UsbOperationInternal;->waitForOperationComplete()V

    .line 510
    :cond_44
    invoke-virtual {v1}, Landroid/hardware/usb/UsbOperationInternal;->getStatus()I

    move-result v2

    .line 511
    .local v2, "result":I
    packed-switch v2, :pswitch_data_54

    .line 521
    const/4 v3, 0x4

    return v3

    .line 519
    :pswitch_4d
    const/4 v3, 0x3

    return v3

    .line 517
    :pswitch_4f
    const/4 v3, 0x2

    return v3

    .line 515
    :pswitch_51
    return v3

    .line 513
    :pswitch_52
    const/4 v3, 0x0

    return v3

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_52
        :pswitch_51
        :pswitch_4f
        :pswitch_4d
    .end packed-switch
.end method

.method public whitelist enableUsbDataWhileDocked()I
    .registers 6

    .line 542
    sget-object v0, Landroid/hardware/usb/UsbPort;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    .line 543
    .local v0, "operationId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUsbData opId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callingUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 544
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    const-string v2, "UsbPort"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v1

    .line 546
    .local v1, "portStatus":Landroid/hardware/usb/UsbPortStatus;
    if-eqz v1, :cond_42

    .line 547
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v2

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_42

    .line 549
    const/4 v2, 0x4

    return v2

    .line 552
    :cond_42
    new-instance v2, Landroid/hardware/usb/UsbOperationInternal;

    iget-object v3, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Landroid/hardware/usb/UsbOperationInternal;-><init>(ILjava/lang/String;)V

    .line 554
    .local v2, "opCallback":Landroid/hardware/usb/UsbOperationInternal;
    iget-object v3, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, p0, v0, v2}, Landroid/hardware/usb/UsbManager;->enableUsbDataWhileDocked(Landroid/hardware/usb/UsbPort;ILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 555
    invoke-virtual {v2}, Landroid/hardware/usb/UsbOperationInternal;->waitForOperationComplete()V

    .line 556
    invoke-virtual {v2}, Landroid/hardware/usb/UsbOperationInternal;->getStatus()I

    move-result v3

    .line 557
    .local v3, "result":I
    packed-switch v3, :pswitch_data_62

    .line 567
    const/4 v4, 0x5

    return v4

    .line 565
    :pswitch_5a
    const/4 v4, 0x3

    return v4

    .line 563
    :pswitch_5c
    const/4 v4, 0x2

    return v4

    .line 561
    :pswitch_5e
    const/4 v4, 0x1

    return v4

    .line 559
    :pswitch_60
    const/4 v4, 0x0

    return v4

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5e
        :pswitch_5c
        :pswitch_5a
    .end packed-switch
.end method

.method public greylist-max-o getId()Ljava/lang/String;
    .registers 2

    .line 322
    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStatus()Landroid/hardware/usb/UsbPortStatus;
    .registers 2

    .line 377
    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p0}, Landroid/hardware/usb/UsbManager;->getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedAltModesMask()I
    .registers 2

    .line 414
    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedAltModes:I

    return v0
.end method

.method public blacklist getSupportedContaminantProtectionModes()I
    .registers 2

    .line 349
    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedContaminantProtectionModes:I

    return v0
.end method

.method public greylist-max-o getSupportedModes()I
    .registers 2

    .line 337
    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    return v0
.end method

.method public whitelist isAltModeSupported(I)Z
    .registers 3
    .param p1, "typeMask"    # I

    .line 425
    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedAltModes:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isModeChangeSupported()Z
    .registers 2

    .line 390
    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p0}, Landroid/hardware/usb/UsbManager;->isModeChangeSupported(Landroid/hardware/usb/UsbPort;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isModeSupported(I)Z
    .registers 3
    .param p1, "mode"    # I

    .line 882
    iget v0, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    return v0

    .line 883
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist resetUsbPort(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 477
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/usb/UsbPort;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    add-int/2addr v0, v1

    .line 478
    .local v0, "operationId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetUsbPort opId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbPort"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v1, Landroid/hardware/usb/UsbOperationInternal;

    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-direct {v1, v0, v2, p1, p2}, Landroid/hardware/usb/UsbOperationInternal;-><init>(ILjava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 481
    .local v1, "opCallback":Landroid/hardware/usb/UsbOperationInternal;
    iget-object v2, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/usb/UsbManager;->resetUsbPort(Landroid/hardware/usb/UsbPort;ILandroid/hardware/usb/IUsbOperationInternal;)V

    .line 482
    return-void
.end method

.method public whitelist setRoles(II)V
    .registers 4
    .param p1, "powerRole"    # I
    .param p2, "dataRole"    # I

    .line 451
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 453
    iget-object v0, p0, Landroid/hardware/usb/UsbPort;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/usb/UsbManager;->setPortRoles(Landroid/hardware/usb/UsbPort;II)V

    .line 454
    return-void
.end method

.method public whitelist supportsComplianceWarnings()Z
    .registers 2

    .line 405
    iget-boolean v0, p0, Landroid/hardware/usb/UsbPort;->mSupportsComplianceWarnings:Z

    return v0
.end method

.method public blacklist supportsEnableContaminantPresenceDetection()Z
    .registers 2

    .line 367
    iget-boolean v0, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    return v0
.end method

.method public blacklist supportsEnableContaminantPresenceProtection()Z
    .registers 2

    .line 358
    iget-boolean v0, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbPort{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbPort;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPort;->mSupportedModes:I

    invoke-static {v1}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedContaminantProtectionModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/UsbPort;->mSupportedContaminantProtectionModes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsEnableContaminantPresenceProtection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsEnableContaminantPresenceDetection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/usb/UsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsComplianceWarnings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/usb/UsbPort;->mSupportsComplianceWarnings:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
