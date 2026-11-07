.class public final Landroid/safetycenter/config/SafetySourcesGroup$Builder;
.super Ljava/lang/Object;
.source "SafetySourcesGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/config/SafetySourcesGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mId:Ljava/lang/String;

.field private final blacklist mSafetySources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/config/SafetySource;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStatelessIconType:Ljava/lang/Integer;

.field private blacklist mSummaryResId:Ljava/lang/Integer;

.field private blacklist mTitleResId:Ljava/lang/Integer;

.field private blacklist mType:Ljava/lang/Integer;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mSafetySources:Ljava/util/List;

    .line 311
    return-void
.end method

.method public constructor whitelist <init>(Landroid/safetycenter/config/SafetySourcesGroup;)V
    .registers 4
    .param p1, "original"    # Landroid/safetycenter/config/SafetySourcesGroup;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mSafetySources:Ljava/util/List;

    .line 316
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 320
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mSafetySources:Ljava/util/List;

    invoke-static {p1}, Landroid/safetycenter/config/SafetySourcesGroup;->-$$Nest$fgetmSafetySources(Landroid/safetycenter/config/SafetySourcesGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 322
    invoke-static {p1}, Landroid/safetycenter/config/SafetySourcesGroup;->-$$Nest$fgetmType(Landroid/safetycenter/config/SafetySourcesGroup;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mType:Ljava/lang/Integer;

    .line 323
    invoke-static {p1}, Landroid/safetycenter/config/SafetySourcesGroup;->-$$Nest$fgetmId(Landroid/safetycenter/config/SafetySourcesGroup;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mId:Ljava/lang/String;

    .line 324
    invoke-static {p1}, Landroid/safetycenter/config/SafetySourcesGroup;->-$$Nest$fgetmTitleResId(Landroid/safetycenter/config/SafetySourcesGroup;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mTitleResId:Ljava/lang/Integer;

    .line 325
    invoke-static {p1}, Landroid/safetycenter/config/SafetySourcesGroup;->-$$Nest$fgetmSummaryResId(Landroid/safetycenter/config/SafetySourcesGroup;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mSummaryResId:Ljava/lang/Integer;

    .line 326
    invoke-static {p1}, Landroid/safetycenter/config/SafetySourcesGroup;->-$$Nest$fgetmStatelessIconType(Landroid/safetycenter/config/SafetySourcesGroup;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mStatelessIconType:Ljava/lang/Integer;

    .line 327
    return-void

    .line 317
    :cond_4b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addSafetySource(Landroid/safetycenter/config/SafetySource;)Landroid/safetycenter/config/SafetySourcesGroup$Builder;
    .registers 4
    .param p1, "safetySource"    # Landroid/safetycenter/config/SafetySource;

    .line 405
    iget-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mSafetySources:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/safetycenter/config/SafetySource;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    return-object p0
.end method

.method public whitelist build()Landroid/safetycenter/config/SafetySourcesGroup;
    .registers 18

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mId:Ljava/lang/String;

    .line 417
    .local v3, "id":Ljava/lang/String;
    const-string v1, "id"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroid/safetycenter/config/BuilderUtils;->validateId(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, v0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mSafetySources:Ljava/util/List;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 420
    .local v7, "safetySources":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/config/SafetySource;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a9

    .line 424
    iget-object v1, v0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mSummaryResId:Ljava/lang/Integer;

    const-string v5, "summary"

    invoke-static {v1, v5, v4, v4}, Landroid/safetycenter/config/BuilderUtils;->validateResId(Ljava/lang/Integer;Ljava/lang/String;ZZ)I

    move-result v5

    .line 426
    .local v5, "summaryResId":I
    iget-object v8, v0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mStatelessIconType:Ljava/lang/Integer;

    filled-new-array {v4, v2}, [I

    move-result-object v13

    .line 427
    const-string v9, "statelessIconType"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Landroid/safetycenter/config/BuilderUtils;->validateIntDef(Ljava/lang/Integer;Ljava/lang/String;ZZI[I)I

    move-result v6

    .line 436
    .local v6, "statelessIconType":I
    const/4 v1, 0x1

    .line 437
    .local v1, "hasOnlyIssueOnlySources":Z
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 438
    .local v9, "safetySourcesSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_39
    if-ge v8, v9, :cond_4e

    .line 439
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/safetycenter/config/SafetySource;

    invoke-virtual {v10}, Landroid/safetycenter/config/SafetySource;->getType()I

    move-result v10

    .line 440
    .local v10, "type":I
    const/4 v11, 0x3

    if-eq v10, v11, :cond_4b

    .line 441
    const/4 v1, 0x0

    .line 442
    move v10, v1

    goto :goto_4f

    .line 438
    .end local v10    # "type":I
    :cond_4b
    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    :cond_4e
    move v10, v1

    .line 446
    .end local v1    # "hasOnlyIssueOnlySources":Z
    .end local v8    # "i":I
    .local v10, "hasOnlyIssueOnlySources":Z
    :goto_4f
    const/4 v1, 0x1

    .line 447
    .local v1, "inferredGroupType":I
    if-eqz v10, :cond_55

    .line 448
    const/4 v1, 0x2

    move v15, v1

    goto :goto_5e

    .line 449
    :cond_55
    if-nez v5, :cond_5c

    if-eqz v6, :cond_5a

    goto :goto_5c

    :cond_5a
    move v15, v1

    goto :goto_5e

    .line 451
    :cond_5c
    :goto_5c
    const/4 v1, 0x0

    move v15, v1

    .line 453
    .end local v1    # "inferredGroupType":I
    .local v15, "inferredGroupType":I
    :goto_5e
    iget-object v11, v0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mType:Ljava/lang/Integer;

    const/4 v1, 0x2

    filled-new-array {v4, v2, v1}, [I

    move-result-object v16

    .line 454
    const-string v12, "type"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroid/safetycenter/config/BuilderUtils;->validateIntDef(Ljava/lang/Integer;Ljava/lang/String;ZZI[I)I

    move-result v8

    .line 463
    .local v8, "type":I
    if-ne v8, v1, :cond_7a

    if-eqz v10, :cond_72

    goto :goto_7a

    .line 464
    :cond_72
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Safety sources groups of type hidden can only contain sources of type issue-only"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_7a
    :goto_7a
    if-eq v8, v1, :cond_87

    if-nez v10, :cond_7f

    goto :goto_87

    .line 469
    :cond_7f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Safety sources groups containing only sources of type issue-only must be of type hidden"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    :cond_87
    :goto_87
    if-nez v8, :cond_8b

    move v1, v2

    goto :goto_8c

    :cond_8b
    move v1, v4

    :goto_8c
    move v11, v1

    .line 475
    .local v11, "isStateful":Z
    if-ne v8, v2, :cond_91

    move v1, v2

    goto :goto_92

    :cond_91
    move v1, v4

    :goto_92
    move v12, v1

    .line 476
    .local v12, "isStateless":Z
    iget-object v1, v0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mTitleResId:Ljava/lang/Integer;

    if-nez v11, :cond_9b

    if-eqz v12, :cond_9a

    goto :goto_9b

    :cond_9a
    move v2, v4

    .line 477
    :cond_9b
    :goto_9b
    const-string v13, "title"

    invoke-static {v1, v13, v2, v4}, Landroid/safetycenter/config/BuilderUtils;->validateResId(Ljava/lang/Integer;Ljava/lang/String;ZZ)I

    move-result v4

    .line 480
    .local v4, "titleResId":I
    new-instance v1, Landroid/safetycenter/config/SafetySourcesGroup;

    move v2, v8

    .end local v8    # "type":I
    .local v2, "type":I
    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/safetycenter/config/SafetySourcesGroup;-><init>(ILjava/lang/String;IIILjava/util/List;Landroid/safetycenter/config/SafetySourcesGroup-IA;)V

    return-object v1

    .line 421
    .end local v2    # "type":I
    .end local v4    # "titleResId":I
    .end local v5    # "summaryResId":I
    .end local v6    # "statelessIconType":I
    .end local v9    # "safetySourcesSize":I
    .end local v10    # "hasOnlyIssueOnlySources":Z
    .end local v11    # "isStateful":Z
    .end local v12    # "isStateless":Z
    .end local v15    # "inferredGroupType":I
    :cond_a9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Safety sources group empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/safetycenter/config/SafetySourcesGroup$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 352
    iput-object p1, p0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mId:Ljava/lang/String;

    .line 353
    return-object p0
.end method

.method public whitelist setStatelessIconType(I)Landroid/safetycenter/config/SafetySourcesGroup$Builder;
    .registers 3
    .param p1, "statelessIconType"    # I

    .line 394
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mStatelessIconType:Ljava/lang/Integer;

    .line 395
    return-object p0
.end method

.method public whitelist setSummaryResId(I)Landroid/safetycenter/config/SafetySourcesGroup$Builder;
    .registers 3
    .param p1, "summaryResId"    # I

    .line 381
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mSummaryResId:Ljava/lang/Integer;

    .line 382
    return-object p0
.end method

.method public whitelist setTitleResId(I)Landroid/safetycenter/config/SafetySourcesGroup$Builder;
    .registers 3
    .param p1, "titleResId"    # I

    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mTitleResId:Ljava/lang/Integer;

    .line 368
    return-object p0
.end method

.method public whitelist setType(I)Landroid/safetycenter/config/SafetySourcesGroup$Builder;
    .registers 3
    .param p1, "type"    # I

    .line 341
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/config/SafetySourcesGroup$Builder;->mType:Ljava/lang/Integer;

    .line 342
    return-object p0
.end method
