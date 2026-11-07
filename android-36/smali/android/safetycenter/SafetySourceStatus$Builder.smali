.class public final Landroid/safetycenter/SafetySourceStatus$Builder;
.super Ljava/lang/Object;
.source "SafetySourceStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetySourceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEnabled:Z

.field private blacklist mIconAction:Landroid/safetycenter/SafetySourceStatus$IconAction;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private final blacklist mSeverityLevel:I

.field private final blacklist mSummary:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/safetycenter/SafetySourceStatus;)V
    .registers 4
    .param p1, "safetySourceStatus"    # Landroid/safetycenter/SafetySourceStatus;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mEnabled:Z

    .line 350
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 354
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-static {p1}, Landroid/safetycenter/SafetySourceStatus;->-$$Nest$fgetmTitle(Landroid/safetycenter/SafetySourceStatus;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 356
    invoke-static {p1}, Landroid/safetycenter/SafetySourceStatus;->-$$Nest$fgetmSummary(Landroid/safetycenter/SafetySourceStatus;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 357
    invoke-static {p1}, Landroid/safetycenter/SafetySourceStatus;->-$$Nest$fgetmSeverityLevel(Landroid/safetycenter/SafetySourceStatus;)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mSeverityLevel:I

    .line 358
    invoke-static {p1}, Landroid/safetycenter/SafetySourceStatus;->-$$Nest$fgetmPendingIntent(Landroid/safetycenter/SafetySourceStatus;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 359
    invoke-static {p1}, Landroid/safetycenter/SafetySourceStatus;->-$$Nest$fgetmIconAction(Landroid/safetycenter/SafetySourceStatus;)Landroid/safetycenter/SafetySourceStatus$IconAction;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mIconAction:Landroid/safetycenter/SafetySourceStatus$IconAction;

    .line 360
    invoke-static {p1}, Landroid/safetycenter/SafetySourceStatus;->-$$Nest$fgetmEnabled(Landroid/safetycenter/SafetySourceStatus;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mEnabled:Z

    .line 361
    return-void

    .line 351
    :cond_34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "summary"    # Ljava/lang/CharSequence;
    .param p3, "severityLevel"    # I

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mEnabled:Z

    .line 342
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 343
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 344
    invoke-static {p3}, Landroid/safetycenter/SafetySourceStatus;->-$$Nest$smvalidateSeverityLevel(I)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mSeverityLevel:I

    .line 345
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/safetycenter/SafetySourceStatus;
    .registers 9

    .line 411
    new-instance v0, Landroid/safetycenter/SafetySourceStatus;

    iget-object v1, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mSummary:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mSeverityLevel:I

    iget-object v4, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mIconAction:Landroid/safetycenter/SafetySourceStatus$IconAction;

    iget-boolean v6, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mEnabled:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/safetycenter/SafetySourceStatus;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;Landroid/safetycenter/SafetySourceStatus$IconAction;ZLandroid/safetycenter/SafetySourceStatus-IA;)V

    return-object v0
.end method

.method public whitelist setEnabled(Z)Landroid/safetycenter/SafetySourceStatus$Builder;
    .registers 4
    .param p1, "enabled"    # Z

    .line 400
    if-nez p1, :cond_b

    iget v0, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mSeverityLevel:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    const-string v1, "Safety source status must have a severity level of SEVERITY_LEVEL_UNSPECIFIED when disabled"

    invoke-static {v0, v1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 404
    iput-boolean p1, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mEnabled:Z

    .line 405
    return-object p0
.end method

.method public whitelist setIconAction(Landroid/safetycenter/SafetySourceStatus$IconAction;)Landroid/safetycenter/SafetySourceStatus$Builder;
    .registers 2
    .param p1, "iconAction"    # Landroid/safetycenter/SafetySourceStatus$IconAction;

    .line 386
    iput-object p1, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mIconAction:Landroid/safetycenter/SafetySourceStatus$IconAction;

    .line 387
    return-object p0
.end method

.method public whitelist setPendingIntent(Landroid/app/PendingIntent;)Landroid/safetycenter/SafetySourceStatus$Builder;
    .registers 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 372
    if-eqz p1, :cond_b

    .line 373
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 372
    :goto_c
    const-string v1, "Safety source status pending intent must start an activity"

    invoke-static {v0, v1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 375
    iput-object p1, p0, Landroid/safetycenter/SafetySourceStatus$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 376
    return-object p0
.end method
