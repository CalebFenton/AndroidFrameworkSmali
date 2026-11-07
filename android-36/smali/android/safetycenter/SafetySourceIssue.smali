.class public final Landroid/safetycenter/SafetySourceIssue;
.super Ljava/lang/Object;
.source "SafetySourceIssue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/SafetySourceIssue$Notification;,
        Landroid/safetycenter/SafetySourceIssue$Builder;,
        Landroid/safetycenter/SafetySourceIssue$Action;,
        Landroid/safetycenter/SafetySourceIssue$IssueActionability;,
        Landroid/safetycenter/SafetySourceIssue$NotificationBehavior;,
        Landroid/safetycenter/SafetySourceIssue$IssueCategory;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/SafetySourceIssue;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ISSUE_ACTIONABILITY_AUTOMATIC:I = 0xc8

.field public static final whitelist ISSUE_ACTIONABILITY_MANUAL:I = 0x0

.field public static final whitelist ISSUE_ACTIONABILITY_TIP:I = 0x64

.field public static final whitelist ISSUE_CATEGORY_ACCOUNT:I = 0xc8

.field public static final whitelist ISSUE_CATEGORY_DATA:I = 0x190

.field public static final whitelist ISSUE_CATEGORY_DEVICE:I = 0x64

.field public static final whitelist ISSUE_CATEGORY_GENERAL:I = 0x12c

.field public static final whitelist ISSUE_CATEGORY_PASSWORDS:I = 0x1f4

.field public static final whitelist ISSUE_CATEGORY_PERSONAL_SAFETY:I = 0x258

.field public static final whitelist NOTIFICATION_BEHAVIOR_DELAYED:I = 0xc8

.field public static final whitelist NOTIFICATION_BEHAVIOR_IMMEDIATELY:I = 0x12c

.field public static final whitelist NOTIFICATION_BEHAVIOR_NEVER:I = 0x64

.field public static final whitelist NOTIFICATION_BEHAVIOR_UNSPECIFIED:I


# instance fields
.field private final blacklist mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetySourceIssue$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAttributionTitle:Ljava/lang/CharSequence;

.field private final blacklist mCustomNotification:Landroid/safetycenter/SafetySourceIssue$Notification;

.field private final blacklist mDeduplicationId:Ljava/lang/String;

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mIssueActionability:I

.field private final blacklist mIssueCategory:I

.field private final blacklist mIssueTypeId:Ljava/lang/String;

.field private final blacklist mNotificationBehavior:I

.field private final blacklist mOnDismissPendingIntent:Landroid/app/PendingIntent;

.field private final blacklist mSeverityLevel:I

.field private final blacklist mSubtitle:Ljava/lang/CharSequence;

.field private final blacklist mSummary:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActions(Landroid/safetycenter/SafetySourceIssue;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue;->mActions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAttributionTitle(Landroid/safetycenter/SafetySourceIssue;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomNotification(Landroid/safetycenter/SafetySourceIssue;)Landroid/safetycenter/SafetySourceIssue$Notification;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue;->mCustomNotification:Landroid/safetycenter/SafetySourceIssue$Notification;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeduplicationId(Landroid/safetycenter/SafetySourceIssue;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue;->mDeduplicationId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/safetycenter/SafetySourceIssue;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIssueActionability(Landroid/safetycenter/SafetySourceIssue;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueActionability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIssueCategory(Landroid/safetycenter/SafetySourceIssue;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueCategory:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIssueTypeId(Landroid/safetycenter/SafetySourceIssue;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueTypeId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationBehavior(Landroid/safetycenter/SafetySourceIssue;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/SafetySourceIssue;->mNotificationBehavior:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDismissPendingIntent(Landroid/safetycenter/SafetySourceIssue;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue;->mOnDismissPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeverityLevel(Landroid/safetycenter/SafetySourceIssue;)I
    .registers 1

    iget p0, p0, Landroid/safetycenter/SafetySourceIssue;->mSeverityLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtitle(Landroid/safetycenter/SafetySourceIssue;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSummary(Landroid/safetycenter/SafetySourceIssue;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/safetycenter/SafetySourceIssue;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateIssueActionability(I)I
    .registers 1

    invoke-static {p0}, Landroid/safetycenter/SafetySourceIssue;->validateIssueActionability(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateIssueCategory(I)I
    .registers 1

    invoke-static {p0}, Landroid/safetycenter/SafetySourceIssue;->validateIssueCategory(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateNotificationBehavior(I)I
    .registers 1

    invoke-static {p0}, Landroid/safetycenter/SafetySourceIssue;->validateNotificationBehavior(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateSeverityLevel(I)I
    .registers 1

    invoke-static {p0}, Landroid/safetycenter/SafetySourceIssue;->validateSeverityLevel(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 212
    new-instance v0, Landroid/safetycenter/SafetySourceIssue$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetySourceIssue$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetySourceIssue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/safetycenter/SafetySourceIssue$Notification;ILjava/lang/CharSequence;Ljava/lang/String;I)V
    .registers 15
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "subtitle"    # Ljava/lang/CharSequence;
    .param p4, "summary"    # Ljava/lang/CharSequence;
    .param p5, "severityLevel"    # I
    .param p6, "issueCategory"    # I
    .param p8, "onDismissPendingIntent"    # Landroid/app/PendingIntent;
    .param p9, "issueTypeId"    # Ljava/lang/String;
    .param p10, "customNotification"    # Landroid/safetycenter/SafetySourceIssue$Notification;
    .param p11, "notificationBehavior"    # I
    .param p12, "attributionTitle"    # Ljava/lang/CharSequence;
    .param p13, "deduplicationId"    # Ljava/lang/String;
    .param p14, "issueActionability"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "II",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetySourceIssue$Action;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Landroid/safetycenter/SafetySourceIssue$Notification;",
            "I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 280
    .local p7, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetySourceIssue$Action;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Landroid/safetycenter/SafetySourceIssue;->mId:Ljava/lang/String;

    .line 282
    iput-object p2, p0, Landroid/safetycenter/SafetySourceIssue;->mTitle:Ljava/lang/CharSequence;

    .line 283
    iput-object p3, p0, Landroid/safetycenter/SafetySourceIssue;->mSubtitle:Ljava/lang/CharSequence;

    .line 284
    iput-object p4, p0, Landroid/safetycenter/SafetySourceIssue;->mSummary:Ljava/lang/CharSequence;

    .line 285
    iput p5, p0, Landroid/safetycenter/SafetySourceIssue;->mSeverityLevel:I

    .line 286
    iput p6, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueCategory:I

    .line 287
    iput-object p7, p0, Landroid/safetycenter/SafetySourceIssue;->mActions:Ljava/util/List;

    .line 288
    iput-object p8, p0, Landroid/safetycenter/SafetySourceIssue;->mOnDismissPendingIntent:Landroid/app/PendingIntent;

    .line 289
    iput-object p9, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueTypeId:Ljava/lang/String;

    .line 290
    iput-object p10, p0, Landroid/safetycenter/SafetySourceIssue;->mCustomNotification:Landroid/safetycenter/SafetySourceIssue$Notification;

    .line 291
    iput p11, p0, Landroid/safetycenter/SafetySourceIssue;->mNotificationBehavior:I

    .line 292
    iput-object p12, p0, Landroid/safetycenter/SafetySourceIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    .line 293
    iput-object p13, p0, Landroid/safetycenter/SafetySourceIssue;->mDeduplicationId:Ljava/lang/String;

    .line 294
    iput p14, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueActionability:I

    .line 295
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/safetycenter/SafetySourceIssue$Notification;ILjava/lang/CharSequence;Ljava/lang/String;ILandroid/safetycenter/SafetySourceIssue-IA;)V
    .registers 16

    invoke-direct/range {p0 .. p14}, Landroid/safetycenter/SafetySourceIssue;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/safetycenter/SafetySourceIssue$Notification;ILjava/lang/CharSequence;Ljava/lang/String;I)V

    return-void
.end method

.method private static blacklist validateIssueActionability(I)I
    .registers 4
    .param p0, "value"    # I

    .line 1503
    sparse-switch p0, :sswitch_data_1e

    .line 1510
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected IssueActionability for SafetySourceIssue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1507
    :sswitch_1c
    return p0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_1c
        0x64 -> :sswitch_1c
        0xc8 -> :sswitch_1c
    .end sparse-switch
.end method

.method private static blacklist validateIssueCategory(I)I
    .registers 4
    .param p0, "value"    # I

    .line 1467
    sparse-switch p0, :sswitch_data_28

    .line 1474
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1475
    sparse-switch p0, :sswitch_data_36

    goto :goto_f

    .line 1471
    :sswitch_d
    return p0

    .line 1479
    :sswitch_e
    return p0

    .line 1483
    :cond_f
    :goto_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected IssueCategory for SafetySourceIssue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_28
    .sparse-switch
        0x64 -> :sswitch_d
        0xc8 -> :sswitch_d
        0x12c -> :sswitch_d
    .end sparse-switch

    :sswitch_data_36
    .sparse-switch
        0x190 -> :sswitch_e
        0x1f4 -> :sswitch_e
        0x258 -> :sswitch_e
    .end sparse-switch
.end method

.method private static blacklist validateNotificationBehavior(I)I
    .registers 4
    .param p0, "value"    # I

    .line 1489
    sparse-switch p0, :sswitch_data_1e

    .line 1497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected NotificationBehavior for SafetySourceIssue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1494
    :sswitch_1c
    return p0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_1c
        0x64 -> :sswitch_1c
        0xc8 -> :sswitch_1c
        0x12c -> :sswitch_1c
    .end sparse-switch
.end method

.method private static blacklist validateSeverityLevel(I)I
    .registers 4
    .param p0, "value"    # I

    .line 1450
    sparse-switch p0, :sswitch_data_26

    .line 1461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected SeverityLevel for SafetySourceIssue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1454
    :sswitch_1c
    return p0

    .line 1456
    :sswitch_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeverityLevel for SafetySourceIssue must not be SEVERITY_LEVEL_UNSPECIFIED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_26
    .sparse-switch
        0x64 -> :sswitch_1d
        0xc8 -> :sswitch_1c
        0x12c -> :sswitch_1c
        0x190 -> :sswitch_1c
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 545
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 546
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetySourceIssue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 547
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetySourceIssue;

    .line 548
    .local v1, "that":Landroid/safetycenter/SafetySourceIssue;
    iget v3, p0, Landroid/safetycenter/SafetySourceIssue;->mSeverityLevel:I

    iget v4, v1, Landroid/safetycenter/SafetySourceIssue;->mSeverityLevel:I

    if-ne v3, v4, :cond_8a

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue;->mId:Ljava/lang/String;

    .line 549
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8a

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue;->mTitle:Ljava/lang/CharSequence;

    .line 550
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8a

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue;->mSubtitle:Ljava/lang/CharSequence;

    .line 551
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8a

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue;->mSummary:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue;->mSummary:Ljava/lang/CharSequence;

    .line 552
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8a

    iget v3, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueCategory:I

    iget v4, v1, Landroid/safetycenter/SafetySourceIssue;->mIssueCategory:I

    if-ne v3, v4, :cond_8a

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue;->mActions:Ljava/util/List;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue;->mActions:Ljava/util/List;

    .line 554
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue;->mOnDismissPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue;->mOnDismissPendingIntent:Landroid/app/PendingIntent;

    .line 555
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueTypeId:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue;->mIssueTypeId:Ljava/lang/String;

    .line 556
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8a

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue;->mCustomNotification:Landroid/safetycenter/SafetySourceIssue$Notification;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue;->mCustomNotification:Landroid/safetycenter/SafetySourceIssue$Notification;

    .line 557
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    iget v3, p0, Landroid/safetycenter/SafetySourceIssue;->mNotificationBehavior:I

    iget v4, v1, Landroid/safetycenter/SafetySourceIssue;->mNotificationBehavior:I

    if-ne v3, v4, :cond_8a

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    .line 559
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8a

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue;->mDeduplicationId:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue;->mDeduplicationId:Ljava/lang/String;

    .line 560
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8a

    iget v3, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueActionability:I

    iget v4, v1, Landroid/safetycenter/SafetySourceIssue;->mIssueActionability:I

    if-ne v3, v4, :cond_8a

    goto :goto_8b

    :cond_8a
    move v0, v2

    .line 548
    :goto_8b
    return v0
.end method

.method public whitelist getActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetySourceIssue$Action;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAttributionTitle()Ljava/lang/CharSequence;
    .registers 3

    .line 339
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 343
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    return-object v0

    .line 340
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCustomNotification()Landroid/safetycenter/SafetySourceIssue$Notification;
    .registers 3

    .line 421
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 425
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mCustomNotification:Landroid/safetycenter/SafetySourceIssue$Notification;

    return-object v0

    .line 422
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDeduplicationId()Ljava/lang/String;
    .registers 3

    .line 487
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 491
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mDeduplicationId:Ljava/lang/String;

    return-object v0

    .line 488
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 308
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIssueActionability()I
    .registers 3

    .line 511
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 515
    iget v0, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueActionability:I

    return v0

    .line 512
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getIssueCategory()I
    .registers 2

    .line 359
    iget v0, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueCategory:I

    return v0
.end method

.method public whitelist getIssueTypeId()Ljava/lang/String;
    .registers 2

    .line 403
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNotificationBehavior()I
    .registers 3

    .line 453
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 457
    iget v0, p0, Landroid/safetycenter/SafetySourceIssue;->mNotificationBehavior:I

    return v0

    .line 454
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getOnDismissPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 385
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mOnDismissPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getSeverityLevel()I
    .registers 2

    .line 349
    iget v0, p0, Landroid/safetycenter/SafetySourceIssue;->mSeverityLevel:I

    return v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 320
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 326
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 314
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 15

    .line 566
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mId:Ljava/lang/String;

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/safetycenter/SafetySourceIssue;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue;->mSummary:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/safetycenter/SafetySourceIssue;->mSeverityLevel:I

    .line 571
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueCategory:I

    .line 572
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/safetycenter/SafetySourceIssue;->mActions:Ljava/util/List;

    iget-object v7, p0, Landroid/safetycenter/SafetySourceIssue;->mOnDismissPendingIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueTypeId:Ljava/lang/String;

    iget-object v9, p0, Landroid/safetycenter/SafetySourceIssue;->mCustomNotification:Landroid/safetycenter/SafetySourceIssue$Notification;

    iget v10, p0, Landroid/safetycenter/SafetySourceIssue;->mNotificationBehavior:I

    .line 577
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Landroid/safetycenter/SafetySourceIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    iget-object v12, p0, Landroid/safetycenter/SafetySourceIssue;->mDeduplicationId:Ljava/lang/String;

    iget v13, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueActionability:I

    .line 580
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array/range {v0 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    .line 566
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetySourceIssue{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSeverityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/SafetySourceIssue;->mSeverityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIssueCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue;->mActions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnDismissPendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue;->mOnDismissPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIssueTypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueTypeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCustomNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue;->mCustomNotification:Landroid/safetycenter/SafetySourceIssue$Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotificationBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/SafetySourceIssue;->mNotificationBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAttributionTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeduplicationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue;->mDeduplicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIssueActionability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueActionability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 525
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 527
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 528
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 529
    iget v0, p0, Landroid/safetycenter/SafetySourceIssue;->mSeverityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget v0, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 532
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mOnDismissPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 533
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueTypeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 534
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 535
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mCustomNotification:Landroid/safetycenter/SafetySourceIssue$Notification;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 536
    iget v0, p0, Landroid/safetycenter/SafetySourceIssue;->mNotificationBehavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mAttributionTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 538
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue;->mDeduplicationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 539
    iget v0, p0, Landroid/safetycenter/SafetySourceIssue;->mIssueActionability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    :cond_4c
    return-void
.end method
