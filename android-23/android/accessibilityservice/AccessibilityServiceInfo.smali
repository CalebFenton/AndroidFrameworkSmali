.class public Landroid/accessibilityservice/AccessibilityServiceInfo;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;,
        Landroid/accessibilityservice/AccessibilityServiceInfo$1;
    }
.end annotation


# static fields
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
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x8

    #@2
    const/4 v6, 0x4

    #@3
    const/4 v5, 0x2

    #@4
    const/4 v4, 0x1

    #@5
    .line 108
    new-instance v0, Landroid/util/SparseArray;

    #@7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@a
    .line 107
    sput-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    #@c
    .line 110
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    #@e
    .line 111
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    #@10
    .line 112
    const v2, 0x104012e

    #@13
    .line 113
    const v3, 0x104012f

    #@16
    .line 111
    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    #@19
    .line 110
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1c
    .line 114
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    #@1e
    .line 115
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    #@20
    .line 116
    const v2, 0x1040130

    #@23
    .line 117
    const v3, 0x1040131

    #@26
    .line 115
    invoke-direct {v1, v5, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    #@29
    .line 114
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@2c
    .line 118
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    #@2e
    .line 119
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    #@30
    .line 120
    const v2, 0x1040132

    #@33
    .line 121
    const v3, 0x1040133

    #@36
    .line 119
    invoke-direct {v1, v6, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    #@39
    .line 118
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3c
    .line 122
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    #@3e
    .line 123
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    #@40
    .line 124
    const v2, 0x1040134

    #@43
    .line 125
    const v3, 0x1040135

    #@46
    .line 123
    invoke-direct {v1, v7, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    #@49
    .line 122
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@4c
    .line 965
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo$1;

    #@4e
    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo$1;-><init>()V

    #@51
    .line 964
    sput-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@53
    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 425
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
    .line 439
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 441
    move-object/from16 v0, p1

    #@5
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@7
    .line 442
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
    .line 443
    move-object/from16 v0, p1

    #@1c
    move-object/from16 v1, p0

    #@1e
    iput-object v0, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@20
    .line 445
    const/4 v9, 0x0

    #@21
    .line 448
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@24
    move-result-object v7

    #@25
    .line 450
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v14, "android.accessibilityservice"

    #@28
    .line 449
    invoke-virtual {v12, v7, v14}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result-object v9

    #@2c
    .line 451
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v9, :cond_1

    #@2e
    .line 519
    if-eqz v9, :cond_0

    #@30
    .line 520
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    #@33
    .line 452
    :cond_0
    return-void

    #@34
    .line 455
    :cond_1
    const/4 v13, 0x0

    #@35
    .line 456
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
    .line 457
    :try_start_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    #@3e
    move-result v13

    #@3f
    goto :goto_0

    #@40
    .line 460
    :cond_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    .line 461
    .local v5, "nodeName":Ljava/lang/String;
    const-string/jumbo v14, "accessibility-service"

    #@47
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v14

    #@4b
    if-nez v14, :cond_4

    #@4d
    .line 462
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
    .line 515
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v13    # "type":I
    :catch_0
    move-exception v4

    #@57
    .line 516
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
    .line 517
    iget-object v0, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@67
    move-object/from16 v16, v0

    #@69
    .line 516
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
    .line 518
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v14

    #@76
    .line 519
    if-eqz v9, :cond_3

    #@78
    .line 520
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    #@7b
    .line 518
    :cond_3
    throw v14

    #@7c
    .line 466
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
    .line 468
    .local v2, "allAttributes":Landroid/util/AttributeSet;
    iget-object v14, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@82
    .line 467
    invoke-virtual {v7, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@85
    move-result-object v11

    #@86
    .line 470
    .local v11, "resources":Landroid/content/res/Resources;
    sget-object v14, Lcom/android/internal/R$styleable;->AccessibilityService:[I

    #@88
    .line 469
    invoke-virtual {v11, v2, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8b
    move-result-object v3

    #@8c
    .line 472
    .local v3, "asAttributes":Landroid/content/res/TypedArray;
    const/4 v14, 0x2

    #@8d
    .line 473
    const/4 v15, 0x0

    #@8e
    .line 471
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@91
    move-result v14

    #@92
    move-object/from16 v0, p0

    #@94
    iput v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    #@96
    .line 475
    const/4 v14, 0x3

    #@97
    .line 474
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@9a
    move-result-object v8

    #@9b
    .line 476
    .local v8, "packageNamez":Ljava/lang/String;
    if-eqz v8, :cond_5

    #@9d
    .line 477
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
    .line 480
    :cond_5
    const/4 v14, 0x4

    #@a9
    .line 481
    const/4 v15, 0x0

    #@aa
    .line 479
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@ad
    move-result v14

    #@ae
    move-object/from16 v0, p0

    #@b0
    iput v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@b2
    .line 483
    const/4 v14, 0x5

    #@b3
    .line 484
    const/4 v15, 0x0

    #@b4
    .line 482
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
    .line 486
    const/4 v14, 0x6

    #@be
    const/4 v15, 0x0

    #@bf
    .line 485
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@c2
    move-result v14

    #@c3
    move-object/from16 v0, p0

    #@c5
    iput v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@c7
    .line 488
    const/4 v14, 0x1

    #@c8
    .line 487
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@cb
    move-result-object v14

    #@cc
    move-object/from16 v0, p0

    #@ce
    iput-object v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@d0
    .line 489
    const/4 v14, 0x7

    #@d1
    .line 490
    const/4 v15, 0x0

    #@d2
    .line 489
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@d5
    move-result v14

    #@d6
    if-eqz v14, :cond_6

    #@d8
    .line 491
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
    .line 493
    :cond_6
    const/16 v14, 0x8

    #@e4
    .line 494
    const/4 v15, 0x0

    #@e5
    .line 493
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@e8
    move-result v14

    #@e9
    if-eqz v14, :cond_7

    #@eb
    .line 495
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
    .line 497
    :cond_7
    const/16 v14, 0x9

    #@f7
    .line 498
    const/4 v15, 0x0

    #@f8
    .line 497
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@fb
    move-result v14

    #@fc
    if-eqz v14, :cond_8

    #@fe
    .line 499
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
    .line 501
    :cond_8
    const/16 v14, 0xa

    #@10a
    .line 502
    const/4 v15, 0x0

    #@10b
    .line 501
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@10e
    move-result v14

    #@10f
    if-eqz v14, :cond_9

    #@111
    .line 503
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
    .line 506
    :cond_9
    const/4 v14, 0x0

    #@11c
    .line 505
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@11f
    move-result-object v10

    #@120
    .line 507
    .local v10, "peekedValue":Landroid/util/TypedValue;
    if-eqz v10, :cond_a

    #@122
    .line 508
    iget v14, v10, Landroid/util/TypedValue;->resourceId:I

    #@124
    move-object/from16 v0, p0

    #@126
    iput v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    #@128
    .line 509
    invoke-virtual {v10}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@12b
    move-result-object v6

    #@12c
    .line 510
    .local v6, "nonLocalizedDescription":Ljava/lang/CharSequence;
    if-eqz v6, :cond_a

    #@12e
    .line 511
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@131
    move-result-object v14

    #@132
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@135
    move-result-object v14

    #@136
    move-object/from16 v0, p0

    #@138
    iput-object v14, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    #@13a
    .line 514
    .end local v6    # "nonLocalizedDescription":Ljava/lang/CharSequence;
    :cond_a
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@13d
    .line 519
    if-eqz v9, :cond_b

    #@13f
    .line 520
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    #@142
    .line 440
    :cond_b
    return-void
.end method

.method private static appendCapabilities(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "capabilities"    # I

    #@0
    .prologue
    .line 805
    const-string/jumbo v1, "capabilities:"

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    .line 806
    const-string/jumbo v1, "["

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 807
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    #@e
    .line 808
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x1

    #@13
    shl-int v0, v2, v1

    #@15
    .line 809
    .local v0, "capabilityBit":I
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->capabilityToString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 810
    not-int v1, v0

    #@1d
    and-int/2addr p1, v1

    #@1e
    .line 811
    if-eqz p1, :cond_0

    #@20
    .line 812
    const-string/jumbo v1, ", "

    #@23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 815
    .end local v0    # "capabilityBit":I
    :cond_1
    const-string/jumbo v1, "]"

    #@2a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 804
    return-void
.end method

.method private static appendEventTypes(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "eventTypes"    # I

    #@0
    .prologue
    .line 777
    const-string/jumbo v1, "eventTypes:"

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    .line 778
    const-string/jumbo v1, "["

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 779
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    #@e
    .line 780
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x1

    #@13
    shl-int v0, v2, v1

    #@15
    .line 781
    .local v0, "eventTypeBit":I
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 782
    not-int v1, v0

    #@1d
    and-int/2addr p1, v1

    #@1e
    .line 783
    if-eqz p1, :cond_0

    #@20
    .line 784
    const-string/jumbo v1, ", "

    #@23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 787
    .end local v0    # "eventTypeBit":I
    :cond_1
    const-string/jumbo v1, "]"

    #@2a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 776
    return-void
.end method

.method private static appendFeedbackTypes(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "feedbackTypes"    # I

    #@0
    .prologue
    .line 748
    const-string/jumbo v1, "feedbackTypes:"

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    .line 749
    const-string/jumbo v1, "["

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 750
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    #@e
    .line 751
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x1

    #@13
    shl-int v0, v2, v1

    #@15
    .line 752
    .local v0, "feedbackTypeBit":I
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 753
    not-int v1, v0

    #@1d
    and-int/2addr p1, v1

    #@1e
    .line 754
    if-eqz p1, :cond_0

    #@20
    .line 755
    const-string/jumbo v1, ", "

    #@23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 758
    .end local v0    # "feedbackTypeBit":I
    :cond_1
    const-string/jumbo v1, "]"

    #@2a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 747
    return-void
.end method

.method private static appendFlags(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 791
    const-string/jumbo v1, "flags:"

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    .line 792
    const-string/jumbo v1, "["

    #@9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 793
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    #@e
    .line 794
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@11
    move-result v1

    #@12
    const/4 v2, 0x1

    #@13
    shl-int v0, v2, v1

    #@15
    .line 795
    .local v0, "flagBit":I
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->flagToString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 796
    not-int v1, v0

    #@1d
    and-int/2addr p1, v1

    #@1e
    .line 797
    if-eqz p1, :cond_0

    #@20
    .line 798
    const-string/jumbo v1, ", "

    #@23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 801
    .end local v0    # "flagBit":I
    :cond_1
    const-string/jumbo v1, "]"

    #@2a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 790
    return-void
.end method

.method private static appendPackageNames(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 3
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "packageNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 762
    const-string/jumbo v2, "packageNames:"

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    .line 763
    const-string/jumbo v2, "["

    #@9
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 764
    if-eqz p1, :cond_1

    #@e
    .line 765
    array-length v1, p1

    #@f
    .line 766
    .local v1, "packageNameCount":I
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@12
    .line 767
    aget-object v2, p1, v0

    #@14
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 768
    add-int/lit8 v2, v1, -0x1

    #@19
    if-ge v0, v2, :cond_0

    #@1b
    .line 769
    const-string/jumbo v2, ", "

    #@1e
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 766
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 773
    .end local v0    # "i":I
    .end local v1    # "packageNameCount":I
    :cond_1
    const-string/jumbo v2, "]"

    #@27
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 761
    return-void
.end method

.method public static capabilityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "capability"    # I

    #@0
    .prologue
    .line 911
    packed-switch p0, :pswitch_data_0

    #@3
    .line 921
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 913
    :pswitch_1
    const-string/jumbo v0, "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"

    #@a
    return-object v0

    #@b
    .line 915
    :pswitch_2
    const-string/jumbo v0, "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"

    #@e
    return-object v0

    #@f
    .line 917
    :pswitch_3
    const-string/jumbo v0, "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    #@12
    return-object v0

    #@13
    .line 919
    :pswitch_4
    const-string/jumbo v0, "CAPABILITY_CAN_FILTER_KEY_EVENTS"

    #@16
    return-object v0

    #@17
    .line 911
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static feedbackTypeToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "feedbackType"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 827
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "["

    #@9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 828
    :goto_0
    if-eqz p0, :cond_6

    #@e
    .line 829
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@11
    move-result v2

    #@12
    shl-int v1, v3, v2

    #@14
    .line 830
    .local v1, "feedbackTypeFlag":I
    not-int v2, v1

    #@15
    and-int/2addr p0, v2

    #@16
    .line 831
    sparse-switch v1, :sswitch_data_0

    #@19
    goto :goto_0

    #@1a
    .line 851
    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@1d
    move-result v2

    #@1e
    if-le v2, v3, :cond_0

    #@20
    .line 852
    const-string/jumbo v2, ", "

    #@23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 854
    :cond_0
    const-string/jumbo v2, "FEEDBACK_SPOKEN"

    #@29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    goto :goto_0

    #@2d
    .line 833
    :sswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@30
    move-result v2

    #@31
    if-le v2, v3, :cond_1

    #@33
    .line 834
    const-string/jumbo v2, ", "

    #@36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 836
    :cond_1
    const-string/jumbo v2, "FEEDBACK_AUDIBLE"

    #@3c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    goto :goto_0

    #@40
    .line 839
    :sswitch_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@43
    move-result v2

    #@44
    if-le v2, v3, :cond_2

    #@46
    .line 840
    const-string/jumbo v2, ", "

    #@49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 842
    :cond_2
    const-string/jumbo v2, "FEEDBACK_HAPTIC"

    #@4f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    goto :goto_0

    #@53
    .line 845
    :sswitch_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@56
    move-result v2

    #@57
    if-le v2, v3, :cond_3

    #@59
    .line 846
    const-string/jumbo v2, ", "

    #@5c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 848
    :cond_3
    const-string/jumbo v2, "FEEDBACK_GENERIC"

    #@62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    goto :goto_0

    #@66
    .line 857
    :sswitch_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@69
    move-result v2

    #@6a
    if-le v2, v3, :cond_4

    #@6c
    .line 858
    const-string/jumbo v2, ", "

    #@6f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    .line 860
    :cond_4
    const-string/jumbo v2, "FEEDBACK_VISUAL"

    #@75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    goto :goto_0

    #@79
    .line 863
    :sswitch_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@7c
    move-result v2

    #@7d
    if-le v2, v3, :cond_5

    #@7f
    .line 864
    const-string/jumbo v2, ", "

    #@82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 866
    :cond_5
    const-string/jumbo v2, "FEEDBACK_BRAILLE"

    #@88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    goto :goto_0

    #@8c
    .line 870
    .end local v1    # "feedbackTypeFlag":I
    :cond_6
    const-string/jumbo v2, "]"

    #@8f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    .line 871
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v2

    #@96
    return-object v2

    #@97
    .line 831
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
    .line 882
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 898
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 884
    :sswitch_0
    const-string/jumbo v0, "DEFAULT"

    #@8
    return-object v0

    #@9
    .line 886
    :sswitch_1
    const-string/jumbo v0, "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"

    #@c
    return-object v0

    #@d
    .line 888
    :sswitch_2
    const-string/jumbo v0, "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"

    #@10
    return-object v0

    #@11
    .line 890
    :sswitch_3
    const-string/jumbo v0, "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    #@14
    return-object v0

    #@15
    .line 892
    :sswitch_4
    const-string/jumbo v0, "FLAG_REPORT_VIEW_IDS"

    #@18
    return-object v0

    #@19
    .line 894
    :sswitch_5
    const-string/jumbo v0, "FLAG_REQUEST_FILTER_KEY_EVENTS"

    #@1c
    return-object v0

    #@1d
    .line 896
    :sswitch_6
    const-string/jumbo v0, "FLAG_RETRIEVE_INTERACTIVE_WINDOWS"

    #@20
    return-object v0

    #@21
    .line 882
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
    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    #@6
    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    #@c
    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@12
    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@15
    move-result-wide v0

    #@16
    iput-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    #@18
    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@1e
    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@24
    .line 690
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
    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@33
    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@39
    .line 693
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    #@3f
    .line 694
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    #@45
    .line 683
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 666
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
    .line 704
    if-ne p0, p1, :cond_0

    #@4
    .line 705
    return v4

    #@5
    .line 707
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 708
    return v3

    #@8
    .line 710
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
    .line 711
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 713
    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@16
    .line 714
    .local v0, "other":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 715
    iget-object v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 716
    return v3

    #@1f
    .line 718
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
    .line 719
    return v3

    #@2a
    .line 721
    :cond_4
    return v4
.end method

.method public getCanRetrieveWindowContent()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 592
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
    .line 607
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
    .line 930
    iget v4, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@2
    if-nez v4, :cond_0

    #@4
    .line 931
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@7
    move-result-object v4

    #@8
    return-object v4

    #@9
    .line 933
    :cond_0
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@b
    .line 934
    .local v0, "capabilities":I
    new-instance v3, Ljava/util/ArrayList;

    #@d
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 935
    .local v3, "capabilityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    #@12
    .line 936
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@15
    move-result v4

    #@16
    const/4 v5, 0x1

    #@17
    shl-int v1, v5, v4

    #@19
    .line 937
    .local v1, "capabilityBit":I
    not-int v4, v1

    #@1a
    and-int/2addr v0, v4

    #@1b
    .line 938
    sget-object v4, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    #@23
    .line 939
    .local v2, "capabilityInfo":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    if-eqz v2, :cond_1

    #@25
    .line 940
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    goto :goto_0

    #@29
    .line 943
    .end local v1    # "capabilityBit":I
    .end local v2    # "capabilityInfo":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    :cond_2
    return-object v3
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 638
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    #@0
    .prologue
    .line 566
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@2
    return-object v0
.end method

.method public getSettingsActivityName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 578
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 699
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

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 650
    iget v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 651
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    #@7
    return-object v2

    #@8
    .line 653
    :cond_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    .line 654
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@e
    .line 655
    iget v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    #@10
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@12
    .line 654
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@15
    move-result-object v0

    #@16
    .line 656
    .local v0, "description":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    #@18
    .line 657
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
    .line 659
    :cond_1
    return-object v5
.end method

.method public setCapabilities(I)V
    .locals 0
    .param p1, "capabilities"    # I

    #@0
    .prologue
    .line 624
    iput p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@2
    .line 623
    return-void
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 544
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@6
    .line 543
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 727
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    #@7
    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendEventTypes(Ljava/lang/StringBuilder;I)V

    #@a
    .line 728
    const-string/jumbo v1, ", "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 729
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    #@12
    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendPackageNames(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    #@15
    .line 730
    const-string/jumbo v1, ", "

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 731
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@1d
    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendFeedbackTypes(Ljava/lang/StringBuilder;I)V

    #@20
    .line 732
    const-string/jumbo v1, ", "

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 733
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
    .line 734
    const-string/jumbo v1, ", "

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 735
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@3a
    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendFlags(Ljava/lang/StringBuilder;I)V

    #@3d
    .line 736
    const-string/jumbo v1, ", "

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 737
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
    .line 738
    const-string/jumbo v1, ", "

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 739
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
    .line 740
    const-string/jumbo v1, ", "

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 741
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
    .line 742
    const-string/jumbo v1, ", "

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    .line 743
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@7b
    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendCapabilities(Ljava/lang/StringBuilder;I)V

    #@7e
    .line 744
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
    .line 533
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    #@2
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    #@4
    .line 534
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    #@6
    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    #@8
    .line 535
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@a
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@c
    .line 536
    iget-wide v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    #@e
    iput-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    #@10
    .line 537
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@12
    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@14
    .line 532
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flagz"    # I

    #@0
    .prologue
    .line 670
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 671
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@a
    .line 672
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 673
    iget-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 674
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 675
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mId:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 676
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    #@20
    const/4 v1, 0x0

    #@21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@24
    .line 677
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@29
    .line 678
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 679
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 680
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    #@35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@38
    .line 669
    return-void
.end method
