.class public Landroid/content/pm/ActivityInfo;
.super Landroid/content/pm/ComponentInfo;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ActivityInfo$1;
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

.field public static final FLAG_ALWAYS_RETAIN_TASK_STATE:I = 0x8

.field public static final FLAG_AUTO_REMOVE_FROM_RECENTS:I = 0x2000

.field public static final FLAG_CLEAR_TASK_ON_LAUNCH:I = 0x4

.field public static final FLAG_EXCLUDE_FROM_RECENTS:I = 0x20

.field public static final FLAG_FINISH_ON_CLOSE_SYSTEM_DIALOGS:I = 0x100

.field public static final FLAG_FINISH_ON_TASK_LAUNCH:I = 0x2

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x200

.field public static final FLAG_IMMERSIVE:I = 0x800

.field public static final FLAG_MULTIPROCESS:I = 0x1

.field public static final FLAG_NO_HISTORY:I = 0x80

.field public static final FLAG_PRIMARY_USER_ONLY:I = 0x20000000

.field public static final FLAG_RELINQUISH_TASK_IDENTITY:I = 0x1000

.field public static final FLAG_RESUME_WHILE_PAUSING:I = 0x4000

.field public static final FLAG_SHOW_FOR_ALL_USERS:I = 0x400

.field public static final FLAG_SINGLE_USER:I = 0x40000000

.field public static final FLAG_STATE_NOT_NEEDED:I = 0x10

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

.field public resizeable:Z

.field public screenOrientation:I

.field public softInputMode:I

.field public targetActivity:Ljava/lang/String;

.field public taskAffinity:Ljava/lang/String;

.field public theme:I

.field public uiOptions:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 557
    const/16 v0, 0xe

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    #@9
    .line 799
    new-instance v0, Landroid/content/pm/ActivityInfo$1;

    #@b
    invoke-direct {v0}, Landroid/content/pm/ActivityInfo$1;-><init>()V

    #@e
    .line 798
    sput-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10
    .line 34
    return-void

    #@11
    .line 557
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
    .line 701
    invoke-direct {p0}, Landroid/content/pm/ComponentInfo;-><init>()V

    #@3
    .line 443
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@6
    .line 647
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@9
    .line 701
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/ActivityInfo;

    #@0
    .prologue
    .line 705
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    #@3
    .line 443
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@6
    .line 647
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@9
    .line 706
    iget v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    #@b
    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    #@d
    .line 707
    iget v0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@f
    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@11
    .line 708
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@13
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@15
    .line 709
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@17
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@19
    .line 710
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@1b
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@1d
    .line 711
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    #@1f
    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    #@21
    .line 712
    iget v0, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@23
    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@25
    .line 713
    iget v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@27
    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@29
    .line 714
    iget v0, p1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@2b
    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@2d
    .line 715
    iget v0, p1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@2f
    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@31
    .line 716
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@33
    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@35
    .line 717
    iget v0, p1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@37
    iput v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@39
    .line 718
    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->resizeable:Z

    #@3b
    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->resizeable:Z

    #@3d
    .line 719
    iget v0, p1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@3f
    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@41
    .line 704
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 809
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    #@5
    .line 443
    const/4 v2, -0x1

    #@6
    iput v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@8
    .line 647
    iput v1, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@a
    .line 810
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v2

    #@e
    iput v2, p0, Landroid/content/pm/ActivityInfo;->theme:I

    #@10
    .line 811
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v2

    #@14
    iput v2, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@16
    .line 812
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@1c
    .line 813
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    iput-object v2, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@22
    .line 814
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    iput-object v2, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@28
    .line 815
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v2

    #@2c
    iput v2, p0, Landroid/content/pm/ActivityInfo;->flags:I

    #@2e
    .line 816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v2

    #@32
    iput v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@34
    .line 817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v2

    #@38
    iput v2, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@3a
    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v2

    #@3e
    iput v2, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@40
    .line 819
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v2

    #@44
    iput v2, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@46
    .line 820
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    iput-object v2, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@4c
    .line 821
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4f
    move-result v2

    #@50
    iput v2, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@52
    .line 822
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v2

    #@56
    iput v2, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@58
    .line 823
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v2

    #@5c
    if-ne v2, v0, :cond_0

    #@5e
    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->resizeable:Z

    #@60
    .line 824
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v0

    #@64
    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@66
    .line 808
    return-void

    #@67
    :cond_0
    move v0, v1

    #@68
    .line 823
    goto :goto_0
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

.method public static activityInfoConfigNativeToJava(I)I
    .locals 3
    .param p0, "input"    # I

    #@0
    .prologue
    .line 595
    const/4 v1, 0x0

    #@1
    .line 596
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
    .line 597
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    #@9
    aget v2, v2, v0

    #@b
    and-int/2addr v2, p0

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 598
    const/4 v2, 0x1

    #@f
    shl-int/2addr v2, v0

    #@10
    or-int/2addr v1, v2

    #@11
    .line 596
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 601
    :cond_1
    return v1
.end method

.method public static activityInfoConfigToNative(I)I
    .locals 3
    .param p0, "input"    # I

    #@0
    .prologue
    .line 580
    const/4 v1, 0x0

    #@1
    .line 581
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
    .line 582
    const/4 v2, 0x1

    #@8
    shl-int/2addr v2, v0

    #@9
    and-int/2addr v2, p0

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 583
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    #@e
    aget v2, v2, v0

    #@10
    or-int/2addr v1, v2

    #@11
    .line 581
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 586
    :cond_1
    return v1
.end method

.method public static final lockTaskLaunchModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "lockTaskLaunchMode"    # I

    #@0
    .prologue
    .line 681
    packed-switch p0, :pswitch_data_0

    #@3
    .line 691
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
    .line 683
    :pswitch_0
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_DEFAULT"

    #@1b
    return-object v0

    #@1c
    .line 685
    :pswitch_1
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_NEVER"

    #@1f
    return-object v0

    #@20
    .line 687
    :pswitch_2
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_ALWAYS"

    #@23
    return-object v0

    #@24
    .line 689
    :pswitch_3
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_IF_WHITELISTED"

    #@27
    return-object v0

    #@28
    .line 681
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
    .line 734
    iget v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 738
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
    .line 735
    :pswitch_0
    const-string/jumbo v0, "PERSIST_ROOT_ONLY"

    #@1f
    return-object v0

    #@20
    .line 736
    :pswitch_1
    const-string/jumbo v0, "PERSIST_NEVER"

    #@23
    return-object v0

    #@24
    .line 737
    :pswitch_2
    const-string/jumbo v0, "PERSIST_ACROSS_REBOOTS"

    #@27
    return-object v0

    #@28
    .line 734
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 776
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 743
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    #@3
    .line 744
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 745
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
    .line 747
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    const-string/jumbo v1, "taskAffinity="

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 748
    const-string/jumbo v1, " targetActivity="

    #@3d
    .line 747
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 748
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@43
    .line 747
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 749
    const-string/jumbo v1, " persistableMode="

    #@4a
    .line 747
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 749
    invoke-direct {p0}, Landroid/content/pm/ActivityInfo;->persistableModeToString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    .line 747
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@5d
    .line 750
    iget v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@5f
    if-nez v0, :cond_1

    #@61
    iget v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    #@63
    if-eqz v0, :cond_6

    #@65
    .line 751
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    const-string/jumbo v1, "launchMode="

    #@71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    iget v1, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    .line 752
    const-string/jumbo v1, " flags=0x"

    #@7e
    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    .line 752
    iget v1, p0, Landroid/content/pm/ActivityInfo;->flags:I

    #@84
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@87
    move-result-object v1

    #@88
    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    .line 753
    const-string/jumbo v1, " theme=0x"

    #@8f
    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    .line 753
    iget v1, p0, Landroid/content/pm/ActivityInfo;->theme:I

    #@95
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    .line 751
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
    .line 755
    :cond_2
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@a6
    const/4 v1, -0x1

    #@a7
    if-ne v0, v1, :cond_3

    #@a9
    .line 756
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@ab
    if-eqz v0, :cond_7

    #@ad
    .line 757
    :cond_3
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
    .line 758
    const-string/jumbo v1, " configChanges=0x"

    #@c6
    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v0

    #@ca
    .line 758
    iget v1, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@cc
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@cf
    move-result-object v1

    #@d0
    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v0

    #@d4
    .line 759
    const-string/jumbo v1, " softInputMode=0x"

    #@d7
    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v0

    #@db
    .line 759
    iget v1, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@dd
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e0
    move-result-object v1

    #@e1
    .line 757
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
    .line 761
    :cond_4
    iget v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@ee
    if-eqz v0, :cond_5

    #@f0
    .line 762
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
    .line 764
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v0

    #@11a
    const-string/jumbo v1, "resizeable="

    #@11d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v0

    #@121
    iget-boolean v1, p0, Landroid/content/pm/ActivityInfo;->resizeable:Z

    #@123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@126
    move-result-object v0

    #@127
    const-string/jumbo v1, " lockTaskLaunchMode="

    #@12a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v0

    #@12e
    .line 765
    iget v1, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@130
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->lockTaskLaunchModeToString(I)Ljava/lang/String;

    #@133
    move-result-object v1

    #@134
    .line 764
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v0

    #@138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v0

    #@13c
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@13f
    .line 766
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;)V

    #@142
    .line 742
    return-void

    #@143
    .line 750
    :cond_6
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    #@145
    if-eqz v0, :cond_2

    #@147
    goto/16 :goto_0

    #@149
    .line 756
    :cond_7
    iget v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@14b
    if-eqz v0, :cond_4

    #@14d
    goto/16 :goto_1
.end method

.method public getRealConfigChanged()I
    .locals 2

    #@0
    .prologue
    .line 613
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@4
    const/16 v1, 0xd

    #@6
    if-ge v0, v1, :cond_0

    #@8
    .line 614
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@a
    or-int/lit16 v0, v0, 0x400

    #@c
    or-int/lit16 v0, v0, 0x800

    #@e
    .line 613
    :goto_0
    return v0

    #@f
    .line 616
    :cond_0
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@11
    goto :goto_0
.end method

.method public final getThemeResource()I
    .locals 1

    #@0
    .prologue
    .line 730
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

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 770
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
    .line 771
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 770
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 772
    const-string/jumbo v1, " "

    #@1b
    .line 770
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 772
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@21
    .line 770
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 772
    const-string/jumbo v1, "}"

    #@28
    .line 770
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
    .line 780
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 781
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 782
    iget v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 783
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 784
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 785
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 786
    iget v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 787
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 788
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 789
    iget v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 790
    iget v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 791
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    #@37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a
    .line 792
    iget v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    #@3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 793
    iget v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    #@41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 794
    iget-boolean v0, p0, Landroid/content/pm/ActivityInfo;->resizeable:Z

    #@46
    if-eqz v0, :cond_0

    #@48
    const/4 v0, 0x1

    #@49
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 795
    iget v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    #@4e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    .line 779
    return-void

    #@52
    .line 794
    :cond_0
    const/4 v0, 0x0

    #@53
    goto :goto_0
.end method
