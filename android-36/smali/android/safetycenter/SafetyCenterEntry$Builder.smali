.class public final Landroid/safetycenter/SafetyCenterEntry$Builder;
.super Ljava/lang/Object;
.source "SafetyCenterEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEnabled:Z

.field private blacklist mIconAction:Landroid/safetycenter/SafetyCenterEntry$IconAction;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mSeverityLevel:I

.field private blacklist mSeverityUnspecifiedIconType:I

.field private blacklist mSummary:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/safetycenter/SafetyCenterEntry;)V
    .registers 3
    .param p1, "safetyCenterEntry"    # Landroid/safetycenter/SafetyCenterEntry;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mSeverityLevel:I

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mSeverityUnspecifiedIconType:I

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mEnabled:Z

    .line 332
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntry;->-$$Nest$fgetmId(Landroid/safetycenter/SafetyCenterEntry;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mId:Ljava/lang/String;

    .line 333
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntry;->-$$Nest$fgetmTitle(Landroid/safetycenter/SafetyCenterEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 334
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntry;->-$$Nest$fgetmSummary(Landroid/safetycenter/SafetyCenterEntry;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 335
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntry;->-$$Nest$fgetmSeverityLevel(Landroid/safetycenter/SafetyCenterEntry;)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mSeverityLevel:I

    .line 336
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntry;->-$$Nest$fgetmSeverityUnspecifiedIconType(Landroid/safetycenter/SafetyCenterEntry;)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mSeverityUnspecifiedIconType:I

    .line 337
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntry;->-$$Nest$fgetmEnabled(Landroid/safetycenter/SafetyCenterEntry;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mEnabled:Z

    .line 338
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntry;->-$$Nest$fgetmPendingIntent(Landroid/safetycenter/SafetyCenterEntry;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 339
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntry;->-$$Nest$fgetmIconAction(Landroid/safetycenter/SafetyCenterEntry;)Landroid/safetycenter/SafetyCenterEntry$IconAction;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mIconAction:Landroid/safetycenter/SafetyCenterEntry$IconAction;

    .line 340
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mSeverityLevel:I

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mSeverityUnspecifiedIconType:I

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mEnabled:Z

    .line 326
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mId:Ljava/lang/String;

    .line 327
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 328
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/safetycenter/SafetyCenterEntry;
    .registers 11

    .line 417
    new-instance v0, Landroid/safetycenter/SafetyCenterEntry;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mSummary:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mSeverityLevel:I

    iget v5, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mSeverityUnspecifiedIconType:I

    iget-boolean v6, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mEnabled:Z

    iget-object v7, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mIconAction:Landroid/safetycenter/SafetyCenterEntry$IconAction;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/safetycenter/SafetyCenterEntry;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZLandroid/app/PendingIntent;Landroid/safetycenter/SafetyCenterEntry$IconAction;Landroid/safetycenter/SafetyCenterEntry-IA;)V

    return-object v0
.end method

.method public whitelist setEnabled(Z)Landroid/safetycenter/SafetyCenterEntry$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 388
    iput-boolean p1, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mEnabled:Z

    .line 389
    return-object p0
.end method

.method public whitelist setIconAction(ILandroid/app/PendingIntent;)Landroid/safetycenter/SafetyCenterEntry$Builder;
    .registers 4
    .param p1, "type"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 410
    new-instance v0, Landroid/safetycenter/SafetyCenterEntry$IconAction;

    invoke-direct {v0, p1, p2}, Landroid/safetycenter/SafetyCenterEntry$IconAction;-><init>(ILandroid/app/PendingIntent;)V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mIconAction:Landroid/safetycenter/SafetyCenterEntry$IconAction;

    .line 411
    return-object p0
.end method

.method public whitelist setIconAction(Landroid/safetycenter/SafetyCenterEntry$IconAction;)Landroid/safetycenter/SafetyCenterEntry$Builder;
    .registers 2
    .param p1, "iconAction"    # Landroid/safetycenter/SafetyCenterEntry$IconAction;

    .line 402
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mIconAction:Landroid/safetycenter/SafetyCenterEntry$IconAction;

    .line 403
    return-object p0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/safetycenter/SafetyCenterEntry$Builder;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 345
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mId:Ljava/lang/String;

    .line 346
    return-object p0
.end method

.method public whitelist setPendingIntent(Landroid/app/PendingIntent;)Landroid/safetycenter/SafetyCenterEntry$Builder;
    .registers 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 395
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 396
    return-object p0
.end method

.method public whitelist setSeverityLevel(I)Landroid/safetycenter/SafetyCenterEntry$Builder;
    .registers 3
    .param p1, "severityLevel"    # I

    .line 369
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntry;->-$$Nest$smvalidateEntrySeverityLevel(I)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mSeverityLevel:I

    .line 370
    return-object p0
.end method

.method public whitelist setSeverityUnspecifiedIconType(I)Landroid/safetycenter/SafetyCenterEntry$Builder;
    .registers 3
    .param p1, "severityUnspecifiedIconType"    # I

    .line 380
    nop

    .line 381
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterEntry;->-$$Nest$smvalidateSeverityUnspecifiedIconType(I)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mSeverityUnspecifiedIconType:I

    .line 382
    return-object p0
.end method

.method public whitelist setSummary(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterEntry$Builder;
    .registers 2
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 359
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 360
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterEntry$Builder;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 352
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntry$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 353
    return-object p0
.end method
