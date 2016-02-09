.class public Lcom/android/server/usage/AppIdleHistory;
.super Ljava/lang/Object;
.source "AppIdleHistory.java"


# static fields
.field private static final FLAG_LAST_STATE:I = 0x2

.field private static final FLAG_PARTIAL_ACTIVE:I = 0x1

.field private static final HISTORY_SIZE:I = 0x64

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final PERIOD_DURATION:J = 0x36ee80L


# instance fields
.field private lastPeriod:J

.field private mIdleHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    #@a
    .line 31
    const-wide/16 v0, 0x0

    #@c
    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->lastPeriod:J

    #@e
    .line 28
    return-void
.end method

.method private getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;)[B
    .locals 2
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    #@0
    .prologue
    .line 80
    .local p1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [B

    #@6
    .line 81
    .local v0, "packageHistory":[B
    if-nez v0, :cond_0

    #@8
    .line 82
    const/16 v1, 0x64

    #@a
    new-array v0, v1, [B

    #@c
    .line 83
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 85
    :cond_0
    return-object v0
.end method

.method private getUserHistory(I)Landroid/util/ArrayMap;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    #@0
    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/util/ArrayMap;

    #@8
    .line 72
    .local v0, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    if-nez v0, :cond_0

    #@a
    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    .end local v0    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    .line 74
    .restart local v0    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 76
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;IZJ)V
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "timeNow"    # J

    #@0
    .prologue
    .line 40
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p2

    #@4
    invoke-direct {v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    #@7
    move-result-object v11

    #@8
    .line 41
    .local v11, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    move-object/from16 v0, p0

    #@a
    move-object/from16 v1, p1

    #@c
    invoke-direct {v0, v11, v1}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;)[B

    #@f
    move-result-object v7

    #@10
    .line 43
    .local v7, "packageHistory":[B
    const-wide/32 v12, 0x36ee80

    #@13
    div-long v8, p4, v12

    #@15
    .line 45
    .local v8, "thisPeriod":J
    move-object/from16 v0, p0

    #@17
    iget-wide v12, v0, Lcom/android/server/usage/AppIdleHistory;->lastPeriod:J

    #@19
    const-wide/16 v14, 0x0

    #@1b
    cmp-long v12, v12, v14

    #@1d
    if-eqz v12, :cond_2

    #@1f
    move-object/from16 v0, p0

    #@21
    iget-wide v12, v0, Lcom/android/server/usage/AppIdleHistory;->lastPeriod:J

    #@23
    cmp-long v12, v12, v8

    #@25
    if-gez v12, :cond_2

    #@27
    .line 46
    move-object/from16 v0, p0

    #@29
    iget-wide v12, v0, Lcom/android/server/usage/AppIdleHistory;->lastPeriod:J

    #@2b
    sub-long v12, v8, v12

    #@2d
    const-wide/16 v14, 0x63

    #@2f
    cmp-long v12, v12, v14

    #@31
    if-gez v12, :cond_2

    #@33
    .line 47
    move-object/from16 v0, p0

    #@35
    iget-wide v12, v0, Lcom/android/server/usage/AppIdleHistory;->lastPeriod:J

    #@37
    sub-long v12, v8, v12

    #@39
    long-to-int v3, v12

    #@3a
    .line 48
    .local v3, "diff":I
    move-object/from16 v0, p0

    #@3c
    iget-object v12, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    #@3e
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    #@41
    move-result v2

    #@42
    .line 49
    .local v2, "NUSERS":I
    const/4 v10, 0x0

    #@43
    .local v10, "u":I
    :goto_0
    if-ge v10, v2, :cond_2

    #@45
    .line 50
    move-object/from16 v0, p0

    #@47
    iget-object v12, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    #@49
    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@4c
    move-result-object v11

    #@4d
    .end local v11    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    check-cast v11, Landroid/util/ArrayMap;

    #@4f
    .line 51
    .restart local v11    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@52
    move-result-object v12

    #@53
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@56
    move-result-object v5

    #@57
    .local v5, "history$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@5a
    move-result v12

    #@5b
    if-eqz v12, :cond_1

    #@5d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@60
    move-result-object v4

    #@61
    check-cast v4, [B

    #@63
    .line 53
    .local v4, "history":[B
    rsub-int/lit8 v12, v3, 0x64

    #@65
    const/4 v13, 0x0

    #@66
    invoke-static {v4, v3, v4, v13, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@69
    .line 55
    const/4 v6, 0x0

    #@6a
    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_0

    #@6c
    .line 56
    rsub-int/lit8 v12, v6, 0x64

    #@6e
    add-int/lit8 v12, v12, -0x1

    #@70
    .line 57
    rsub-int/lit8 v13, v3, 0x64

    #@72
    add-int/lit8 v13, v13, -0x1

    #@74
    aget-byte v13, v4, v13

    #@76
    and-int/lit8 v13, v13, 0x2

    #@78
    int-to-byte v13, v13

    #@79
    .line 56
    aput-byte v13, v4, v12

    #@7b
    .line 55
    add-int/lit8 v6, v6, 0x1

    #@7d
    goto :goto_1

    #@7e
    .line 49
    .end local v4    # "history":[B
    .end local v6    # "i":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    #@80
    goto :goto_0

    #@81
    .line 62
    .end local v2    # "NUSERS":I
    .end local v3    # "diff":I
    .end local v5    # "history$iterator":Ljava/util/Iterator;
    .end local v10    # "u":I
    :cond_2
    move-object/from16 v0, p0

    #@83
    iput-wide v8, v0, Lcom/android/server/usage/AppIdleHistory;->lastPeriod:J

    #@85
    .line 63
    if-nez p3, :cond_3

    #@87
    .line 64
    const/4 v12, 0x3

    #@88
    const/16 v13, 0x63

    #@8a
    aput-byte v12, v7, v13

    #@8c
    .line 39
    :goto_2
    return-void

    #@8d
    .line 66
    :cond_3
    const/16 v12, 0x63

    #@8f
    aget-byte v13, v7, v12

    #@91
    and-int/lit8 v13, v13, -0x3

    #@93
    int-to-byte v13, v13

    #@94
    aput-byte v13, v7, v12

    #@96
    goto :goto_2
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .locals 8
    .param p1, "idpw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 99
    iget-object v6, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v5

    #@6
    check-cast v5, Landroid/util/ArrayMap;

    #@8
    .line 100
    .local v5, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    if-nez v5, :cond_0

    #@a
    return-void

    #@b
    .line 101
    :cond_0
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@e
    move-result v0

    #@f
    .line 102
    .local v0, "P":I
    const/4 v3, 0x0

    #@10
    .local v3, "p":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@12
    .line 103
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Ljava/lang/String;

    #@18
    .line 104
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, [B

    #@1e
    .line 105
    .local v1, "history":[B
    const/4 v2, 0x0

    #@1f
    .local v2, "i":I
    :goto_1
    const/16 v6, 0x64

    #@21
    if-ge v2, v6, :cond_2

    #@23
    .line 106
    aget-byte v6, v1, v2

    #@25
    if-nez v6, :cond_1

    #@27
    const/16 v6, 0x2e

    #@29
    :goto_2
    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    #@2c
    .line 105
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 106
    :cond_1
    const/16 v6, 0x41

    #@31
    goto :goto_2

    #@32
    .line 108
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v7, "  "

    #@3a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@49
    .line 109
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@4c
    .line 102
    add-int/lit8 v3, v3, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 98
    .end local v1    # "history":[B
    .end local v2    # "i":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public isIdle(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    #@4
    move-result-object v1

    #@5
    .line 94
    .local v1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    invoke-direct {p0, v1, p2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;)[B

    #@8
    move-result-object v0

    #@9
    .line 95
    .local v0, "packageHistory":[B
    const/16 v3, 0x63

    #@b
    aget-byte v3, v0, v3

    #@d
    and-int/lit8 v3, v3, 0x2

    #@f
    if-nez v3, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    return v2
.end method

.method public removeUser(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    #@5
    .line 88
    return-void
.end method
