.class public Landroid/accessibilityservice/AccessibilityServiceInfo;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityServiceInfo$1;,
        Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    }
.end annotation


# static fields
.field public static final CAPABILITY_CAN_CONTROL_MAGNIFICATION:I = 0x10

.field public static final CAPABILITY_CAN_PERFORM_GESTURES:I = 0x20

.field public static final CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x4

.field public static final CAPABILITY_CAN_REQUEST_FILTER_KEY_EVENTS:I = 0x8

.field public static final CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION:I = 0x2

.field public static final CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:I = 0x1

.field public static final FEEDBACK_ALL_MASK:I = -0x1

.field public static final FEEDBACK_AUDIBLE:I = 0x4

.field public static final FEEDBACK_BRAILLE:I = 0x20

.field public static final FEEDBACK_GENERIC:I = 0x10

.field public static final FEEDBACK_HAPTIC:I = 0x2

.field public static final FEEDBACK_SPOKEN:I = 0x1

.field public static final FEEDBACK_VISUAL:I = 0x8

.field public static final FLAG_FORCE_DIRECT_BOOT_AWARE:I = 0x10000

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x8

.field public static final FLAG_REQUEST_FILTER_KEY_EVENTS:I = 0x20

.field public static final FLAG_REQUEST_TOUCH_EXPLORATION_MODE:I = 0x4

.field public static final FLAG_RETRIEVE_INTERACTIVE_WINDOWS:I = 0x40

.field private static final TAG_ACCESSIBILITY_SERVICE:Ljava/lang/String; = "accessibility-service"

.field private static final sAvailableCapabilityInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public eventTypes:I

.field public feedbackType:I

.field public flags:I

.field private mCapabilities:I

.field private mDescriptionResId:I

.field private mId:Ljava/lang/String;

.field private mNonLocalizedDescription:Ljava/lang/String;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mSettingsActivityName:Ljava/lang/String;

.field public notificationTimeout:J

.field public packageNames:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->initFromParcel(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x10

    #@2
    const/16 v7, 0x8

    #@4
    const/4 v6, 0x4

    #@5
    const/4 v5, 0x2

    #@6
    const/4 v4, 0x1

    #@7
    .line 120
    new-instance v0, Landroid/util/SparseArray;

    #@9
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@c
    .line 119
    sput-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    #@e
    .line 122
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    #@10
    .line 123
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    #@12
    .line 124
    const v2, 0x1040152

    #@15
    .line 125
    const v3, 0x1040153

    #@18
    .line 123
    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    #@1b
    .line 122
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1e
    .line 126
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    #@20
    .line 127
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    #@22
    .line 128
    const v2, 0x1040154

    #@25
    .line 129
    const v3, 0x1040155

    #@28
    .line 127
    invoke-direct {v1, v5, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    #@2b
    .line 126
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@2e
    .line 130
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    #@30
    .line 131
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    #@32
    .line 132
    const v2, 0x1040156

    #@35
    .line 133
    const v3, 0x1040157

    #@38
    .line 131
    invoke-direct {v1, v6, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    #@3b
    .line 130
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3e
    .line 134
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    #@40
    .line 135
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    #@42
    .line 136
    const v2, 0x1040158

    #@45
    .line 137
    const v3, 0x1040159

    #@48
    .line 135
    invoke-direct {v1, v7, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    #@4b
    .line 134
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@4e
    .line 138
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    #@50
    .line 139
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    #@52
    .line 140
    const v2, 0x104015a

    #@55
    .line 141
    const v3, 0x104015b

    #@58
    .line 139
    invoke-direct {v1, v8, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    #@5b
    .line 138
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@5e
    .line 142
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    #@60
    .line 143
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    #@62
    const/16 v2, 0x20

    #@64
    .line 144
    const v3, 0x104015c

    #@67
    .line 145
    const v4, 0x104015d

    #@6a
    .line 143
    invoke-direct {v1, v2, v3, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    #@6d
    .line 142
    const/16 v2, 0x20

    #@6f
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@72
    .line 1005
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo$1;

    #@74
    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo$1;-><init>()V

    #@77
    .line 1004
    sput-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@79
    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    .locals 17
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 457
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 459
    move-object/from16 v0, p1

    #@5
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@7
    .line 460
    .local v12, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v14, Landroid/content/ComponentName;

    #@9
    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@b
    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@d
    move-object/from16 v16, v0

    #@f
    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@15
    move-result-object v14

    #@16
    move-object/from16 v0, p0

    #@18
    iput-object v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@1a
    .line 461
    move-object/from16 v0, p1

    #@1c
    move-object/from16 v1, p0

    #@1e
    iput-object v0, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@20
    .line 463
    const/4 v9, 0x0

    #@21
    .line 466
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@24
    move-result-object v7

    #@25
    .line 468
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v14, "android.accessibilityservice"

    #@28
    .line 467
    invoke-virtual {v12, v7, v14}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result-object v9

    #@2c
    .line 469
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v9, :cond_1

    #@2e
    .line 545
    if-eqz v9, :cond_0

    #@30
    .line 546
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    #@33
    .line 470
    :cond_0
    return-void

    #@34
    .line 473
    :cond_1
    const/4 v13, 0x0

    #@35
    .line 474
    .local v13, "type":I
    :goto_0
    const/4 v14, 0x1

    #@36
    if-eq v13, v14, :cond_2

    #@38
    const/4 v14, 0x2

    #@39
    if-eq v13, v14, :cond_2

    #@3b
    .line 475
    :try_start_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    #@3e
    move-result v13

    #@3f
    goto :goto_0

    #@40
    .line 478
    :cond_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    .line 479
    .local v5, "nodeName":Ljava/lang/String;
    const-string/jumbo v14, "accessibility-service"

    #@47
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v14

    #@4b
    if-nez v14, :cond_4

    #@4d
    .line 480
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    #@4f
    const-string/jumbo v15, "Meta-data does not start withaccessibility-service tag"

    #@52
    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@55
    throw v14
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    .line 541
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v13    # "type":I
    :catch_0
    move-exception v4

    #@57
    .line 542
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    #@59
    new-instance v15, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v16, "Unable to create context for: "

    #@61
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v15

    #@65
    .line 543
    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@67
    move-object/from16 v16, v0

    #@69
    .line 542
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v15

    #@6d
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v15

    #@71
    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@74
    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@75
    .line 544
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v14

    #@76
    .line 545
    if-eqz v9, :cond_3

    #@78
    .line 546
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    #@7b
    .line 544
    :cond_3
    throw v14

    #@7c
    .line 484
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v13    # "type":I
    :cond_4
    :try_start_3
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@7f
    move-result-object v2

    #@80
    .line 486
    .local v2, "allAttributes":Landroid/util/AttributeSet;
    iget-object v14, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@82
    .line 485
    invoke-virtual {v7, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@85
    move-result-object v11

    #@86
    .line 488
    .local v11, "resources":Landroid/content/res/Resources;
    sget-object v14, Lcom/android/internal/R$styleable;->AccessibilityService:[I

    #@88
    .line 487
    invoke-virtual {v11, v2, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8b
    move-result-object v3

    #@8c
    .line 490
    .local v3, "asAttributes":Landroid/content/res/TypedArray;
    const/4 v14, 0x2

    #@8d
    .line 491
    const/4 v15, 0x0

    #@8e
    .line 489
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@91
    move-result v14

    #@92
    move-object/from16 v0, p0

    #@94
    iput v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    #@96
    .line 493
    const/4 v14, 0x3

    #@97
    .line 492
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@9a
    move-result-object v8

    #@9b
    .line 494
    .local v8, "packageNamez":Ljava/lang/String;
    if-eqz v8, :cond_5

    #@9d
    .line 495
    const-string/jumbo v14, "(\\s)*,(\\s)*"

    #@a0
    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@a3
    move-result-object v14

    #@a4
    move-object/from16 v0, p0

    #@a6
    iput-object v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    #@a8
    .line 498
    :cond_5
    const/4 v14, 0x4

    #@a9
    .line 499
    const/4 v15, 0x0

    #@aa
    .line 497
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@ad
    move-result v14

    #@ae
    move-object/from16 v0, p0

    #@b0
    iput v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@b2
    .line 501
    const/4 v14, 0x5

    #@b3
    .line 502
    const/4 v15, 0x0

    #@b4
    .line 500
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@b7
    move-result v14

    #@b8
    int-to-long v14, v14

    #@b9
    move-object/from16 v0, p0

    #@bb
    iput-wide v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    #@bd
    .line 504
    const/4 v14, 0x6

    #@be
    const/4 v15, 0x0

    #@bf
    .line 503
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@c2
    move-result v14

    #@c3
    move-object/from16 v0, p0

    #@c5
    iput v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@c7
    .line 506
    const/4 v14, 0x1

    #@c8
    .line 505
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@cb
    move-result-object v14

    #@cc
    move-object/from16 v0, p0

    #@ce
    iput-object v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@d0
    .line 507
    const/4 v14, 0x7

    #@d1
    .line 508
    const/4 v15, 0x0

    #@d2
    .line 507
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@d5
    move-result v14

    #@d6
    if-eqz v14, :cond_6

    #@d8
    .line 509
    move-object/from16 v0, p0

    #@da
    iget v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@dc
    or-int/lit8 v14, v14, 0x1

    #@de
    move-object/from16 v0, p0

    #@e0
    iput v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@e2
    .line 511
    :cond_6
    const/16 v14, 0x8

    #@e4
    .line 512
    const/4 v15, 0x0

    #@e5
    .line 511
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@e8
    move-result v14

    #@e9
    if-eqz v14, :cond_7

    #@eb
    .line 513
    move-object/from16 v0, p0

    #@ed
    iget v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@ef
    or-int/lit8 v14, v14, 0x2

    #@f1
    move-object/from16 v0, p0

    #@f3
    iput v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@f5
    .line 515
    :cond_7
    const/16 v14, 0x9

    #@f7
    .line 516
    const/4 v15, 0x0

    #@f8
    .line 515
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@fb
    move-result v14

    #@fc
    if-eqz v14, :cond_8

    #@fe
    .line 517
    move-object/from16 v0, p0

    #@100
    iget v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@102
    or-int/lit8 v14, v14, 0x4

    #@104
    move-object/from16 v0, p0

    #@106
    iput v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@108
    .line 519
    :cond_8
    const/16 v14, 0xa

    #@10a
    .line 520
    const/4 v15, 0x0

    #@10b
    .line 519
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@10e
    move-result v14

    #@10f
    if-eqz v14, :cond_9

    #@111
    .line 521
    move-object/from16 v0, p0

    #@113
    iget v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@115
    or-int/lit8 v14, v14, 0x8

    #@117
    move-object/from16 v0, p0

    #@119
    iput v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@11b
    .line 523
    :cond_9
    const/16 v14, 0xb

    #@11d
    .line 524
    const/4 v15, 0x0

    #@11e
    .line 523
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@121
    move-result v14

    #@122
    if-eqz v14, :cond_a

    #@124
    .line 525
    move-object/from16 v0, p0

    #@126
    iget v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@128
    or-int/lit8 v14, v14, 0x10

    #@12a
    move-object/from16 v0, p0

    #@12c
    iput v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@12e
    .line 527
    :cond_a
    const/16 v14, 0xc

    #@130
    .line 528
    const/4 v15, 0x0

    #@131
    .line 527
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@134
    move-result v14

    #@135
    if-eqz v14, :cond_b

    #@137
    .line 529
    move-object/from16 v0, p0

    #@139
    iget v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@13b
    or-int/lit8 v14, v14, 0x20

    #@13d
    move-object/from16 v0, p0

    #@13f
    iput v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@141
    .line 532
    :cond_b
    const/4 v14, 0x0

    #@142
    .line 531
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@145
    move-result-object v10

    #@146
    .line 533
    .local v10, "peekedValue":Landroid/util/TypedValue;
    if-eqz v10, :cond_c

    #@148
    .line 534
    iget v14, v10, Landroid/util/TypedValue;->resourceId:I

    #@14a
    move-object/from16 v0, p0

    #@14c
    iput v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    #@14e
    .line 535
    invoke-virtual {v10}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@151
    move-result-object v6

    #@152
    .line 536
    .local v6, "nonLocalizedDescription":Ljava/lang/CharSequence;
    if-eqz v6, :cond_c

    #@154
    .line 537
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@157
    move-result-object v14

    #@158
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@15b
    move-result-object v14

    #@15c
    move-object/from16 v0, p0

    #@15e
    iput-object v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    #@160
    .line 540
    .end local v6    # "nonLocalizedDescription":Ljava/lang/CharSequence;
    :cond_c
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@163
    .line 545
    if-eqz v9, :cond_d

    #@165
    .line 546
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    #@168
    .line 458
    :cond_d
    return-void
.end method

.method private static appendCapabilities(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "capabilities"    # I

    #@0
    .prologue
    .line 841
    const-string/jumbo v1, "capabilities:"

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    .line 842
    const-string/jumbo v1, "["

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 843
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    #@e
    .line 844
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x1

    #@13
    shl-int v0, v2, v1

    #@15
    .line 845
    .local v0, "capabilityBit":I
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->capabilityToString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 846
    not-int v1, v0

    #@1d
    and-int/2addr p1, v1

    #@1e
    .line 847
    if-eqz p1, :cond_0

    #@20
    .line 848
    const-string/jumbo v1, ", "

    #@23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 851
    .end local v0    # "capabilityBit":I
    :cond_1
    const-string/jumbo v1, "]"

    #@2a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 840
    return-void
.end method

.method private static appendEventTypes(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "eventTypes"    # I

    #@0
    .prologue
    .line 813
    const-string/jumbo v1, "eventTypes:"

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    .line 814
    const-string/jumbo v1, "["

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 815
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    #@e
    .line 816
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x1

    #@13
    shl-int v0, v2, v1

    #@15
    .line 817
    .local v0, "eventTypeBit":I
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 818
    not-int v1, v0

    #@1d
    and-int/2addr p1, v1

    #@1e
    .line 819
    if-eqz p1, :cond_0

    #@20
    .line 820
    const-string/jumbo v1, ", "

    #@23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 823
    .end local v0    # "eventTypeBit":I
    :cond_1
    const-string/jumbo v1, "]"

    #@2a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 812
    return-void
.end method

.method private static appendFeedbackTypes(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "feedbackTypes"    # I

    #@0
    .prologue
    .line 784
    const-string/jumbo v1, "feedbackTypes:"

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    .line 785
    const-string/jumbo v1, "["

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 786
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    #@e
    .line 787
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x1

    #@13
    shl-int v0, v2, v1

    #@15
    .line 788
    .local v0, "feedbackTypeBit":I
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 789
    not-int v1, v0

    #@1d
    and-int/2addr p1, v1

    #@1e
    .line 790
    if-eqz p1, :cond_0

    #@20
    .line 791
    const-string/jumbo v1, ", "

    #@23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 794
    .end local v0    # "feedbackTypeBit":I
    :cond_1
    const-string/jumbo v1, "]"

    #@2a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 783
    return-void
.end method

.method private static appendFlags(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 827
    const-string/jumbo v1, "flags:"

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    .line 828
    const-string/jumbo v1, "["

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 829
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    #@e
    .line 830
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x1

    #@13
    shl-int v0, v2, v1

    #@15
    .line 831
    .local v0, "flagBit":I
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->flagToString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 832
    not-int v1, v0

    #@1d
    and-int/2addr p1, v1

    #@1e
    .line 833
    if-eqz p1, :cond_0

    #@20
    .line 834
    const-string/jumbo v1, ", "

    #@23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 837
    .end local v0    # "flagBit":I
    :cond_1
    const-string/jumbo v1, "]"

    #@2a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 826
    return-void
.end method

.method private static appendPackageNames(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 3
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "packageNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 798
    const-string/jumbo v2, "packageNames:"

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    .line 799
    const-string/jumbo v2, "["

    #@9
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 800
    if-eqz p1, :cond_1

    #@e
    .line 801
    array-length v1, p1

    #@f
    .line 802
    .local v1, "packageNameCount":I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@12
    .line 803
    aget-object v2, p1, v0

    #@14
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 804
    add-int/lit8 v2, v1, -0x1

    #@19
    if-ge v0, v2, :cond_0

    #@1b
    .line 805
    const-string/jumbo v2, ", "

    #@1e
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 802
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 809
    .end local v0    # "i":I
    .end local v1    # "packageNameCount":I
    :cond_1
    const-string/jumbo v2, "]"

    #@27
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 797
    return-void
.end method

.method public static capabilityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "capability"    # I

    #@0
    .prologue
    .line 947
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 961
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 949
    :sswitch_0
    const-string/jumbo v0, "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"

    #@a
    return-object v0

    #@b
    .line 951
    :sswitch_1
    const-string/jumbo v0, "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"

    #@e
    return-object v0

    #@f
    .line 953
    :sswitch_2
    const-string/jumbo v0, "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    #@12
    return-object v0

    #@13
    .line 955
    :sswitch_3
    const-string/jumbo v0, "CAPABILITY_CAN_FILTER_KEY_EVENTS"

    #@16
    return-object v0

    #@17
    .line 957
    :sswitch_4
    const-string/jumbo v0, "CAPABILITY_CAN_CONTROL_MAGNIFICATION"

    #@1a
    return-object v0

    #@1b
    .line 959
    :sswitch_5
    const-string/jumbo v0, "CAPABILITY_CAN_PERFORM_GESTURES"

    #@1e
    return-object v0

    #@1f
    .line 947
    nop

    #@20
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method public static feedbackTypeToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "feedbackType"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 863
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "["

    #@9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 864
    :goto_0
    if-eqz p0, :cond_6

    #@e
    .line 865
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@11
    move-result v2

    #@12
    shl-int v1, v3, v2

    #@14
    .line 866
    .local v1, "feedbackTypeFlag":I
    not-int v2, v1

    #@15
    and-int/2addr p0, v2

    #@16
    .line 867
    sparse-switch v1, :sswitch_data_0

    #@19
    goto :goto_0

    #@1a
    .line 887
    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@1d
    move-result v2

    #@1e
    if-le v2, v3, :cond_0

    #@20
    .line 888
    const-string/jumbo v2, ", "

    #@23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 890
    :cond_0
    const-string/jumbo v2, "FEEDBACK_SPOKEN"

    #@29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    goto :goto_0

    #@2d
    .line 869
    :sswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@30
    move-result v2

    #@31
    if-le v2, v3, :cond_1

    #@33
    .line 870
    const-string/jumbo v2, ", "

    #@36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 872
    :cond_1
    const-string/jumbo v2, "FEEDBACK_AUDIBLE"

    #@3c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    goto :goto_0

    #@40
    .line 875
    :sswitch_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@43
    move-result v2

    #@44
    if-le v2, v3, :cond_2

    #@46
    .line 876
    const-string/jumbo v2, ", "

    #@49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 878
    :cond_2
    const-string/jumbo v2, "FEEDBACK_HAPTIC"

    #@4f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    goto :goto_0

    #@53
    .line 881
    :sswitch_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@56
    move-result v2

    #@57
    if-le v2, v3, :cond_3

    #@59
    .line 882
    const-string/jumbo v2, ", "

    #@5c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 884
    :cond_3
    const-string/jumbo v2, "FEEDBACK_GENERIC"

    #@62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    goto :goto_0

    #@66
    .line 893
    :sswitch_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@69
    move-result v2

    #@6a
    if-le v2, v3, :cond_4

    #@6c
    .line 894
    const-string/jumbo v2, ", "

    #@6f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    .line 896
    :cond_4
    const-string/jumbo v2, "FEEDBACK_VISUAL"

    #@75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    goto :goto_0

    #@79
    .line 899
    :sswitch_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@7c
    move-result v2

    #@7d
    if-le v2, v3, :cond_5

    #@7f
    .line 900
    const-string/jumbo v2, ", "

    #@82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 902
    :cond_5
    const-string/jumbo v2, "FEEDBACK_BRAILLE"

    #@88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    goto :goto_0

    #@8c
    .line 906
    .end local v1    # "feedbackTypeFlag":I
    :cond_6
    const-string/jumbo v2, "]"

    #@8f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    .line 907
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v2

    #@96
    return-object v2

    #@97
    .line 867
    nop

    #@98
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method public static flagToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "flag"    # I

    #@0
    .prologue
    .line 918
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 934
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 920
    :sswitch_0
    const-string/jumbo v0, "DEFAULT"

    #@8
    return-object v0

    #@9
    .line 922
    :sswitch_1
    const-string/jumbo v0, "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"

    #@c
    return-object v0

    #@d
    .line 924
    :sswitch_2
    const-string/jumbo v0, "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"

    #@10
    return-object v0

    #@11
    .line 926
    :sswitch_3
    const-string/jumbo v0, "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    #@14
    return-object v0

    #@15
    .line 928
    :sswitch_4
    const-string/jumbo v0, "FLAG_REPORT_VIEW_IDS"

    #@18
    return-object v0

    #@19
    .line 930
    :sswitch_5
    const-string/jumbo v0, "FLAG_REQUEST_FILTER_KEY_EVENTS"

    #@1c
    return-object v0

    #@1d
    .line 932
    :sswitch_6
    const-string/jumbo v0, "FLAG_RETRIEVE_INTERACTIVE_WINDOWS"

    #@20
    return-object v0

    #@21
    .line 918
    nop

    #@22
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
    .end sparse-switch
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 720
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    #@6
    .line 721
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    #@c
    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@12
    .line 723
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@15
    move-result-wide v0

    #@16
    iput-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    #@18
    .line 724
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@1e
    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@24
    .line 726
    const/4 v0, 0x0

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@2b
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@2d
    .line 727
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@33
    .line 728
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@39
    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    #@3f
    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    #@45
    .line 719
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 702
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 740
    if-ne p0, p1, :cond_0

    #@4
    .line 741
    return v4

    #@5
    .line 743
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 744
    return v3

    #@8
    .line 746
    :cond_1
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 747
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 749
    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@16
    .line 750
    .local v0, "other":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 751
    iget-object v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 752
    return v3

    #@1f
    .line 754
    :cond_3
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@21
    iget-object v2, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_4

    #@29
    .line 755
    return v3

    #@2a
    .line 757
    :cond_4
    return v4
.end method

.method public getCanRetrieveWindowContent()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 618
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 635
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@2
    return v0
.end method

.method public getCapabilityInfos()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 970
    iget v4, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@2
    if-nez v4, :cond_0

    #@4
    .line 971
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@7
    move-result-object v4

    #@8
    return-object v4

    #@9
    .line 973
    :cond_0
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@b
    .line 974
    .local v0, "capabilities":I
    new-instance v3, Ljava/util/ArrayList;

    #@d
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 975
    .local v3, "capabilityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    #@12
    .line 976
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@15
    move-result v4

    #@16
    const/4 v5, 0x1

    #@17
    shl-int v1, v5, v4

    #@19
    .line 977
    .local v1, "capabilityBit":I
    not-int v4, v1

    #@1a
    and-int/2addr v0, v4

    #@1b
    .line 978
    sget-object v4, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    #@23
    .line 979
    .local v2, "capabilityInfo":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    if-eqz v2, :cond_1

    #@25
    .line 980
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_0

    #@29
    .line 983
    .end local v1    # "capabilityBit":I
    .end local v2    # "capabilityInfo":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    :cond_2
    return-object v3
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 668
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 581
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    #@0
    .prologue
    .line 592
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@2
    return-object v0
.end method

.method public getSettingsActivityName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 604
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 735
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    add-int/lit8 v0, v0, 0x1f

    #@7
    return v0

    #@8
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@d
    move-result v0

    #@e
    goto :goto_0
.end method

.method public isDirectBootAware()Z
    .locals 2

    #@0
    .prologue
    .line 694
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@2
    const/high16 v1, 0x10000

    #@4
    and-int/2addr v0, v1

    #@5
    if-nez v0, :cond_0

    #@7
    .line 695
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@9
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@b
    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    #@d
    .line 694
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 680
    iget v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 681
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    #@7
    return-object v2

    #@8
    .line 683
    :cond_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    .line 684
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@e
    .line 685
    iget v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    #@10
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@12
    .line 684
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@15
    move-result-object v0

    #@16
    .line 686
    .local v0, "description":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    #@18
    .line 687
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    return-object v2

    #@21
    .line 689
    :cond_1
    return-object v5
.end method

.method public setCapabilities(I)V
    .locals 0
    .param p1, "capabilities"    # I

    #@0
    .prologue
    .line 654
    iput p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@2
    .line 653
    return-void
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 570
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@6
    .line 569
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 763
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    #@7
    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendEventTypes(Ljava/lang/StringBuilder;I)V

    #@a
    .line 764
    const-string/jumbo v1, ", "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 765
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    #@12
    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendPackageNames(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    #@15
    .line 766
    const-string/jumbo v1, ", "

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 767
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@1d
    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendFeedbackTypes(Ljava/lang/StringBuilder;I)V

    #@20
    .line 768
    const-string/jumbo v1, ", "

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 769
    const-string/jumbo v1, "notificationTimeout: "

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget-wide v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    #@2f
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@32
    .line 770
    const-string/jumbo v1, ", "

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 771
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@3a
    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendFlags(Ljava/lang/StringBuilder;I)V

    #@3d
    .line 772
    const-string/jumbo v1, ", "

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 773
    const-string/jumbo v1, "id: "

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 774
    const-string/jumbo v1, ", "

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 775
    const-string/jumbo v1, "resolveInfo: "

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    .line 776
    const-string/jumbo v1, ", "

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 777
    const-string/jumbo v1, "settingsActivityName: "

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 778
    const-string/jumbo v1, ", "

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    .line 779
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@7b
    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendCapabilities(Ljava/lang/StringBuilder;I)V

    #@7e
    .line 780
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    return-object v1
.end method

.method public updateDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@0
    .prologue
    .line 559
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    #@2
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    #@4
    .line 560
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    #@6
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    #@8
    .line 561
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@a
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@c
    .line 562
    iget-wide v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    #@e
    iput-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    #@10
    .line 563
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@12
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@14
    .line 558
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flagz"    # I

    #@0
    .prologue
    .line 706
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 707
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@a
    .line 708
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 709
    iget-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 710
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 711
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 712
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@20
    const/4 v1, 0x0

    #@21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@24
    .line 713
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@29
    .line 714
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 715
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 716
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    #@35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@38
    .line 705
    return-void
.end method
