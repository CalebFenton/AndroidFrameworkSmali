.class public final Landroid/net/NetworkStatsHistory$Builder;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mBucketDuration:J

.field private final blacklist mEntries:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Landroid/net/NetworkStatsHistory$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(JI)V
    .registers 5
    .param p1, "bucketDuration"    # J
    .param p3, "initialCapacity"    # I

    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    iput-wide p1, p0, Landroid/net/NetworkStatsHistory$Builder;->mBucketDuration:J

    .line 1154
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkStatsHistory$Builder;->mEntries:Ljava/util/TreeMap;

    .line 1155
    return-void
.end method

.method private static blacklist sum([J)J
    .registers 7
    .param p0, "array"    # [J

    .line 1176
    const-wide/16 v0, 0x0

    .line 1177
    .local v0, "sum":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_c

    aget-wide v4, p0, v3

    .line 1178
    .local v4, "entry":J
    add-long/2addr v0, v4

    .line 1177
    .end local v4    # "entry":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1180
    :cond_c
    return-wide v0
.end method


# virtual methods
.method public blacklist addEntry(Landroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Builder;
    .registers 7
    .param p1, "entry"    # Landroid/net/NetworkStatsHistory$Entry;

    .line 1166
    iget-object v0, p0, Landroid/net/NetworkStatsHistory$Builder;->mEntries:Ljava/util/TreeMap;

    iget-wide v1, p1, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory$Entry;

    .line 1167
    .local v0, "existing":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v0, :cond_22

    .line 1168
    iget-object v1, p0, Landroid/net/NetworkStatsHistory$Builder;->mEntries:Ljava/util/TreeMap;

    iget-wide v2, p1, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/NetworkStatsHistory$Builder;->mBucketDuration:J

    invoke-virtual {v0, p1, v3, v4}, Landroid/net/NetworkStatsHistory$Entry;->plus(Landroid/net/NetworkStatsHistory$Entry;J)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 1170
    :cond_22
    iget-object v1, p0, Landroid/net/NetworkStatsHistory$Builder;->mEntries:Ljava/util/TreeMap;

    iget-wide v2, p1, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    :goto_2d
    return-object p0
.end method

.method public blacklist build()Landroid/net/NetworkStatsHistory;
    .registers 18

    .line 1190
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/NetworkStatsHistory$Builder;->mEntries:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v12

    .line 1191
    .local v12, "size":I
    new-array v5, v12, [J

    .line 1192
    .local v5, "bucketStart":[J
    new-array v6, v12, [J

    .line 1193
    .local v6, "activeTime":[J
    new-array v7, v12, [J

    .line 1194
    .local v7, "rxBytes":[J
    new-array v8, v12, [J

    .line 1195
    .local v8, "rxPackets":[J
    new-array v9, v12, [J

    .line 1196
    .local v9, "txBytes":[J
    new-array v10, v12, [J

    .line 1197
    .local v10, "txPackets":[J
    new-array v11, v12, [J

    .line 1199
    .local v11, "operations":[J
    const/4 v1, 0x0

    .line 1200
    .local v1, "i":I
    iget-object v2, v0, Landroid/net/NetworkStatsHistory$Builder;->mEntries:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory$Entry;

    .line 1201
    .local v3, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v13, v3, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    aput-wide v13, v5, v1

    .line 1202
    iget-wide v13, v3, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    aput-wide v13, v6, v1

    .line 1203
    iget-wide v13, v3, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    aput-wide v13, v7, v1

    .line 1204
    iget-wide v13, v3, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    aput-wide v13, v8, v1

    .line 1205
    iget-wide v13, v3, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    aput-wide v13, v9, v1

    .line 1206
    iget-wide v13, v3, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    aput-wide v13, v10, v1

    .line 1207
    iget-wide v13, v3, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    aput-wide v13, v11, v1

    .line 1208
    nop

    .end local v3    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    add-int/lit8 v1, v1, 0x1

    .line 1209
    goto :goto_21

    .line 1211
    :cond_4d
    new-instance v2, Landroid/net/NetworkStatsHistory;

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Builder;->mBucketDuration:J

    .line 1213
    invoke-static {v7}, Landroid/net/NetworkStatsHistory$Builder;->sum([J)J

    move-result-wide v13

    invoke-static {v9}, Landroid/net/NetworkStatsHistory$Builder;->sum([J)J

    move-result-wide v15

    add-long/2addr v13, v15

    invoke-direct/range {v2 .. v14}, Landroid/net/NetworkStatsHistory;-><init>(J[J[J[J[J[J[J[JIJ)V

    .line 1211
    return-object v2
.end method
