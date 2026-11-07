.class public final Landroid/safetycenter/SafetyCenterData$Builder;
.super Ljava/lang/Object;
.source "SafetyCenterData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mDismissedIssues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterIssue;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEntriesOrGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterEntryOrGroup;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mIssues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterIssue;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStaticEntryGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterStaticEntryGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStatus:Landroid/safetycenter/SafetyCenterStatus;


# direct methods
.method public constructor whitelist <init>(Landroid/safetycenter/SafetyCenterData;)V
    .registers 4
    .param p1, "safetyCenterData"    # Landroid/safetycenter/SafetyCenterData;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mIssues:Ljava/util/List;

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mEntriesOrGroups:Ljava/util/List;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mStaticEntryGroups:Ljava/util/List;

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mDismissedIssues:Ljava/util/List;

    .line 372
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mExtras:Landroid/os/Bundle;

    .line 384
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 388
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterData;->-$$Nest$fgetmStatus(Landroid/safetycenter/SafetyCenterData;)Landroid/safetycenter/SafetyCenterStatus;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mStatus:Landroid/safetycenter/SafetyCenterStatus;

    .line 390
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mIssues:Ljava/util/List;

    invoke-static {p1}, Landroid/safetycenter/SafetyCenterData;->-$$Nest$fgetmIssues(Landroid/safetycenter/SafetyCenterData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 391
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mEntriesOrGroups:Ljava/util/List;

    invoke-static {p1}, Landroid/safetycenter/SafetyCenterData;->-$$Nest$fgetmEntriesOrGroups(Landroid/safetycenter/SafetyCenterData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 392
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mStaticEntryGroups:Ljava/util/List;

    invoke-static {p1}, Landroid/safetycenter/SafetyCenterData;->-$$Nest$fgetmStaticEntryGroups(Landroid/safetycenter/SafetyCenterData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 393
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mDismissedIssues:Ljava/util/List;

    invoke-static {p1}, Landroid/safetycenter/SafetyCenterData;->-$$Nest$fgetmDismissedIssues(Landroid/safetycenter/SafetyCenterData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 394
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterData;->-$$Nest$fgetmExtras(Landroid/safetycenter/SafetyCenterData;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mExtras:Landroid/os/Bundle;

    .line 395
    return-void

    .line 385
    :cond_61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/safetycenter/SafetyCenterStatus;)V
    .registers 4
    .param p1, "status"    # Landroid/safetycenter/SafetyCenterStatus;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mIssues:Ljava/util/List;

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mEntriesOrGroups:Ljava/util/List;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mStaticEntryGroups:Ljava/util/List;

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mDismissedIssues:Ljava/util/List;

    .line 372
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mExtras:Landroid/os/Bundle;

    .line 375
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 379
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/safetycenter/SafetyCenterStatus;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mStatus:Landroid/safetycenter/SafetyCenterStatus;

    .line 380
    return-void

    .line 376
    :cond_32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addDismissedIssue(Landroid/safetycenter/SafetyCenterIssue;)Landroid/safetycenter/SafetyCenterData$Builder;
    .registers 4
    .param p1, "dismissedSafetyCenterIssue"    # Landroid/safetycenter/SafetyCenterIssue;

    .line 425
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mDismissedIssues:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/safetycenter/SafetyCenterIssue;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    return-object p0
.end method

.method public whitelist addEntryOrGroup(Landroid/safetycenter/SafetyCenterEntryOrGroup;)Landroid/safetycenter/SafetyCenterData$Builder;
    .registers 4
    .param p1, "safetyCenterEntryOrGroup"    # Landroid/safetycenter/SafetyCenterEntryOrGroup;

    .line 409
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mEntriesOrGroups:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/safetycenter/SafetyCenterEntryOrGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    return-object p0
.end method

.method public whitelist addIssue(Landroid/safetycenter/SafetyCenterIssue;)Landroid/safetycenter/SafetyCenterData$Builder;
    .registers 4
    .param p1, "safetyCenterIssue"    # Landroid/safetycenter/SafetyCenterIssue;

    .line 400
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mIssues:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/safetycenter/SafetyCenterIssue;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    return-object p0
.end method

.method public whitelist addStaticEntryGroup(Landroid/safetycenter/SafetyCenterStaticEntryGroup;)Landroid/safetycenter/SafetyCenterData$Builder;
    .registers 4
    .param p1, "safetyCenterStaticEntryGroup"    # Landroid/safetycenter/SafetyCenterStaticEntryGroup;

    .line 417
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mStaticEntryGroups:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/safetycenter/SafetyCenterStaticEntryGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    return-object p0
.end method

.method public whitelist build()Landroid/safetycenter/SafetyCenterData;
    .registers 11

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mIssues:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 496
    .local v4, "issues":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterIssue;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mEntriesOrGroups:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 497
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 498
    .local v5, "entriesOrGroups":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterEntryOrGroup;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mStaticEntryGroups:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 499
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 500
    .local v6, "staticEntryGroups":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterStaticEntryGroup;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mDismissedIssues:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 501
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 503
    .local v7, "dismissedIssues":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterIssue;>;"
    new-instance v2, Landroid/safetycenter/SafetyCenterData;

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mStatus:Landroid/safetycenter/SafetyCenterStatus;

    iget-object v8, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/safetycenter/SafetyCenterData;-><init>(Landroid/safetycenter/SafetyCenterStatus;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Landroid/safetycenter/SafetyCenterData-IA;)V

    return-object v2
.end method

.method public whitelist clearDismissedIssues()Landroid/safetycenter/SafetyCenterData$Builder;
    .registers 2

    .line 486
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mDismissedIssues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 487
    return-object p0
.end method

.method public whitelist clearEntriesOrGroups()Landroid/safetycenter/SafetyCenterData$Builder;
    .registers 2

    .line 466
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mEntriesOrGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 467
    return-object p0
.end method

.method public whitelist clearExtras()Landroid/safetycenter/SafetyCenterData$Builder;
    .registers 2

    .line 446
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mExtras:Landroid/os/Bundle;

    .line 447
    return-object p0
.end method

.method public whitelist clearIssues()Landroid/safetycenter/SafetyCenterData$Builder;
    .registers 2

    .line 456
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mIssues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 457
    return-object p0
.end method

.method public whitelist clearStaticEntryGroups()Landroid/safetycenter/SafetyCenterData$Builder;
    .registers 2

    .line 476
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mStaticEntryGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 477
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/safetycenter/SafetyCenterData$Builder;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 436
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterData$Builder;->mExtras:Landroid/os/Bundle;

    .line 437
    return-object p0
.end method
