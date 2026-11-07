.class public Landroid/os/PowerExemptionManager;
.super Ljava/lang/Object;
.source "PowerExemptionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerExemptionManager$ReasonCode;,
        Landroid/os/PowerExemptionManager$TempAllowListType;,
        Landroid/os/PowerExemptionManager$AllowListEvent;
    }
.end annotation


# static fields
.field public static final whitelist EVENT_MMS:I = 0x2

.field public static final whitelist EVENT_SMS:I = 0x1

.field public static final whitelist EVENT_UNSPECIFIED:I = 0x0

.field public static final whitelist REASON_ACCOUNT_TRANSFER:I = 0x68

.field public static final blacklist REASON_ACTIVE_DEVICE_ADMIN:I = 0x144

.field public static final whitelist REASON_ACTIVITY_RECOGNITION:I = 0x67

.field public static final blacklist REASON_ACTIVITY_STARTER:I = 0x34

.field public static final blacklist REASON_ACTIVITY_VISIBILITY_GRACE_PERIOD:I = 0x43

.field public static final blacklist REASON_ALARM_MANAGER_ALARM_CLOCK:I = 0x12d

.field public static final blacklist REASON_ALARM_MANAGER_WHILE_IDLE:I = 0x12e

.field public static final blacklist REASON_ALLOWLISTED_PACKAGE:I = 0x41

.field public static final blacklist REASON_APPOP:I = 0x42

.field public static final blacklist REASON_BACKGROUND_ACTIVITY_PERMISSION:I = 0x3a

.field public static final blacklist REASON_BACKGROUND_FGS_PERMISSION:I = 0x3b

.field public static final whitelist REASON_BLUETOOTH_BROADCAST:I = 0xcb

.field public static final blacklist REASON_BOOT_COMPLETED:I = 0xc8

.field public static final blacklist REASON_CARRIER_PRIVILEGED_APP:I = 0x141

.field public static final blacklist REASON_COMPANION_DEVICE_MANAGER:I = 0x39

.field public static final blacklist REASON_CURRENT_INPUT_METHOD:I = 0x47

.field public static final blacklist REASON_DENIED:I = -0x1

.field public static final blacklist REASON_DEVICE_DEMO_MODE:I = 0x3f

.field public static final blacklist REASON_DEVICE_OWNER:I = 0x37

.field public static final blacklist REASON_DISALLOW_APPS_CONTROL:I = 0x143

.field public static final blacklist REASON_DOMAIN_VERIFICATION_V1:I = 0x133

.field public static final blacklist REASON_DOMAIN_VERIFICATION_V2:I = 0x134

.field public static final blacklist REASON_DPO_PROTECTED_APP:I = 0x142

.field public static final blacklist REASON_EVENT_MMS:I = 0x13b

.field public static final blacklist REASON_EVENT_SMS:I = 0x13a

.field public static final blacklist REASON_FGS_BINDING:I = 0x36

.field public static final whitelist REASON_GEOFENCING:I = 0x64

.field public static final blacklist REASON_INSTR_BACKGROUND_ACTIVITY_PERMISSION:I = 0x3c

.field public static final blacklist REASON_INSTR_BACKGROUND_FGS_PERMISSION:I = 0x3d

.field public static final blacklist REASON_KEY_CHAIN:I = 0x130

.field public static final blacklist REASON_LOCALE_CHANGED:I = 0xce

.field public static final whitelist REASON_LOCATION_PROVIDER:I = 0x138
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist REASON_LOCKED_BOOT_COMPLETED:I = 0xca

.field public static final blacklist REASON_MEDIA_BUTTON:I = 0x139

.field public static final blacklist REASON_MEDIA_NOTIFICATION_TRANSFER:I = 0x145

.field public static final blacklist REASON_MEDIA_SESSION_CALLBACK:I = 0x13d

.field public static final blacklist REASON_NOTIFICATION_SERVICE:I = 0x136

.field public static final blacklist REASON_OPT_OUT_REQUESTED:I = 0x3e8

.field public static final blacklist REASON_OP_ACTIVATE_PLATFORM_VPN:I = 0x45

.field public static final blacklist REASON_OP_ACTIVATE_VPN:I = 0x44

.field public static final whitelist REASON_OTHER:I = 0x1

.field public static final blacklist REASON_PACKAGE_INSTALLER:I = 0x146

.field public static final blacklist REASON_PACKAGE_REPLACED:I = 0x137

.field public static final blacklist REASON_PACKAGE_UNARCHIVE:I = 0x148

.field public static final blacklist REASON_PACKAGE_VERIFIER:I = 0x131

.field public static final blacklist REASON_PRE_BOOT_COMPLETED:I = 0xc9

.field public static final blacklist REASON_PROC_STATE_BFGS:I = 0xf

.field public static final blacklist REASON_PROC_STATE_BTOP:I = 0xd

.field public static final blacklist REASON_PROC_STATE_FGS:I = 0xe

.field public static final blacklist REASON_PROC_STATE_PERSISTENT:I = 0xa

.field public static final blacklist REASON_PROC_STATE_PERSISTENT_UI:I = 0xb

.field public static final blacklist REASON_PROC_STATE_TOP:I = 0xc

.field public static final blacklist REASON_PROFILE_OWNER:I = 0x38

.field public static final whitelist REASON_PUSH_MESSAGING:I = 0x65

.field public static final blacklist REASON_PUSH_MESSAGING_DEFERRABLE:I = 0x69

.field public static final whitelist REASON_PUSH_MESSAGING_OVER_QUOTA:I = 0x66

.field public static final whitelist REASON_REFRESH_SAFETY_SOURCES:I = 0xd0

.field public static final blacklist REASON_ROLE_DIALER:I = 0x13e

.field public static final blacklist REASON_ROLE_EMERGENCY:I = 0x13f

.field public static final blacklist REASON_SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED:I = 0xcf

.field public static final blacklist REASON_SERVICE_LAUNCH:I = 0x12f

.field public static final blacklist REASON_SHELL:I = 0x13c

.field public static final blacklist REASON_START_ACTIVITY_FLAG:I = 0x35

.field public static final blacklist REASON_SYNC_MANAGER:I = 0x132

.field public static final blacklist REASON_SYSTEM_ALERT_WINDOW_PERMISSION:I = 0x3e

.field public static final blacklist REASON_SYSTEM_ALLOW_LISTED:I = 0x12c

.field public static final blacklist REASON_SYSTEM_EXEMPT_APP_OP:I = 0x147

.field public static final blacklist REASON_SYSTEM_MODULE:I = 0x140

.field public static final blacklist REASON_SYSTEM_UID:I = 0x33

.field public static final blacklist REASON_TEMP_ALLOWED_WHILE_IN_USE:I = 0x46

.field public static final blacklist REASON_TILE_ONCLICK:I = 0x149

.field public static final blacklist REASON_TIMEZONE_CHANGED:I = 0xcc

.field public static final blacklist REASON_TIME_CHANGED:I = 0xcd

.field public static final blacklist REASON_UID_VISIBLE:I = 0x32

.field public static final whitelist REASON_UNKNOWN:I = 0x0

.field public static final blacklist REASON_VPN:I = 0x135

.field public static final blacklist TEMPORARY_ALLOW_LIST_TYPE_APP_FREEZING_DELAYED:I = 0x4

.field public static final whitelist TEMPORARY_ALLOW_LIST_TYPE_FOREGROUND_SERVICE_ALLOWED:I = 0x0

.field public static final whitelist TEMPORARY_ALLOW_LIST_TYPE_FOREGROUND_SERVICE_NOT_ALLOWED:I = 0x1

.field public static final whitelist TEMPORARY_ALLOW_LIST_TYPE_NONE:I = -0x1


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/os/IDeviceIdleController;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p1, p0, Landroid/os/PowerExemptionManager;->mContext:Landroid/content/Context;

    .line 531
    const-class v0, Landroid/os/DeviceIdleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DeviceIdleManager;

    invoke-virtual {v0}, Landroid/os/DeviceIdleManager;->getService()Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    .line 532
    return-void
.end method

.method public static blacklist getExemptionReasonForStatsd(I)I
    .registers 2
    .param p0, "reasonCode"    # I

    .line 697
    sparse-switch p0, :sswitch_data_3c

    .line 735
    const/4 v0, 0x1

    return v0

    .line 733
    :sswitch_5
    const/16 v0, 0x144

    return v0

    .line 731
    :sswitch_8
    const/16 v0, 0x143

    return v0

    .line 729
    :sswitch_b
    const/16 v0, 0x142

    return v0

    .line 721
    :sswitch_e
    const/16 v0, 0x141

    return v0

    .line 719
    :sswitch_11
    const/16 v0, 0x140

    return v0

    .line 727
    :sswitch_14
    const/16 v0, 0x13f

    return v0

    .line 725
    :sswitch_17
    const/16 v0, 0x13e

    return v0

    .line 723
    :sswitch_1a
    const/16 v0, 0x12c

    return v0

    .line 717
    :sswitch_1d
    const/16 v0, 0x45

    return v0

    .line 715
    :sswitch_20
    const/16 v0, 0x44

    return v0

    .line 701
    :sswitch_23
    const/16 v0, 0x41

    return v0

    .line 705
    :sswitch_26
    const/16 v0, 0x3f

    return v0

    .line 703
    :sswitch_29
    const/16 v0, 0x39

    return v0

    .line 709
    :sswitch_2c
    const/16 v0, 0x38

    return v0

    .line 707
    :sswitch_2f
    const/16 v0, 0x37

    return v0

    .line 699
    :sswitch_32
    const/16 v0, 0x33

    return v0

    .line 713
    :sswitch_35
    const/16 v0, 0xb

    return v0

    .line 711
    :sswitch_38
    const/16 v0, 0xa

    return v0

    nop

    :sswitch_data_3c
    .sparse-switch
        0xa -> :sswitch_38
        0xb -> :sswitch_35
        0x33 -> :sswitch_32
        0x37 -> :sswitch_2f
        0x38 -> :sswitch_2c
        0x39 -> :sswitch_29
        0x3f -> :sswitch_26
        0x41 -> :sswitch_23
        0x44 -> :sswitch_20
        0x45 -> :sswitch_1d
        0x12c -> :sswitch_1a
        0x13e -> :sswitch_17
        0x13f -> :sswitch_14
        0x140 -> :sswitch_11
        0x141 -> :sswitch_e
        0x142 -> :sswitch_b
        0x143 -> :sswitch_8
        0x144 -> :sswitch_5
    .end sparse-switch
.end method

.method public static blacklist getReasonCodeFromProcState(I)I
    .registers 2
    .param p0, "procState"    # I

    .line 675
    if-gtz p0, :cond_5

    .line 676
    const/16 v0, 0xa

    return v0

    .line 677
    :cond_5
    const/4 v0, 0x1

    if-gt p0, v0, :cond_b

    .line 678
    const/16 v0, 0xb

    return v0

    .line 679
    :cond_b
    const/4 v0, 0x2

    if-gt p0, v0, :cond_11

    .line 680
    const/16 v0, 0xc

    return v0

    .line 681
    :cond_11
    const/4 v0, 0x3

    if-gt p0, v0, :cond_17

    .line 682
    const/16 v0, 0xd

    return v0

    .line 683
    :cond_17
    const/4 v0, 0x4

    if-gt p0, v0, :cond_1d

    .line 684
    const/16 v0, 0xe

    return v0

    .line 685
    :cond_1d
    const/4 v0, 0x5

    if-gt p0, v0, :cond_23

    .line 686
    const/16 v0, 0xf

    return v0

    .line 688
    :cond_23
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist reasonCodeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reasonCode"    # I

    .line 746
    sparse-switch p0, :sswitch_data_f8

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 888
    :sswitch_1d
    const-string v0, "REASON_OPT_OUT_REQUESTED"

    return-object v0

    .line 892
    :sswitch_20
    const-string v0, "REASON_PACKAGE_INSTALLER"

    return-object v0

    .line 890
    :sswitch_23
    const-string v0, "REASON_MEDIA_NOTIFICATION_TRANSFER"

    return-object v0

    .line 886
    :sswitch_26
    const-string v0, "ACTIVE_DEVICE_ADMIN"

    return-object v0

    .line 884
    :sswitch_29
    const-string v0, "DISALLOW_APPS_CONTROL"

    return-object v0

    .line 882
    :sswitch_2c
    const-string v0, "DPO_PROTECTED_APP"

    return-object v0

    .line 880
    :sswitch_2f
    const-string v0, "CARRIER_PRIVILEGED_APP"

    return-object v0

    .line 878
    :sswitch_32
    const-string v0, "SYSTEM_MODULE"

    return-object v0

    .line 876
    :sswitch_35
    const-string v0, "ROLE_EMERGENCY"

    return-object v0

    .line 874
    :sswitch_38
    const-string v0, "ROLE_DIALER"

    return-object v0

    .line 872
    :sswitch_3b
    const-string v0, "MEDIA_SESSION_CALLBACK"

    return-object v0

    .line 870
    :sswitch_3e
    const-string v0, "SHELL"

    return-object v0

    .line 868
    :sswitch_41
    const-string v0, "EVENT_MMS"

    return-object v0

    .line 866
    :sswitch_44
    const-string v0, "EVENT_SMS"

    return-object v0

    .line 864
    :sswitch_47
    const-string v0, "MEDIA_BUTTON"

    return-object v0

    .line 862
    :sswitch_4a
    const-string v0, "LOCATION_PROVIDER"

    return-object v0

    .line 860
    :sswitch_4d
    const-string v0, "PACKAGE_REPLACED"

    return-object v0

    .line 858
    :sswitch_50
    const-string v0, "NOTIFICATION_SERVICE"

    return-object v0

    .line 856
    :sswitch_53
    const-string v0, "VPN"

    return-object v0

    .line 854
    :sswitch_56
    const-string v0, "DOMAIN_VERIFICATION_V2"

    return-object v0

    .line 852
    :sswitch_59
    const-string v0, "DOMAIN_VERIFICATION_V1"

    return-object v0

    .line 850
    :sswitch_5c
    const-string v0, "SYNC_MANAGER"

    return-object v0

    .line 848
    :sswitch_5f
    const-string v0, "PACKAGE_VERIFIER"

    return-object v0

    .line 846
    :sswitch_62
    const-string v0, "KEY_CHAIN"

    return-object v0

    .line 844
    :sswitch_65
    const-string v0, "SERVICE_LAUNCH"

    return-object v0

    .line 842
    :sswitch_68
    const-string v0, "ALARM_MANAGER_WHILE_IDLE"

    return-object v0

    .line 840
    :sswitch_6b
    const-string v0, "ALARM_MANAGER_ALARM_CLOCK"

    return-object v0

    .line 838
    :sswitch_6e
    const-string v0, "SYSTEM_ALLOW_LISTED"

    return-object v0

    .line 836
    :sswitch_71
    const-string v0, "REASON_REFRESH_SAFETY_SOURCES"

    return-object v0

    .line 834
    :sswitch_74
    const-string v0, "REASON_SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED"

    return-object v0

    .line 832
    :sswitch_77
    const-string v0, "LOCALE_CHANGED"

    return-object v0

    .line 830
    :sswitch_7a
    const-string v0, "TIME_CHANGED"

    return-object v0

    .line 828
    :sswitch_7d
    const-string v0, "TIMEZONE_CHANGED"

    return-object v0

    .line 826
    :sswitch_80
    const-string v0, "BLUETOOTH_BROADCAST"

    return-object v0

    .line 824
    :sswitch_83
    const-string v0, "LOCKED_BOOT_COMPLETED"

    return-object v0

    .line 822
    :sswitch_86
    const-string v0, "PRE_BOOT_COMPLETED"

    return-object v0

    .line 820
    :sswitch_89
    const-string v0, "BOOT_COMPLETED"

    return-object v0

    .line 818
    :sswitch_8c
    const-string v0, "PUSH_MESSAGING_DEFERRABLE"

    return-object v0

    .line 816
    :sswitch_8f
    const-string v0, "REASON_ACCOUNT_TRANSFER"

    return-object v0

    .line 814
    :sswitch_92
    const-string v0, "ACTIVITY_RECOGNITION"

    return-object v0

    .line 812
    :sswitch_95
    const-string v0, "PUSH_MESSAGING_OVER_QUOTA"

    return-object v0

    .line 810
    :sswitch_98
    const-string v0, "PUSH_MESSAGING"

    return-object v0

    .line 808
    :sswitch_9b
    const-string v0, "GEOFENCING"

    return-object v0

    .line 804
    :sswitch_9e
    const-string v0, "CURRENT_INPUT_METHOD"

    return-object v0

    .line 806
    :sswitch_a1
    const-string v0, "TEMP_ALLOWED_WHILE_IN_USE"

    return-object v0

    .line 802
    :sswitch_a4
    const-string v0, "OP_ACTIVATE_PLATFORM_VPN"

    return-object v0

    .line 800
    :sswitch_a7
    const-string v0, "OP_ACTIVATE_VPN"

    return-object v0

    .line 798
    :sswitch_aa
    const-string v0, "ACTIVITY_VISIBILITY_GRACE_PERIOD"

    return-object v0

    .line 796
    :sswitch_ad
    const-string v0, "APPOP"

    return-object v0

    .line 794
    :sswitch_b0
    const-string v0, "ALLOWLISTED_PACKAGE"

    return-object v0

    .line 792
    :sswitch_b3
    const-string v0, "DEVICE_DEMO_MODE"

    return-object v0

    .line 790
    :sswitch_b6
    const-string v0, "SYSTEM_ALERT_WINDOW_PERMISSION"

    return-object v0

    .line 788
    :sswitch_b9
    const-string v0, "INSTR_BACKGROUND_FGS_PERMISSION"

    return-object v0

    .line 786
    :sswitch_bc
    const-string v0, "INSTR_BACKGROUND_ACTIVITY_PERMISSION"

    return-object v0

    .line 784
    :sswitch_bf
    const-string v0, "BACKGROUND_FGS_PERMISSION"

    return-object v0

    .line 782
    :sswitch_c2
    const-string v0, "BACKGROUND_ACTIVITY_PERMISSION"

    return-object v0

    .line 780
    :sswitch_c5
    const-string v0, "COMPANION_DEVICE_MANAGER"

    return-object v0

    .line 778
    :sswitch_c8
    const-string v0, "PROFILE_OWNER"

    return-object v0

    .line 776
    :sswitch_cb
    const-string v0, "DEVICE_OWNER"

    return-object v0

    .line 774
    :sswitch_ce
    const-string v0, "FGS_BINDING"

    return-object v0

    .line 772
    :sswitch_d1
    const-string v0, "START_ACTIVITY_FLAG"

    return-object v0

    .line 770
    :sswitch_d4
    const-string v0, "ACTIVITY_STARTER"

    return-object v0

    .line 768
    :sswitch_d7
    const-string v0, "SYSTEM_UID"

    return-object v0

    .line 766
    :sswitch_da
    const-string v0, "UID_VISIBLE"

    return-object v0

    .line 764
    :sswitch_dd
    const-string v0, "PROC_STATE_BFGS"

    return-object v0

    .line 762
    :sswitch_e0
    const-string v0, "PROC_STATE_FGS"

    return-object v0

    .line 760
    :sswitch_e3
    const-string v0, "PROC_STATE_BTOP"

    return-object v0

    .line 758
    :sswitch_e6
    const-string v0, "PROC_STATE_TOP"

    return-object v0

    .line 756
    :sswitch_e9
    const-string v0, "PROC_STATE_PERSISTENT_UI"

    return-object v0

    .line 754
    :sswitch_ec
    const-string v0, "PROC_STATE_PERSISTENT"

    return-object v0

    .line 752
    :sswitch_ef
    const-string v0, "OTHER"

    return-object v0

    .line 750
    :sswitch_f2
    const-string v0, "UNKNOWN"

    return-object v0

    .line 748
    :sswitch_f5
    const-string v0, "DENIED"

    return-object v0

    :sswitch_data_f8
    .sparse-switch
        -0x1 -> :sswitch_f5
        0x0 -> :sswitch_f2
        0x1 -> :sswitch_ef
        0xa -> :sswitch_ec
        0xb -> :sswitch_e9
        0xc -> :sswitch_e6
        0xd -> :sswitch_e3
        0xe -> :sswitch_e0
        0xf -> :sswitch_dd
        0x32 -> :sswitch_da
        0x33 -> :sswitch_d7
        0x34 -> :sswitch_d4
        0x35 -> :sswitch_d1
        0x36 -> :sswitch_ce
        0x37 -> :sswitch_cb
        0x38 -> :sswitch_c8
        0x39 -> :sswitch_c5
        0x3a -> :sswitch_c2
        0x3b -> :sswitch_bf
        0x3c -> :sswitch_bc
        0x3d -> :sswitch_b9
        0x3e -> :sswitch_b6
        0x3f -> :sswitch_b3
        0x41 -> :sswitch_b0
        0x42 -> :sswitch_ad
        0x43 -> :sswitch_aa
        0x44 -> :sswitch_a7
        0x45 -> :sswitch_a4
        0x46 -> :sswitch_a1
        0x47 -> :sswitch_9e
        0x64 -> :sswitch_9b
        0x65 -> :sswitch_98
        0x66 -> :sswitch_95
        0x67 -> :sswitch_92
        0x68 -> :sswitch_8f
        0x69 -> :sswitch_8c
        0xc8 -> :sswitch_89
        0xc9 -> :sswitch_86
        0xca -> :sswitch_83
        0xcb -> :sswitch_80
        0xcc -> :sswitch_7d
        0xcd -> :sswitch_7a
        0xce -> :sswitch_77
        0xcf -> :sswitch_74
        0xd0 -> :sswitch_71
        0x12c -> :sswitch_6e
        0x12d -> :sswitch_6b
        0x12e -> :sswitch_68
        0x12f -> :sswitch_65
        0x130 -> :sswitch_62
        0x131 -> :sswitch_5f
        0x132 -> :sswitch_5c
        0x133 -> :sswitch_59
        0x134 -> :sswitch_56
        0x135 -> :sswitch_53
        0x136 -> :sswitch_50
        0x137 -> :sswitch_4d
        0x138 -> :sswitch_4a
        0x139 -> :sswitch_47
        0x13a -> :sswitch_44
        0x13b -> :sswitch_41
        0x13c -> :sswitch_3e
        0x13d -> :sswitch_3b
        0x13e -> :sswitch_38
        0x13f -> :sswitch_35
        0x140 -> :sswitch_32
        0x141 -> :sswitch_2f
        0x142 -> :sswitch_2c
        0x143 -> :sswitch_29
        0x144 -> :sswitch_26
        0x145 -> :sswitch_23
        0x146 -> :sswitch_20
        0x3e8 -> :sswitch_1d
    .end sparse-switch
.end method


# virtual methods
.method public blacklist addToPermanentAllowList(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 541
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/PowerExemptionManager;->addToPermanentAllowList(Ljava/util/List;)V

    .line 542
    return-void
.end method

.method public blacklist addToPermanentAllowList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 552
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApps(Ljava/util/List;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 555
    nop

    .line 556
    return-void

    .line 553
    :catch_7
    move-exception v0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addToTemporaryAllowList(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reasonCode"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "durationMs"    # J

    .line 630
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    iget-object v1, p0, Landroid/os/PowerExemptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v4
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_14

    move-object v1, p1

    move v5, p2

    move-object v6, p3

    move-wide v2, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "reasonCode":I
    .end local p3    # "reason":Ljava/lang/String;
    .end local p4    # "durationMs":J
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "durationMs":J
    .local v5, "reasonCode":I
    .local v6, "reason":Ljava/lang/String;
    :try_start_c
    invoke-interface/range {v0 .. v6}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JIILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 634
    nop

    .line 635
    return-void

    .line 632
    :catch_11
    move-exception v0

    move-object p1, v0

    goto :goto_1a

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "durationMs":J
    .end local v5    # "reasonCode":I
    .end local v6    # "reason":Ljava/lang/String;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "reasonCode":I
    .restart local p3    # "reason":Ljava/lang/String;
    .restart local p4    # "durationMs":J
    :catch_14
    move-exception v0

    move-object v1, p1

    move v5, p2

    move-object v6, p3

    move-wide v2, p4

    move-object p1, v0

    .line 633
    .end local p2    # "reasonCode":I
    .end local p3    # "reason":Ljava/lang/String;
    .end local p4    # "durationMs":J
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "durationMs":J
    .restart local v5    # "reasonCode":I
    .restart local v6    # "reason":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1a
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist addToTemporaryAllowListForEvent(Ljava/lang/String;ILjava/lang/String;I)J
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reasonCode"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "event"    # I

    .line 654
    packed-switch p4, :pswitch_data_32

    .line 663
    :try_start_3
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    goto :goto_20

    .line 656
    :pswitch_6
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    iget-object v1, p0, Landroid/os/PowerExemptionManager;->mContext:Landroid/content/Context;

    .line 657
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 656
    invoke-interface {v0, p1, v1, p2, p3}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 659
    :pswitch_13
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    iget-object v1, p0, Landroid/os/PowerExemptionManager;->mContext:Landroid/content/Context;

    .line 660
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 659
    invoke-interface {v0, p1, v1, p2, p3}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 663
    :goto_20
    iget-object v1, p0, Landroid/os/PowerExemptionManager;->mContext:Landroid/content/Context;

    .line 664
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 663
    invoke-interface {v0, p1, v1, p2, p3}, Landroid/os/IDeviceIdleController;->whitelistAppTemporarily(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2a} :catch_2b

    return-wide v0

    .line 666
    :catch_2b
    move-exception v0

    .line 667
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_13
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist getAllowListedAppIds(Z)[I
    .registers 4
    .param p1, "includingIdle"    # Z

    .line 570
    if-eqz p1, :cond_9

    .line 571
    :try_start_2
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v0

    return-object v0

    .line 573
    :cond_9
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    return-object v0

    .line 575
    :catch_10
    move-exception v0

    .line 576
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAllowListed(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includingIdle"    # Z

    .line 590
    if-eqz p2, :cond_9

    .line 591
    :try_start_2
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 593
    :cond_9
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    return v0

    .line 595
    :catch_10
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeFromPermanentAllowList(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 611
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 614
    nop

    .line 615
    return-void

    .line 612
    :catch_7
    move-exception v0

    .line 613
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
