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
.field private cb:[C

.field private in:Ljava/io/Reader;

.field leftoverLF:Z

.field private nChars:I

.field private nextChar:I

.field final synthetic this$0:Ljava/io/Console;


# direct methods
.method constructor <init>(Ljava/io/Console;Ljava/io/Reader;)V
    .locals 2
    .param p1, "this$0"    # Ljava/io/Console;
    .param p2, "in"    # Ljava/io/Reader;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 408
    iput-object p1, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    #@3
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    #@6
    .line 409
    iput-object p2, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    #@8
    .line 410
    const/16 v0, 0x400

    #@a
    new-array v0, v0, [C

    #@c
    iput-object v0, p0, Ljava/io/Console$LineReader;->cb:[C

    #@e
    .line 411
    iput v1, p0, Ljava/io/Console$LineReader;->nChars:I

    #@10
    iput v1, p0, Ljava/io/Console$LineReader;->nextChar:I

    #@12
    .line 412
    iput-boolean v1, p0, Ljava/io/Console$LineReader;->leftoverLF:Z

    #@14
    .line 408
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 414
    return-void
.end method

.method public read([CII)I
    .locals 12
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 423
    move v5, p2

    #@1
    .line 424
    .local v5, "off":I
    add-int v2, p2, p3

    #@3
    .line 425
    .local v2, "end":I
    if-ltz p2, :cond_0

    #@5
    array-length v7, p1

    #@6
    if-le p2, v7, :cond_1

    #@8
    .line 427
    :cond_0
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    #@a
    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@d
    throw v7

    #@e
    .line 425
    :cond_1
    if-ltz p3, :cond_0

    #@10
    .line 426
    if-ltz v2, :cond_0

    #@12
    array-length v7, p1

    #@13
    if-gt v2, v7, :cond_0

    #@15
    .line 429
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    #@17
    invoke-static {v7}, Ljava/io/Console;->-get1(Ljava/io/Console;)Ljava/lang/Object;

    #@1a
    move-result-object v8

    #@1b
    monitor-enter v8

    #@1c
    .line 430
    const/4 v3, 0x0

    #@1d
    .line 431
    .local v3, "eof":Z
    const/4 v0, 0x0

    #@1e
    .line 433
    :goto_0
    :try_start_0
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    #@20
    iget v9, p0, Ljava/io/Console$LineReader;->nChars:I

    #@22
    if-lt v7, v9, :cond_3

    #@24
    .line 434
    const/4 v4, 0x0

    #@25
    .line 436
    .local v4, "n":I
    :cond_2
    iget-object v7, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    #@27
    iget-object v9, p0, Ljava/io/Console$LineReader;->cb:[C

    #@29
    iget-object v10, p0, Ljava/io/Console$LineReader;->cb:[C

    #@2b
    array-length v10, v10

    #@2c
    const/4 v11, 0x0

    #@2d
    invoke-virtual {v7, v9, v11, v10}, Ljava/io/Reader;->read([CII)I

    #@30
    move-result v4

    #@31
    .line 437
    if-eqz v4, :cond_2

    #@33
    .line 438
    if-lez v4, :cond_5

    #@35
    .line 439
    iput v4, p0, Ljava/io/Console$LineReader;->nChars:I

    #@37
    .line 440
    const/4 v7, 0x0

    #@38
    iput v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    #@3a
    .line 441
    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    #@3c
    array-length v7, v7

    #@3d
    if-ge v4, v7, :cond_3

    #@3f
    .line 442
    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    #@41
    add-int/lit8 v9, v4, -0x1

    #@43
    aget-char v7, v7, v9

    #@45
    const/16 v9, 0xa

    #@47
    if-eq v7, v9, :cond_3

    #@49
    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    #@4b
    add-int/lit8 v9, v4, -0x1

    #@4d
    aget-char v7, v7, v9

    #@4f
    const/16 v9, 0xd

    #@51
    if-eq v7, v9, :cond_3

    #@53
    .line 448
    const/4 v3, 0x1

    #@54
    .line 456
    .end local v4    # "n":I
    :cond_3
    iget-boolean v7, p0, Ljava/io/Console$LineReader;->leftoverLF:Z

    #@56
    if-eqz v7, :cond_4

    #@58
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    #@5a
    invoke-static {v7}, Ljava/io/Console;->-get0(Ljava/io/Console;)[C

    #@5d
    move-result-object v7

    #@5e
    if-ne p1, v7, :cond_4

    #@60
    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    #@62
    iget v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    #@64
    aget-char v7, v7, v9

    #@66
    const/16 v9, 0xa

    #@68
    if-ne v7, v9, :cond_4

    #@6a
    .line 461
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    #@6c
    add-int/lit8 v7, v7, 0x1

    #@6e
    iput v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    #@70
    .line 463
    :cond_4
    const/4 v7, 0x0

    #@71
    iput-boolean v7, p0, Ljava/io/Console$LineReader;->leftoverLF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@73
    move v1, v0

    #@74
    .local v1, "c":C
    move v6, v5

    #@75
    .line 464
    .end local v5    # "off":I
    .local v6, "off":I
    :goto_1
    :try_start_1
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    #@77
    iget v9, p0, Ljava/io/Console$LineReader;->nChars:I

    #@79
    if-ge v7, v9, :cond_f

    #@7b
    .line 465
    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    #@7d
    iget v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    #@7f
    aget-char v0, v7, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@81
    add-int/lit8 v5, v6, 0x1

    #@83
    .end local v6    # "off":I
    .restart local v5    # "off":I
    :try_start_2
    aput-char v0, p1, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@85
    .line 466
    .end local v1    # "c":C
    .local v0, "c":C
    :try_start_3
    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    #@87
    iget v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    #@89
    add-int/lit8 v10, v9, 0x1

    #@8b
    iput v10, p0, Ljava/io/Console$LineReader;->nextChar:I

    #@8d
    const/4 v10, 0x0

    #@8e
    aput-char v10, v7, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@90
    .line 467
    const/16 v7, 0xa

    #@92
    if-ne v0, v7, :cond_7

    #@94
    .line 468
    sub-int v7, v5, p2

    #@96
    monitor-exit v8

    #@97
    return v7

    #@98
    .line 451
    .end local v0    # "c":C
    .restart local v4    # "n":I
    :cond_5
    sub-int v7, v5, p2

    #@9a
    if-nez v7, :cond_6

    #@9c
    .line 452
    const/4 v7, -0x1

    #@9d
    monitor-exit v8

    #@9e
    return v7

    #@9f
    .line 453
    :cond_6
    sub-int v7, v5, p2

    #@a1
    monitor-exit v8

    #@a2
    return v7

    #@a3
    .line 469
    .end local v4    # "n":I
    .restart local v0    # "c":C
    :cond_7
    const/16 v7, 0xd

    #@a5
    if-ne v0, v7, :cond_c

    #@a7
    .line 470
    if-ne v5, v2, :cond_8

    #@a9
    .line 475
    :try_start_4
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    #@ab
    invoke-static {v7}, Ljava/io/Console;->-get0(Ljava/io/Console;)[C

    #@ae
    move-result-object v7

    #@af
    if-ne p1, v7, :cond_b

    #@b1
    .line 476
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    #@b3
    invoke-static {v7}, Ljava/io/Console;->-wrap0(Ljava/io/Console;)[C

    #@b6
    move-result-object p1

    #@b7
    .line 477
    array-length v2, p1

    #@b8
    .line 483
    :cond_8
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    #@ba
    iget v9, p0, Ljava/io/Console$LineReader;->nChars:I

    #@bc
    if-ne v7, v9, :cond_9

    #@be
    iget-object v7, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    #@c0
    invoke-virtual {v7}, Ljava/io/Reader;->ready()Z

    #@c3
    move-result v7

    #@c4
    if-eqz v7, :cond_9

    #@c6
    .line 491
    iget-object v7, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    #@c8
    iget-object v9, p0, Ljava/io/Console$LineReader;->cb:[C

    #@ca
    iget-object v10, p0, Ljava/io/Console$LineReader;->cb:[C

    #@cc
    array-length v10, v10

    #@cd
    const/4 v11, 0x0

    #@ce
    invoke-virtual {v7, v9, v11, v10}, Ljava/io/Reader;->read([CII)I

    #@d1
    move-result v7

    #@d2
    iput v7, p0, Ljava/io/Console$LineReader;->nChars:I

    #@d4
    .line 492
    const/4 v7, 0x0

    #@d5
    iput v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    #@d7
    .line 494
    :cond_9
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    #@d9
    iget v9, p0, Ljava/io/Console$LineReader;->nChars:I

    #@db
    if-ge v7, v9, :cond_a

    #@dd
    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    #@df
    iget v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    #@e1
    aget-char v7, v7, v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@e3
    const/16 v9, 0xa

    #@e5
    if-ne v7, v9, :cond_a

    #@e7
    .line 495
    add-int/lit8 v6, v5, 0x1

    #@e9
    .end local v5    # "off":I
    .restart local v6    # "off":I
    const/16 v7, 0xa

    #@eb
    :try_start_5
    aput-char v7, p1, v5

    #@ed
    .line 496
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    #@ef
    add-int/lit8 v7, v7, 0x1

    #@f1
    iput v7, p0, Ljava/io/Console$LineReader;->nextChar:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@f3
    move v5, v6

    #@f4
    .line 498
    .end local v6    # "off":I
    .restart local v5    # "off":I
    :cond_a
    sub-int v7, v5, p2

    #@f6
    monitor-exit v8

    #@f7
    return v7

    #@f8
    .line 479
    :cond_b
    const/4 v7, 0x1

    #@f9
    :try_start_6
    iput-boolean v7, p0, Ljava/io/Console$LineReader;->leftoverLF:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@fb
    .line 480
    sub-int v7, v5, p2

    #@fd
    monitor-exit v8

    #@fe
    return v7

    #@ff
    .line 499
    :cond_c
    if-ne v5, v2, :cond_d

    #@101
    .line 500
    :try_start_7
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    #@103
    invoke-static {v7}, Ljava/io/Console;->-get0(Ljava/io/Console;)[C

    #@106
    move-result-object v7

    #@107
    if-ne p1, v7, :cond_e

    #@109
    .line 501
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    #@10b
    invoke-static {v7}, Ljava/io/Console;->-wrap0(Ljava/io/Console;)[C

    #@10e
    move-result-object p1

    #@10f
    .line 502
    array-length v2, p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@110
    :cond_d
    move v1, v0

    #@111
    .end local v0    # "c":C
    .restart local v1    # "c":C
    move v6, v5

    #@112
    .end local v5    # "off":I
    .restart local v6    # "off":I
    goto/16 :goto_1

    #@114
    .line 504
    .end local v1    # "c":C
    .end local v6    # "off":I
    .restart local v0    # "c":C
    .restart local v5    # "off":I
    :cond_e
    sub-int v7, v5, p2

    #@116
    monitor-exit v8

    #@117
    return v7

    #@118
    .line 508
    .end local v0    # "c":C
    .end local v5    # "off":I
    .restart local v1    # "c":C
    .restart local v6    # "off":I
    :cond_f
    if-eqz v3, :cond_10

    #@11a
    .line 509
    sub-int v7, v6, p2

    #@11c
    monitor-exit v8

    #@11d
    return v7

    #@11e
    :cond_10
    move v0, v1

    #@11f
    .end local v1    # "c":C
    .restart local v0    # "c":C
    move v5, v6

    #@120
    .end local v6    # "off":I
    .restart local v5    # "off":I
    goto/16 :goto_0

    #@122
    .line 429
    .end local v0    # "c":C
    :catchall_0
    move-exception v7

    #@123
    :goto_2
    monitor-exit v8

    #@124
    throw v7

    #@125
    .end local v5    # "off":I
    .restart local v1    # "c":C
    .restart local v6    # "off":I
    :catchall_1
    move-exception v7

    #@126
    move v0, v1

    #@127
    .end local v1    # "c":C
    .restart local v0    # "c":C
    move v5, v6

    #@128
    .end local v6    # "off":I
    .restart local v5    # "off":I
    goto :goto_2

    #@129
    .end local v0    # "c":C
    .restart local v1    # "c":C
    :catchall_2
    move-exception v7

    #@12a
    move v0, v1

    #@12b
    .end local v1    # "c":C
    .restart local v0    # "c":C
    goto :goto_2

    #@12c
    .end local v5    # "off":I
    .restart local v6    # "off":I
    :catchall_3
    move-exception v7

    #@12d
    move v5, v6

    #@12e
    .end local v6    # "off":I
    .restart local v5    # "off":I
    goto :goto_2
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 417
    iget-object v0, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    #@2
    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    #@5
    move-result v0

    #@6
    return v0
.end method
