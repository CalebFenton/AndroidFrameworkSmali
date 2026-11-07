.class public final Landroid/safetycenter/SafetyCenterIssue$Builder;
.super Ljava/lang/Object;
.source "SafetyCenterIssue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterIssue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterIssue$Action;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAttributionTitle:Ljava/lang/CharSequence;

.field private blacklist mDismissible:Z

.field private blacklist mGroupId:Ljava/lang/String;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mSeverityLevel:I

.field private blacklist mShouldConfirmDismissal:Z

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mSummary:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/safetycenter/SafetyCenterIssue;)V
    .registers 4
    .param p1, "issue"    # Landroid/safetycenter/SafetyCenterIssue;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const/16 v0, 0x834

    iput v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mSeverityLevel:I

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mDismissible:Z

    .line 333
    iput-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mShouldConfirmDismissal:Z

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mActions:Ljava/util/List;

    .line 354
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue;->-$$Nest$fgetmId(Landroid/safetycenter/SafetyCenterIssue;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mId:Ljava/lang/String;

    .line 355
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue;->-$$Nest$fgetmTitle(Landroid/safetycenter/SafetyCenterIssue;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 356
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue;->-$$Nest$fgetmSubtitle(Landroid/safetycenter/SafetyCenterIssue;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 357
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue;->-$$Nest$fgetmSummary(Landroid/safetycenter/SafetyCenterIssue;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 358
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue;->-$$Nest$fgetmSeverityLevel(Landroid/safetycenter/SafetyCenterIssue;)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mSeverityLevel:I

    .line 359
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue;->-$$Nest$fgetmDismissible(Landroid/safetycenter/SafetyCenterIssue;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mDismissible:Z

    .line 360
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue;->-$$Nest$fgetmShouldConfirmDismissal(Landroid/safetycenter/SafetyCenterIssue;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mShouldConfirmDismissal:Z

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue;->-$$Nest$fgetmActions(Landroid/safetycenter/SafetyCenterIssue;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mActions:Ljava/util/List;

    .line 362
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue;->-$$Nest$fgetmAttributionTitle(Landroid/safetycenter/SafetyCenterIssue;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mAttributionTitle:Ljava/lang/CharSequence;

    .line 363
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue;->-$$Nest$fgetmGroupId(Landroid/safetycenter/SafetyCenterIssue;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mGroupId:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "summary"    # Ljava/lang/CharSequence;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const/16 v0, 0x834

    iput v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mSeverityLevel:I

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mDismissible:Z

    .line 333
    iput-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mShouldConfirmDismissal:Z

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mActions:Ljava/util/List;

    .line 347
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mId:Ljava/lang/String;

    .line 348
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 349
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 350
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/safetycenter/SafetyCenterIssue;
    .registers 13

    .line 473
    new-instance v0, Landroid/safetycenter/SafetyCenterIssue;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mSummary:Ljava/lang/CharSequence;

    iget v5, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mSeverityLevel:I

    iget-boolean v6, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mDismissible:Z

    iget-boolean v7, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mShouldConfirmDismissal:Z

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mActions:Ljava/util/List;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 481
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mAttributionTitle:Ljava/lang/CharSequence;

    iget-object v10, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mGroupId:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Landroid/safetycenter/SafetyCenterIssue;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLjava/util/List;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/safetycenter/SafetyCenterIssue-IA;)V

    .line 473
    return-object v0
.end method

.method public whitelist setActions(Ljava/util/List;)Landroid/safetycenter/SafetyCenterIssue$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterIssue$Action;",
            ">;)",
            "Landroid/safetycenter/SafetyCenterIssue$Builder;"
        }
    .end annotation

    .line 445
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterIssue$Action;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mActions:Ljava/util/List;

    .line 446
    return-object p0
.end method

.method public whitelist setAttributionTitle(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterIssue$Builder;
    .registers 4
    .param p1, "attributionTitle"    # Ljava/lang/CharSequence;

    .line 405
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 409
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mAttributionTitle:Ljava/lang/CharSequence;

    .line 410
    return-object p0

    .line 406
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDismissible(Z)Landroid/safetycenter/SafetyCenterIssue$Builder;
    .registers 2
    .param p1, "dismissible"    # Z

    .line 426
    iput-boolean p1, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mDismissible:Z

    .line 427
    return-object p0
.end method

.method public whitelist setGroupId(Ljava/lang/String;)Landroid/safetycenter/SafetyCenterIssue$Builder;
    .registers 4
    .param p1, "groupId"    # Ljava/lang/String;

    .line 462
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 466
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mGroupId:Ljava/lang/String;

    .line 467
    return-object p0

    .line 463
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/safetycenter/SafetyCenterIssue$Builder;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 369
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mId:Ljava/lang/String;

    .line 370
    return-object p0
.end method

.method public whitelist setSeverityLevel(I)Landroid/safetycenter/SafetyCenterIssue$Builder;
    .registers 3
    .param p1, "severityLevel"    # I

    .line 419
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue;->-$$Nest$smvalidateIssueSeverityLevel(I)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mSeverityLevel:I

    .line 420
    return-object p0
.end method

.method public whitelist setShouldConfirmDismissal(Z)Landroid/safetycenter/SafetyCenterIssue$Builder;
    .registers 2
    .param p1, "confirmDismissal"    # Z

    .line 435
    iput-boolean p1, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mShouldConfirmDismissal:Z

    .line 436
    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterIssue$Builder;
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 383
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mSubtitle:Ljava/lang/CharSequence;

    .line 384
    return-object p0
.end method

.method public whitelist setSummary(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterIssue$Builder;
    .registers 3
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 390
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 391
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterIssue$Builder;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 376
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 377
    return-object p0
.end method
