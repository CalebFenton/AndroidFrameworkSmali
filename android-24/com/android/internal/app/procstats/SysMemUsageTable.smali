.class public Lcom/android/internal/app/procstats/SysMemUsageTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "SysMemUsageTable.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0
    .param p1, "tableData"    # Lcom/android/internal/app/procstats/SparseMappingTable;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    #@3
    .line 52
    return-void
.end method

.method private dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "bucket"    # I
    .param p5, "index"    # I

    #@0
    .prologue
    const-wide/16 v2, 0x400

    #@2
    .line 177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 178
    const-string/jumbo v0, ": "

    #@b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    .line 179
    int-to-byte v0, p4

    #@f
    invoke-virtual {p0, v0, p5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    #@12
    move-result-wide v0

    #@13
    mul-long/2addr v0, v2

    #@14
    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@17
    .line 180
    const-string/jumbo v0, " min, "

    #@1a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    .line 181
    int-to-byte v0, p4

    #@1e
    add-int/lit8 v1, p5, 0x1

    #@20
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    #@23
    move-result-wide v0

    #@24
    mul-long/2addr v0, v2

    #@25
    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@28
    .line 182
    const-string/jumbo v0, " avg, "

    #@2b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e
    .line 183
    int-to-byte v0, p4

    #@2f
    add-int/lit8 v1, p5, 0x2

    #@31
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    #@34
    move-result-wide v0

    #@35
    mul-long/2addr v0, v2

    #@36
    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    #@39
    .line 184
    const-string/jumbo v0, " max"

    #@3c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3f
    .line 176
    return-void
.end method

.method public static mergeSysMemUsage([JI[JI)V
    .locals 12
    .param p0, "dstData"    # [J
    .param p1, "dstOff"    # I
    .param p2, "addData"    # [J
    .param p3, "addOff"    # I

    #@0
    .prologue
    .line 117
    add-int/lit8 v5, p1, 0x0

    #@2
    aget-wide v2, p0, v5

    #@4
    .line 118
    .local v2, "dstCount":J
    add-int/lit8 v5, p3, 0x0

    #@6
    aget-wide v0, p2, v5

    #@8
    .line 119
    .local v0, "addCount":J
    const-wide/16 v6, 0x0

    #@a
    cmp-long v5, v2, v6

    #@c
    if-nez v5, :cond_0

    #@e
    .line 120
    add-int/lit8 v5, p1, 0x0

    #@10
    aput-wide v0, p0, v5

    #@12
    .line 121
    const/4 v4, 0x1

    #@13
    .local v4, "i":I
    :goto_0
    const/16 v5, 0x10

    #@15
    if-ge v4, v5, :cond_3

    #@17
    .line 122
    add-int v5, p1, v4

    #@19
    add-int v6, p3, v4

    #@1b
    aget-wide v6, p2, v6

    #@1d
    aput-wide v6, p0, v5

    #@1f
    .line 121
    add-int/lit8 v4, v4, 0x1

    #@21
    goto :goto_0

    #@22
    .line 124
    .end local v4    # "i":I
    :cond_0
    const-wide/16 v6, 0x0

    #@24
    cmp-long v5, v0, v6

    #@26
    if-lez v5, :cond_3

    #@28
    .line 125
    add-int/lit8 v5, p1, 0x0

    #@2a
    add-long v6, v2, v0

    #@2c
    aput-wide v6, p0, v5

    #@2e
    .line 126
    const/4 v4, 0x1

    #@2f
    .restart local v4    # "i":I
    :goto_1
    const/16 v5, 0x10

    #@31
    if-ge v4, v5, :cond_3

    #@33
    .line 127
    add-int v5, p1, v4

    #@35
    aget-wide v6, p0, v5

    #@37
    add-int v5, p3, v4

    #@39
    aget-wide v8, p2, v5

    #@3b
    cmp-long v5, v6, v8

    #@3d
    if-lez v5, :cond_1

    #@3f
    .line 128
    add-int v5, p1, v4

    #@41
    add-int v6, p3, v4

    #@43
    aget-wide v6, p2, v6

    #@45
    aput-wide v6, p0, v5

    #@47
    .line 130
    :cond_1
    add-int v5, p1, v4

    #@49
    add-int/lit8 v5, v5, 0x1

    #@4b
    .line 131
    add-int v6, p1, v4

    #@4d
    add-int/lit8 v6, v6, 0x1

    #@4f
    aget-wide v6, p0, v6

    #@51
    long-to-double v6, v6

    #@52
    long-to-double v8, v2

    #@53
    mul-double/2addr v6, v8

    #@54
    .line 132
    add-int v8, p3, v4

    #@56
    add-int/lit8 v8, v8, 0x1

    #@58
    aget-wide v8, p2, v8

    #@5a
    long-to-double v8, v8

    #@5b
    long-to-double v10, v0

    #@5c
    mul-double/2addr v8, v10

    #@5d
    .line 131
    add-double/2addr v6, v8

    #@5e
    .line 133
    add-long v8, v2, v0

    #@60
    long-to-double v8, v8

    #@61
    .line 130
    div-double/2addr v6, v8

    #@62
    double-to-long v6, v6

    #@63
    aput-wide v6, p0, v5

    #@65
    .line 134
    add-int v5, p1, v4

    #@67
    add-int/lit8 v5, v5, 0x2

    #@69
    aget-wide v6, p0, v5

    #@6b
    add-int v5, p3, v4

    #@6d
    add-int/lit8 v5, v5, 0x2

    #@6f
    aget-wide v8, p2, v5

    #@71
    cmp-long v5, v6, v8

    #@73
    if-gez v5, :cond_2

    #@75
    .line 135
    add-int v5, p1, v4

    #@77
    add-int/lit8 v5, v5, 0x2

    #@79
    add-int v6, p3, v4

    #@7b
    add-int/lit8 v6, v6, 0x2

    #@7d
    aget-wide v6, p2, v6

    #@7f
    aput-wide v6, p0, v5

    #@81
    .line 126
    :cond_2
    add-int/lit8 v4, v4, 0x3

    #@83
    goto :goto_1

    #@84
    .line 116
    .end local v4    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I

    #@0
    .prologue
    .line 143
    const/4 v15, -0x1

    #@1
    .line 144
    .local v15, "printedScreen":I
    const/4 v12, 0x0

    #@2
    .local v12, "is":I
    :goto_0
    move-object/from16 v0, p3

    #@4
    array-length v2, v0

    #@5
    if-ge v12, v2, :cond_6

    #@7
    .line 145
    const/4 v14, -0x1

    #@8
    .line 146
    .local v14, "printedMem":I
    const/4 v10, 0x0

    #@9
    .local v10, "im":I
    :goto_1
    move-object/from16 v0, p4

    #@b
    array-length v2, v0

    #@c
    if-ge v10, v2, :cond_5

    #@e
    .line 147
    aget v13, p3, v12

    #@10
    .line 148
    .local v13, "iscreen":I
    aget v11, p4, v10

    #@12
    .line 149
    .local v11, "imem":I
    add-int v2, v13, v11

    #@14
    mul-int/lit8 v6, v2, 0xe

    #@16
    .line 150
    .local v6, "bucket":I
    int-to-byte v2, v6

    #@17
    const/4 v3, 0x0

    #@18
    move-object/from16 v0, p0

    #@1a
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    #@1d
    move-result-wide v8

    #@1e
    .line 151
    .local v8, "count":J
    const-wide/16 v2, 0x0

    #@20
    cmp-long v2, v8, v2

    #@22
    if-lez v2, :cond_2

    #@24
    .line 152
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27
    .line 153
    move-object/from16 v0, p3

    #@29
    array-length v2, v0

    #@2a
    const/4 v3, 0x1

    #@2b
    if-le v2, v3, :cond_0

    #@2d
    .line 154
    if-eq v15, v13, :cond_3

    #@2f
    move v2, v13

    #@30
    :goto_2
    move-object/from16 v0, p1

    #@32
    invoke-static {v0, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    #@35
    .line 156
    move v15, v13

    #@36
    .line 158
    :cond_0
    move-object/from16 v0, p4

    #@38
    array-length v2, v0

    #@39
    const/4 v3, 0x1

    #@3a
    if-le v2, v3, :cond_1

    #@3c
    .line 160
    if-eq v14, v11, :cond_4

    #@3e
    move v2, v11

    #@3f
    :goto_3
    const/4 v3, 0x0

    #@40
    .line 159
    move-object/from16 v0, p1

    #@42
    invoke-static {v0, v2, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    #@45
    .line 161
    move v14, v11

    #@46
    .line 163
    :cond_1
    const-string/jumbo v2, ": "

    #@49
    move-object/from16 v0, p1

    #@4b
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4e
    .line 164
    move-object/from16 v0, p1

    #@50
    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    #@53
    .line 165
    const-string/jumbo v2, " samples:"

    #@56
    move-object/from16 v0, p1

    #@58
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5b
    .line 166
    const-string/jumbo v5, "  Cached"

    #@5e
    const/4 v7, 0x1

    #@5f
    move-object/from16 v2, p0

    #@61
    move-object/from16 v3, p1

    #@63
    move-object/from16 v4, p2

    #@65
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    #@68
    .line 167
    const-string/jumbo v5, "  Free"

    #@6b
    const/4 v7, 0x4

    #@6c
    move-object/from16 v2, p0

    #@6e
    move-object/from16 v3, p1

    #@70
    move-object/from16 v4, p2

    #@72
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    #@75
    .line 168
    const-string/jumbo v5, "  ZRam"

    #@78
    const/4 v7, 0x7

    #@79
    move-object/from16 v2, p0

    #@7b
    move-object/from16 v3, p1

    #@7d
    move-object/from16 v4, p2

    #@7f
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    #@82
    .line 169
    const-string/jumbo v5, "  Kernel"

    #@85
    const/16 v7, 0xa

    #@87
    move-object/from16 v2, p0

    #@89
    move-object/from16 v3, p1

    #@8b
    move-object/from16 v4, p2

    #@8d
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    #@90
    .line 170
    const-string/jumbo v5, "  Native"

    #@93
    const/16 v7, 0xd

    #@95
    move-object/from16 v2, p0

    #@97
    move-object/from16 v3, p1

    #@99
    move-object/from16 v4, p2

    #@9b
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    #@9e
    .line 146
    :cond_2
    add-int/lit8 v10, v10, 0x1

    #@a0
    goto/16 :goto_1

    #@a2
    .line 155
    :cond_3
    const/4 v2, -0x1

    #@a3
    goto :goto_2

    #@a4
    .line 160
    :cond_4
    const/4 v2, -0x1

    #@a5
    goto :goto_3

    #@a6
    .line 144
    .end local v6    # "bucket":I
    .end local v8    # "count":J
    .end local v11    # "imem":I
    .end local v13    # "iscreen":I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    #@a8
    goto/16 :goto_0

    #@aa
    .line 142
    .end local v10    # "im":I
    .end local v14    # "printedMem":I
    :cond_6
    return-void
.end method

.method public getTotalMemUsage()[J
    .locals 7

    #@0
    .prologue
    .line 94
    const/16 v6, 0x10

    #@2
    new-array v5, v6, [J

    #@4
    .line 95
    .local v5, "total":[J
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    #@7
    move-result v0

    #@8
    .line 96
    .local v0, "N":I
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@b
    .line 97
    invoke-virtual {p0, v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    #@e
    move-result v4

    #@f
    .line 99
    .local v4, "key":I
    invoke-virtual {p0, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    #@12
    move-result-object v1

    #@13
    .line 100
    .local v1, "addData":[J
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    #@16
    move-result v2

    #@17
    .line 102
    .local v2, "addOff":I
    const/4 v6, 0x0

    #@18
    invoke-static {v5, v6, v1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    #@1b
    .line 96
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 104
    .end local v1    # "addData":[J
    .end local v2    # "addOff":I
    .end local v4    # "key":I
    :cond_0
    return-object v5
.end method

.method public mergeStats(I[JI)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "addData"    # [J
    .param p3, "addOff"    # I

    #@0
    .prologue
    .line 82
    int-to-byte v3, p1

    #@1
    const/16 v4, 0x10

    #@3
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getOrAddKey(BI)I

    #@6
    move-result v2

    #@7
    .line 84
    .local v2, "key":I
    invoke-virtual {p0, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    #@a
    move-result-object v0

    #@b
    .line 85
    .local v0, "dstData":[J
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    #@e
    move-result v1

    #@f
    .line 87
    .local v1, "dstOff":I
    invoke-static {v0, v1, p2, p3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    #@12
    .line 81
    return-void
.end method

.method public mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V
    .locals 6
    .param p1, "that"    # Lcom/android/internal/app/procstats/SysMemUsageTable;

    #@0
    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    #@3
    move-result v0

    #@4
    .line 63
    .local v0, "N":I
    const/4 v3, 0x0

    #@5
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    #@7
    .line 64
    invoke-virtual {p1, v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    #@a
    move-result v4

    #@b
    .line 66
    .local v4, "key":I
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    #@e
    move-result v5

    #@f
    .line 67
    .local v5, "state":I
    invoke-virtual {p1, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    #@12
    move-result-object v1

    #@13
    .line 68
    .local v1, "addData":[J
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    #@16
    move-result v2

    #@17
    .line 70
    .local v2, "addOff":I
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    #@1a
    .line 63
    add-int/lit8 v3, v3, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 61
    .end local v1    # "addData":[J
    .end local v2    # "addOff":I
    .end local v4    # "key":I
    .end local v5    # "state":I
    :cond_0
    return-void
.end method
