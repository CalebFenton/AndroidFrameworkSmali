.class public final Ljava/util/regex/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Ljava/util/regex/MatchResult;


# instance fields
.field private address:J

.field private anchoringBounds:Z

.field private appendPos:I

.field private input:Ljava/lang/String;

.field private matchFound:Z

.field private matchOffsets:[I

.field private pattern:Ljava/util/regex/Pattern;

.field private regionEnd:I

.field private regionStart:I

.field private transparentBounds:Z


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "input"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    #@6
    .line 89
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@9
    .line 90
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@c
    .line 88
    return-void
.end method

.method private appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    const/4 v2, 0x0

    #@1
    .line 129
    .local v2, "escape":Z
    const/4 v1, 0x0

    #@2
    .line 131
    .local v1, "dollar":Z
    const/4 v3, 0x0

    #@3
    .local v3, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@6
    move-result v4

    #@7
    if-ge v3, v4, :cond_5

    #@9
    .line 132
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 133
    .local v0, "c":C
    const/16 v4, 0x5c

    #@f
    if-ne v0, v4, :cond_0

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 135
    :cond_0
    const/16 v4, 0x24

    #@15
    if-ne v0, v4, :cond_1

    #@17
    if-eqz v2, :cond_3

    #@19
    .line 137
    :cond_1
    const/16 v4, 0x30

    #@1b
    if-lt v0, v4, :cond_4

    #@1d
    const/16 v4, 0x39

    #@1f
    if-gt v0, v4, :cond_4

    #@21
    if-eqz v1, :cond_4

    #@23
    .line 138
    add-int/lit8 v4, v0, -0x30

    #@25
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    .line 139
    const/4 v1, 0x0

    #@2d
    .line 131
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 134
    :cond_2
    const/4 v2, 0x1

    #@31
    .line 133
    goto :goto_1

    #@32
    .line 136
    :cond_3
    const/4 v1, 0x1

    #@33
    .line 135
    goto :goto_1

    #@34
    .line 141
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@37
    .line 142
    const/4 v1, 0x0

    #@38
    .line 143
    const/4 v2, 0x0

    #@39
    goto :goto_1

    #@3a
    .line 148
    .end local v0    # "c":C
    :cond_5
    if-eqz v2, :cond_6

    #@3c
    .line 149
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@3e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@41
    move-result v5

    #@42
    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@45
    throw v4

    #@46
    .line 127
    :cond_6
    return-void
.end method

.method private static native closeImpl(J)V
.end method

.method private ensureMatch()V
    .locals 2

    #@0
    .prologue
    .line 470
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 471
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "No successful match so far"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 469
    :cond_0
    return-void
.end method

.method private static native findImpl(JLjava/lang/String;I[I)Z
.end method

.method private static native findNextImpl(JLjava/lang/String;[I)Z
.end method

.method private static native groupCountImpl(J)I
.end method

.method private static native hitEndImpl(J)Z
.end method

.method private static native lookingAtImpl(JLjava/lang/String;[I)Z
.end method

.method private static native matchesImpl(JLjava/lang/String;[I)Z
.end method

.method private static native openImpl(J)J
.end method

.method public static quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v4, 0x5c

    #@2
    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v3

    #@8
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@b
    .line 397
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@f
    move-result v3

    #@10
    if-ge v1, v3, :cond_2

    #@12
    .line 398
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    .line 399
    .local v0, "c":C
    if-eq v0, v4, :cond_0

    #@18
    const/16 v3, 0x24

    #@1a
    if-ne v0, v3, :cond_1

    #@1c
    .line 400
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 402
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    .line 397
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 404
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    return-object v3
.end method

.method private static native requireEndImpl(J)Z
.end method

.method private reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;
    .locals 2
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 197
    if-nez p1, :cond_0

    #@3
    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "input == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 201
    :cond_0
    if-ltz p2, :cond_1

    #@e
    if-gez p3, :cond_2

    #@10
    .line 202
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@12
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@15
    throw v0

    #@16
    .line 201
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@19
    move-result v0

    #@1a
    if-gt p2, v0, :cond_1

    #@1c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@1f
    move-result v0

    #@20
    if-gt p3, v0, :cond_1

    #@22
    if-gt p2, p3, :cond_1

    #@24
    .line 205
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@2a
    .line 206
    iput p2, p0, Ljava/util/regex/Matcher;->regionStart:I

    #@2c
    .line 207
    iput p3, p0, Ljava/util/regex/Matcher;->regionEnd:I

    #@2e
    .line 208
    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    #@31
    .line 210
    iput-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@33
    .line 211
    iput v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    #@35
    .line 213
    return-object p0
.end method

.method private resetForInput()V
    .locals 5

    #@0
    .prologue
    .line 251
    monitor-enter p0

    #@1
    .line 252
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@3
    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@5
    iget v3, p0, Ljava/util/regex/Matcher;->regionStart:I

    #@7
    iget v4, p0, Ljava/util/regex/Matcher;->regionEnd:I

    #@9
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/regex/Matcher;->setInputImpl(JLjava/lang/String;II)V

    #@c
    .line 253
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@e
    iget-boolean v2, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    #@10
    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->useAnchoringBoundsImpl(JZ)V

    #@13
    .line 254
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@15
    iget-boolean v2, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    #@17
    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->useTransparentBoundsImpl(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit p0

    #@1b
    .line 250
    return-void

    #@1c
    .line 251
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method

.method private static native setInputImpl(JLjava/lang/String;II)V
.end method

.method private static native useAnchoringBoundsImpl(JZ)V
.end method

.method private static native useTransparentBoundsImpl(JZ)V
.end method


# virtual methods
.method public appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "replacement"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@2
    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    #@4
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    #@7
    move-result v2

    #@8
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/util/regex/Matcher;->appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@12
    .line 112
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    #@18
    .line 114
    return-object p0
.end method

.method public appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 284
    iget v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    #@2
    iget v1, p0, Ljava/util/regex/Matcher;->regionEnd:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 285
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@8
    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    #@a
    iget v2, p0, Ljava/util/regex/Matcher;->regionEnd:I

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13
    .line 287
    :cond_0
    return-object p1
.end method

.method public end()I
    .locals 1

    #@0
    .prologue
    .line 550
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->end(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public end(I)I
    .locals 2
    .param p1, "group"    # I

    #@0
    .prologue
    .line 559
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    #@3
    .line 560
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    #@5
    mul-int/lit8 v1, p1, 0x2

    #@7
    add-int/lit8 v1, v1, 0x1

    #@9
    aget v0, v0, v1

    #@b
    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 526
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1
    .line 527
    :try_start_1
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@3
    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->closeImpl(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@7
    .line 530
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@a
    .line 524
    return-void

    #@b
    .line 526
    :catchall_0
    move-exception v0

    #@c
    :try_start_3
    monitor-exit p0

    #@d
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@e
    .line 529
    :catchall_1
    move-exception v0

    #@f
    .line 530
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@12
    .line 529
    throw v0
.end method

.method public find()Z
    .locals 4

    #@0
    .prologue
    .line 357
    monitor-enter p0

    #@1
    .line 358
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@3
    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@5
    iget-object v3, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    #@7
    invoke-static {v0, v1, v2, v3}, Ljava/util/regex/Matcher;->findNextImpl(JLjava/lang/String;[I)Z

    #@a
    move-result v0

    #@b
    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 360
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@10
    return v0

    #@11
    .line 357
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public find(I)Z
    .locals 4
    .param p1, "start"    # I

    #@0
    .prologue
    .line 338
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    if-le p1, v0, :cond_1

    #@a
    .line 339
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "start="

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, "; length="

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@28
    move-result v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 342
    :cond_1
    monitor-enter p0

    #@36
    .line 343
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@38
    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@3a
    iget-object v3, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    #@3c
    invoke-static {v0, v1, v2, p1, v3}, Ljava/util/regex/Matcher;->findImpl(JLjava/lang/String;I[I)Z

    #@3f
    move-result v0

    #@40
    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    monitor-exit p0

    #@43
    .line 345
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@45
    return v0

    #@46
    .line 342
    :catchall_0
    move-exception v0

    #@47
    monitor-exit p0

    #@48
    throw v0
.end method

.method public group()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 569
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public group(I)Ljava/lang/String;
    .locals 5
    .param p1, "group"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 578
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    #@4
    .line 579
    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    #@6
    mul-int/lit8 v3, p1, 0x2

    #@8
    aget v0, v2, v3

    #@a
    .line 580
    .local v0, "from":I
    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    #@c
    mul-int/lit8 v3, p1, 0x2

    #@e
    add-int/lit8 v3, v3, 0x1

    #@10
    aget v1, v2, v3

    #@12
    .line 581
    .local v1, "to":I
    if-eq v0, v4, :cond_0

    #@14
    if-ne v1, v4, :cond_1

    #@16
    .line 582
    :cond_0
    const/4 v2, 0x0

    #@17
    return-object v2

    #@18
    .line 584
    :cond_1
    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@1a
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    return-object v2
.end method

.method public groupCount()I
    .locals 2

    #@0
    .prologue
    .line 592
    monitor-enter p0

    #@1
    .line 593
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@3
    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->groupCountImpl(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    .line 592
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public hasAnchoringBounds()Z
    .locals 1

    #@0
    .prologue
    .line 443
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    #@2
    return v0
.end method

.method public hasTransparentBounds()Z
    .locals 1

    #@0
    .prologue
    .line 482
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    #@2
    return v0
.end method

.method public hitEnd()Z
    .locals 2

    #@0
    .prologue
    .line 519
    monitor-enter p0

    #@1
    .line 520
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@3
    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->hitEndImpl(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    .line 519
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public lookingAt()Z
    .locals 4

    #@0
    .prologue
    .line 371
    monitor-enter p0

    #@1
    .line 372
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@3
    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@5
    iget-object v3, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    #@7
    invoke-static {v0, v1, v2, v3}, Ljava/util/regex/Matcher;->lookingAtImpl(JLjava/lang/String;[I)Z

    #@a
    move-result v0

    #@b
    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 374
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@10
    return v0

    #@11
    .line 371
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public matches()Z
    .locals 4

    #@0
    .prologue
    .line 385
    monitor-enter p0

    #@1
    .line 386
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@3
    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@5
    iget-object v3, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    #@7
    invoke-static {v0, v1, v2, v3}, Ljava/util/regex/Matcher;->matchesImpl(JLjava/lang/String;[I)Z

    #@a
    move-result v0

    #@b
    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 388
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@10
    return v0

    #@11
    .line 385
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method public pattern()Ljava/util/regex/Pattern;
    .locals 1

    #@0
    .prologue
    .line 328
    iget-object v0, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    #@2
    return-object v0
.end method

.method public region(II)Ljava/util/regex/Matcher;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@2
    invoke-direct {p0, v0, p1, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public regionEnd()I
    .locals 1

    #@0
    .prologue
    .line 498
    iget v0, p0, Ljava/util/regex/Matcher;->regionEnd:I

    #@2
    return v0
.end method

.method public regionStart()I
    .locals 1

    #@0
    .prologue
    .line 490
    iget v0, p0, Ljava/util/regex/Matcher;->regionStart:I

    #@2
    return v0
.end method

.method public replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "replacement"    # Ljava/lang/String;

    #@0
    .prologue
    .line 316
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    #@3
    .line 317
    new-instance v0, Ljava/lang/StringBuffer;

    #@5
    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@a
    move-result v1

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@e
    .line 318
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 319
    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@17
    goto :goto_0

    #@18
    .line 321
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1
.end method

.method public replaceFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "replacement"    # Ljava/lang/String;

    #@0
    .prologue
    .line 299
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    #@3
    .line 300
    new-instance v0, Ljava/lang/StringBuffer;

    #@5
    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@a
    move-result v1

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@e
    .line 301
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 302
    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@17
    .line 304
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    return-object v1
.end method

.method public requireEnd()Z
    .locals 2

    #@0
    .prologue
    .line 508
    monitor-enter p0

    #@1
    .line 509
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@3
    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->requireEndImpl(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    .line 508
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public reset()Ljava/util/regex/Matcher;
    .locals 3

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@2
    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-direct {p0, v0, v2, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .locals 2
    .param p1, "input"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 177
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v1, v0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public start()I
    .locals 1

    #@0
    .prologue
    .line 603
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->start(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public start(I)I
    .locals 2
    .param p1, "group"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 612
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    #@3
    .line 613
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    #@5
    mul-int/lit8 v1, p1, 0x2

    #@7
    aget v0, v0, v1

    #@9
    return v0
.end method

.method public toMatchResult()Ljava/util/regex/MatchResult;
    .locals 3

    #@0
    .prologue
    .line 416
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    #@3
    .line 417
    new-instance v0, Ljava/util/regex/MatchResultImpl;

    #@5
    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@7
    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    #@9
    invoke-direct {v0, v1, v2}, Ljava/util/regex/MatchResultImpl;-><init>(Ljava/lang/String;[I)V

    #@c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "[pattern="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 540
    const-string/jumbo v1, " region="

    #@23
    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 540
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->regionStart()I

    #@2a
    move-result v1

    #@2b
    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 540
    const-string/jumbo v1, ","

    #@32
    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 540
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->regionEnd()I

    #@39
    move-result v1

    #@3a
    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    .line 541
    const-string/jumbo v1, " lastmatch="

    #@41
    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    .line 541
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@47
    if-eqz v0, :cond_0

    #@49
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    .line 539
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 541
    const-string/jumbo v1, "]"

    #@54
    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    return-object v0

    #@5d
    .line 541
    :cond_0
    const-string/jumbo v0, ""

    #@60
    goto :goto_0
.end method

.method public useAnchoringBounds(Z)Ljava/util/regex/Matcher;
    .locals 2
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 429
    monitor-enter p0

    #@1
    .line 430
    :try_start_0
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    #@3
    .line 431
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@5
    invoke-static {v0, v1, p1}, Ljava/util/regex/Matcher;->useAnchoringBoundsImpl(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 433
    return-object p0

    #@a
    .line 429
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    .locals 4
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 227
    if-nez p1, :cond_0

    #@4
    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "pattern == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 231
    :cond_0
    iput-object p1, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    #@f
    .line 233
    monitor-enter p0

    #@10
    .line 234
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@12
    cmp-long v0, v0, v2

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 235
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@18
    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->closeImpl(J)V

    #@1b
    .line 236
    const-wide/16 v0, 0x0

    #@1d
    iput-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@1f
    .line 238
    :cond_1
    iget-wide v0, p1, Ljava/util/regex/Pattern;->address:J

    #@21
    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->openImpl(J)J

    #@24
    move-result-wide v0

    #@25
    iput-wide v0, p0, Ljava/util/regex/Matcher;->address:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit p0

    #@28
    .line 241
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 242
    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    #@2f
    .line 245
    :cond_2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    #@32
    move-result v0

    #@33
    add-int/lit8 v0, v0, 0x1

    #@35
    mul-int/lit8 v0, v0, 0x2

    #@37
    new-array v0, v0, [I

    #@39
    iput-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    #@3b
    .line 246
    const/4 v0, 0x0

    #@3c
    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@3e
    .line 247
    return-object p0

    #@3f
    .line 233
    :catchall_0
    move-exception v0

    #@40
    monitor-exit p0

    #@41
    throw v0
.end method

.method public useTransparentBounds(Z)Ljava/util/regex/Matcher;
    .locals 2
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 455
    monitor-enter p0

    #@1
    .line 456
    :try_start_0
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    #@3
    .line 457
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@5
    invoke-static {v0, v1, p1}, Ljava/util/regex/Matcher;->useTransparentBoundsImpl(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 459
    return-object p0

    #@a
    .line 455
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method
