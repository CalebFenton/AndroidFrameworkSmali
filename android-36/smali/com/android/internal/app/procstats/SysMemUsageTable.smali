.class public Lcom/android/internal/app/procstats/SysMemUsageTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "SysMemUsageTable.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .registers 2
    .param p1, "tableData"    # Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    .line 54
    return-void
.end method

.method private blacklist dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "bucket"    # I
    .param p5, "index"    # I

    .line 177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    int-to-byte v0, p4

    invoke-virtual {p0, v0, p5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 180
    const-string v0, " min, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    int-to-byte v0, p4

    add-int/lit8 v1, p5, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 182
    const-string v0, " avg, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    int-to-byte v0, p4

    add-int/lit8 v1, p5, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 184
    const-string v0, " max"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static blacklist mergeSysMemUsage([JI[JI)V
    .registers 18
    .param p0, "dstData"    # [J
    .param p1, "dstOff"    # I
    .param p2, "addData"    # [J
    .param p3, "addOff"    # I

    .line 117
    add-int/lit8 v0, p1, 0x0

    aget-wide v0, p0, v0

    .line 118
    .local v0, "dstCount":J
    add-int/lit8 v2, p3, 0x0

    aget-wide v2, p2, v2

    .line 119
    .local v2, "addCount":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/16 v7, 0x10

    if-nez v6, :cond_23

    .line 120
    add-int/lit8 v4, p1, 0x0

    aput-wide v2, p0, v4

    .line 121
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_15
    if-ge v4, v7, :cond_22

    .line 122
    add-int v5, p1, v4

    add-int v6, p3, v4

    aget-wide v8, p2, v6

    aput-wide v8, p0, v5

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .end local v4    # "i":I
    :cond_22
    goto :goto_81

    .line 124
    :cond_23
    cmp-long v4, v2, v4

    if-lez v4, :cond_81

    .line 125
    add-int/lit8 v4, p1, 0x0

    add-long v5, v0, v2

    aput-wide v5, p0, v4

    .line 126
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_2e
    if-ge v4, v7, :cond_81

    .line 127
    add-int v5, p1, v4

    aget-wide v5, p0, v5

    add-int v8, p3, v4

    aget-wide v8, p2, v8

    cmp-long v5, v5, v8

    if-lez v5, :cond_44

    .line 128
    add-int v5, p1, v4

    add-int v6, p3, v4

    aget-wide v8, p2, v6

    aput-wide v8, p0, v5

    .line 130
    :cond_44
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x1

    add-int v6, p1, v4

    add-int/lit8 v6, v6, 0x1

    aget-wide v8, p0, v6

    long-to-double v8, v8

    long-to-double v10, v0

    mul-double/2addr v8, v10

    add-int v6, p3, v4

    add-int/lit8 v6, v6, 0x1

    aget-wide v10, p2, v6

    long-to-double v10, v10

    long-to-double v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    add-long v10, v0, v2

    long-to-double v10, v10

    div-double/2addr v8, v10

    double-to-long v8, v8

    aput-wide v8, p0, v5

    .line 134
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x2

    aget-wide v5, p0, v5

    add-int v8, p3, v4

    add-int/lit8 v8, v8, 0x2

    aget-wide v8, p2, v8

    cmp-long v5, v5, v8

    if-gez v5, :cond_7e

    .line 135
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x2

    add-int v6, p3, v4

    add-int/lit8 v6, v6, 0x2

    aget-wide v8, p2, v6

    aput-wide v8, p0, v5

    .line 126
    :cond_7e
    add-int/lit8 v4, v4, 0x3

    goto :goto_2e

    .line 139
    .end local v4    # "i":I
    :cond_81
    :goto_81
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V
    .registers 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I

    .line 143
    move-object/from16 v1, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    const/4 v0, -0x1

    .line 144
    .local v0, "printedScreen":I
    const/4 v2, 0x0

    move v8, v2

    .local v8, "is":I
    :goto_9
    array-length v2, v6

    if-ge v8, v2, :cond_8f

    .line 145
    const/4 v2, -0x1

    .line 146
    .local v2, "printedMem":I
    const/4 v3, 0x0

    move v9, v3

    .local v9, "im":I
    :goto_f
    array-length v3, v7

    if-ge v9, v3, :cond_89

    .line 147
    aget v10, v6, v8

    .line 148
    .local v10, "iscreen":I
    aget v11, v7, v9

    .line 149
    .local v11, "imem":I
    add-int v3, v10, v11

    mul-int/lit8 v4, v3, 0x10

    .line 150
    .local v4, "bucket":I
    int-to-byte v3, v4

    const/4 v5, 0x0

    move-object/from16 v12, p0

    invoke-virtual {v12, v3, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v13

    .line 151
    .local v13, "count":J
    const-wide/16 v15, 0x0

    cmp-long v3, v13, v15

    if-lez v3, :cond_84

    .line 152
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    array-length v3, v6

    const/4 v15, 0x1

    if-le v3, v15, :cond_3b

    .line 154
    if-eq v0, v10, :cond_33

    .line 155
    move v3, v10

    goto :goto_34

    :cond_33
    const/4 v3, -0x1

    .line 154
    :goto_34
    invoke-static {v1, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 156
    move v0, v10

    move/from16 v17, v0

    goto :goto_3d

    .line 153
    :cond_3b
    move/from16 v17, v0

    .line 158
    .end local v0    # "printedScreen":I
    .local v17, "printedScreen":I
    :goto_3d
    array-length v0, v7

    if-le v0, v15, :cond_4c

    .line 159
    nop

    .line 160
    if-eq v2, v11, :cond_45

    move v15, v11

    goto :goto_46

    :cond_45
    const/4 v15, -0x1

    .line 159
    :goto_46
    invoke-static {v1, v15, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 161
    move v2, v11

    move v15, v2

    goto :goto_4d

    .line 158
    :cond_4c
    move v15, v2

    .line 163
    .end local v2    # "printedMem":I
    .local v15, "printedMem":I
    :goto_4d
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1, v13, v14}, Ljava/io/PrintWriter;->print(J)V

    .line 165
    const-string v0, " samples:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    const-string v3, "  Cached"

    const/4 v5, 0x1

    move-object/from16 v2, p2

    move-object v0, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 167
    const-string v3, "  Free"

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 168
    const-string v3, "  ZRam"

    const/4 v5, 0x7

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 169
    const-string v3, "  Kernel"

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 170
    const-string v3, "  Native"

    const/16 v5, 0xd

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    move v2, v15

    move/from16 v0, v17

    .line 146
    .end local v4    # "bucket":I
    .end local v10    # "iscreen":I
    .end local v11    # "imem":I
    .end local v13    # "count":J
    .end local v15    # "printedMem":I
    .end local v17    # "printedScreen":I
    .restart local v0    # "printedScreen":I
    .restart local v2    # "printedMem":I
    :cond_84
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    goto :goto_f

    .line 144
    .end local v2    # "printedMem":I
    .end local v9    # "im":I
    :cond_89
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_9

    .line 174
    .end local v8    # "is":I
    :cond_8f
    return-void
.end method

.method public blacklist getTotalMemUsage()[J
    .registers 8

    .line 94
    const/16 v0, 0x10

    new-array v0, v0, [J

    .line 95
    .local v0, "total":[J
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    .line 96
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_1e

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v3

    .line 99
    .local v3, "key":I
    invoke-virtual {p0, v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v4

    .line 100
    .local v4, "addData":[J
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v5

    .line 102
    .local v5, "addOff":I
    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    .line 96
    .end local v3    # "key":I
    .end local v4    # "addData":[J
    .end local v5    # "addOff":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 104
    .end local v2    # "i":I
    :cond_1e
    return-object v0
.end method

.method public blacklist mergeStats(I[JI)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "addData"    # [J
    .param p3, "addOff"    # I

    .line 82
    int-to-byte v0, p1

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getOrAddKey(BI)I

    move-result v0

    .line 84
    .local v0, "key":I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v1

    .line 85
    .local v1, "dstData":[J
    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    .line 87
    .local v2, "dstOff":I
    invoke-static {v1, v2, p2, p3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    .line 88
    return-void
.end method

.method public blacklist mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V
    .registers 8
    .param p1, "that"    # Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v0

    .line 63
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1d

    .line 64
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v2

    .line 66
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 67
    .local v3, "state":I
    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v4

    .line 68
    .local v4, "addData":[J
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v5

    .line 70
    .local v5, "addOff":I
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    .line 63
    .end local v2    # "key":I
    .end local v3    # "state":I
    .end local v4    # "addData":[J
    .end local v5    # "addOff":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 72
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method
