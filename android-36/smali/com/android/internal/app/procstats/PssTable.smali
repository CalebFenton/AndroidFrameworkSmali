.class public Lcom/android/internal/app/procstats/PssTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "PssTable.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .registers 2
    .param p1, "tableData"    # Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    .line 45
    return-void
.end method

.method public static blacklist mergeStats([JIIJJJJJJJJJ)V
    .registers 37
    .param p0, "stats"    # [J
    .param p1, "statsIndex"    # I
    .param p2, "inCount"    # I
    .param p3, "minPss"    # J
    .param p5, "avgPss"    # J
    .param p7, "maxPss"    # J
    .param p9, "minUss"    # J
    .param p11, "avgUss"    # J
    .param p13, "maxUss"    # J
    .param p15, "minRss"    # J
    .param p17, "avgRss"    # J
    .param p19, "maxRss"    # J

    .line 98
    move/from16 v0, p2

    move-wide/from16 v1, p5

    move-wide/from16 v3, p11

    move-wide/from16 v5, p17

    add-int/lit8 v7, p1, 0x0

    aget-wide v7, p0, v7

    .line 99
    .local v7, "count":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_3d

    .line 100
    add-int/lit8 v9, p1, 0x0

    int-to-long v10, v0

    aput-wide v10, p0, v9

    .line 101
    add-int/lit8 v9, p1, 0x1

    aput-wide p3, p0, v9

    .line 102
    add-int/lit8 v9, p1, 0x2

    aput-wide v1, p0, v9

    .line 103
    add-int/lit8 v9, p1, 0x3

    aput-wide p7, p0, v9

    .line 104
    add-int/lit8 v9, p1, 0x4

    aput-wide p9, p0, v9

    .line 105
    add-int/lit8 v9, p1, 0x5

    aput-wide v3, p0, v9

    .line 106
    add-int/lit8 v9, p1, 0x6

    aput-wide p13, p0, v9

    .line 107
    add-int/lit8 v9, p1, 0x7

    aput-wide p15, p0, v9

    .line 108
    add-int/lit8 v9, p1, 0x8

    aput-wide v5, p0, v9

    .line 109
    add-int/lit8 v9, p1, 0x9

    aput-wide p19, p0, v9

    goto/16 :goto_bf

    .line 111
    :cond_3d
    add-int/lit8 v9, p1, 0x0

    int-to-long v10, v0

    add-long/2addr v10, v7

    aput-wide v10, p0, v9

    .line 113
    add-int/lit8 v9, p1, 0x1

    aget-wide v9, p0, v9

    cmp-long v9, v9, p3

    if-lez v9, :cond_4f

    .line 114
    add-int/lit8 v9, p1, 0x1

    aput-wide p3, p0, v9

    .line 117
    :cond_4f
    add-int/lit8 v9, p1, 0x2

    add-int/lit8 v10, p1, 0x2

    aget-wide v10, p0, v10

    long-to-double v10, v10

    long-to-double v12, v7

    mul-double/2addr v10, v12

    long-to-double v12, v1

    int-to-double v14, v0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    int-to-long v12, v0

    add-long/2addr v12, v7

    long-to-double v12, v12

    div-double/2addr v10, v12

    double-to-long v10, v10

    aput-wide v10, p0, v9

    .line 120
    add-int/lit8 v9, p1, 0x3

    aget-wide v9, p0, v9

    cmp-long v9, v9, p7

    if-gez v9, :cond_6f

    .line 121
    add-int/lit8 v9, p1, 0x3

    aput-wide p7, p0, v9

    .line 124
    :cond_6f
    add-int/lit8 v9, p1, 0x4

    aget-wide v9, p0, v9

    cmp-long v9, v9, p9

    if-lez v9, :cond_7b

    .line 125
    add-int/lit8 v9, p1, 0x4

    aput-wide p9, p0, v9

    .line 128
    :cond_7b
    add-int/lit8 v9, p1, 0x5

    add-int/lit8 v10, p1, 0x5

    aget-wide v10, p0, v10

    long-to-double v10, v10

    long-to-double v12, v7

    mul-double/2addr v10, v12

    long-to-double v12, v3

    int-to-double v14, v0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    int-to-long v12, v0

    add-long/2addr v12, v7

    long-to-double v12, v12

    div-double/2addr v10, v12

    double-to-long v10, v10

    aput-wide v10, p0, v9

    .line 131
    add-int/lit8 v9, p1, 0x6

    aget-wide v9, p0, v9

    cmp-long v9, v9, p13

    if-gez v9, :cond_9b

    .line 132
    add-int/lit8 v9, p1, 0x6

    aput-wide p13, p0, v9

    .line 135
    :cond_9b
    add-int/lit8 v9, p1, 0x7

    aget-wide v9, p0, v9

    .line 138
    add-int/lit8 v9, p1, 0x8

    add-int/lit8 v10, p1, 0x8

    aget-wide v10, p0, v10

    long-to-double v10, v10

    long-to-double v12, v7

    mul-double/2addr v10, v12

    long-to-double v12, v5

    int-to-double v14, v0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    int-to-long v12, v0

    add-long/2addr v12, v7

    long-to-double v12, v12

    div-double/2addr v10, v12

    double-to-long v10, v10

    aput-wide v10, p0, v9

    .line 141
    add-int/lit8 v9, p1, 0x9

    aget-wide v9, p0, v9

    cmp-long v9, v9, p19

    if-gez v9, :cond_bf

    .line 142
    add-int/lit8 v9, p1, 0x9

    aput-wide p19, p0, v9

    .line 145
    :cond_bf
    :goto_bf
    return-void
.end method

.method public static blacklist mergeStats([JI[JI)V
    .registers 27
    .param p0, "stats"    # [J
    .param p1, "statsIndex"    # I
    .param p2, "thatStats"    # [J
    .param p3, "thatStatsIndex"    # I

    .line 82
    add-int/lit8 v0, p3, 0x0

    aget-wide v0, p2, v0

    long-to-int v4, v0

    add-int/lit8 v0, p3, 0x1

    aget-wide v5, p2, v0

    add-int/lit8 v0, p3, 0x2

    aget-wide v7, p2, v0

    add-int/lit8 v0, p3, 0x3

    aget-wide v9, p2, v0

    add-int/lit8 v0, p3, 0x4

    aget-wide v11, p2, v0

    add-int/lit8 v0, p3, 0x5

    aget-wide v13, p2, v0

    add-int/lit8 v0, p3, 0x6

    aget-wide v15, p2, v0

    add-int/lit8 v0, p3, 0x7

    aget-wide v17, p2, v0

    add-int/lit8 v0, p3, 0x8

    aget-wide v19, p2, v0

    add-int/lit8 v0, p3, 0x9

    aget-wide v21, p2, v0

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-static/range {v2 .. v22}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    .line 92
    return-void
.end method

.method public static blacklist writeStatsToProto(Landroid/util/proto/ProtoOutputStream;[JI)V
    .registers 16
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "stats"    # [J
    .param p2, "statsIndex"    # I

    .line 155
    add-int/lit8 v0, p2, 0x0

    aget-wide v0, p1, v0

    const-wide v2, 0x10500000005L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 156
    add-int/lit8 v0, p2, 0x1

    aget-wide v7, p1, v0

    add-int/lit8 v0, p2, 0x2

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0x3

    aget-wide v11, p1, v0

    const-wide v5, 0x10b00000006L

    move-object v4, p0

    invoke-static/range {v4 .. v12}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    .line 160
    add-int/lit8 v0, p2, 0x4

    aget-wide v7, p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-wide v11, p1, v0

    const-wide v5, 0x10b00000007L

    invoke-static/range {v4 .. v12}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    .line 164
    add-int/lit8 v0, p2, 0x7

    aget-wide v7, p1, v0

    add-int/lit8 v0, p2, 0x8

    aget-wide v9, p1, v0

    add-int/lit8 v0, p2, 0x9

    aget-wide v11, p1, v0

    const-wide v5, 0x10b00000008L

    invoke-static/range {v4 .. v12}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    .line 168
    return-void
.end method


# virtual methods
.method blacklist getRssMeanAndMax(I)[J
    .registers 10
    .param p1, "key"    # I

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v0

    .line 172
    .local v0, "stats":[J
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v1

    .line 173
    .local v1, "statsIndex":I
    add-int/lit8 v2, v1, 0x8

    aget-wide v2, v0, v2

    add-int/lit8 v4, v1, 0x9

    aget-wide v4, v0, v4

    const/4 v6, 0x2

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v2, v6, v7

    const/4 v2, 0x1

    aput-wide v4, v6, v2

    return-object v6
.end method

.method public blacklist mergeStats(IIJJJJJJJJJ)V
    .registers 45
    .param p1, "state"    # I
    .param p2, "inCount"    # I
    .param p3, "minPss"    # J
    .param p5, "avgPss"    # J
    .param p7, "maxPss"    # J
    .param p9, "minUss"    # J
    .param p11, "avgUss"    # J
    .param p13, "maxUss"    # J
    .param p15, "minRss"    # J
    .param p17, "avgRss"    # J
    .param p19, "maxRss"    # J

    .line 73
    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-byte v2, v1

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/procstats/PssTable;->getOrAddKey(BI)I

    move-result v2

    .line 74
    .local v2, "key":I
    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v3

    .line 75
    .local v3, "stats":[J
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v4

    .line 76
    .local v4, "statsIndex":I
    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move-wide/from16 v20, p17

    move-wide/from16 v22, p19

    invoke-static/range {v3 .. v23}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    .line 78
    return-void
.end method

.method public blacklist mergeStats(Lcom/android/internal/app/procstats/PssTable;)V
    .registers 11
    .param p1, "that"    # Lcom/android/internal/app/procstats/PssTable;

    .line 51
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    .line 52
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2c

    .line 53
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    .line 54
    .local v2, "thatKey":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 56
    .local v3, "state":I
    int-to-byte v4, v3

    const/16 v5, 0xa

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getOrAddKey(BI)I

    move-result v4

    .line 57
    .local v4, "key":I
    invoke-virtual {p0, v4}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v5

    .line 58
    .local v5, "stats":[J
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v6

    .line 60
    .local v6, "statsIndex":I
    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v7

    .line 61
    .local v7, "thatStats":[J
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v8

    .line 63
    .local v8, "thatStatsIndex":I
    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JI[JI)V

    .line 52
    .end local v2    # "thatKey":I
    .end local v3    # "state":I
    .end local v4    # "key":I
    .end local v5    # "stats":[J
    .end local v6    # "statsIndex":I
    .end local v7    # "thatStats":[J
    .end local v8    # "thatStatsIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 65
    .end local v1    # "i":I
    :cond_2c
    return-void
.end method

.method public blacklist writeStatsToProtoForKey(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "key"    # I

    .line 148
    invoke-virtual {p0, p2}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v0

    .line 149
    .local v0, "stats":[J
    invoke-static {p2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v1

    .line 150
    .local v1, "statsIndex":I
    invoke-static {p1, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->writeStatsToProto(Landroid/util/proto/ProtoOutputStream;[JI)V

    .line 151
    return-void
.end method
