.class public Landroid/app/WindowConfiguration;
.super Ljava/lang/Object;
.source "WindowConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WindowConfiguration$WindowConfig;,
        Landroid/app/WindowConfiguration$AlwaysOnTop;,
        Landroid/app/WindowConfiguration$ActivityType;,
        Landroid/app/WindowConfiguration$WindowingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/app/WindowConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist ACTIVITY_TYPE_ASSISTANT:I = 0x4

.field public static final blacklist ACTIVITY_TYPE_DREAM:I = 0x5

.field public static final blacklist ACTIVITY_TYPE_HOME:I = 0x2

.field public static final blacklist ACTIVITY_TYPE_RECENTS:I = 0x3

.field public static final blacklist ACTIVITY_TYPE_STANDARD:I = 0x1

.field public static final blacklist ACTIVITY_TYPE_UNDEFINED:I = 0x0

.field private static final blacklist ALWAYS_ON_TOP_OFF:I = 0x2

.field private static final blacklist ALWAYS_ON_TOP_ON:I = 0x1

.field private static final blacklist ALWAYS_ON_TOP_UNDEFINED:I = 0x0

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/WindowConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ROTATION_UNDEFINED:I = -0x1

.field public static final blacklist WINDOWING_MODE_FREEFORM:I = 0x5

.field public static final blacklist WINDOWING_MODE_FULLSCREEN:I = 0x1

.field public static final blacklist WINDOWING_MODE_MULTI_WINDOW:I = 0x6

.field public static final blacklist WINDOWING_MODE_PINNED:I = 0x2

.field public static final blacklist WINDOWING_MODE_UNDEFINED:I = 0x0

.field public static final greylist-max-o WINDOW_CONFIG_ACTIVITY_TYPE:I = 0x10

.field public static final blacklist WINDOW_CONFIG_ALWAYS_ON_TOP:I = 0x20

.field public static final greylist-max-o WINDOW_CONFIG_APP_BOUNDS:I = 0x2

.field public static final greylist-max-o WINDOW_CONFIG_BOUNDS:I = 0x1

.field public static final blacklist WINDOW_CONFIG_DISPLAY_ROTATION:I = 0x80

.field public static final blacklist WINDOW_CONFIG_MAX_BOUNDS:I = 0x4

.field public static final blacklist WINDOW_CONFIG_ROTATION:I = 0x40

.field public static final greylist-max-o WINDOW_CONFIG_WINDOWING_MODE:I = 0x8


# instance fields
.field private greylist-max-o mActivityType:I

.field private blacklist mAlwaysOnTop:I

.field private greylist-max-o mAppBounds:Landroid/graphics/Rect;

.field private final greylist-max-o mBounds:Landroid/graphics/Rect;

.field private blacklist mDisplayRotation:I

.field private final blacklist mMaxBounds:Landroid/graphics/Rect;

.field private blacklist mRotation:I

.field private greylist-max-o mWindowingMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 256
    new-instance v0, Landroid/app/WindowConfiguration$1;

    invoke-direct {v0}, Landroid/app/WindowConfiguration$1;-><init>()V

    sput-object v0, Landroid/app/WindowConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 97
    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 214
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->unset()V

    .line 215
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/WindowConfiguration;)V
    .registers 3
    .param p1, "configuration"    # Landroid/app/WindowConfiguration;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 97
    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 219
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    .line 220
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 97
    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 223
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 224
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/WindowConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/WindowConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o activityTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "applicationType"    # I

    .line 901
    packed-switch p0, :pswitch_data_1e

    .line 909
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 907
    :pswitch_8
    const-string v0, "dream"

    return-object v0

    .line 906
    :pswitch_b
    const-string v0, "assistant"

    return-object v0

    .line 905
    :pswitch_e
    const-string/jumbo v0, "recents"

    return-object v0

    .line 904
    :pswitch_12
    const-string/jumbo v0, "home"

    return-object v0

    .line 903
    :pswitch_16
    const-string/jumbo v0, "standard"

    return-object v0

    .line 902
    :pswitch_1a
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist alwaysOnTopToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "alwaysOnTop"    # I

    .line 914
    packed-switch p0, :pswitch_data_14

    .line 919
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 917
    :pswitch_8
    const-string/jumbo v0, "off"

    return-object v0

    .line 916
    :pswitch_c
    const-string/jumbo v0, "on"

    return-object v0

    .line 915
    :pswitch_10
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist areConfigurationsEqualForDisplay(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 5
    .param p0, "newConfig"    # Landroid/content/res/Configuration;
    .param p1, "oldConfig"    # Landroid/content/res/Configuration;

    .line 879
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 880
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 879
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 881
    return v1

    .line 883
    :cond_14
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 884
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v2

    if-ne v0, v2, :cond_23

    const/4 v1, 0x1

    .line 883
    :cond_23
    return v1
.end method

.method public static blacklist inMultiWindowMode(I)Z
    .registers 2
    .param p0, "windowingMode"    # I

    .line 814
    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    if-eqz p0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static greylist-max-o isFloating(I)Z
    .registers 2
    .param p0, "windowingMode"    # I

    .line 805
    const/4 v0, 0x5

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method private static blacklist scaleBounds(FLandroid/graphics/Rect;)V
    .registers 7
    .param p0, "scale"    # F
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 476
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 477
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 478
    .local v1, "h":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 479
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 480
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    mul-float/2addr v4, p0

    add-float/2addr v4, v3

    float-to-int v4, v4

    add-int/2addr v2, v4

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 481
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    mul-float/2addr v4, p0

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 482
    return-void
.end method

.method private blacklist setAlwaysOnTop(I)V
    .registers 2
    .param p1, "alwaysOnTop"    # I

    .line 348
    iput p1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 349
    return-void
.end method

.method public static greylist-max-o supportSplitScreenWindowingMode(I)Z
    .registers 2
    .param p0, "activityType"    # I

    .line 867
    const/4 v0, 0x4

    if-eq p0, v0, :cond_8

    const/4 v0, 0x5

    if-eq p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static greylist-max-o windowingModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "windowingMode"    # I

    .line 889
    packed-switch p0, :pswitch_data_1a

    .line 896
    :pswitch_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 892
    :pswitch_8
    const-string/jumbo v0, "multi-window"

    return-object v0

    .line 894
    :pswitch_c
    const-string v0, "freeform"

    return-object v0

    .line 893
    :pswitch_f
    const-string/jumbo v0, "pinned"

    return-object v0

    .line 891
    :pswitch_13
    const-string v0, "fullscreen"

    return-object v0

    .line 890
    :pswitch_16
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o canReceiveKeys()Z
    .registers 3

    .line 823
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o canResizeTask()Z
    .registers 3

    .line 789
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_d

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public blacklist compareTo(Landroid/app/WindowConfiguration;)I
    .registers 5
    .param p1, "that"    # Landroid/app/WindowConfiguration;

    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, "n":I
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_b

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_b

    .line 626
    const/4 v1, 0x1

    return v1

    .line 627
    :cond_b
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_15

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_15

    .line 628
    const/4 v1, -0x1

    return v1

    .line 629
    :cond_15
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_4d

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_4d

    .line 630
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 631
    .end local v0    # "n":I
    .local v1, "n":I
    if-eqz v1, :cond_29

    return v1

    .line 632
    :cond_29
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 633
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_35

    return v0

    .line 634
    :cond_35
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 635
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_41

    return v1

    .line 636
    :cond_41
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 637
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_4d

    return v0

    .line 640
    :cond_4d
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 641
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_59

    return v1

    .line 642
    :cond_59
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 643
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_65

    return v0

    .line 644
    :cond_65
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 645
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_71

    return v1

    .line 646
    :cond_71
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 647
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_7d

    return v0

    .line 649
    :cond_7d
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 650
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_89

    return v1

    .line 651
    :cond_89
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 652
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_95

    return v0

    .line 653
    :cond_95
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 654
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_a1

    return v1

    .line 655
    :cond_a1
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    .line 656
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_ad

    return v0

    .line 658
    :cond_ad
    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    sub-int/2addr v1, v2

    .line 659
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_b5

    return v1

    .line 660
    :cond_b5
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    sub-int/2addr v0, v2

    .line 661
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_bd

    return v0

    .line 662
    :cond_bd
    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    sub-int/2addr v1, v2

    .line 663
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_c5

    return v1

    .line 664
    :cond_c5
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mRotation:I

    sub-int/2addr v0, v2

    .line 665
    .end local v1    # "n":I
    .restart local v0    # "n":I
    if-eqz v0, :cond_cd

    return v0

    .line 667
    :cond_cd
    iget v1, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    sub-int/2addr v1, v2

    .line 668
    .end local v0    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_d5

    return v1

    .line 671
    :cond_d5
    return v1
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 58
    check-cast p1, Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result p1

    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o diff(Landroid/app/WindowConfiguration;Z)J
    .registers 8
    .param p1, "other"    # Landroid/app/WindowConfiguration;
    .param p2, "compareUndefined"    # Z

    .line 577
    const-wide/16 v0, 0x0

    .line 579
    .local v0, "changes":J
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 580
    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    .line 584
    :cond_f
    if-nez p2, :cond_15

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_2c

    :cond_15
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eq v2, v3, :cond_2c

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 586
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 587
    :cond_29
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 590
    :cond_2c
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 591
    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    .line 594
    :cond_39
    if-nez p2, :cond_3f

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v2, :cond_48

    :cond_3f
    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v2, v3, :cond_48

    .line 596
    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    .line 599
    :cond_48
    if-nez p2, :cond_4e

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v2, :cond_57

    :cond_4e
    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v2, v3, :cond_57

    .line 601
    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    .line 604
    :cond_57
    if-nez p2, :cond_5d

    iget v2, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eqz v2, :cond_66

    :cond_5d
    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eq v2, v3, :cond_66

    .line 606
    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    .line 609
    :cond_66
    const/4 v2, -0x1

    if-nez p2, :cond_6d

    iget v3, p1, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v3, v2, :cond_76

    :cond_6d
    iget v3, p0, Landroid/app/WindowConfiguration;->mRotation:I

    iget v4, p1, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v3, v4, :cond_76

    .line 611
    const-wide/16 v3, 0x40

    or-long/2addr v0, v3

    .line 614
    :cond_76
    if-nez p2, :cond_7c

    iget v3, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v3, v2, :cond_85

    :cond_7c
    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v2, v3, :cond_85

    .line 616
    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    .line 619
    :cond_85
    return-wide v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 725
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 726
    .local v0, "token":J
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_12

    .line 727
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 729
    :cond_12
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 730
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 731
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 732
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 733
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 734
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "that"    # Ljava/lang/Object;

    .line 677
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 678
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    .line 679
    :cond_8
    instance-of v2, p1, Landroid/app/WindowConfiguration;

    if-nez v2, :cond_d

    .line 680
    return v0

    .line 682
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/app/WindowConfiguration;

    invoke-virtual {p0, v2}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result v2

    if-nez v2, :cond_17

    move v0, v1

    :cond_17
    return v0
.end method

.method public blacklist getActivityType()I
    .registers 2

    .line 426
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    return v0
.end method

.method public blacklist getAppBounds()Landroid/graphics/Rect;
    .registers 2

    .line 367
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 373
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getDisplayRotation()I
    .registers 2

    .line 387
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    return v0
.end method

.method public blacklist getMaxBounds()Landroid/graphics/Rect;
    .registers 2

    .line 379
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getRotation()I
    .registers 2

    .line 391
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    return v0
.end method

.method public blacklist getWindowingMode()I
    .registers 2

    .line 404
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    return v0
.end method

.method public greylist-max-o hasMovementAnimations()Z
    .registers 3

    .line 853
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o hasWindowShadow()Z
    .registers 3

    .line 780
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 690
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 691
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 692
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    add-int/2addr v0, v2

    .line 693
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    add-int/2addr v1, v2

    .line 694
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    add-int/2addr v0, v2

    .line 695
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mRotation:I

    add-int/2addr v1, v2

    .line 696
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    add-int/2addr v0, v2

    .line 697
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public greylist-max-o isAlwaysOnTop()Z
    .registers 5

    .line 832
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    return v2

    .line 833
    :cond_7
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    return v2

    .line 834
    :cond_d
    iget v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_13

    return v3

    .line 835
    :cond_13
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v0, v1, :cond_1e

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v2, v3

    :cond_1e
    :goto_1e
    return v2
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 240
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 241
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 242
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 248
    return-void
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 746
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 748
    .local v0, "token":J
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_54

    .line 749
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_5e

    goto :goto_53

    .line 758
    :pswitch_13
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 759
    goto :goto_53

    .line 755
    :pswitch_1e
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 756
    goto :goto_53

    .line 764
    :pswitch_29
    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    goto :goto_53

    .line 761
    :pswitch_35
    const-wide v2, 0x10500000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 762
    goto :goto_53

    .line 751
    :pswitch_41
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 752
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    :try_end_52
    .catchall {:try_start_4 .. :try_end_52} :catchall_59

    .line 753
    nop

    .line 765
    :goto_53
    goto :goto_4

    .line 770
    :cond_54
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 771
    nop

    .line 772
    return-void

    .line 770
    :catchall_59
    move-exception v2

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 771
    throw v2

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_41
        :pswitch_35
        :pswitch_29
        :pswitch_1e
        :pswitch_13
    .end packed-switch
.end method

.method public blacklist scale(F)V
    .registers 3
    .param p1, "scale"    # F

    .line 460
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/app/WindowConfiguration;->scaleBounds(FLandroid/graphics/Rect;)V

    .line 461
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/app/WindowConfiguration;->scaleBounds(FLandroid/graphics/Rect;)V

    .line 462
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_13

    .line 463
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/app/WindowConfiguration;->scaleBounds(FLandroid/graphics/Rect;)V

    .line 465
    :cond_13
    return-void
.end method

.method public blacklist setActivityType(I)V
    .registers 5
    .param p1, "activityType"    # I

    .line 408
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-ne v0, p1, :cond_5

    .line 409
    return-void

    .line 415
    :cond_5
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_39

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v0, :cond_39

    if-nez p1, :cond_12

    goto :goto_39

    .line 418
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change activity type once set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " activityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 419
    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_39
    :goto_39
    iput p1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    .line 422
    return-void
.end method

.method public blacklist setAlwaysOnTop(Z)V
    .registers 3
    .param p1, "alwaysOnTop"    # Z

    .line 336
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 337
    return-void
.end method

.method public greylist-max-o setAppBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 357
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 358
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 361
    :cond_b
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 362
    return-void
.end method

.method public blacklist setAppBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 291
    if-nez p1, :cond_6

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    .line 293
    return-void

    .line 296
    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 297
    return-void
.end method

.method public blacklist setBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 275
    if-nez p1, :cond_8

    .line 276
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 277
    return-void

    .line 280
    :cond_8
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 281
    return-void
.end method

.method public blacklist setDisplayRotation(I)V
    .registers 2
    .param p1, "rotation"    # I

    .line 327
    iput p1, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    .line 328
    return-void
.end method

.method public blacklist setMaxBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 319
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 320
    return-void
.end method

.method public blacklist setMaxBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 307
    if-nez p1, :cond_8

    .line 308
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 309
    return-void

    .line 311
    :cond_8
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 312
    return-void
.end method

.method public blacklist setRotation(I)V
    .registers 2
    .param p1, "rotation"    # I

    .line 395
    iput p1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    .line 396
    return-void
.end method

.method public blacklist setTo(Landroid/app/WindowConfiguration;)V
    .registers 3
    .param p1, "other"    # Landroid/app/WindowConfiguration;

    .line 430
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 431
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 432
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 433
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 434
    iget v0, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 435
    iget v0, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 436
    iget v0, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v0}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 437
    iget v0, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 438
    return-void
.end method

.method public blacklist setTo(Landroid/app/WindowConfiguration;I)V
    .registers 4
    .param p1, "delta"    # Landroid/app/WindowConfiguration;
    .param p2, "mask"    # I

    .line 539
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_9

    .line 540
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 542
    :cond_9
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_12

    .line 543
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 545
    :cond_12
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1b

    .line 546
    iget-object v0, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 548
    :cond_1b
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_24

    .line 549
    iget v0, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 551
    :cond_24
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_2d

    .line 552
    iget v0, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 554
    :cond_2d
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_36

    .line 555
    iget v0, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v0}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 557
    :cond_36
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_3f

    .line 558
    iget v0, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 560
    :cond_3f
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_48

    .line 561
    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 563
    :cond_48
    return-void
.end method

.method public greylist-max-o setToDefaults()V
    .registers 3

    .line 448
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 449
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 450
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 451
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 452
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 453
    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 454
    invoke-direct {p0, v1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 455
    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 456
    return-void
.end method

.method public blacklist setWindowingMode(I)V
    .registers 2
    .param p1, "windowingMode"    # I

    .line 399
    iput p1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 400
    return-void
.end method

.method public greylist-max-o supportSplitScreenWindowingMode()Z
    .registers 2

    .line 862
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o tasksAreFloating()Z
    .registers 2

    .line 800
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAppBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 706
    iget v1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    const-string/jumbo v2, "undefined"

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3a

    .line 707
    move-object v1, v2

    goto :goto_40

    :cond_3a
    iget v1, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    :goto_40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWindowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    .line 708
    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActivityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    .line 709
    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAlwaysOnTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 710
    invoke-static {v1}, Landroid/app/WindowConfiguration;->alwaysOnTopToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 711
    iget v1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    if-ne v1, v3, :cond_7f

    .line 712
    goto :goto_85

    :cond_7f
    iget v1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v2

    :goto_85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    return-object v0
.end method

.method public greylist-max-o unset()V
    .registers 1

    .line 443
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->setToDefaults()V

    .line 444
    return-void
.end method

.method public blacklist unsetAlwaysOnTop()V
    .registers 2

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    .line 345
    return-void
.end method

.method public greylist-max-o updateFrom(Landroid/app/WindowConfiguration;)I
    .registers 6
    .param p1, "delta"    # Landroid/app/WindowConfiguration;

    .line 493
    const/4 v0, 0x0

    .line 495
    .local v0, "changed":I
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 496
    or-int/lit8 v0, v0, 0x1

    .line 497
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 499
    :cond_1a
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2f

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 500
    or-int/lit8 v0, v0, 0x2

    .line 501
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 503
    :cond_2f
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 504
    or-int/lit8 v0, v0, 0x4

    .line 505
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 507
    :cond_48
    iget v1, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v1, :cond_59

    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v1, v2, :cond_59

    .line 509
    or-int/lit8 v0, v0, 0x8

    .line 510
    iget v1, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 512
    :cond_59
    iget v1, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v1, :cond_6a

    iget v1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v1, v2, :cond_6a

    .line 514
    or-int/lit8 v0, v0, 0x10

    .line 515
    iget v1, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 517
    :cond_6a
    iget v1, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eqz v1, :cond_7b

    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eq v1, v2, :cond_7b

    .line 519
    or-int/lit8 v0, v0, 0x20

    .line 520
    iget v1, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    .line 522
    :cond_7b
    iget v1, p1, Landroid/app/WindowConfiguration;->mRotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8d

    iget v1, p1, Landroid/app/WindowConfiguration;->mRotation:I

    iget v3, p0, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v1, v3, :cond_8d

    .line 523
    or-int/lit8 v0, v0, 0x40

    .line 524
    iget v1, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 526
    :cond_8d
    iget v1, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v1, v2, :cond_9e

    iget v1, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v1, v2, :cond_9e

    .line 528
    or-int/lit16 v0, v0, 0x80

    .line 529
    iget v1, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 531
    :cond_9e
    return v0
.end method

.method public greylist-max-o useWindowFrameForBackdrop()Z
    .registers 3

    .line 845
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_d

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 228
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 229
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 230
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 231
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    return-void
.end method
