.class public final Landroid/media/AudioDeviceInfo;
.super Ljava/lang/Object;
.source "AudioDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioDeviceInfo$SpeakerLayoutChannelMask;,
        Landroid/media/AudioDeviceInfo$AudioDeviceTypeOut;,
        Landroid/media/AudioDeviceInfo$AudioDeviceTypeIn;,
        Landroid/media/AudioDeviceInfo$AudioDeviceType;
    }
.end annotation


# static fields
.field private static final greylist-max-o EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field private static final blacklist EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field private static final greylist-max-o INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field public static final whitelist TYPE_AUX_LINE:I = 0x13

.field public static final whitelist TYPE_BLE_BROADCAST:I = 0x1e

.field public static final whitelist TYPE_BLE_HEADSET:I = 0x1a

.field public static final whitelist TYPE_BLE_SPEAKER:I = 0x1b

.field public static final whitelist TYPE_BLUETOOTH_A2DP:I = 0x8

.field public static final whitelist TYPE_BLUETOOTH_SCO:I = 0x7

.field public static final whitelist TYPE_BUILTIN_EARPIECE:I = 0x1

.field public static final whitelist TYPE_BUILTIN_MIC:I = 0xf

.field public static final whitelist TYPE_BUILTIN_SPEAKER:I = 0x2

.field public static final whitelist TYPE_BUILTIN_SPEAKER_SAFE:I = 0x18

.field public static final whitelist TYPE_BUS:I = 0x15

.field public static final whitelist TYPE_DOCK:I = 0xd

.field public static final whitelist TYPE_DOCK_ANALOG:I = 0x1f

.field public static final blacklist TYPE_ECHO_REFERENCE:I = 0x1c

.field public static final whitelist TYPE_FM:I = 0xe

.field public static final whitelist TYPE_FM_TUNER:I = 0x10

.field public static final whitelist TYPE_HDMI:I = 0x9

.field public static final whitelist TYPE_HDMI_ARC:I = 0xa

.field public static final whitelist TYPE_HDMI_EARC:I = 0x1d

.field public static final whitelist TYPE_HEARING_AID:I = 0x17

.field public static final whitelist TYPE_IP:I = 0x14

.field public static final whitelist TYPE_LINE_ANALOG:I = 0x5

.field public static final whitelist TYPE_LINE_DIGITAL:I = 0x6

.field public static final whitelist TYPE_MULTICHANNEL_GROUP:I = 0x20

.field public static final whitelist TYPE_REMOTE_SUBMIX:I = 0x19

.field public static final whitelist TYPE_TELEPHONY:I = 0x12

.field public static final whitelist TYPE_TV_TUNER:I = 0x11

.field public static final whitelist TYPE_UNKNOWN:I = 0x0

.field public static final whitelist TYPE_USB_ACCESSORY:I = 0xc

.field public static final whitelist TYPE_USB_DEVICE:I = 0xb

.field public static final whitelist TYPE_USB_HEADSET:I = 0x16

.field public static final whitelist TYPE_WIRED_HEADPHONES:I = 0x4

.field public static final whitelist TYPE_WIRED_HEADSET:I = 0x3


# instance fields
.field private final greylist-max-o mPort:Landroid/media/AudioDevicePort;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 708
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    .line 709
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 710
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 711
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 712
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v5, 0x8

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 713
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v6, 0x10

    const/4 v7, 0x7

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 714
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v8, 0x20

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 715
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v8, 0x40

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 716
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v8, 0x80

    invoke-virtual {v0, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 717
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v8, 0x100

    invoke-virtual {v0, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 718
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v8, 0x200

    invoke-virtual {v0, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 719
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v8, 0x400

    const/16 v9, 0x9

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 720
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v8, 0x800

    const/16 v10, 0x1f

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 721
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v8, 0x1000

    const/16 v11, 0xd

    invoke-virtual {v0, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 722
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v8, 0x2000

    const/16 v12, 0xc

    invoke-virtual {v0, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 723
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v8, 0x4000

    const/16 v13, 0xb

    invoke-virtual {v0, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 724
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v8, 0x4000000

    const/16 v14, 0x16

    invoke-virtual {v0, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 725
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v8, 0x10000

    const/16 v15, 0x12

    invoke-virtual {v0, v8, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 726
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v8, 0x20000

    const/4 v3, 0x5

    invoke-virtual {v0, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 727
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v8, 0x40000

    const/16 v2, 0xa

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 728
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v8, 0x40001

    const/16 v1, 0x1d

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 729
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v8, 0x80000

    const/4 v1, 0x6

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 730
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v8, 0x100000

    const/16 v2, 0xe

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 731
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, 0x200000

    const/16 v8, 0x13

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 732
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, 0x800000

    const/16 v8, 0x14

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 733
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, 0x1000000

    const/16 v8, 0x15

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 734
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, 0x8000000

    const/16 v8, 0x17

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 735
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, 0x400000

    const/16 v8, 0x18

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 737
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, 0x8000

    const/16 v8, 0x19

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 738
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, 0x20000000

    const/16 v8, 0x1a

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 739
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, 0x20000001

    const/16 v8, 0x1b

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 740
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, 0x20000002

    const/16 v8, 0x1e

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 741
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->enableMultichannelGroupDevice()Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 742
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, 0x800001

    const/16 v8, 0x20

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 746
    :cond_11b
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7ffffffc

    const/16 v8, 0xf

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 747
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7ffffff8

    invoke-virtual {v0, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 748
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7ffffff0

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 749
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7fffffe0

    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 750
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7fffffc0

    invoke-virtual {v0, v2, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 751
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7fffff80

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 752
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7ffffe00

    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 753
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7ffffc00

    invoke-virtual {v0, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 754
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7ffff800

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 755
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7ffff000

    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 756
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, -0x7e000000

    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 757
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7fffe000

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 758
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7fffc000

    const/16 v8, 0x11

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 759
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7fff8000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 760
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, -0x7fff0000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 761
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, -0x7ffe0000

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 762
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, -0x7ff80000

    const/16 v8, 0x14

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 763
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, -0x7ff00000

    const/16 v8, 0x15

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 764
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7fffff00

    const/16 v8, 0x19

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 765
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, -0x60000000

    const/16 v8, 0x1a

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 766
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, -0x78000000

    const/16 v8, 0xa

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 767
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x77ffffff

    const/16 v8, 0x1d

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 768
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, -0x70000000

    const/16 v8, 0x1c

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 772
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    .line 773
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 774
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 775
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 776
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 777
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, 0x20000

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 778
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 779
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 780
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v2, 0x80

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 781
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v2, 0x400

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 782
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, 0x40000

    const/16 v8, 0xa

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 783
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, 0x40001

    const/16 v8, 0x1d

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 784
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v2, 0x4000

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 785
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v14, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 786
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v2, 0x2000

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 787
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v2, 0x1000

    invoke-virtual {v0, v11, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 788
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v2, 0x800

    invoke-virtual {v0, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 789
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    const/high16 v8, 0x100000

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 790
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v15, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 791
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    const/high16 v8, 0x200000

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 792
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, 0x800000

    const/16 v8, 0x14

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 793
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, 0x1000000

    const/16 v8, 0x15

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 794
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v2, 0x17

    const/high16 v8, 0x8000000

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 795
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v2, 0x18

    const/high16 v8, 0x400000

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 797
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, 0x8000

    const/16 v8, 0x19

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 798
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, 0x20000000

    const/16 v8, 0x1a

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 799
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v2, 0x1b

    const v8, 0x20000001

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 800
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v2, 0x1e

    const v8, 0x20000002

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 801
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->enableMultichannelGroupDevice()Z

    move-result v0

    if-eqz v0, :cond_2c6

    .line 802
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v2, 0x20

    const v8, 0x800001

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 807
    :cond_2c6
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    .line 808
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    const v8, -0x7ffffffc

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 809
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7ffffff8

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 811
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7ffffff0

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 813
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7fffffe0

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 814
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7fffffc0

    invoke-virtual {v0, v15, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 815
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7ffffc00

    invoke-virtual {v0, v11, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 816
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7ffffe00

    invoke-virtual {v0, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 818
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7ffff800

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 820
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7ffff000

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 821
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, -0x7e000000

    invoke-virtual {v0, v14, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 822
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7fffe000

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 823
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    const v4, -0x7fffc000

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 824
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7fff8000

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 825
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v2, -0x7fff0000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 826
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, -0x7ffe0000

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 828
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, -0x7ff80000

    const/16 v8, 0x14

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 829
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, -0x7ff00000

    const/16 v8, 0x15

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 830
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x7fffff00

    const/16 v8, 0x19

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 832
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, -0x60000000

    const/16 v8, 0x1a

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 833
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/high16 v1, -0x78000000

    const/16 v8, 0xa

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 834
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v1, -0x77ffffff

    const/16 v8, 0x1d

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 835
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/16 v1, 0x1c

    const/high16 v2, -0x70000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 838
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/media/AudioDevicePort;)V
    .registers 2
    .param p1, "port"    # Landroid/media/AudioDevicePort;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    .line 435
    return-void
.end method

.method public static greylist-max-o convertDeviceTypeToInternalDevice(I)I
    .registers 3
    .param p0, "deviceType"    # I

    .line 674
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static blacklist convertDeviceTypeToInternalInputDevice(I)I
    .registers 2
    .param p0, "deviceType"    # I

    .line 684
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist convertDeviceTypeToInternalInputDevice(ILjava/lang/String;)I
    .registers 4
    .param p0, "deviceType"    # I
    .param p1, "address"    # Ljava/lang/String;

    .line 689
    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 690
    .local v0, "internalType":I
    const v1, -0x7ffffffc

    if-ne v0, v1, :cond_17

    .line 691
    const-string v1, "back"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 692
    const v0, -0x7fffff80

    .line 694
    :cond_17
    return v0
.end method

.method public static greylist-max-o convertInternalDeviceToDeviceType(I)I
    .registers 3
    .param p0, "intDevice"    # I

    .line 679
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static blacklist enforceValidAudioDeviceTypeIn(I)V
    .registers 4
    .param p0, "type"    # I

    .line 411
    invoke-static {p0}, Landroid/media/AudioDeviceInfo;->isValidAudioDeviceTypeIn(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 414
    return-void

    .line 412
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal input device type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist enforceValidAudioDeviceTypeOut(I)V
    .registers 4
    .param p0, "type"    # I

    .line 394
    invoke-static {p0}, Landroid/media/AudioDeviceInfo;->isValidAudioDeviceTypeOut(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 397
    return-void

    .line 395
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal output device type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist isValidAudioDeviceTypeIn(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 353
    packed-switch p0, :pswitch_data_8

    .line 378
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 376
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method static greylist-max-o isValidAudioDeviceTypeOut(I)Z
    .registers 3
    .param p0, "type"    # I

    .line 311
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_12

    .line 342
    :pswitch_4
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audio/Flags;->enableMultichannelGroupDevice()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 343
    const/16 v1, 0x20

    if-ne p0, v1, :cond_10

    .line 344
    return v0

    .line 339
    :pswitch_f
    return v0

    .line 347
    :cond_10
    const/4 v0, 0x0

    return v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_4
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 418
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 419
    :cond_4
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_21

    .line 420
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/media/AudioDeviceInfo;

    .line 421
    .local v0, "that":Landroid/media/AudioDeviceInfo;
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 419
    .end local v0    # "that":Landroid/media/AudioDeviceInfo;
    :cond_21
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAddress()Ljava/lang/String;
    .registers 2

    .line 473
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAudioDescriptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->audioDescriptors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAudioProfiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->profiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChannelCounts()[I
    .registers 8

    .line 529
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 532
    .local v0, "countSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getChannelMasks()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_29

    aget v5, v1, v4

    .line 533
    .local v5, "mask":I
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 534
    invoke-static {v5}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v6

    goto :goto_1f

    .line 535
    :cond_1b
    invoke-static {v5}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v6

    .line 533
    :goto_1f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 532
    .end local v5    # "mask":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 539
    :cond_29
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getChannelIndexMasks()[I

    move-result-object v1

    array-length v2, v1

    :goto_2e
    if-ge v3, v2, :cond_40

    aget v4, v1, v3

    .line 540
    .local v4, "index_mask":I
    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 539
    .end local v4    # "index_mask":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 543
    :cond_40
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 544
    .local v1, "counts":[I
    const/4 v2, 0x0

    .line 545
    .local v2, "index":I
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 546
    .local v4, "count":I
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .local v5, "index":I
    aput v4, v1, v2

    .line 547
    .end local v4    # "count":I
    move v2, v5

    goto :goto_4b

    .line 548
    .end local v5    # "index":I
    .restart local v2    # "index":I
    :cond_61
    return-object v1
.end method

.method public whitelist getChannelIndexMasks()[I
    .registers 2

    .line 519
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->channelIndexMasks()[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChannelMasks()[I
    .registers 2

    .line 508
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncapsulationMetadataTypes()[I
    .registers 2

    .line 662
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->encapsulationMetadataTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncapsulationModes()[I
    .registers 2

    .line 644
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->encapsulationModes()[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEncodings()[I
    .registers 2

    .line 617
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 457
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->handle()Landroid/media/AudioHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioHandle;->id()I

    move-result v0

    return v0
.end method

.method public blacklist getInternalType()I
    .registers 2

    .line 450
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->type()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getPort()Landroid/media/AudioDevicePort;
    .registers 2

    .line 442
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    return-object v0
.end method

.method public whitelist getProductName()Ljava/lang/CharSequence;
    .registers 3

    .line 464
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->name()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "portName":Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, v0

    goto :goto_12

    :cond_10
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_12
    return-object v1
.end method

.method public whitelist getSampleRates()[I
    .registers 2

    .line 496
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSpeakerLayoutChannelMask()I
    .registers 2

    .line 599
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->speakerLayoutChannelMask()I

    move-result v0

    return v0
.end method

.method public whitelist getType()I
    .registers 4

    .line 669
    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 426
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isSink()Z
    .registers 3

    .line 487
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->role()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist isSource()Z
    .registers 3

    .line 480
    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->role()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method
