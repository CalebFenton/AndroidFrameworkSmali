.class Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynamicPropertyDefaults"
.end annotation


# instance fields
.field private final blacklist mEventTypesDefault:I

.field private final blacklist mFeedbackTypeDefault:I

.field private final blacklist mFlagsDefault:I

.field private final blacklist mInteractiveUiTimeoutDefault:I

.field private final blacklist mMotionEventSourcesDefault:I

.field private final blacklist mNonInteractiveUiTimeoutDefault:I

.field private final blacklist mNotificationTimeoutDefault:J

.field private final blacklist mObservedMotionEventSourcesDefault:I

.field private final blacklist mPackageNamesDefault:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEventTypesDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I
    .registers 1

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mEventTypesDefault:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeedbackTypeDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I
    .registers 1

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mFeedbackTypeDefault:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlagsDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I
    .registers 1

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mFlagsDefault:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInteractiveUiTimeoutDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I
    .registers 1

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mInteractiveUiTimeoutDefault:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMotionEventSourcesDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I
    .registers 1

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mMotionEventSourcesDefault:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNonInteractiveUiTimeoutDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I
    .registers 1

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mNonInteractiveUiTimeoutDefault:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationTimeoutDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)J
    .registers 3

    iget-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mNotificationTimeoutDefault:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmObservedMotionEventSourcesDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)I
    .registers 1

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mObservedMotionEventSourcesDefault:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageNamesDefault(Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mPackageNamesDefault:Ljava/util/List;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mEventTypesDefault:I

    .line 673
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 674
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mPackageNamesDefault:Ljava/util/List;

    goto :goto_17

    .line 676
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mPackageNamesDefault:Ljava/util/List;

    .line 678
    :goto_17
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mFeedbackTypeDefault:I

    .line 679
    iget-wide v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mNotificationTimeoutDefault:J

    .line 680
    invoke-static {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->-$$Nest$fgetmNonInteractiveUiTimeout(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mNonInteractiveUiTimeoutDefault:I

    .line 681
    invoke-static {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->-$$Nest$fgetmInteractiveUiTimeout(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mInteractiveUiTimeoutDefault:I

    .line 682
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mFlagsDefault:I

    .line 683
    invoke-static {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->-$$Nest$fgetmMotionEventSources(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mMotionEventSourcesDefault:I

    .line 684
    invoke-static {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->-$$Nest$fgetmObservedMotionEventSources(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo$DynamicPropertyDefaults;->mObservedMotionEventSourcesDefault:I

    .line 685
    return-void
.end method
