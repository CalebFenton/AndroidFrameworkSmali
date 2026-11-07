.class public final Landroid/net/NetworkStatsCollection$Builder;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mBucketDurationMillis:J

.field private final blacklist mEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/NetworkStatsCollection$Key;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 4
    .param p1, "bucketDurationMillis"    # J

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkStatsCollection$Builder;->mEntries:Landroid/util/ArrayMap;

    .line 889
    iput-wide p1, p0, Landroid/net/NetworkStatsCollection$Builder;->mBucketDurationMillis:J

    .line 890
    return-void
.end method


# virtual methods
.method public blacklist addEntry(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsCollection$Builder;
    .registers 9
    .param p1, "key"    # Landroid/net/NetworkStatsCollection$Key;
    .param p2, "history"    # Landroid/net/NetworkStatsHistory;

    .line 905
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 908
    .local v0, "historyEntries":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkStatsHistory$Entry;>;"
    iget-object v1, p0, Landroid/net/NetworkStatsCollection$Builder;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .line 910
    .local v1, "existing":Landroid/net/NetworkStatsHistory;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v3

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    add-int/2addr v2, v3

    .line 911
    .local v2, "size":I
    new-instance v3, Landroid/net/NetworkStatsHistory$Builder;

    iget-wide v4, p0, Landroid/net/NetworkStatsCollection$Builder;->mBucketDurationMillis:J

    invoke-direct {v3, v4, v5, v2}, Landroid/net/NetworkStatsHistory$Builder;-><init>(JI)V

    .line 917
    .local v3, "historyBuilder":Landroid/net/NetworkStatsHistory$Builder;
    if-eqz v1, :cond_40

    .line 918
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory$Entry;

    .line 919
    .local v5, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-virtual {v3, v5}, Landroid/net/NetworkStatsHistory$Builder;->addEntry(Landroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Builder;

    .line 920
    .end local v5    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    goto :goto_30

    .line 923
    :cond_40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory$Entry;

    .line 924
    .restart local v5    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-virtual {v3, v5}, Landroid/net/NetworkStatsHistory$Builder;->addEntry(Landroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Builder;

    .line 925
    .end local v5    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    goto :goto_44

    .line 927
    :cond_54
    iget-object v4, p0, Landroid/net/NetworkStatsCollection$Builder;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory$Builder;->build()Landroid/net/NetworkStatsHistory;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    return-object p0
.end method

.method public blacklist build()Landroid/net/NetworkStatsCollection;
    .registers 5

    .line 938
    new-instance v0, Landroid/net/NetworkStatsCollection;

    iget-wide v1, p0, Landroid/net/NetworkStatsCollection$Builder;->mBucketDurationMillis:J

    invoke-direct {v0, v1, v2}, Landroid/net/NetworkStatsCollection;-><init>(J)V

    .line 940
    .local v0, "collection":Landroid/net/NetworkStatsCollection;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v2, p0, Landroid/net/NetworkStatsCollection$Builder;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 941
    iget-object v2, p0, Landroid/net/NetworkStatsCollection$Builder;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsCollection$Key;

    iget-object v3, p0, Landroid/net/NetworkStatsCollection$Builder;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v2, v3}, Landroid/net/NetworkStatsCollection;->recordHistory(Landroid/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 940
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 943
    .end local v1    # "i":I
    :cond_26
    return-object v0
.end method
