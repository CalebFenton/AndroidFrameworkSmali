.class final Lcom/android/server/DropBoxManagerService$EntryFile;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntryFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/DropBoxManagerService$EntryFile;",
        ">;"
    }
.end annotation


# instance fields
.field public final blocks:I

.field public final file:Ljava/io/File;

.field public final flags:I

.field public final tag:Ljava/lang/String;

.field public final timestampMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "millis"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 579
    iput-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@6
    .line 580
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@8
    .line 581
    const/4 v0, 0x1

    #@9
    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@b
    .line 582
    iput-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@d
    .line 583
    const/4 v0, 0x0

    #@e
    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    #@10
    .line 578
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "blockSize"    # I

    #@0
    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 536
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@5
    .line 537
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@7
    invoke-virtual {v6}, Ljava/io/File;->length()J

    #@a
    move-result-wide v6

    #@b
    int-to-long v8, p2

    #@c
    add-long/2addr v6, v8

    #@d
    const-wide/16 v8, 0x1

    #@f
    sub-long/2addr v6, v8

    #@10
    int-to-long v8, p2

    #@11
    div-long/2addr v6, v8

    #@12
    long-to-int v6, v6

    #@13
    iput v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    #@15
    .line 539
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 540
    .local v3, "name":Ljava/lang/String;
    const/16 v6, 0x40

    #@1b
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    #@1e
    move-result v0

    #@1f
    .line 541
    .local v0, "at":I
    if-gez v0, :cond_0

    #@21
    .line 542
    const/4 v6, 0x0

    #@22
    iput-object v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@24
    .line 543
    const-wide/16 v6, 0x0

    #@26
    iput-wide v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@28
    .line 544
    const/4 v6, 0x1

    #@29
    iput v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@2b
    .line 545
    return-void

    #@2c
    .line 548
    :cond_0
    const/4 v2, 0x0

    #@2d
    .line 549
    .local v2, "flags":I
    const/4 v6, 0x0

    #@2e
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    iput-object v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@38
    .line 550
    const-string/jumbo v6, ".gz"

    #@3b
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_1

    #@41
    .line 551
    const/4 v2, 0x4

    #@42
    .line 552
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@45
    move-result v6

    #@46
    add-int/lit8 v6, v6, -0x3

    #@48
    const/4 v7, 0x0

    #@49
    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 554
    :cond_1
    const-string/jumbo v6, ".lost"

    #@50
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@53
    move-result v6

    #@54
    if-eqz v6, :cond_2

    #@56
    .line 555
    or-int/lit8 v2, v2, 0x1

    #@58
    .line 556
    add-int/lit8 v6, v0, 0x1

    #@5a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@5d
    move-result v7

    #@5e
    add-int/lit8 v7, v7, -0x5

    #@60
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    .line 567
    :goto_0
    iput v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@66
    .line 570
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    move-result-wide v4

    #@6e
    .line 571
    .local v4, "millis":J
    :goto_1
    iput-wide v4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@70
    .line 535
    return-void

    #@71
    .line 557
    .end local v4    # "millis":J
    :cond_2
    const-string/jumbo v6, ".txt"

    #@74
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@77
    move-result v6

    #@78
    if-eqz v6, :cond_3

    #@7a
    .line 558
    or-int/lit8 v2, v2, 0x2

    #@7c
    .line 559
    add-int/lit8 v6, v0, 0x1

    #@7e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@81
    move-result v7

    #@82
    add-int/lit8 v7, v7, -0x4

    #@84
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@87
    move-result-object v3

    #@88
    goto :goto_0

    #@89
    .line 560
    :cond_3
    const-string/jumbo v6, ".dat"

    #@8c
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@8f
    move-result v6

    #@90
    if-eqz v6, :cond_4

    #@92
    .line 561
    add-int/lit8 v6, v0, 0x1

    #@94
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@97
    move-result v7

    #@98
    add-int/lit8 v7, v7, -0x4

    #@9a
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9d
    move-result-object v3

    #@9e
    goto :goto_0

    #@9f
    .line 563
    :cond_4
    const/4 v6, 0x1

    #@a0
    iput v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@a2
    .line 564
    const-wide/16 v6, 0x0

    #@a4
    iput-wide v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@a6
    .line 565
    return-void

    #@a7
    .line 570
    :catch_0
    move-exception v1

    #@a8
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v4, 0x0

    #@aa
    .restart local v4    # "millis":J
    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V
    .locals 4
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "timestampMillis"    # J
    .param p6, "flags"    # I
    .param p7, "blockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 499
    and-int/lit8 v0, p6, 0x1

    #@5
    if-eqz v0, :cond_0

    #@7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c
    throw v0

    #@d
    .line 501
    :cond_0
    iput-object p3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@f
    .line 502
    iput-wide p4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@11
    .line 503
    iput p6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@13
    .line 504
    new-instance v1, Ljava/io/File;

    #@15
    new-instance v0, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    const-string/jumbo v2, "@"

    #@25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 505
    and-int/lit8 v0, p6, 0x2

    #@2f
    if-eqz v0, :cond_1

    #@31
    const-string/jumbo v0, ".txt"

    #@34
    .line 504
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 506
    and-int/lit8 v0, p6, 0x4

    #@3a
    if-eqz v0, :cond_2

    #@3c
    const-string/jumbo v0, ".gz"

    #@3f
    .line 504
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@4a
    iput-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@4c
    .line 508
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@4e
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #@51
    move-result v0

    #@52
    if-nez v0, :cond_3

    #@54
    .line 509
    new-instance v0, Ljava/io/IOException;

    #@56
    new-instance v1, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v2, "Can\'t rename "

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    const-string/jumbo v2, " to "

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v0

    #@7b
    .line 505
    :cond_1
    const-string/jumbo v0, ".dat"

    #@7e
    goto :goto_0

    #@7f
    .line 506
    :cond_2
    const-string/jumbo v0, ""

    #@82
    goto :goto_1

    #@83
    .line 511
    :cond_3
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@85
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@88
    move-result-wide v0

    #@89
    int-to-long v2, p7

    #@8a
    add-long/2addr v0, v2

    #@8b
    const-wide/16 v2, 0x1

    #@8d
    sub-long/2addr v0, v2

    #@8e
    int-to-long v2, p7

    #@8f
    div-long/2addr v0, v2

    #@90
    long-to-int v0, v0

    #@91
    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    #@93
    .line 498
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;J)V
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "timestampMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 522
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    #@5
    .line 523
    iput-wide p3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@7
    .line 524
    const/4 v0, 0x1

    #@8
    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    #@a
    .line 525
    new-instance v0, Ljava/io/File;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "@"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string/jumbo v2, ".lost"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@32
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@34
    .line 526
    const/4 v0, 0x0

    #@35
    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    #@37
    .line 527
    new-instance v0, Ljava/io/FileOutputStream;

    #@39
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@3b
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@3e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    #@41
    .line 521
    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I
    .locals 7
    .param p1, "o"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, -0x1

    #@3
    .line 476
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@5
    iget-wide v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@7
    cmp-long v0, v0, v2

    #@9
    if-gez v0, :cond_0

    #@b
    return v4

    #@c
    .line 477
    :cond_0
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@e
    iget-wide v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    #@10
    cmp-long v0, v0, v2

    #@12
    if-lez v0, :cond_1

    #@14
    return v5

    #@15
    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@17
    if-eqz v0, :cond_2

    #@19
    iget-object v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@1b
    if-eqz v0, :cond_2

    #@1d
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@1f
    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@21
    invoke-virtual {v0, v1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 479
    :cond_2
    iget-object v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@28
    if-eqz v0, :cond_3

    #@2a
    return v4

    #@2b
    .line 480
    :cond_3
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    #@2d
    if-eqz v0, :cond_4

    #@2f
    return v5

    #@30
    .line 481
    :cond_4
    if-ne p0, p1, :cond_5

    #@32
    return v6

    #@33
    .line 482
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hashCode()I

    #@36
    move-result v0

    #@37
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hashCode()I

    #@3a
    move-result v1

    #@3b
    if-ge v0, v1, :cond_6

    #@3d
    return v4

    #@3e
    .line 483
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$EntryFile;->hashCode()I

    #@41
    move-result v0

    #@42
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hashCode()I

    #@45
    move-result v1

    #@46
    if-le v0, v1, :cond_7

    #@48
    return v5

    #@49
    .line 484
    :cond_7
    return v6
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 475
    check-cast p1, Lcom/android/server/DropBoxManagerService$EntryFile;

    #@2
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
