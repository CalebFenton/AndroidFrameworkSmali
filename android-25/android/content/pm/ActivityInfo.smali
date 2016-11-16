.class public Landroid/content/pm/ActivityInfo;
.super Landroid/content/pm/ComponentInfo;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ActivityInfo$1;,
        Landroid/content/pm/ActivityInfo$WindowLayout;
    }
.end annotation


# static fields
.field public static final CONFIG_DENSITY:I = 0x1000

.field public static final CONFIG_FONT_SCALE:I = 0x40000000

.field public static final CONFIG_KEYBOARD:I = 0x10

.field public static final CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final CONFIG_LAYOUT_DIRECTION:I = 0x2000

.field public static final CONFIG_LOCALE:I = 0x4

.field public static final CONFIG_MCC:I = 0x1

.field public static final CONFIG_MNC:I = 0x2

.field public static CONFIG_NATIVE_BITS:[I = null

.field public static final CONFIG_NAVIGATION:I = 0x40

.field public static final CONFIG_ORIENTATION:I = 0x80

.field public static final CONFIG_SCREEN_LAYOUT:I = 0x100

.field public static final CONFIG_SCREEN_SIZE:I = 0x400

.field public static final CONFIG_SMALLEST_SCREEN_SIZE:I = 0x800

.field public static final CONFIG_TOUCHSCREEN:I = 0x8

.field public static final CONFIG_UI_MODE:I = 0x200

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOCUMENT_LAUNCH_ALWAYS:I = 0x2

.field public static final DOCUMENT_LAUNCH_INTO_EXISTING:I = 0x1

.field public static final DOCUMENT_LAUNCH_NEVER:I = 0x3

.field public static final DOCUMENT_LAUNCH_NONE:I = 0x0

.field public static final FLAG_ALLOW_EMBEDDED:I = -0x80000000

.field public static final FLAG_ALLOW_TASK_REPARENTING:I = 0x40

.field public static final FLAG_ALWAYS_FOCUSABLE:I = 0x40000

.field public static final FLAG_ALWAYS_RETAIN_TASK_STATE:I = 0x8

.field public static final FLAG_AUTO_REMOVE_FROM_RECENTS:I = 0x2000

.field public static final FLAG_CLEAR_TASK_ON_LAUNCH:I = 0x4

.field public static final FLAG_ENABLE_VR_MODE:I = 0x8000

.field public static final FLAG_EXCLUDE_FROM_RECENTS:I = 0x20

.field public static final FLAG_FINISH_ON_CLOSE_SYSTEM_DIALOGS:I = 0x100

.field public static final FLAG_FINISH_ON_TASK_LAUNCH:I = 0x2

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x200

.field public static final FLAG_IMMERSIVE:I = 0x800

.field public static final FLAG_MULTIPROCESS:I = 0x1

.field public static final FLAG_NO_HISTORY:I = 0x80

.field public static final FLAG_RELINQUISH_TASK_IDENTITY:I = 0x1000

.field public static final FLAG_RESUME_WHILE_PAUSING:I = 0x4000

.field public static final FLAG_SHOW_FOR_ALL_USERS:I = 0x400

.field public static final FLAG_SINGLE_USER:I = 0x40000000

.field public static final FLAG_STATE_NOT_NEEDED:I = 0x10

.field public static final FLAG_SYSTEM_USER_ONLY:I = 0x20000000

.field public static final LAUNCH_MULTIPLE:I = 0x0

.field public static final LAUNCH_SINGLE_INSTANCE:I = 0x3

.field public static final LAUNCH_SINGLE_TASK:I = 0x2

.field public static final LAUNCH_SINGLE_TOP:I = 0x1

.field public static final LOCK_TASK_LAUNCH_MODE_ALWAYS:I = 0x2

.field public static final LOCK_TASK_LAUNCH_MODE_DEFAULT:I = 0x0

.field public static final LOCK_TASK_LAUNCH_MODE_IF_WHITELISTED:I = 0x3

.field public static final LOCK_TASK_LAUNCH_MODE_NEVER:I = 0x1

.field public static final PERSIST_ACROSS_REBOOTS:I = 0x2

.field public static final PERSIST_NEVER:I = 0x1

.field public static final PERSIST_ROOT_ONLY:I = 0x0

.field public static final RESIZE_MODE_CROP_WINDOWS:I = 0x1

.field public static final RESIZE_MODE_FORCE_RESIZEABLE:I = 0x4

.field public static final RESIZE_MODE_RESIZEABLE:I = 0x2

.field public static final RESIZE_MODE_RESIZEABLE_AND_PIPABLE:I = 0x3

.field public static final RESIZE_MODE_UNRESIZEABLE:I = 0x0

.field public static final SCREEN_ORIENTATION_BEHIND:I = 0x3

.field public static final SCREEN_ORIENTATION_FULL_SENSOR:I = 0xa

.field public static final SCREEN_ORIENTATION_FULL_USER:I = 0xd

.field public static final SCREEN_ORIENTATION_LANDSCAPE:I = 0x0

.field public static final SCREEN_ORIENTATION_LOCKED:I = 0xe

.field public static final SCREEN_ORIENTATION_NOSENSOR:I = 0x5

.field public static final SCREEN_ORIENTATION_PORTRAIT:I = 0x1

.field public static final SCREEN_ORIENTATION_REVERSE_LANDSCAPE:I = 0x8

.field public static final SCREEN_ORIENTATION_REVERSE_PORTRAIT:I = 0x9

.field public static final SCREEN_ORIENTATION_SENSOR:I = 0x4

.field public static final SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x6

.field public static final SCREEN_ORIENTATION_SENSOR_PORTRAIT:I = 0x7

.field public static final SCREEN_ORIENTATION_UNSPECIFIED:I = -0x1

.field public static final SCREEN_ORIENTATION_USER:I = 0x2

.field public static final SCREEN_ORIENTATION_USER_LANDSCAPE:I = 0xb

.field public static final SCREEN_ORIENTATION_USER_PORTRAIT:I = 0xc

.field public static final UIOPTION_SPLIT_ACTION_BAR_WHEN_NARROW:I = 0x1


# instance fields
.field public configChanges:I

.field public documentLaunchMode:I

.field public flags:I

.field public launchMode:I

.field public lockTaskLaunchMode:I

.field public maxRecents:I

.field public parentActivityName:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public persistableMode:I

.field public requestedVrComponent:Ljava/lang/String;

.field public resizeMode:I

.field public screenOrientation:I

.field public softInputMode:I

.field public targetActivity:Ljava/lang/String;

.field public taskAffinity:Ljava/lang/String;

.field public theme:I

.field public uiOptions:I

.field public windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 640
    const/16 v0, 0xe

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    #@9
    .line 957
    new-instance v0, Landroid/content/pm/ActivityInfo$1;

    #@b
    invoke-direct {v0}, Landroid/content/pm/ActivityInfo$1;-><init>()V

    #@e
    .line 956
    sput-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10
    .line 35
    return-void

    #@11
    .line 640
    nop

    #@12
    :array_0
    .array-data 4
        0x2
        0x1
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x800
        0x1000
        0x200
        0x2000
        0x100
        0x4000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 783
    invoke-direct {p0}, Landroid/content/pm/ComponentInfo;-><init>()V

    #@3
    .line 191
    const/4 v0, 0x2

    #@4
    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@6
    .line 504
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@9
    .line 730
    const/4 v0, 0x0

    #@a
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@c
    .line 783
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/ActivityInfo;

    #@0
    .prologue
    .line 787
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    #@3
    .line 191
    const/4 v0, 0x2

    #@4
    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@6
    .line 504
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@9
    .line 730
    const/4 v0, 0x0

    #@a
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@c
    .line 788
    iget v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    #@e
    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    #@10
    .line 789
    iget v0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@12
    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@14
    .line 790
    iget v0, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    #@16
    iput v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    #@18
    .line 791
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@1a
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@1c
    .line 792
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@1e
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@20
    .line 793
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@22
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@24
    .line 794
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    #@26
    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    #@28
    .line 795
    iget v0, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@2a
    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@2c
    .line 796
    iget v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@2e
    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@30
    .line 797
    iget v0, p1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@32
    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@34
    .line 798
    iget v0, p1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@36
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@38
    .line 799
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@3a
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@3c
    .line 800
    iget v0, p1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@3e
    iput v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@40
    .line 801
    iget v0, p1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@42
    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@44
    .line 802
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@46
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@48
    .line 803
    iget v0, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@4a
    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@4c
    .line 804
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    #@4e
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    #@50
    .line 786
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 967
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    .line 191
    const/4 v0, 0x2

    #@4
    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@6
    .line 504
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@9
    .line 730
    const/4 v0, 0x0

    #@a
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@c
    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    #@12
    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@18
    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    #@1e
    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@24
    .line 972
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@2a
    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@30
    .line 974
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v0

    #@34
    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    #@36
    .line 975
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@3c
    .line 976
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v0

    #@40
    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@42
    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v0

    #@46
    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@48
    .line 978
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v0

    #@4c
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@4e
    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@54
    .line 980
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v0

    #@58
    iput v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@5a
    .line 981
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v0

    #@5e
    iput v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@60
    .line 982
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v0

    #@64
    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@66
    .line 983
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@69
    move-result v0

    #@6a
    const/4 v1, 0x1

    #@6b
    if-ne v0, v1, :cond_0

    #@6d
    .line 984
    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    #@6f
    invoke-direct {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(Landroid/os/Parcel;)V

    #@72
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@74
    .line 986
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@77
    move-result v0

    #@78
    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@7a
    .line 987
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7d
    move-result-object v0

    #@7e
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    #@80
    .line 966
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static activityInfoConfigJavaToNative(I)I
    .locals 3
    .param p0, "input"    # I

    #@0
    .prologue
    .line 663
    const/4 v1, 0x0

    #@1
    .line 664
    .local v1, "output":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 665
    const/4 v2, 0x1

    #@8
    shl-int/2addr v2, v0

    #@9
    and-int/2addr v2, p0

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 666
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    #@e
    aget v2, v2, v0

    #@10
    or-int/2addr v1, v2

    #@11
    .line 664
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 669
    :cond_1
    return v1
.end method

.method public static activityInfoConfigNativeToJava(I)I
    .locals 3
    .param p0, "input"    # I

    #@0
    .prologue
    .line 678
    const/4 v1, 0x0

    #@1
    .line 679
    .local v1, "output":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 680
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    #@9
    aget v2, v2, v0

    #@b
    and-int/2addr v2, p0

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 681
    const/4 v2, 0x1

    #@f
    shl-int/2addr v2, v0

    #@10
    or-int/2addr v1, v2

    #@11
    .line 679
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 684
    :cond_1
    return v1
.end method

.method public static isResizeableMode(I)Z
    .locals 2
    .param p0, "mode"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 845
    const/4 v1, 0x2

    #@2
    if-eq p0, v1, :cond_0

    #@4
    .line 846
    const/4 v1, 0x3

    #@5
    if-ne p0, v1, :cond_1

    #@7
    .line 845
    :cond_0
    :goto_0
    return v0

    #@8
    .line 847
    :cond_1
    const/4 v1, 0x4

    #@9
    if-eq p0, v1, :cond_0

    #@b
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static final lockTaskLaunchModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "lockTaskLaunchMode"    # I

    #@0
    .prologue
    .line 757
    packed-switch p0, :pswitch_data_0

    #@3
    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "unknown="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 759
    :pswitch_0
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_DEFAULT"

    #@1b
    return-object v0

    #@1c
    .line 761
    :pswitch_1
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_NEVER"

    #@1f
    return-object v0

    #@20
    .line 763
    :pswitch_2
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_ALWAYS"

    #@23
    return-object v0

    #@24
    .line 765
    :pswitch_3
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_IF_WHITELISTED"

    #@27
    return-object v0

    #@28
    .line 757
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private persistableModeToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 819
    iget v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "UNKNOWN="

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 820
    :pswitch_0
    const-string/jumbo v0, "PERSIST_ROOT_ONLY"

    #@1f
    return-object v0

    #@20
    .line 821
    :pswitch_1
    const-string/jumbo v0, "PERSIST_NEVER"

    #@23
    return-object v0

    #@24
    .line 822
    :pswitch_2
    const-string/jumbo v0, "PERSIST_ACROSS_REBOOTS"

    #@27
    return-object v0

    #@28
    .line 819
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static resizeModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    #@0
    .prologue
    .line 852
    packed-switch p0, :pswitch_data_0

    #@3
    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "unknown="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 854
    :pswitch_0
    const-string/jumbo v0, "RESIZE_MODE_UNRESIZEABLE"

    #@1b
    return-object v0

    #@1c
    .line 856
    :pswitch_1
    const-string/jumbo v0, "RESIZE_MODE_CROP_WINDOWS"

    #@1f
    return-object v0

    #@20
    .line 858
    :pswitch_2
    const-string/jumbo v0, "RESIZE_MODE_RESIZEABLE"

    #@23
    return-object v0

    #@24
    .line 860
    :pswitch_3
    const-string/jumbo v0, "RESIZE_MODE_RESIZEABLE_AND_PIPABLE"

    #@27
    return-object v0

    #@28
    .line 862
    :pswitch_4
    const-string/jumbo v0, "RESIZE_MODE_FORCE_RESIZEABLE"

    #@2b
    return-object v0

    #@2c
    .line 852
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 920
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 869
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    #@4
    .line 868
    return-void
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;I)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 874
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    #@3
    .line 875
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "permission="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@24
    .line 878
    :cond_0
    and-int/lit8 v0, p3, 0x1

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    const-string/jumbo v1, "taskAffinity="

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 880
    const-string/jumbo v1, " targetActivity="

    #@41
    .line 879
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 880
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@47
    .line 879
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    .line 881
    const-string/jumbo v1, " persistableMode="

    #@4e
    .line 879
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 881
    invoke-direct {p0}, Landroid/content/pm/ActivityInfo;->persistableModeToString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    .line 879
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@61
    .line 883
    :cond_1
    iget v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@63
    if-nez v0, :cond_2

    #@65
    if-eqz p3, :cond_a

    #@67
    .line 884
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    const-string/jumbo v1, "launchMode="

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    iget v1, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    .line 885
    const-string/jumbo v1, " flags=0x"

    #@80
    .line 884
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    .line 885
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    .line 884
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    .line 886
    const-string/jumbo v1, " theme=0x"

    #@8f
    .line 884
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    .line 886
    iget v1, p0, Landroid/content/pm/ActivityInfo;->theme:I

    #@95
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    .line 884
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v0

    #@a1
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@a4
    .line 888
    :cond_3
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@a6
    const/4 v1, -0x1

    #@a7
    if-ne v0, v1, :cond_4

    #@a9
    .line 889
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@ab
    if-eqz v0, :cond_b

    #@ad
    .line 890
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v0

    #@b6
    const-string/jumbo v1, "screenOrientation="

    #@b9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v0

    #@bd
    iget v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@bf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v0

    #@c3
    .line 891
    const-string/jumbo v1, " configChanges=0x"

    #@c6
    .line 890
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v0

    #@ca
    .line 891
    iget v1, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@cc
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@cf
    move-result-object v1

    #@d0
    .line 890
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v0

    #@d4
    .line 892
    const-string/jumbo v1, " softInputMode=0x"

    #@d7
    .line 890
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v0

    #@db
    .line 892
    iget v1, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@dd
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e0
    move-result-object v1

    #@e1
    .line 890
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v0

    #@e5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v0

    #@e9
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@ec
    .line 894
    :cond_5
    iget v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@ee
    if-eqz v0, :cond_6

    #@f0
    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v0

    #@f9
    const-string/jumbo v1, " uiOptions=0x"

    #@fc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v0

    #@100
    iget v1, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@102
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@105
    move-result-object v1

    #@106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v0

    #@10a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v0

    #@10e
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@111
    .line 897
    :cond_6
    and-int/lit8 v0, p3, 0x1

    #@113
    if-eqz v0, :cond_7

    #@115
    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    #@117
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v0

    #@11e
    const-string/jumbo v1, "lockTaskLaunchMode="

    #@121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v0

    #@125
    .line 899
    iget v1, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@127
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->lockTaskLaunchModeToString(I)Ljava/lang/String;

    #@12a
    move-result-object v1

    #@12b
    .line 898
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v0

    #@12f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@132
    move-result-object v0

    #@133
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@136
    .line 901
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@138
    if-eqz v0, :cond_8

    #@13a
    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    #@13c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v0

    #@143
    const-string/jumbo v1, "windowLayout="

    #@146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v0

    #@14a
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@14c
    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    #@14e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@151
    move-result-object v0

    #@152
    const-string/jumbo v1, "|"

    #@155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v0

    #@159
    .line 903
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@15b
    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    #@15d
    .line 902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@160
    move-result-object v0

    #@161
    .line 903
    const-string/jumbo v1, ", "

    #@164
    .line 902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v0

    #@168
    .line 903
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@16a
    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    #@16c
    .line 902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v0

    #@170
    .line 903
    const-string/jumbo v1, "|"

    #@173
    .line 902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v0

    #@177
    .line 904
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@179
    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    #@17b
    .line 902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v0

    #@17f
    .line 904
    const-string/jumbo v1, ", "

    #@182
    .line 902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v0

    #@186
    .line 904
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@188
    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    #@18a
    .line 902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v0

    #@18e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@191
    move-result-object v0

    #@192
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@195
    .line 906
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    #@197
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v0

    #@19e
    const-string/jumbo v1, "resizeMode="

    #@1a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v0

    #@1a5
    iget v1, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@1a7
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    #@1aa
    move-result-object v1

    #@1ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v0

    #@1af
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b2
    move-result-object v0

    #@1b3
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1b6
    .line 907
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    #@1b8
    if-eqz v0, :cond_9

    #@1ba
    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    #@1bc
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1bf
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v0

    #@1c3
    const-string/jumbo v1, "requestedVrComponent="

    #@1c6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v0

    #@1ca
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    #@1cc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cf
    move-result-object v0

    #@1d0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d3
    move-result-object v0

    #@1d4
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1d7
    .line 910
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V

    #@1da
    .line 873
    return-void

    #@1db
    .line 883
    :cond_a
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    #@1dd
    if-eqz v0, :cond_3

    #@1df
    goto/16 :goto_0

    #@1e1
    .line 889
    :cond_b
    iget v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@1e3
    if-eqz v0, :cond_5

    #@1e5
    goto/16 :goto_1
.end method

.method public getRealConfigChanged()I
    .locals 2

    #@0
    .prologue
    .line 696
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@4
    const/16 v1, 0xd

    #@6
    if-ge v0, v1, :cond_0

    #@8
    .line 697
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@a
    or-int/lit16 v0, v0, 0x400

    #@c
    or-int/lit16 v0, v0, 0x800

    #@e
    .line 696
    :goto_0
    return v0

    #@f
    .line 699
    :cond_0
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@11
    goto :goto_0
.end method

.method public final getThemeResource()I
    .locals 1

    #@0
    .prologue
    .line 815
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    #@b
    goto :goto_0
.end method

.method isFixedOrientation()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 832
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 833
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@8
    if-ne v2, v0, :cond_1

    #@a
    .line 832
    :cond_0
    :goto_0
    return v0

    #@b
    .line 834
    :cond_1
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@d
    const/4 v3, 0x6

    #@e
    if-eq v2, v3, :cond_0

    #@10
    .line 835
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@12
    const/4 v3, 0x7

    #@13
    if-eq v2, v3, :cond_0

    #@15
    .line 836
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@17
    const/16 v3, 0x8

    #@19
    if-eq v2, v3, :cond_0

    #@1b
    .line 837
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@1d
    const/16 v3, 0x9

    #@1f
    if-eq v2, v3, :cond_0

    #@21
    .line 838
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@23
    const/16 v3, 0xb

    #@25
    if-eq v2, v3, :cond_0

    #@27
    .line 839
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@29
    const/16 v3, 0xc

    #@2b
    if-eq v2, v3, :cond_0

    #@2d
    .line 840
    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@2f
    const/16 v3, 0xe

    #@31
    if-eq v2, v3, :cond_0

    #@33
    move v0, v1

    #@34
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ActivityInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 915
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 916
    const-string/jumbo v1, " "

    #@1b
    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 916
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@21
    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 916
    const-string/jumbo v1, "}"

    #@28
    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 924
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 925
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 926
    iget v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 927
    iget v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 928
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 929
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 930
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 931
    iget v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 932
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 933
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 934
    iget v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 935
    iget v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 936
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3f
    .line 937
    iget v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 938
    iget v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@49
    .line 939
    iget v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@4b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    .line 940
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@50
    if-eqz v0, :cond_0

    #@52
    .line 941
    const/4 v0, 0x1

    #@53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@56
    .line 942
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@58
    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    #@5a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5d
    .line 943
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@5f
    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    #@61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@64
    .line 944
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@66
    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    #@68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    .line 945
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@6d
    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    #@6f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@72
    .line 946
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@74
    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    #@76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@79
    .line 947
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@7b
    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    #@7d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@80
    .line 948
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@82
    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    #@84
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@87
    .line 952
    :goto_0
    iget v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    #@89
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8c
    .line 953
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    #@8e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@91
    .line 923
    return-void

    #@92
    .line 950
    :cond_0
    const/4 v0, 0x0

    #@93
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@96
    goto :goto_0
.end method
