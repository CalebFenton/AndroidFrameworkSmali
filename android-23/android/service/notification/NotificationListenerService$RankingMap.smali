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
    .line 992
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap$1;

    #@2
    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$RankingMap$1;-><init>()V

    #@5
    sput-object v0, Landroid/service/notification/NotificationListenerService$RankingMap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 879
    return-void
.end method

.method private constructor <init>(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    #@0
    .prologue
    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 886
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@5
    .line 885
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

.method private buildInterceptedSetLocked()V
    .locals 3

    #@0
    .prologue
    .line 966
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@2
    invoke-virtual {v1}, Landroid/service/notification/NotificationRankingUpdate;->getInterceptedKeys()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 967
    .local v0, "dndInterceptedKeys":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    #@8
    array-length v2, v0

    #@9
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    #@c
    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    #@e
    .line 968
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    #@10
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@13
    .line 965
    return-void
.end method

.method private buildRanksLocked()V
    .locals 5

    #@0
    .prologue
    .line 956
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@2
    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 957
    .local v2, "orderedKeys":[Ljava/lang/String;
    new-instance v3, Landroid/util/ArrayMap;

    #@8
    array-length v4, v2

    #@9
    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    #@c
    iput-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    #@e
    .line 958
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@10
    if-ge v0, v3, :cond_0

    #@12
    .line 959
    aget-object v1, v2, v0

    #@14
    .line 960
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    #@16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 958
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 955
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildVisibilityOverridesLocked()V
    .locals 5

    #@0
    .prologue
    .line 973
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@2
    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getVisibilityOverrides()Landroid/os/Bundle;

    #@5
    move-result-object v2

    #@6
    .line 974
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
    .line 975
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
    .line 976
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
    .line 972
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getRank(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 914
    monitor-enter p0

    #@1
    .line 915
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 916
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildRanksLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :cond_0
    monitor-exit p0

    #@9
    .line 919
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/Integer;

    #@11
    .line 920
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
    .line 914
    .end local v0    # "rank":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit p0

    #@1a
    throw v1

    #@1b
    .line 920
    .restart local v0    # "rank":Ljava/lang/Integer;
    :cond_1
    const/4 v1, -0x1

    #@1c
    goto :goto_0
.end method

.method private getVisibilityOverride(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 942
    monitor-enter p0

    #@1
    .line 943
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 944
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildVisibilityOverridesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :cond_0
    monitor-exit p0

    #@9
    .line 947
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/Integer;

    #@11
    .line 948
    .local v0, "overide":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@13
    .line 949
    const/16 v1, -0x3e8

    #@15
    return v1

    #@16
    .line 942
    .end local v0    # "overide":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit p0

    #@18
    throw v1

    #@19
    .line 951
    .restart local v0    # "overide":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v1

    #@1d
    return v1
.end method

.method private isAmbient(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 924
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@3
    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getFirstAmbientIndex()I

    #@6
    move-result v0

    #@7
    .line 925
    .local v0, "firstAmbientIndex":I
    if-gez v0, :cond_0

    #@9
    .line 926
    return v2

    #@a
    .line 928
    :cond_0
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRank(Ljava/lang/String;)I

    #@d
    move-result v1

    #@e
    .line 929
    .local v1, "rank":I
    if-ltz v1, :cond_1

    #@10
    if-lt v1, v0, :cond_1

    #@12
    const/4 v2, 0x1

    #@13
    :cond_1
    return v2
.end method

.method private isIntercepted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 933
    monitor-enter p0

    #@1
    .line 934
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 935
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildInterceptedSetLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :cond_0
    monitor-exit p0

    #@9
    .line 938
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    #@b
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 933
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
    .line 984
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getOrderedKeys()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 896
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@2
    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "outRanking"    # Landroid/service/notification/NotificationListenerService$Ranking;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 907
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRank(Ljava/lang/String;)I

    #@5
    move-result v2

    #@6
    .line 908
    .local v2, "rank":I
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->isAmbient(Ljava/lang/String;)Z

    #@9
    move-result v3

    #@a
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->isIntercepted(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    move v4, v6

    #@11
    .line 909
    :goto_0
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getVisibilityOverride(Ljava/lang/String;)I

    #@14
    move-result v5

    #@15
    move-object v0, p2

    #@16
    move-object v1, p1

    #@17
    .line 908
    invoke-static/range {v0 .. v5}, Landroid/service/notification/NotificationListenerService$Ranking;->-wrap0(Landroid/service/notification/NotificationListenerService$Ranking;Ljava/lang/String;IZZI)V

    #@1a
    .line 910
    if-ltz v2, :cond_1

    #@1c
    :goto_1
    return v7

    #@1d
    :cond_0
    move v4, v7

    #@1e
    .line 908
    goto :goto_0

    #@1f
    :cond_1
    move v7, v6

    #@20
    .line 910
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 989
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 988
    return-void
.end method
