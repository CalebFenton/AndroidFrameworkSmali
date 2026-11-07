.class public Landroid/accessibilityservice/AccessibilityServiceInfo;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;,
        Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;,
        Landroid/accessibilityservice/AccessibilityServiceInfo$MotionEventSources;,
        Landroid/accessibilityservice/AccessibilityServiceInfo$FeedbackType;
    }
.end annotation


# static fields
.field public static final whitelist CAPABILITY_CAN_CONTROL_MAGNIFICATION:I = 0x10

.field public static final whitelist CAPABILITY_CAN_PERFORM_GESTURES:I = 0x20

.field public static final whitelist CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_CAN_REQUEST_FILTER_KEY_EVENTS:I = 0x8

.field public static final whitelist CAPABILITY_CAN_REQUEST_FINGERPRINT_GESTURES:I = 0x40

.field public static final whitelist CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION:I = 0x2

.field public static final whitelist CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT:I = 0x1

.field public static final whitelist CAPABILITY_CAN_TAKE_SCREENSHOT:I = 0x80

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT:I = 0x1

.field public static final whitelist FEEDBACK_ALL_MASK:I = -0x1

.field public static final whitelist FEEDBACK_AUDIBLE:I = 0x4

.field public static final whitelist FEEDBACK_BRAILLE:I = 0x20

.field public static final whitelist FEEDBACK_GENERIC:I = 0x10

.field public static final whitelist FEEDBACK_HAPTIC:I = 0x2

.field public static final whitelist FEEDBACK_SPOKEN:I = 0x1

.field public static final whitelist FEEDBACK_VISUAL:I = 0x8

.field public static final whitelist FLAG_ENABLE_ACCESSIBILITY_VOLUME:I = 0x80

.field public static final greylist-max-o FLAG_FORCE_DIRECT_BOOT_AWARE:I = 0x10000

.field public static final whitelist FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x2

.field public static final whitelist FLAG_INPUT_METHOD_EDITOR:I = 0x8000

.field public static final whitelist FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final whitelist FLAG_REQUEST_2_FINGER_PASSTHROUGH:I = 0x2000

.field public static final whitelist FLAG_REQUEST_ACCESSIBILITY_BUTTON:I = 0x100

.field public static final whitelist FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_REQUEST_FILTER_KEY_EVENTS:I = 0x20

.field public static final whitelist FLAG_REQUEST_FINGERPRINT_GESTURES:I = 0x200

.field public static final whitelist FLAG_REQUEST_MULTI_FINGER_GESTURES:I = 0x1000

.field public static final whitelist FLAG_REQUEST_SHORTCUT_WARNING_DIALOG_SPOKEN_FEEDBACK:I = 0x400

.field public static final whitelist FLAG_REQUEST_TOUCH_EXPLORATION_MODE:I = 0x4

.field public static final whitelist FLAG_RETRIEVE_INTERACTIVE_WINDOWS:I = 0x40

.field public static final whitelist FLAG_SEND_MOTION_EVENTS:I = 0x4000

.field public static final whitelist FLAG_SERVICE_HANDLES_DOUBLE_TAP:I = 0x800

.field private static final blacklist REQUEST_ACCESSIBILITY_BUTTON_CHANGE:J = 0x81fae4bL

.field private static final greylist-max-o TAG_ACCESSIBILITY_SERVICE:Ljava/lang/String; = "accessibility-service"

.field private static greylist-max-o sAvailableCapabilityInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o crashed:Z

.field public whitelist eventTypes:I

.field public whitelist feedbackType:I

.field public whitelist flags:I

.field private blacklist mAnimatedImageRes:I

.field private greylist-max-o mCapabilities:I

.field private greylist-max-o mComponentName:Landroid/content/ComponentName;

.field private greylist-max-o mDescriptionResId:I

.field private final blacklist mDynamicPropertyDefaults:Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

.field private blacklist mHtmlDescriptionRes:I

.field private blacklist mInteractiveUiTimeout:I

.field private blacklist mIntroResId:I

.field private blacklist mIsAccessibilityTool:Z

.field private blacklist mMotionEventSources:I

.field private blacklist mNonInteractiveUiTimeout:I

.field private greylist-max-o mNonLocalizedDescription:Ljava/lang/String;

.field private greylist-max-o mNonLocalizedSummary:Ljava/lang/String;

.field private blacklist mObservedMotionEventSources:I

.field private greylist-max-o mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private greylist-max-o mSettingsActivityName:Ljava/lang/String;

.field private greylist-max-o mSummaryResId:I

.field private blacklist mTileServiceName:Ljava/lang/String;

.field public whitelist notificationTimeout:J

.field public whitelist packageNames:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInteractiveUiTimeout(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .registers 1

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMotionEventSources(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .registers 1

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mMotionEventSources:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNonInteractiveUiTimeout(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .registers 1

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmObservedMotionEventSources(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .registers 1

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mObservedMotionEventSources:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitFromParcel(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1784
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo$1;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIsAccessibilityTool:Z

    .line 651
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mMotionEventSources:I

    .line 654
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mObservedMotionEventSources:I

    .line 693
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    invoke-direct {v0, p0}, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;-><init>(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDynamicPropertyDefaults:Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    .line 694
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    .registers 20
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 624
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIsAccessibilityTool:Z

    .line 651
    iput v0, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mMotionEventSources:I

    .line 654
    iput v0, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mObservedMotionEventSources:I

    .line 708
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 709
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 710
    iput-object v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 712
    const/4 v4, 0x0

    .line 715
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 716
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const-string v6, "android.accessibilityservice"

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_28} :catch_18a
    .catchall {:try_start_1e .. :try_end_28} :catchall_188

    move-object v4, v6

    .line 718
    if-nez v4, :cond_38

    .line 832
    if-eqz v4, :cond_30

    .line 833
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 836
    :cond_30
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    invoke-direct {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;-><init>(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    iput-object v0, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDynamicPropertyDefaults:Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    .line 719
    return-void

    .line 722
    :cond_38
    const/4 v6, 0x0

    .line 723
    .local v6, "type":I
    :goto_39
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v6, v8, :cond_45

    if-eq v6, v7, :cond_45

    .line 724
    :try_start_3f
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v6, v7

    goto :goto_39

    .line 727
    :cond_45
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 728
    .local v9, "nodeName":Ljava/lang/String;
    const-string v10, "accessibility-service"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_180

    .line 733
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    .line 734
    .local v10, "allAttributes":Landroid/util/AttributeSet;
    iget-object v11, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 736
    .local v11, "resources":Landroid/content/res/Resources;
    sget-object v12, Lcom/android/internal/R$styleable;->AccessibilityService:[I

    invoke-virtual {v11, v10, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 738
    .local v12, "asAttributes":Landroid/content/res/TypedArray;
    const/4 v13, 0x3

    invoke-virtual {v12, v13, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 741
    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 743
    .local v13, "packageNamez":Ljava/lang/String;
    if-eqz v13, :cond_77

    .line 744
    const-string v14, "(\\s)*,(\\s)*"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 746
    :cond_77
    const/4 v14, 0x5

    invoke-virtual {v12, v14, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 749
    const/4 v14, 0x6

    invoke-virtual {v12, v14, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 752
    const/16 v14, 0xf

    invoke-virtual {v12, v14, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    .line 755
    const/16 v14, 0x10

    invoke-virtual {v12, v14, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    iput v15, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    .line 758
    const/4 v15, 0x7

    invoke-virtual {v12, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    iput v15, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 760
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 762
    const/16 v15, 0x8

    invoke-virtual {v12, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_b3

    .line 764
    move/from16 v16, v7

    iget v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/2addr v7, v8

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    goto :goto_b5

    .line 762
    :cond_b3
    move/from16 v16, v7

    .line 766
    :goto_b5
    const/16 v7, 0x9

    invoke-virtual {v12, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 768
    iget v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 770
    :cond_c3
    const/16 v7, 0xb

    invoke-virtual {v12, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_d0

    .line 772
    iget v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/2addr v7, v15

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 774
    :cond_d0
    const/16 v7, 0xc

    invoke-virtual {v12, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_dd

    .line 776
    iget v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/2addr v7, v14

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 778
    :cond_dd
    const/16 v7, 0xd

    invoke-virtual {v12, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_eb

    .line 780
    iget v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 782
    :cond_eb
    const/16 v7, 0xe

    invoke-virtual {v12, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 784
    iget v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 786
    :cond_f9
    const/16 v7, 0x13

    invoke-virtual {v12, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_107

    .line 788
    iget v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/lit16 v7, v7, 0x80

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 790
    :cond_107
    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    .line 792
    .local v7, "peekedValue":Landroid/util/TypedValue;
    if-eqz v7, :cond_121

    .line 793
    iget v14, v7, Landroid/util/TypedValue;->resourceId:I

    iput v14, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    .line 794
    invoke-virtual {v7}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v14

    .line 795
    .local v14, "nonLocalizedDescription":Ljava/lang/CharSequence;
    if-eqz v14, :cond_121

    .line 796
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    .line 799
    .end local v14    # "nonLocalizedDescription":Ljava/lang/CharSequence;
    :cond_121
    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 801
    .end local v7    # "peekedValue":Landroid/util/TypedValue;
    .local v8, "peekedValue":Landroid/util/TypedValue;
    if-eqz v8, :cond_13b

    .line 802
    iget v7, v8, Landroid/util/TypedValue;->resourceId:I

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSummaryResId:I

    .line 803
    invoke-virtual {v8}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v7

    .line 804
    .local v7, "nonLocalizedSummary":Ljava/lang/CharSequence;
    if-eqz v7, :cond_13b

    .line 805
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedSummary:Ljava/lang/String;

    .line 808
    .end local v7    # "nonLocalizedSummary":Ljava/lang/CharSequence;
    :cond_13b
    const/16 v7, 0x11

    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    .line 810
    .end local v8    # "peekedValue":Landroid/util/TypedValue;
    .local v7, "peekedValue":Landroid/util/TypedValue;
    if-eqz v7, :cond_147

    .line 811
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    iput v8, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mAnimatedImageRes:I

    .line 813
    :cond_147
    const/16 v8, 0x12

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 815
    .end local v7    # "peekedValue":Landroid/util/TypedValue;
    .restart local v8    # "peekedValue":Landroid/util/TypedValue;
    if-eqz v8, :cond_153

    .line 816
    iget v7, v8, Landroid/util/TypedValue;->resourceId:I

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mHtmlDescriptionRes:I

    .line 818
    :cond_153
    const/16 v7, 0x14

    invoke-virtual {v12, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIsAccessibilityTool:Z

    .line 820
    const/16 v0, 0x15

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mTileServiceName:Ljava/lang/String;

    .line 822
    const/16 v0, 0x16

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 824
    .end local v8    # "peekedValue":Landroid/util/TypedValue;
    .local v0, "peekedValue":Landroid/util/TypedValue;
    if-eqz v0, :cond_16f

    .line 825
    iget v7, v0, Landroid/util/TypedValue;->resourceId:I

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIntroResId:I

    .line 827
    :cond_16f
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_172
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_172} :catch_18a
    .catchall {:try_start_3f .. :try_end_172} :catchall_188

    .line 832
    .end local v0    # "peekedValue":Landroid/util/TypedValue;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "type":I
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v10    # "allAttributes":Landroid/util/AttributeSet;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v12    # "asAttributes":Landroid/content/res/TypedArray;
    .end local v13    # "packageNamez":Ljava/lang/String;
    if-eqz v4, :cond_177

    .line 833
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 836
    :cond_177
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    invoke-direct {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;-><init>(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    iput-object v0, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDynamicPropertyDefaults:Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    .line 837
    nop

    .line 838
    return-void

    .line 729
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "type":I
    .restart local v9    # "nodeName":Ljava/lang/String;
    :cond_180
    :try_start_180
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "Meta-data does not start withaccessibility-service tag"

    invoke-direct {v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local p1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local p2    # "context":Landroid/content/Context;
    throw v0
    :try_end_188
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_180 .. :try_end_188} :catch_18a
    .catchall {:try_start_180 .. :try_end_188} :catchall_188

    .line 832
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "type":I
    .end local v9    # "nodeName":Ljava/lang/String;
    .restart local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local p1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local p2    # "context":Landroid/content/Context;
    :catchall_188
    move-exception v0

    goto :goto_1a6

    .line 828
    :catch_18a
    move-exception v0

    .line 829
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_18b
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create context for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local p1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local p2    # "context":Landroid/content/Context;
    throw v5
    :try_end_1a6
    .catchall {:try_start_18b .. :try_end_1a6} :catchall_188

    .line 832
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local p1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local p2    # "context":Landroid/content/Context;
    :goto_1a6
    if-eqz v4, :cond_1ab

    .line 833
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 836
    :cond_1ab
    new-instance v5, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    invoke-direct {v5, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;-><init>(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    iput-object v5, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDynamicPropertyDefaults:Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    .line 837
    throw v0
.end method

.method private static greylist-max-o appendCapabilities(Ljava/lang/StringBuilder;I)V
    .registers 4
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "capabilities"    # I

    .line 1548
    const-string v0, "capabilities:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    :goto_a
    if-eqz p1, :cond_23

    .line 1551
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int/2addr v0, v1

    .line 1552
    .local v0, "capabilityBit":I
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->capabilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    not-int v1, v0

    and-int/2addr p1, v1

    .line 1554
    if-eqz p1, :cond_22

    .line 1555
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    .end local v0    # "capabilityBit":I
    :cond_22
    goto :goto_a

    .line 1558
    :cond_23
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    return-void
.end method

.method private static greylist-max-o appendEventTypes(Ljava/lang/StringBuilder;I)V
    .registers 4
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "eventTypes"    # I

    .line 1520
    const-string v0, "eventTypes:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    :goto_a
    if-eqz p1, :cond_23

    .line 1523
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int/2addr v0, v1

    .line 1524
    .local v0, "eventTypeBit":I
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    not-int v1, v0

    and-int/2addr p1, v1

    .line 1526
    if-eqz p1, :cond_22

    .line 1527
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    .end local v0    # "eventTypeBit":I
    :cond_22
    goto :goto_a

    .line 1530
    :cond_23
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    return-void
.end method

.method private static greylist-max-o appendFeedbackTypes(Ljava/lang/StringBuilder;I)V
    .registers 4
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "feedbackTypes"    # I

    .line 1491
    const-string v0, "feedbackTypes:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    :goto_a
    if-eqz p1, :cond_23

    .line 1494
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int/2addr v0, v1

    .line 1495
    .local v0, "feedbackTypeBit":I
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    not-int v1, v0

    and-int/2addr p1, v1

    .line 1497
    if-eqz p1, :cond_22

    .line 1498
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    .end local v0    # "feedbackTypeBit":I
    :cond_22
    goto :goto_a

    .line 1501
    :cond_23
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    return-void
.end method

.method private static greylist-max-o appendFlags(Ljava/lang/StringBuilder;I)V
    .registers 4
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "flags"    # I

    .line 1534
    const-string v0, "flags:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    :goto_a
    if-eqz p1, :cond_23

    .line 1537
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int/2addr v0, v1

    .line 1538
    .local v0, "flagBit":I
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->flagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    not-int v1, v0

    and-int/2addr p1, v1

    .line 1540
    if-eqz p1, :cond_22

    .line 1541
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    .end local v0    # "flagBit":I
    :cond_22
    goto :goto_a

    .line 1544
    :cond_23
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    return-void
.end method

.method private static greylist-max-o appendPackageNames(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 5
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 1505
    const-string/jumbo v0, "packageNames:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    if-eqz p1, :cond_22

    .line 1508
    array-length v0, p1

    .line 1509
    .local v0, "packageNameCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_22

    .line 1510
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1f

    .line 1512
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1516
    .end local v0    # "packageNameCount":I
    .end local v1    # "i":I
    :cond_22
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    return-void
.end method

.method public static whitelist capabilityToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "capability"    # I

    .line 1672
    sparse-switch p0, :sswitch_data_1c

    .line 1688
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1686
    :sswitch_6
    const-string v0, "CAPABILITY_CAN_TAKE_SCREENSHOT"

    return-object v0

    .line 1684
    :sswitch_9
    const-string v0, "CAPABILITY_CAN_REQUEST_FINGERPRINT_GESTURES"

    return-object v0

    .line 1682
    :sswitch_c
    const-string v0, "CAPABILITY_CAN_PERFORM_GESTURES"

    return-object v0

    .line 1680
    :sswitch_f
    const-string v0, "CAPABILITY_CAN_CONTROL_MAGNIFICATION"

    return-object v0

    .line 1678
    :sswitch_12
    const-string v0, "CAPABILITY_CAN_REQUEST_FILTER_KEY_EVENTS"

    return-object v0

    .line 1676
    :sswitch_15
    const-string v0, "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"

    return-object v0

    .line 1674
    :sswitch_18
    const-string v0, "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"

    return-object v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_18
        0x2 -> :sswitch_15
        0x8 -> :sswitch_12
        0x10 -> :sswitch_f
        0x20 -> :sswitch_c
        0x40 -> :sswitch_9
        0x80 -> :sswitch_6
    .end sparse-switch
.end method

.method public static whitelist feedbackTypeToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "feedbackType"    # I

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1570
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    :goto_a
    if-eqz p0, :cond_76

    .line 1572
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    .line 1573
    .local v1, "feedbackTypeFlag":I
    not-int v3, v1

    and-int/2addr p0, v3

    .line 1574
    const-string v3, ", "

    sparse-switch v1, :sswitch_data_80

    goto :goto_75

    .line 1606
    :sswitch_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v2, :cond_24

    .line 1607
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    :cond_24
    const-string v2, "FEEDBACK_BRAILLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_75

    .line 1588
    :sswitch_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v2, :cond_33

    .line 1589
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    :cond_33
    const-string v2, "FEEDBACK_GENERIC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    goto :goto_75

    .line 1600
    :sswitch_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v2, :cond_42

    .line 1601
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    :cond_42
    const-string v2, "FEEDBACK_VISUAL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    goto :goto_75

    .line 1576
    :sswitch_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v2, :cond_51

    .line 1577
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    :cond_51
    const-string v2, "FEEDBACK_AUDIBLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    goto :goto_75

    .line 1582
    :sswitch_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v2, :cond_60

    .line 1583
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    :cond_60
    const-string v2, "FEEDBACK_HAPTIC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    goto :goto_75

    .line 1594
    :sswitch_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v2, :cond_6f

    .line 1595
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    :cond_6f
    const-string v2, "FEEDBACK_SPOKEN"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    nop

    .line 1612
    .end local v1    # "feedbackTypeFlag":I
    :goto_75
    goto :goto_a

    .line 1613
    :cond_76
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_66
        0x2 -> :sswitch_57
        0x4 -> :sswitch_48
        0x8 -> :sswitch_39
        0x10 -> :sswitch_2a
        0x20 -> :sswitch_1b
    .end sparse-switch
.end method

.method private static greylist-max-o fingerprintAvailable(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1763
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1764
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 1763
    :goto_1d
    return v0
.end method

.method public static whitelist flagToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "flag"    # I

    .line 1625
    sparse-switch p0, :sswitch_data_36

    .line 1659
    const/4 v0, 0x0

    return-object v0

    .line 1657
    :sswitch_5
    const-string v0, "FLAG_INPUT_METHOD_EDITOR"

    return-object v0

    .line 1639
    :sswitch_8
    const-string v0, "FLAG_SEND_MOTION_EVENTS"

    return-object v0

    .line 1637
    :sswitch_b
    const-string v0, "FLAG_REQUEST_2_FINGER_PASSTHROUGH"

    return-object v0

    .line 1635
    :sswitch_e
    const-string v0, "FLAG_REQUEST_MULTI_FINGER_GESTURES"

    return-object v0

    .line 1633
    :sswitch_11
    const-string v0, "FLAG_SERVICE_HANDLES_DOUBLE_TAP"

    return-object v0

    .line 1655
    :sswitch_14
    const-string v0, "FLAG_REQUEST_SHORTCUT_WARNING_DIALOG_SPOKEN_FEEDBACK"

    return-object v0

    .line 1653
    :sswitch_17
    const-string v0, "FLAG_REQUEST_FINGERPRINT_GESTURES"

    return-object v0

    .line 1651
    :sswitch_1a
    const-string v0, "FLAG_REQUEST_ACCESSIBILITY_BUTTON"

    return-object v0

    .line 1649
    :sswitch_1d
    const-string v0, "FLAG_ENABLE_ACCESSIBILITY_VOLUME"

    return-object v0

    .line 1647
    :sswitch_20
    const-string v0, "FLAG_RETRIEVE_INTERACTIVE_WINDOWS"

    return-object v0

    .line 1645
    :sswitch_23
    const-string v0, "FLAG_REQUEST_FILTER_KEY_EVENTS"

    return-object v0

    .line 1643
    :sswitch_26
    const-string v0, "FLAG_REPORT_VIEW_IDS"

    return-object v0

    .line 1641
    :sswitch_29
    const-string v0, "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    return-object v0

    .line 1631
    :sswitch_2c
    const-string v0, "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"

    return-object v0

    .line 1629
    :sswitch_2f
    const-string v0, "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"

    return-object v0

    .line 1627
    :sswitch_32
    const-string v0, "DEFAULT"

    return-object v0

    nop

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_32
        0x2 -> :sswitch_2f
        0x4 -> :sswitch_2c
        0x8 -> :sswitch_29
        0x10 -> :sswitch_26
        0x20 -> :sswitch_23
        0x40 -> :sswitch_20
        0x80 -> :sswitch_1d
        0x100 -> :sswitch_1a
        0x200 -> :sswitch_17
        0x400 -> :sswitch_14
        0x800 -> :sswitch_11
        0x1000 -> :sswitch_e
        0x2000 -> :sswitch_b
        0x4000 -> :sswitch_8
        0x8000 -> :sswitch_5
    .end sparse-switch
.end method

.method private static greylist-max-o getCapabilityInfoSparseArray(Landroid/content/Context;)Landroid/util/SparseArray;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;",
            ">;"
        }
    .end annotation

    .line 1726
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    if-nez v0, :cond_8f

    .line 1727
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    .line 1728
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    const v2, 0x10401d8

    const v3, 0x10401d1

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1732
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    const v2, 0x10401d7

    const v3, 0x10401d0

    const/4 v4, 0x2

    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1736
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    const v2, 0x10401d6

    const v3, 0x10401cf

    const/16 v4, 0x8

    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1740
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    const v2, 0x10401d4

    const v3, 0x10401cd

    const/16 v4, 0x10

    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1744
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    const v2, 0x10401d5

    const v3, 0x10401ce

    const/16 v4, 0x20

    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1748
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    const v2, 0x10401d9

    const v3, 0x10401d2

    const/16 v4, 0x80

    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1752
    if-eqz p0, :cond_7d

    invoke-static {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->fingerprintAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1753
    :cond_7d
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    const v2, 0x10401d3

    const v3, 0x10401cc

    const/16 v4, 0x40

    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1759
    :cond_8f
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    return-object v0
.end method

.method private greylist-max-o initFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 1404
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 1405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 1406
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 1407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    .line 1408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    .line 1409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 1410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    iput-boolean v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    .line 1411
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 1412
    const/4 v0, 0x0

    const-class v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 1414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 1415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSummaryResId:I

    .line 1416
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedSummary:Ljava/lang/String;

    .line 1417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    .line 1418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mAnimatedImageRes:I

    .line 1419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mHtmlDescriptionRes:I

    .line 1420
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    .line 1421
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIsAccessibilityTool:Z

    .line 1422
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mTileServiceName:Ljava/lang/String;

    .line 1423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIntroResId:I

    .line 1424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mMotionEventSources:I

    .line 1426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setObservedMotionEventSources(I)V

    .line 1427
    return-void
.end method

.method private blacklist isRequestAccessibilityButtonChangeEnabled(Lcom/android/internal/compat/IPlatformCompat;)Z
    .registers 6
    .param p1, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 902
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 903
    return v1

    .line 906
    :cond_6
    if-eqz p1, :cond_18

    .line 907
    :try_start_8
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-wide/32 v2, 0x81fae4b

    invoke-interface {p1, v2, v3, v0}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_16

    return v0

    .line 910
    :catch_16
    move-exception v0

    goto :goto_19

    .line 911
    :cond_18
    nop

    .line 912
    :goto_19
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1d

    if-le v0, v2, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1364
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1436
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1437
    return v0

    .line 1439
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1440
    return v1

    .line 1442
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 1443
    return v1

    .line 1445
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1446
    .local v2, "other":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_1f

    .line 1447
    iget-object v3, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_2a

    .line 1448
    return v1

    .line 1450
    :cond_1f
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1451
    return v1

    .line 1453
    :cond_2a
    return v0
.end method

.method public blacklist getAnimatedImageRes()I
    .registers 2

    .line 991
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mAnimatedImageRes:I

    return v0
.end method

.method public whitelist getCanRetrieveWindowContent()Z
    .registers 3

    .line 1027
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist getCapabilities()I
    .registers 2

    .line 1044
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    return v0
.end method

.method public greylist-max-o getCapabilityInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;",
            ">;"
        }
    .end annotation

    .line 1698
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCapabilityInfos(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;",
            ">;"
        }
    .end annotation

    .line 1707
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    if-nez v0, :cond_9

    .line 1708
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1710
    :cond_9
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 1711
    .local v0, "capabilities":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1712
    .local v1, "capabilityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    nop

    .line 1713
    invoke-static {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfoSparseArray(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v2

    .line 1714
    .local v2, "capabilityInfoSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    :goto_15
    if-eqz v0, :cond_2b

    .line 1715
    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shl-int/2addr v3, v4

    .line 1716
    .local v3, "capabilityBit":I
    not-int v4, v3

    and-int/2addr v0, v4

    .line 1717
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 1718
    .local v4, "capabilityInfo":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    if-eqz v4, :cond_2a

    .line 1719
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1721
    .end local v3    # "capabilityBit":I
    .end local v4    # "capabilityInfo":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    :cond_2a
    goto :goto_15

    .line 1722
    :cond_2b
    return-object v1
.end method

.method public greylist-max-o getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 935
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 1221
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 946
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getInteractiveUiTimeoutMillis()I
    .registers 2

    .line 1322
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    return v0
.end method

.method public whitelist getMotionEventSources()I
    .registers 2

    .line 1073
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mMotionEventSources:I

    return v0
.end method

.method public whitelist getNonInteractiveUiTimeoutMillis()I
    .registers 2

    .line 1295
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    return v0
.end method

.method public blacklist getObservedMotionEventSources()I
    .registers 2

    .line 1162
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mObservedMotionEventSources:I

    return v0
.end method

.method public whitelist getResolveInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    .line 957
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public whitelist getSettingsActivityName()Ljava/lang/String;
    .registers 2

    .line 969
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTileServiceName()Ljava/lang/String;
    .registers 2

    .line 980
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mTileServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1431
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    :goto_c
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public whitelist isAccessibilityTool()Z
    .registers 2

    .line 1357
    iget-boolean v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIsAccessibilityTool:Z

    return v0
.end method

.method public greylist-max-o isDirectBootAware()Z
    .registers 3

    .line 1327
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public final blacklist isWithinParcelableSize()Z
    .registers 5

    .line 1369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1370
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1371
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/high16 v3, 0x10000

    if-gt v2, v3, :cond_11

    const/4 v1, 0x1

    .line 1372
    .local v1, "result":Z
    :cond_11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1373
    return v1
.end method

.method public blacklist loadAnimatedImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1008
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mAnimatedImageRes:I

    if-nez v0, :cond_6

    .line 1009
    const/4 v0, 0x0

    return-object v0

    .line 1012
    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mAnimatedImageRes:I

    invoke-static {p1, v0, v1}, Landroid/accessibilityservice/util/AccessibilityUtils;->loadSafeAnimatedImage(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 1233
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    if-nez v0, :cond_7

    .line 1234
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    return-object v0

    .line 1236
    :cond_7
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1237
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1239
    .local v1, "description":Ljava/lang/CharSequence;
    if-eqz v1, :cond_20

    .line 1240
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1242
    :cond_20
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 7
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 1258
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mHtmlDescriptionRes:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1259
    return-object v1

    .line 1262
    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1263
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mHtmlDescriptionRes:I

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1265
    .local v2, "htmlDescription":Ljava/lang/CharSequence;
    if-eqz v2, :cond_23

    .line 1266
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/accessibilityservice/util/AccessibilityUtils;->getFilteredHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1268
    :cond_23
    return-object v1
.end method

.method public whitelist loadIntro(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 1198
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIntroResId:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1199
    return-object v1

    .line 1201
    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1202
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIntroResId:I

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1204
    .local v2, "intro":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1f

    .line 1205
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1207
    :cond_1f
    return-object v1
.end method

.method public whitelist loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 1175
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSummaryResId:I

    if-nez v0, :cond_7

    .line 1176
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedSummary:Ljava/lang/String;

    return-object v0

    .line 1178
    :cond_7
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1179
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSummaryResId:I

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1181
    .local v1, "summary":Ljava/lang/CharSequence;
    if-eqz v1, :cond_20

    .line 1182
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1184
    :cond_20
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist resetDynamicallyConfigurableProperties()V
    .registers 3

    .line 847
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDynamicPropertyDefaults:Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->-$$Nest$fgetmEventTypesDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 848
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDynamicPropertyDefaults:Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->-$$Nest$fgetmPackageNamesDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_14

    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    goto :goto_25

    .line 851
    :cond_14
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDynamicPropertyDefaults:Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->-$$Nest$fgetmPackageNamesDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 853
    :goto_25
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDynamicPropertyDefaults:Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->-$$Nest$fgetmFeedbackTypeDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 854
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDynamicPropertyDefaults:Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->-$$Nest$fgetmNotificationTimeoutDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 855
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDynamicPropertyDefaults:Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->-$$Nest$fgetmNonInteractiveUiTimeoutDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    .line 856
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDynamicPropertyDefaults:Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->-$$Nest$fgetmInteractiveUiTimeoutDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    .line 857
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDynamicPropertyDefaults:Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->-$$Nest$fgetmFlagsDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 858
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDynamicPropertyDefaults:Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->-$$Nest$fgetmMotionEventSourcesDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mMotionEventSources:I

    .line 859
    invoke-static {}, Landroid/view/accessibility/Flags;->motionEventObserving()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 860
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDynamicPropertyDefaults:Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->-$$Nest$fgetmObservedMotionEventSourcesDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mObservedMotionEventSources:I

    .line 863
    :cond_63
    return-void
.end method

.method public whitelist setAccessibilityTool(Z)V
    .registers 2
    .param p1, "isAccessibilityTool"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1348
    iput-boolean p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIsAccessibilityTool:Z

    .line 1349
    return-void
.end method

.method public greylist-max-r setCapabilities(I)V
    .registers 2
    .param p1, "capabilities"    # I

    .line 1064
    iput p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 1065
    return-void
.end method

.method public greylist-max-o setComponentName(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 919
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 920
    return-void
.end method

.method public whitelist setInteractiveUiTimeoutMillis(I)V
    .registers 2
    .param p1, "timeout"    # I

    .line 1311
    iput p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    .line 1312
    return-void
.end method

.method public whitelist setMotionEventSources(I)V
    .registers 3
    .param p1, "motionEventSources"    # I

    .line 1103
    iput p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mMotionEventSources:I

    .line 1104
    const/4 v0, 0x0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mObservedMotionEventSources:I

    .line 1105
    return-void
.end method

.method public whitelist setNonInteractiveUiTimeoutMillis(I)V
    .registers 2
    .param p1, "timeout"    # I

    .line 1284
    iput p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    .line 1285
    return-void
.end method

.method public blacklist setObservedMotionEventSources(I)V
    .registers 4
    .param p1, "observedMotionEventSources"    # I

    .line 1138
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mMotionEventSources:I

    not-int v0, v0

    and-int/2addr v0, p1

    if-nez v0, :cond_9

    .line 1146
    iput p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mObservedMotionEventSources:I

    .line 1147
    return-void

    .line 1139
    :cond_9
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mMotionEventSources:I

    .line 1143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1140
    const-string v1, "Requested motion event sources for listening = 0x%x but requested motion event sources for observing = 0x%x."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1144
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setResolveInfo(Landroid/content/pm/ResolveInfo;)V
    .registers 2
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 926
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 927
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1459
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendEventTypes(Ljava/lang/StringBuilder;I)V

    .line 1460
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendPackageNames(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 1462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    iget v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    invoke-static {v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendFeedbackTypes(Ljava/lang/StringBuilder;I)V

    .line 1464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    const-string/jumbo v2, "notificationTimeout: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    const-string/jumbo v2, "nonInteractiveUiTimeout: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    const-string/jumbo v2, "interactiveUiTimeout: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1470
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    iget v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    invoke-static {v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendFlags(Ljava/lang/StringBuilder;I)V

    .line 1472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    const-string/jumbo v2, "id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    const-string/jumbo v2, "resolveInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    const-string/jumbo v2, "settingsActivityName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    const-string/jumbo v2, "tileServiceName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mTileServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    const-string/jumbo v2, "summary: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    const-string/jumbo v2, "isAccessibilityTool: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIsAccessibilityTool:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendCapabilities(Ljava/lang/StringBuilder;I)V

    .line 1486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateDynamicallyConfigurableProperties(Lcom/android/internal/compat/IPlatformCompat;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 5
    .param p1, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;
    .param p2, "other"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 881
    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isRequestAccessibilityButtonChangeEnabled(Lcom/android/internal/compat/IPlatformCompat;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 882
    iget v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 883
    iget v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iput v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 885
    :cond_15
    iget v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 886
    iget-object v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 887
    iget v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 888
    iget-wide v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 889
    iget v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    .line 890
    iget v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    .line 891
    iget v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 892
    iget v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->mMotionEventSources:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mMotionEventSources:I

    .line 893
    invoke-static {}, Landroid/view/accessibility/Flags;->motionEventObserving()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 894
    iget v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->mObservedMotionEventSources:I

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setObservedMotionEventSources(I)V

    .line 898
    :cond_40
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flagz"    # I

    .line 1377
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1378
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1379
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    iget-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1381
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1382
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1383
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1384
    iget-boolean v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1385
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1386
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1387
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1388
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1389
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSummaryResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1390
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1391
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mAnimatedImageRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1393
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mHtmlDescriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1395
    iget-boolean v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIsAccessibilityTool:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1396
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mTileServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1397
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIntroResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1398
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mMotionEventSources:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mObservedMotionEventSources:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1400
    return-void
.end method
