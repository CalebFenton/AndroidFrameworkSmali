.class public final Landroid/safetycenter/SafetySourceData$Builder;
.super Ljava/lang/Object;
.source "SafetySourceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetySourceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mIssues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetySourceIssue;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStatus:Landroid/safetycenter/SafetySourceStatus;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetySourceData$Builder;->mIssues:Ljava/util/List;

    .line 269
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceData$Builder;->mExtras:Landroid/os/Bundle;

    .line 272
    return-void
.end method

.method public constructor whitelist <init>(Landroid/safetycenter/SafetySourceData;)V
    .registers 4
    .param p1, "safetySourceData"    # Landroid/safetycenter/SafetySourceData;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetySourceData$Builder;->mIssues:Ljava/util/List;

    .line 269
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceData$Builder;->mExtras:Landroid/os/Bundle;

    .line 277
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 281
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Landroid/safetycenter/SafetySourceData$Builder;->mIssues:Ljava/util/List;

    invoke-static {p1}, Landroid/safetycenter/SafetySourceData;->-$$Nest$fgetmIssues(Landroid/safetycenter/SafetySourceData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    invoke-static {p1}, Landroid/safetycenter/SafetySourceData;->-$$Nest$fgetmStatus(Landroid/safetycenter/SafetySourceData;)Landroid/safetycenter/SafetySourceStatus;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceData$Builder;->mStatus:Landroid/safetycenter/SafetySourceStatus;

    .line 284
    invoke-static {p1}, Landroid/safetycenter/SafetySourceData;->-$$Nest$fgetmExtras(Landroid/safetycenter/SafetySourceData;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceData$Builder;->mExtras:Landroid/os/Bundle;

    .line 285
    return-void

    .line 278
    :cond_31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getIssuesMaxSeverityLevelEnforcingUniqueIds(Ljava/util/List;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetySourceIssue;",
            ">;)I"
        }
    .end annotation

    .line 364
    .local p0, "issues":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetySourceIssue;>;"
    const/high16 v0, -0x80000000

    .line 365
    .local v0, "max":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 366
    .local v1, "issueIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 367
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/safetycenter/SafetySourceIssue;

    .line 369
    .local v3, "safetySourceIssue":Landroid/safetycenter/SafetySourceIssue;
    invoke-virtual {v3}, Landroid/safetycenter/SafetySourceIssue;->getId()Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "issueId":Ljava/lang/String;
    nop

    .line 371
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 370
    const-string v6, "Safety source data cannot have duplicate issue ids"

    invoke-static {v5, v6}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 373
    invoke-virtual {v3}, Landroid/safetycenter/SafetySourceIssue;->getSeverityLevel()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 374
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v3    # "safetySourceIssue":Landroid/safetycenter/SafetySourceIssue;
    .end local v4    # "issueId":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 376
    .end local v2    # "i":I
    :cond_32
    return v0
.end method


# virtual methods
.method public whitelist addIssue(Landroid/safetycenter/SafetySourceIssue;)Landroid/safetycenter/SafetySourceData$Builder;
    .registers 4
    .param p1, "safetySourceIssue"    # Landroid/safetycenter/SafetySourceIssue;

    .line 297
    iget-object v0, p0, Landroid/safetycenter/SafetySourceData$Builder;->mIssues:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/safetycenter/SafetySourceIssue;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    return-object p0
.end method

.method public whitelist build()Landroid/safetycenter/SafetySourceData;
    .registers 9

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/safetycenter/SafetySourceData$Builder;->mIssues:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 346
    .local v0, "issues":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetySourceIssue;>;"
    invoke-static {v0}, Landroid/safetycenter/SafetySourceData$Builder;->getIssuesMaxSeverityLevelEnforcingUniqueIds(Ljava/util/List;)I

    move-result v1

    .line 347
    .local v1, "issuesMaxSeverityLevel":I
    iget-object v2, p0, Landroid/safetycenter/SafetySourceData$Builder;->mStatus:Landroid/safetycenter/SafetySourceStatus;

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    .line 348
    new-instance v2, Landroid/safetycenter/SafetySourceData;

    iget-object v4, p0, Landroid/safetycenter/SafetySourceData$Builder;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3, v0, v4, v3}, Landroid/safetycenter/SafetySourceData;-><init>(Landroid/safetycenter/SafetySourceStatus;Ljava/util/List;Landroid/os/Bundle;Landroid/safetycenter/SafetySourceData-IA;)V

    return-object v2

    .line 350
    :cond_1c
    iget-object v2, p0, Landroid/safetycenter/SafetySourceData$Builder;->mStatus:Landroid/safetycenter/SafetySourceStatus;

    invoke-virtual {v2}, Landroid/safetycenter/SafetySourceStatus;->getSeverityLevel()I

    move-result v2

    .line 351
    .local v2, "statusSeverityLevel":I
    const/16 v4, 0xc8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v1, v4, :cond_2a

    move v4, v5

    goto :goto_2b

    :cond_2a
    move v4, v6

    .line 352
    .local v4, "requiresAttention":Z
    :goto_2b
    if-eqz v4, :cond_36

    .line 353
    if-lt v2, v1, :cond_30

    goto :goto_31

    :cond_30
    move v5, v6

    :goto_31
    const-string v6, "Safety source data cannot have issues that are more severe than its status"

    invoke-static {v5, v6}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 359
    :cond_36
    new-instance v5, Landroid/safetycenter/SafetySourceData;

    iget-object v6, p0, Landroid/safetycenter/SafetySourceData$Builder;->mStatus:Landroid/safetycenter/SafetySourceStatus;

    iget-object v7, p0, Landroid/safetycenter/SafetySourceData$Builder;->mExtras:Landroid/os/Bundle;

    invoke-direct {v5, v6, v0, v7, v3}, Landroid/safetycenter/SafetySourceData;-><init>(Landroid/safetycenter/SafetySourceStatus;Ljava/util/List;Landroid/os/Bundle;Landroid/safetycenter/SafetySourceData-IA;)V

    return-object v5
.end method

.method public whitelist clearExtras()Landroid/safetycenter/SafetySourceData$Builder;
    .registers 3

    .line 324
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 328
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceData$Builder;->mExtras:Landroid/os/Bundle;

    .line 329
    return-object p0

    .line 325
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearIssues()Landroid/safetycenter/SafetySourceData$Builder;
    .registers 2

    .line 338
    iget-object v0, p0, Landroid/safetycenter/SafetySourceData$Builder;->mIssues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 339
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/safetycenter/SafetySourceData$Builder;
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 309
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 313
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceData$Builder;->mExtras:Landroid/os/Bundle;

    .line 314
    return-object p0

    .line 310
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setStatus(Landroid/safetycenter/SafetySourceStatus;)Landroid/safetycenter/SafetySourceData$Builder;
    .registers 2
    .param p1, "status"    # Landroid/safetycenter/SafetySourceStatus;

    .line 290
    iput-object p1, p0, Landroid/safetycenter/SafetySourceData$Builder;->mStatus:Landroid/safetycenter/SafetySourceStatus;

    .line 291
    return-object p0
.end method
