.class public Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;,
        Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;,
        Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;,
        Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanMr2;
    }
.end annotation


# static fields
.field public static final CAPABILITY_CAN_FILTER_KEY_EVENTS:I = 0x8

.field public static final CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x4

.field public static final CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION:I = 0x2

.field public static final CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT:I = 0x1

.field public static final DEFAULT:I = 0x1

.field public static final FEEDBACK_ALL_MASK:I = -0x1

.field public static final FEEDBACK_BRAILLE:I = 0x20

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x8

.field public static final FLAG_REQUEST_FILTER_KEY_EVENTS:I = 0x20

.field public static final FLAG_REQUEST_TOUCH_EXPLORATION_MODE:I = 0x4

.field private static final IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x12

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 112
    new-instance v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanMr2;

    #@8
    invoke-direct {v0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanMr2;-><init>()V

    #@b
    sput-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    #@d
    .line 29
    :goto_0
    return-void

    #@e
    .line 113
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@10
    const/16 v1, 0xe

    #@12
    if-lt v0, v1, :cond_1

    #@14
    .line 114
    new-instance v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;

    #@16
    invoke-direct {v0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;-><init>()V

    #@19
    sput-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    #@1b
    goto :goto_0

    #@1c
    .line 116
    :cond_1
    new-instance v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;

    #@1e
    invoke-direct {v0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;-><init>()V

    #@21
    sput-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    #@23
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static capabilityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "capability"    # I

    #@0
    .prologue
    .line 438
    packed-switch p0, :pswitch_data_0

    #@3
    .line 448
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 440
    :pswitch_1
    const-string/jumbo v0, "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"

    #@a
    return-object v0

    #@b
    .line 442
    :pswitch_2
    const-string/jumbo v0, "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"

    #@e
    return-object v0

    #@f
    .line 444
    :pswitch_3
    const-string/jumbo v0, "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    #@12
    return-object v0

    #@13
    .line 446
    :pswitch_4
    const-string/jumbo v0, "CAPABILITY_CAN_FILTER_KEY_EVENTS"

    #@16
    return-object v0

    #@17
    .line 438
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
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 357
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "["

    #@9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 358
    :goto_0
    if-lez p0, :cond_1

    #@e
    .line 359
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@11
    move-result v2

    #@12
    shl-int v1, v3, v2

    #@14
    .line 360
    .local v1, "feedbackTypeFlag":I
    not-int v2, v1

    #@15
    and-int/2addr p0, v2

    #@16
    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@19
    move-result v2

    #@1a
    if-le v2, v3, :cond_0

    #@1c
    .line 362
    const-string/jumbo v2, ", "

    #@1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 364
    :cond_0
    sparse-switch v1, :sswitch_data_0

    #@25
    goto :goto_0

    #@26
    .line 375
    :sswitch_0
    const-string/jumbo v2, "FEEDBACK_SPOKEN"

    #@29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    goto :goto_0

    #@2d
    .line 366
    :sswitch_1
    const-string/jumbo v2, "FEEDBACK_AUDIBLE"

    #@30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    goto :goto_0

    #@34
    .line 369
    :sswitch_2
    const-string/jumbo v2, "FEEDBACK_HAPTIC"

    #@37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    goto :goto_0

    #@3b
    .line 372
    :sswitch_3
    const-string/jumbo v2, "FEEDBACK_GENERIC"

    #@3e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    goto :goto_0

    #@42
    .line 378
    :sswitch_4
    const-string/jumbo v2, "FEEDBACK_VISUAL"

    #@45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    goto :goto_0

    #@49
    .line 382
    .end local v1    # "feedbackTypeFlag":I
    :cond_1
    const-string/jumbo v2, "]"

    #@4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    return-object v2

    #@54
    .line 364
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public static flagToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "flag"    # I

    #@0
    .prologue
    .line 395
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 409
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 397
    :sswitch_0
    const-string/jumbo v0, "DEFAULT"

    #@8
    return-object v0

    #@9
    .line 399
    :sswitch_1
    const-string/jumbo v0, "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"

    #@c
    return-object v0

    #@d
    .line 401
    :sswitch_2
    const-string/jumbo v0, "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"

    #@10
    return-object v0

    #@11
    .line 403
    :sswitch_3
    const-string/jumbo v0, "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    #@14
    return-object v0

    #@15
    .line 405
    :sswitch_4
    const-string/jumbo v0, "FLAG_REPORT_VIEW_IDS"

    #@18
    return-object v0

    #@19
    .line 407
    :sswitch_5
    const-string/jumbo v0, "FLAG_REQUEST_FILTER_KEY_EVENTS"

    #@1c
    return-object v0

    #@1d
    .line 395
    nop

    #@1e
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

.method public static getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 1
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@0
    .prologue
    .line 331
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .locals 1
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@0
    .prologue
    .line 426
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@0
    .prologue
    .line 344
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@0
    .prologue
    .line 293
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getId(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@0
    .prologue
    .line 305
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getResolveInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@0
    .prologue
    .line 318
    sget-object v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;->IMPL:Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl;->getSettingsActivityName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
