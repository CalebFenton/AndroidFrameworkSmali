.class public Lcom/android/internal/app/procstats/PssTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "PssTable.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0
    .param p1, "tableData"    # Lcom/android/internal/app/procstats/SparseMappingTable;

    #@0
    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    #@3
    .line 36
    return-void
.end method


# virtual methods
.method public mergeStats(IIJJJJJJ)V
    .locals 15
    .param p1, "state"    # I
    .param p2, "inCount"    # I
    .param p3, "minPss"    # J
    .param p5, "avgPss"    # J
    .param p7, "maxPss"    # J
    .param p9, "minUss"    # J
    .param p11, "avgUss"    # J
    .param p13, "maxUss"    # J

    #@0
    .prologue
    .line 64
    move/from16 v0, p1

    #@2
    int-to-byte v5, v0

    #@3
    const/4 v8, 0x7

    #@4
    invoke-virtual {p0, v5, v8}, Lcom/android/internal/app/procstats/PssTable;->getOrAddKey(BI)I

    #@7
    move-result v4

    #@8
    .line 65
    .local v4, "key":I
    const/4 v5, 0x0

    #@9
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@c
    move-result-wide v2

    #@d
    .line 66
    .local v2, "count":J
    const-wide/16 v8, 0x0

    #@f
    cmp-long v5, v2, v8

    #@11
    if-nez v5, :cond_1

    #@13
    .line 67
    move/from16 v0, p2

    #@15
    int-to-long v8, v0

    #@16
    const/4 v5, 0x0

    #@17
    invoke-virtual {p0, v4, v5, v8, v9}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    #@1a
    .line 68
    const/4 v5, 0x1

    #@1b
    move-wide/from16 v0, p3

    #@1d
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    #@20
    .line 69
    const/4 v5, 0x2

    #@21
    move-wide/from16 v0, p5

    #@23
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    #@26
    .line 70
    const/4 v5, 0x3

    #@27
    move-wide/from16 v0, p7

    #@29
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    #@2c
    .line 71
    const/4 v5, 0x4

    #@2d
    move-wide/from16 v0, p9

    #@2f
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    #@32
    .line 72
    const/4 v5, 0x5

    #@33
    move-wide/from16 v0, p11

    #@35
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    #@38
    .line 73
    const/4 v5, 0x6

    #@39
    move-wide/from16 v0, p13

    #@3b
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    #@3e
    .line 63
    :cond_0
    :goto_0
    return-void

    #@3f
    .line 75
    :cond_1
    move/from16 v0, p2

    #@41
    int-to-long v8, v0

    #@42
    add-long/2addr v8, v2

    #@43
    const/4 v5, 0x0

    #@44
    invoke-virtual {p0, v4, v5, v8, v9}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    #@47
    .line 79
    const/4 v5, 0x1

    #@48
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@4b
    move-result-wide v6

    #@4c
    .line 80
    .local v6, "val":J
    cmp-long v5, v6, p3

    #@4e
    if-lez v5, :cond_2

    #@50
    .line 81
    const/4 v5, 0x1

    #@51
    move-wide/from16 v0, p3

    #@53
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    #@56
    .line 84
    :cond_2
    const/4 v5, 0x2

    #@57
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@5a
    move-result-wide v6

    #@5b
    .line 86
    long-to-double v8, v6

    #@5c
    long-to-double v10, v2

    #@5d
    mul-double/2addr v8, v10

    #@5e
    move-wide/from16 v0, p5

    #@60
    long-to-double v10, v0

    #@61
    move/from16 v0, p2

    #@63
    int-to-double v12, v0

    #@64
    mul-double/2addr v10, v12

    #@65
    add-double/2addr v8, v10

    #@66
    move/from16 v0, p2

    #@68
    int-to-long v10, v0

    #@69
    add-long/2addr v10, v2

    #@6a
    long-to-double v10, v10

    #@6b
    div-double/2addr v8, v10

    #@6c
    double-to-long v8, v8

    #@6d
    .line 85
    const/4 v5, 0x2

    #@6e
    invoke-virtual {p0, v4, v5, v8, v9}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    #@71
    .line 88
    const/4 v5, 0x3

    #@72
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@75
    move-result-wide v6

    #@76
    .line 89
    cmp-long v5, v6, p7

    #@78
    if-gez v5, :cond_3

    #@7a
    .line 90
    const/4 v5, 0x3

    #@7b
    move-wide/from16 v0, p7

    #@7d
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    #@80
    .line 93
    :cond_3
    const/4 v5, 0x4

    #@81
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@84
    move-result-wide v6

    #@85
    .line 94
    cmp-long v5, v6, p9

    #@87
    if-lez v5, :cond_4

    #@89
    .line 95
    const/4 v5, 0x4

    #@8a
    move-wide/from16 v0, p9

    #@8c
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    #@8f
    .line 98
    :cond_4
    const/4 v5, 0x5

    #@90
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@93
    move-result-wide v6

    #@94
    .line 100
    long-to-double v8, v6

    #@95
    long-to-double v10, v2

    #@96
    mul-double/2addr v8, v10

    #@97
    move-wide/from16 v0, p11

    #@99
    long-to-double v10, v0

    #@9a
    move/from16 v0, p2

    #@9c
    int-to-double v12, v0

    #@9d
    mul-double/2addr v10, v12

    #@9e
    add-double/2addr v8, v10

    #@9f
    move/from16 v0, p2

    #@a1
    int-to-long v10, v0

    #@a2
    add-long/2addr v10, v2

    #@a3
    long-to-double v10, v10

    #@a4
    div-double/2addr v8, v10

    #@a5
    double-to-long v8, v8

    #@a6
    .line 99
    const/4 v5, 0x2

    #@a7
    invoke-virtual {p0, v4, v5, v8, v9}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    #@aa
    .line 102
    const/4 v5, 0x6

    #@ab
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@ae
    move-result-wide v6

    #@af
    .line 103
    cmp-long v5, v6, p13

    #@b1
    if-gez v5, :cond_0

    #@b3
    .line 104
    const/4 v5, 0x6

    #@b4
    move-wide/from16 v0, p13

    #@b6
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    #@b9
    goto :goto_0
.end method

.method public mergeStats(Lcom/android/internal/app/procstats/PssTable;)V
    .locals 20
    .param p1, "that"    # Lcom/android/internal/app/procstats/PssTable;

    #@0
    .prologue
    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    #@3
    move-result v2

    #@4
    .line 45
    .local v2, "N":I
    const/16 v18, 0x0

    #@6
    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    #@8
    if-ge v0, v2, :cond_0

    #@a
    .line 46
    move-object/from16 v0, p1

    #@c
    move/from16 v1, v18

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    #@11
    move-result v19

    #@12
    .line 47
    .local v19, "key":I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    #@15
    move-result v4

    #@16
    .line 48
    .local v4, "state":I
    const/4 v3, 0x0

    #@17
    move-object/from16 v0, p1

    #@19
    move/from16 v1, v19

    #@1b
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@1e
    move-result-wide v6

    #@1f
    long-to-int v5, v6

    #@20
    .line 49
    const/4 v3, 0x1

    #@21
    move-object/from16 v0, p1

    #@23
    move/from16 v1, v19

    #@25
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@28
    move-result-wide v6

    #@29
    .line 50
    const/4 v3, 0x2

    #@2a
    move-object/from16 v0, p1

    #@2c
    move/from16 v1, v19

    #@2e
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@31
    move-result-wide v8

    #@32
    .line 51
    const/4 v3, 0x3

    #@33
    move-object/from16 v0, p1

    #@35
    move/from16 v1, v19

    #@37
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@3a
    move-result-wide v10

    #@3b
    .line 52
    const/4 v3, 0x4

    #@3c
    move-object/from16 v0, p1

    #@3e
    move/from16 v1, v19

    #@40
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@43
    move-result-wide v12

    #@44
    .line 53
    const/4 v3, 0x5

    #@45
    move-object/from16 v0, p1

    #@47
    move/from16 v1, v19

    #@49
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@4c
    move-result-wide v14

    #@4d
    .line 54
    const/4 v3, 0x6

    #@4e
    move-object/from16 v0, p1

    #@50
    move/from16 v1, v19

    #@52
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    #@55
    move-result-wide v16

    #@56
    move-object/from16 v3, p0

    #@58
    .line 48
    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJ)V

    #@5b
    .line 45
    add-int/lit8 v18, v18, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 43
    .end local v4    # "state":I
    .end local v19    # "key":I
    :cond_0
    return-void
.end method
