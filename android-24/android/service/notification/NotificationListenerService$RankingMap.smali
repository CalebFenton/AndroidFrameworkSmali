.class public Landroid/service/notification/NotificationListenerService$RankingMap;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankingMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$RankingMap$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mImportance:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImportanceExplanation:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntercepted:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideGroupKeys:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

.field private mRanks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuppressedVisualEffects:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityOverrides:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1404
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap$1;

    #@2
    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$RankingMap$1;-><init>()V

    #@5
    sput-object v0, Landroid/service/notification/NotificationListenerService$RankingMap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1214
    return-void
.end method

.method private constructor <init>(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    #@0
    .prologue
    .line 1224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1225
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@5
    .line 1224
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>(Landroid/service/notification/NotificationRankingUpdate;)V

    #@3
    return-void
.end method

.method private buildImportanceExplanationLocked()V
    .locals 5

    #@0
    .prologue
    .line 1376
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@2
    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getImportanceExplanation()Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    .line 1377
    .local v0, "explanationBundle":Landroid/os/Bundle;
    new-instance v3, Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    #@b
    move-result v4

    #@c
    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    #@f
    iput-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    #@11
    .line 1378
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v2

    #@19
    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/lang/String;

    #@25
    .line 1379
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    goto :goto_0

    #@2f
    .line 1375
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildImportanceLocked()V
    .locals 6

    #@0
    .prologue
    .line 1365
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@2
    invoke-virtual {v4}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    .line 1366
    .local v3, "orderedKeys":[Ljava/lang/String;
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@8
    invoke-virtual {v4}, Landroid/service/notification/NotificationRankingUpdate;->getImportance()[I

    #@b
    move-result-object v1

    #@c
    .line 1367
    .local v1, "importance":[I
    new-instance v4, Landroid/util/ArrayMap;

    #@e
    array-length v5, v3

    #@f
    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    #@12
    iput-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    #@14
    .line 1368
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    array-length v4, v3

    #@16
    if-ge v0, v4, :cond_0

    #@18
    .line 1369
    aget-object v2, v3, v0

    #@1a
    .line 1370
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    #@1c
    aget v5, v1, v0

    #@1e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 1368
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1364
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildInterceptedSetLocked()V
    .locals 3

    #@0
    .prologue
    .line 1341
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@2
    invoke-virtual {v1}, Landroid/service/notification/NotificationRankingUpdate;->getInterceptedKeys()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 1342
    .local v0, "dndInterceptedKeys":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    #@8
    array-length v2, v0

    #@9
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    #@c
    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    #@e
    .line 1343
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    #@10
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@13
    .line 1340
    return-void
.end method

.method private buildOverrideGroupKeys()V
    .locals 5

    #@0
    .prologue
    .line 1385
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@2
    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getOverrideGroupKeys()Landroid/os/Bundle;

    #@5
    move-result-object v2

    #@6
    .line 1386
    .local v2, "overrideGroupKeys":Landroid/os/Bundle;
    new-instance v3, Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    #@b
    move-result v4

    #@c
    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    #@f
    iput-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    #@11
    .line 1387
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/lang/String;

    #@25
    .line 1388
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    goto :goto_0

    #@2f
    .line 1384
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildRanksLocked()V
    .locals 5

    #@0
    .prologue
    .line 1331
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@2
    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 1332
    .local v2, "orderedKeys":[Ljava/lang/String;
    new-instance v3, Landroid/util/ArrayMap;

    #@8
    array-length v4, v2

    #@9
    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    #@c
    iput-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    #@e
    .line 1333
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@10
    if-ge v0, v3, :cond_0

    #@12
    .line 1334
    aget-object v1, v2, v0

    #@14
    .line 1335
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    #@16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 1333
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1330
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildSuppressedVisualEffectsLocked()V
    .locals 5

    #@0
    .prologue
    .line 1357
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@2
    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getSuppressedVisualEffects()Landroid/os/Bundle;

    #@5
    move-result-object v2

    #@6
    .line 1358
    .local v2, "suppressedBundle":Landroid/os/Bundle;
    new-instance v3, Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    #@b
    move-result v4

    #@c
    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    #@f
    iput-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    #@11
    .line 1359
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/lang/String;

    #@25
    .line 1360
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@2a
    move-result v4

    #@2b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    goto :goto_0

    #@33
    .line 1356
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildVisibilityOverridesLocked()V
    .locals 5

    #@0
    .prologue
    .line 1348
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@2
    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getVisibilityOverrides()Landroid/os/Bundle;

    #@5
    move-result-object v2

    #@6
    .line 1349
    .local v2, "visibilityBundle":Landroid/os/Bundle;
    new-instance v3, Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    #@b
    move-result v4

    #@c
    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    #@f
    iput-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    #@11
    .line 1350
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/lang/String;

    #@25
    .line 1351
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@2a
    move-result v4

    #@2b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    goto :goto_0

    #@33
    .line 1347
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getImportance(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1299
    monitor-enter p0

    #@1
    .line 1300
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1301
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildImportanceLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :cond_0
    monitor-exit p0

    #@9
    .line 1304
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportance:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/Integer;

    #@11
    .line 1305
    .local v0, "importance":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@13
    .line 1306
    const/4 v1, 0x3

    #@14
    return v1

    #@15
    .line 1299
    .end local v0    # "importance":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit p0

    #@17
    throw v1

    #@18
    .line 1308
    .restart local v0    # "importance":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v1

    #@1c
    return v1
.end method

.method private getImportanceExplanation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1312
    monitor-enter p0

    #@1
    .line 1313
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1314
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildImportanceExplanationLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :cond_0
    monitor-exit p0

    #@9
    .line 1317
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mImportanceExplanation:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/String;

    #@11
    return-object v0

    #@12
    .line 1312
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method private getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1321
    monitor-enter p0

    #@1
    .line 1322
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1323
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildOverrideGroupKeys()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :cond_0
    monitor-exit p0

    #@9
    .line 1326
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mOverrideGroupKeys:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/String;

    #@11
    return-object v0

    #@12
    .line 1321
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method private getRank(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1254
    monitor-enter p0

    #@1
    .line 1255
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1256
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildRanksLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :cond_0
    monitor-exit p0

    #@9
    .line 1259
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/Integer;

    #@11
    .line 1260
    .local v0, "rank":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    #@13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v1

    #@17
    :goto_0
    return v1

    #@18
    .line 1254
    .end local v0    # "rank":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit p0

    #@1a
    throw v1

    #@1b
    .line 1260
    .restart local v0    # "rank":Ljava/lang/Integer;
    :cond_1
    const/4 v1, -0x1

    #@1c
    goto :goto_0
.end method

.method private getSuppressedVisualEffects(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1286
    monitor-enter p0

    #@1
    .line 1287
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1288
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildSuppressedVisualEffectsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :cond_0
    monitor-exit p0

    #@9
    .line 1291
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mSuppressedVisualEffects:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/Integer;

    #@11
    .line 1292
    .local v0, "suppressed":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@13
    .line 1293
    const/4 v1, 0x0

    #@14
    return v1

    #@15
    .line 1286
    .end local v0    # "suppressed":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    #@16
    monitor-exit p0

    #@17
    throw v1

    #@18
    .line 1295
    .restart local v0    # "suppressed":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v1

    #@1c
    return v1
.end method

.method private getVisibilityOverride(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1273
    monitor-enter p0

    #@1
    .line 1274
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1275
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildVisibilityOverridesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :cond_0
    monitor-exit p0

    #@9
    .line 1278
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/Integer;

    #@11
    .line 1279
    .local v0, "override":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@13
    .line 1280
    const/16 v1, -0x3e8

    #@15
    return v1

    #@16
    .line 1273
    .end local v0    # "override":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit p0

    #@18
    throw v1

    #@19
    .line 1282
    .restart local v0    # "override":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v1

    #@1d
    return v1
.end method

.method private isIntercepted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1264
    monitor-enter p0

    #@1
    .line 1265
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1266
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildInterceptedSetLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :cond_0
    monitor-exit p0

    #@9
    .line 1269
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    #@b
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 1264
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1396
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getOrderedKeys()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1235
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@2
    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "outRanking"    # Landroid/service/notification/NotificationListenerService$Ranking;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1246
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRank(Ljava/lang/String;)I

    #@5
    move-result v2

    #@6
    .line 1247
    .local v2, "rank":I
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->isIntercepted(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    move v3, v9

    #@d
    .line 1248
    :goto_0
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getVisibilityOverride(Ljava/lang/String;)I

    #@10
    move-result v4

    #@11
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getSuppressedVisualEffects(Ljava/lang/String;)I

    #@14
    move-result v5

    #@15
    .line 1249
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getImportance(Ljava/lang/String;)I

    #@18
    move-result v6

    #@19
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getImportanceExplanation(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v7

    #@1d
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOverrideGroupKey(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v8

    #@21
    move-object v0, p2

    #@22
    move-object v1, p1

    #@23
    .line 1247
    invoke-static/range {v0 .. v8}, Landroid/service/notification/NotificationListenerService$Ranking;->-wrap0(Landroid/service/notification/NotificationListenerService$Ranking;Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;)V

    #@26
    .line 1250
    if-ltz v2, :cond_1

    #@28
    :goto_1
    return v10

    #@29
    :cond_0
    move v3, v10

    #@2a
    .line 1247
    goto :goto_0

    #@2b
    :cond_1
    move v10, v9

    #@2c
    .line 1250
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1401
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 1400
    return-void
.end method
