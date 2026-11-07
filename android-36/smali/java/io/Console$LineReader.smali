.class Ljava/io/Console$LineReader;
.super Ljava/io/Reader;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/Console;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LineReader"
.end annotation


# instance fields
.field private greylist-max-o cb:[C

.field private greylist-max-o in:Ljava/io/Reader;

.field greylist-max-o leftoverLF:Z

.field private greylist-max-o nChars:I

.field private greylist-max-o nextChar:I

.field final synthetic blacklist this$0:Ljava/io/Console;


# direct methods
.method constructor blacklist <init>(Ljava/io/Console;Ljava/io/Reader;)V
    .registers 4
    .param p1, "this$0"    # Ljava/io/Console;
    .param p2, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 471
    iput-object p1, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 472
    iput-object p2, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    .line 473
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/Console$LineReader;->cb:[C

    .line 474
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/Console$LineReader;->nChars:I

    iput v0, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 475
    iput-boolean v0, p0, Ljava/io/Console$LineReader;->leftoverLF:Z

    .line 476
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 477
    return-void
.end method

.method public whitelist test-api read([CII)I
    .registers 16
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    move v0, p2

    .line 487
    .local v0, "off":I
    add-int v1, p2, p3

    .line 488
    .local v1, "end":I
    if-ltz p2, :cond_116

    array-length v2, p1

    if-gt p2, v2, :cond_116

    if-ltz p3, :cond_116

    if-ltz v1, :cond_116

    array-length v2, p1

    if-gt v1, v2, :cond_116

    .line 492
    iget-object v2, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v2}, Ljava/io/Console;->-$$Nest$fgetreadLock(Ljava/io/Console;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 493
    const/4 v3, 0x0

    .line 494
    .local v3, "eof":Z
    const/4 v4, 0x0

    .line 496
    .local v4, "c":C
    :cond_18
    :try_start_18
    iget v5, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v6, p0, Ljava/io/Console$LineReader;->nChars:I

    const/16 v7, 0xd

    const/16 v8, 0xa

    const/4 v9, 0x0

    if-lt v5, v6, :cond_5a

    .line 497
    const/4 v5, 0x0

    .line 499
    .local v5, "n":I
    :cond_24
    iget-object v6, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    iget-object v10, p0, Ljava/io/Console$LineReader;->cb:[C

    iget-object v11, p0, Ljava/io/Console$LineReader;->cb:[C

    array-length v11, v11

    invoke-virtual {v6, v10, v9, v11}, Ljava/io/Reader;->read([CII)I

    move-result v6

    move v5, v6

    .line 500
    if-eqz v5, :cond_24

    .line 501
    if-lez v5, :cond_4f

    .line 502
    iput v5, p0, Ljava/io/Console$LineReader;->nChars:I

    .line 503
    iput v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 504
    iget-object v6, p0, Ljava/io/Console$LineReader;->cb:[C

    array-length v6, v6

    if-ge v5, v6, :cond_5a

    iget-object v6, p0, Ljava/io/Console$LineReader;->cb:[C

    add-int/lit8 v10, v5, -0x1

    aget-char v6, v6, v10

    if-eq v6, v8, :cond_5a

    iget-object v6, p0, Ljava/io/Console$LineReader;->cb:[C

    add-int/lit8 v10, v5, -0x1

    aget-char v6, v6, v10

    if-eq v6, v7, :cond_5a

    .line 511
    const/4 v3, 0x1

    goto :goto_5a

    .line 514
    :cond_4f
    sub-int v6, v0, p2

    if-nez v6, :cond_56

    .line 515
    monitor-exit v2

    const/4 v2, -0x1

    return v2

    .line 516
    :cond_56
    sub-int v6, v0, p2

    monitor-exit v2

    return v6

    .line 519
    .end local v5    # "n":I
    :cond_5a
    :goto_5a
    iget-boolean v5, p0, Ljava/io/Console$LineReader;->leftoverLF:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_74

    iget-object v5, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v5}, Ljava/io/Console;->-$$Nest$fgetrcb(Ljava/io/Console;)[C

    move-result-object v5

    if-ne p1, v5, :cond_74

    iget-object v5, p0, Ljava/io/Console$LineReader;->cb:[C

    iget v10, p0, Ljava/io/Console$LineReader;->nextChar:I

    aget-char v5, v5, v10

    if-ne v5, v8, :cond_74

    .line 524
    iget v5, p0, Ljava/io/Console$LineReader;->nextChar:I

    add-int/2addr v5, v6

    iput v5, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 526
    :cond_74
    iput-boolean v9, p0, Ljava/io/Console$LineReader;->leftoverLF:Z

    .line 527
    :goto_76
    iget v5, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v10, p0, Ljava/io/Console$LineReader;->nChars:I
    :try_end_7a
    .catchall {:try_start_18 .. :try_end_7a} :catchall_113

    if-ge v5, v10, :cond_10d

    .line 528
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "off":I
    .local v5, "off":I
    :try_start_7e
    iget-object v10, p0, Ljava/io/Console$LineReader;->cb:[C

    iget v11, p0, Ljava/io/Console$LineReader;->nextChar:I

    aget-char v10, v10, v11

    aput-char v10, p1, v0

    move v4, v10

    .line 529
    iget-object v0, p0, Ljava/io/Console$LineReader;->cb:[C

    iget v10, p0, Ljava/io/Console$LineReader;->nextChar:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Ljava/io/Console$LineReader;->nextChar:I

    aput-char v9, v0, v10

    .line 530
    if-ne v4, v8, :cond_97

    .line 531
    sub-int v0, v5, p2

    monitor-exit v2

    return v0

    .line 532
    :cond_97
    if-ne v4, v7, :cond_ed

    .line 533
    if-ne v5, v1, :cond_b3

    .line 538
    iget-object v0, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v0}, Ljava/io/Console;->-$$Nest$fgetrcb(Ljava/io/Console;)[C

    move-result-object v0

    if-ne p1, v0, :cond_ad

    .line 539
    iget-object v0, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v0}, Ljava/io/Console;->-$$Nest$mgrow(Ljava/io/Console;)[C

    move-result-object v0

    move-object p1, v0

    .line 540
    array-length v0, p1

    move v1, v0

    .end local v1    # "end":I
    .local v0, "end":I
    goto :goto_b3

    .line 542
    .end local v0    # "end":I
    .restart local v1    # "end":I
    :cond_ad
    iput-boolean v6, p0, Ljava/io/Console$LineReader;->leftoverLF:Z

    .line 543
    sub-int v0, v5, p2

    monitor-exit v2

    return v0

    .line 546
    :cond_b3
    :goto_b3
    iget v0, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v7, p0, Ljava/io/Console$LineReader;->nChars:I

    if-ne v0, v7, :cond_d0

    iget-object v0, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 554
    iget-object v0, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    iget-object v10, p0, Ljava/io/Console$LineReader;->cb:[C

    array-length v10, v10

    invoke-virtual {v0, v7, v9, v10}, Ljava/io/Reader;->read([CII)I

    move-result v0

    iput v0, p0, Ljava/io/Console$LineReader;->nChars:I

    .line 555
    iput v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 557
    :cond_d0
    iget v0, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v7, p0, Ljava/io/Console$LineReader;->nChars:I

    if-ge v0, v7, :cond_e8

    iget-object v0, p0, Ljava/io/Console$LineReader;->cb:[C

    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    aget-char v0, v0, v7
    :try_end_dc
    .catchall {:try_start_7e .. :try_end_dc} :catchall_10a

    if-ne v0, v8, :cond_e8

    .line 558
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "off":I
    .local v0, "off":I
    :try_start_e0
    aput-char v8, p1, v5

    .line 559
    iget v5, p0, Ljava/io/Console$LineReader;->nextChar:I

    add-int/2addr v5, v6

    iput v5, p0, Ljava/io/Console$LineReader;->nextChar:I

    goto :goto_e9

    .line 561
    .end local v0    # "off":I
    .restart local v5    # "off":I
    :cond_e8
    move v0, v5

    .end local v5    # "off":I
    .restart local v0    # "off":I
    :goto_e9
    sub-int v5, v0, p2

    monitor-exit v2
    :try_end_ec
    .catchall {:try_start_e0 .. :try_end_ec} :catchall_113

    return v5

    .line 562
    .end local v0    # "off":I
    .restart local v5    # "off":I
    :cond_ed
    if-ne v5, v1, :cond_107

    .line 563
    :try_start_ef
    iget-object v0, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v0}, Ljava/io/Console;->-$$Nest$fgetrcb(Ljava/io/Console;)[C

    move-result-object v0

    if-ne p1, v0, :cond_103

    .line 564
    iget-object v0, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v0}, Ljava/io/Console;->-$$Nest$mgrow(Ljava/io/Console;)[C

    move-result-object v0

    move-object p1, v0

    .line 565
    array-length v0, p1

    move v1, v0

    move v0, v5

    goto/16 :goto_76

    .line 567
    :cond_103
    sub-int v0, v5, p2

    monitor-exit v2
    :try_end_106
    .catchall {:try_start_ef .. :try_end_106} :catchall_10a

    return v0

    .line 562
    :cond_107
    move v0, v5

    goto/16 :goto_76

    .line 574
    .end local v3    # "eof":Z
    .end local v4    # "c":C
    :catchall_10a
    move-exception v3

    move v0, v5

    goto :goto_114

    .line 571
    .end local v5    # "off":I
    .restart local v0    # "off":I
    .restart local v3    # "eof":Z
    .restart local v4    # "c":C
    :cond_10d
    if-eqz v3, :cond_18

    .line 572
    sub-int v5, v0, p2

    :try_start_111
    monitor-exit v2

    return v5

    .line 574
    .end local v3    # "eof":Z
    .end local v4    # "c":C
    :catchall_113
    move-exception v3

    :goto_114
    monitor-exit v2
    :try_end_115
    .catchall {:try_start_111 .. :try_end_115} :catchall_113

    throw v3

    .line 490
    :cond_116
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public whitelist test-api ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    return v0
.end method
