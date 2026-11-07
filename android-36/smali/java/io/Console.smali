.class public final Ljava/io/Console;
.super Ljava/lang/Object;
.source "Console.java"

# interfaces
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/Console$LineReader;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist CHARSET:Ljava/nio/charset/Charset;

.field private static greylist-max-o cons:Ljava/io/Console;


# instance fields
.field private greylist-max-o formatter:Ljava/util/Formatter;

.field private greylist-max-o out:Ljava/io/Writer;

.field private greylist-max-o pw:Ljava/io/PrintWriter;

.field private greylist-max-o rcb:[C

.field private greylist-max-o readLock:Ljava/lang/Object;

.field private greylist-max-o reader:Ljava/io/Reader;

.field private blacklist restoreEcho:Z

.field private blacklist shutdownHookInstalled:Z

.field private greylist-max-o writeLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetrcb(Ljava/io/Console;)[C
    .registers 1

    iget-object p0, p0, Ljava/io/Console;->rcb:[C

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetreadLock(Ljava/io/Console;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgrow(Ljava/io/Console;)[C
    .registers 1

    invoke-direct {p0}, Ljava/io/Console;->grow()[C

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 95
    nop

    .line 580
    invoke-static {}, Ljava/io/Console;->encoding()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "csname":Ljava/lang/String;
    const/4 v1, 0x0

    .line 588
    .local v1, "cs":Ljava/nio/charset/Charset;
    if-eqz v0, :cond_f

    .line 590
    :try_start_8
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_e

    move-object v1, v2

    .line 592
    goto :goto_f

    .line 591
    :catch_e
    move-exception v2

    .line 594
    :cond_f
    :goto_f
    if-nez v1, :cond_16

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    goto :goto_17

    :cond_16
    move-object v2, v1

    :goto_17
    sput-object v2, Ljava/io/Console;->CHARSET:Ljava/nio/charset/Charset;

    .line 614
    .end local v0    # "csname":Ljava/lang/String;
    .end local v1    # "cs":Ljava/nio/charset/Charset;
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 4

    .line 630
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0, v1}, Ljava/io/Console;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 631
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    .line 637
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    .line 638
    iget-object v0, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    sget-object v1, Ljava/io/Console;->CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p2, v0, v1}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/io/Console;->out:Ljava/io/Writer;

    .line 642
    new-instance v0, Ljava/io/Console$1;

    iget-object v1, p0, Ljava/io/Console;->out:Ljava/io/Writer;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Ljava/io/Console$1;-><init>(Ljava/io/Console;Ljava/io/Writer;Z)V

    iput-object v0, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    .line 643
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Ljava/io/Console;->out:Ljava/io/Writer;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Ljava/io/Console;->formatter:Ljava/util/Formatter;

    .line 644
    new-instance v0, Ljava/io/Console$LineReader;

    iget-object v1, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    sget-object v2, Ljava/io/Console;->CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p1, v1, v2}, Lsun/nio/cs/StreamDecoder;->forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamDecoder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/Console$LineReader;-><init>(Ljava/io/Console;Ljava/io/Reader;)V

    iput-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Reader;

    .line 648
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/Console;->rcb:[C

    .line 649
    return-void
.end method

.method public static greylist-max-o console()Ljava/io/Console;
    .registers 1

    .line 619
    invoke-static {}, Ljava/io/Console;->istty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 620
    sget-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    if-nez v0, :cond_11

    .line 621
    new-instance v0, Ljava/io/Console;

    invoke-direct {v0}, Ljava/io/Console;-><init>()V

    sput-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    .line 622
    :cond_11
    sget-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    return-object v0

    .line 624
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private static native greylist-max-o echo(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-r encoding()Ljava/lang/String;
.end method

.method private greylist-max-o grow()[C
    .registers 5

    .line 459
    nop

    .line 460
    iget-object v0, p0, Ljava/io/Console;->rcb:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 461
    .local v0, "t":[C
    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    iput-object v0, p0, Ljava/io/Console;->rcb:[C

    .line 463
    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    return-object v1
.end method

.method private static native greylist-max-o istty()Z
.end method

.method private greylist-max-o readline(Z)[C
    .registers 7
    .param p1, "zeroOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Reader;

    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 439
    .local v0, "len":I
    if-gez v0, :cond_10

    .line 440
    const/4 v1, 0x0

    return-object v1

    .line 441
    :cond_10
    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    add-int/lit8 v2, v0, -0x1

    aget-char v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1d

    .line 442
    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    .line 443
    :cond_1d
    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    add-int/lit8 v4, v0, -0x1

    aget-char v1, v1, v4

    const/16 v4, 0xa

    if-ne v1, v4, :cond_35

    .line 444
    add-int/lit8 v0, v0, -0x1

    .line 445
    if-lez v0, :cond_35

    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    add-int/lit8 v4, v0, -0x1

    aget-char v1, v1, v4

    if-ne v1, v2, :cond_35

    .line 446
    add-int/lit8 v0, v0, -0x1

    .line 448
    :cond_35
    :goto_35
    new-array v1, v0, [C

    .line 449
    .local v1, "b":[C
    if-lez v0, :cond_47

    .line 450
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    if-eqz p1, :cond_47

    .line 452
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    const/16 v4, 0x20

    invoke-static {v2, v3, v0, v4}, Ljava/util/Arrays;->fill([CIIC)V

    .line 455
    :cond_47
    return-object v1
.end method


# virtual methods
.method public whitelist test-api charset()Ljava/nio/charset/Charset;
    .registers 2

    .line 414
    nop

    .line 415
    sget-object v0, Ljava/io/Console;->CHARSET:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public whitelist test-api flush()V
    .registers 2

    .line 396
    iget-object v0, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 397
    return-void
.end method

.method public varargs whitelist test-api format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .registers 4
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Ljava/io/Console;->formatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->flush()V

    .line 174
    return-object p0
.end method

.method public varargs whitelist test-api printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 213
    invoke-virtual {p0, p1, p2}, Ljava/io/Console;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api readLine()Ljava/lang/String;
    .registers 3

    .line 276
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Ljava/io/Console;->readLine(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api readLine(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "line":Ljava/lang/String;
    iget-object v1, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_4
    iget-object v2, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2d

    .line 251
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 252
    iget-object v3, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v3, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_2a

    .line 254
    :cond_12
    const/4 v3, 0x0

    :try_start_13
    invoke-direct {p0, v3}, Ljava/io/Console;->readline(Z)[C

    move-result-object v3

    .line 255
    .local v3, "ca":[C
    if-eqz v3, :cond_1f

    .line 256
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_23
    .catchall {:try_start_13 .. :try_end_1e} :catchall_2a

    move-object v0, v4

    .line 259
    .end local v3    # "ca":[C
    :cond_1f
    nop

    .line 260
    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_2a

    .line 261
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_2d

    .line 262
    return-object v0

    .line 257
    :catch_23
    move-exception v3

    .line 258
    .local v3, "x":Ljava/io/IOException;
    :try_start_24
    new-instance v4, Ljava/io/IOError;

    invoke-direct {v4, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "line":Ljava/lang/String;
    .end local p0    # "this":Ljava/io/Console;
    .end local p1    # "fmt":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    throw v4

    .line 260
    .end local v3    # "x":Ljava/io/IOException;
    .restart local v0    # "line":Ljava/lang/String;
    .restart local p0    # "this":Ljava/io/Console;
    .restart local p1    # "fmt":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catchall_2a
    move-exception v3

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2a

    .end local v0    # "line":Ljava/lang/String;
    .end local p0    # "this":Ljava/io/Console;
    .end local p1    # "fmt":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    :try_start_2c
    throw v3

    .line 261
    .restart local v0    # "line":Ljava/lang/String;
    .restart local p0    # "this":Ljava/io/Console;
    .restart local p1    # "fmt":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public whitelist test-api readPassword()[C
    .registers 3

    .line 388
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Ljava/io/Console;->readPassword(Ljava/lang/String;[Ljava/lang/Object;)[C

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api readPassword(Ljava/lang/String;[Ljava/lang/Object;)[C
    .registers 10
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "passwd":[C
    iget-object v1, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_4
    iget-object v2, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_88

    .line 318
    const/4 v3, 0x0

    :try_start_8
    invoke-static {v3}, Ljava/io/Console;->echo(Z)Z

    move-result v3

    iput-boolean v3, p0, Ljava/io/Console;->restoreEcho:Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_7f
    .catchall {:try_start_8 .. :try_end_e} :catchall_7d

    .line 321
    nop

    .line 322
    const/4 v3, 0x0

    .line 324
    .local v3, "ioe":Ljava/io/IOError;
    const/4 v4, 0x1

    :try_start_11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 325
    iget-object v5, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v5, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 326
    :cond_1c
    invoke-direct {p0, v4}, Ljava/io/Console;->readline(Z)[C

    move-result-object v5
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_20} :catch_47
    .catchall {:try_start_11 .. :try_end_20} :catchall_45

    move-object v0, v5

    .line 331
    :try_start_21
    iget-boolean v5, p0, Ljava/io/Console;->restoreEcho:Z

    if-eqz v5, :cond_2b

    .line 332
    invoke-static {v4}, Ljava/io/Console;->echo(Z)Z

    move-result v4

    iput-boolean v4, p0, Ljava/io/Console;->restoreEcho:Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_2c
    .catchall {:try_start_21 .. :try_end_2b} :catchall_7d

    .line 338
    :cond_2b
    goto :goto_39

    .line 333
    :catch_2c
    move-exception v4

    .line 334
    .local v4, "x":Ljava/io/IOException;
    if-nez v3, :cond_36

    .line 335
    :try_start_2f
    new-instance v5, Ljava/io/IOError;

    invoke-direct {v5, v4}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    move-object v3, v5

    goto :goto_39

    .line 337
    :cond_36
    invoke-virtual {v3, v4}, Ljava/io/IOError;->addSuppressed(Ljava/lang/Throwable;)V

    .line 339
    .end local v4    # "x":Ljava/io/IOException;
    :goto_39
    if-nez v3, :cond_43

    .line 342
    iget-object v4, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 343
    .end local v3    # "ioe":Ljava/io/IOError;
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_2f .. :try_end_41} :catchall_7d

    .line 344
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_88

    .line 345
    return-object v0

    .line 340
    .restart local v3    # "ioe":Ljava/io/IOError;
    :cond_43
    :goto_43
    nop

    .end local v0    # "passwd":[C
    .end local p0    # "this":Ljava/io/Console;
    .end local p1    # "fmt":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    :try_start_44
    throw v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_7d

    .line 330
    .restart local v0    # "passwd":[C
    .restart local p0    # "this":Ljava/io/Console;
    .restart local p1    # "fmt":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catchall_45
    move-exception v5

    goto :goto_60

    .line 327
    :catch_47
    move-exception v5

    .line 328
    .local v5, "x":Ljava/io/IOException;
    :try_start_48
    new-instance v6, Ljava/io/IOError;

    invoke-direct {v6, v5}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_45

    .line 331
    .end local v3    # "ioe":Ljava/io/IOError;
    .end local v5    # "x":Ljava/io/IOException;
    .local v6, "ioe":Ljava/io/IOError;
    :try_start_4d
    iget-boolean v3, p0, Ljava/io/Console;->restoreEcho:Z

    if-eqz v3, :cond_57

    .line 332
    invoke-static {v4}, Ljava/io/Console;->echo(Z)Z

    move-result v3

    iput-boolean v3, p0, Ljava/io/Console;->restoreEcho:Z
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_57} :catch_58
    .catchall {:try_start_4d .. :try_end_57} :catchall_7d

    .line 338
    :cond_57
    goto :goto_5d

    .line 333
    :catch_58
    move-exception v3

    .line 334
    .local v3, "x":Ljava/io/IOException;
    nop

    .line 337
    :try_start_5a
    invoke-virtual {v6, v3}, Ljava/io/IOError;->addSuppressed(Ljava/lang/Throwable;)V

    .line 339
    .end local v3    # "x":Ljava/io/IOException;
    :goto_5d
    nop

    .line 340
    nop

    .end local v0    # "passwd":[C
    .end local p0    # "this":Ljava/io/Console;
    .end local p1    # "fmt":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    throw v6
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_7d

    .line 331
    .end local v6    # "ioe":Ljava/io/IOError;
    .restart local v0    # "passwd":[C
    .local v3, "ioe":Ljava/io/IOError;
    .restart local p0    # "this":Ljava/io/Console;
    .restart local p1    # "fmt":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :goto_60
    :try_start_60
    iget-boolean v6, p0, Ljava/io/Console;->restoreEcho:Z

    if-eqz v6, :cond_6a

    .line 332
    invoke-static {v4}, Ljava/io/Console;->echo(Z)Z

    move-result v4

    iput-boolean v4, p0, Ljava/io/Console;->restoreEcho:Z
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6a} :catch_6b
    .catchall {:try_start_60 .. :try_end_6a} :catchall_7d

    .line 338
    :cond_6a
    goto :goto_78

    .line 333
    :catch_6b
    move-exception v4

    .line 334
    .restart local v4    # "x":Ljava/io/IOException;
    if-nez v3, :cond_75

    .line 335
    :try_start_6e
    new-instance v6, Ljava/io/IOError;

    invoke-direct {v6, v4}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    move-object v3, v6

    goto :goto_78

    .line 337
    :cond_75
    invoke-virtual {v3, v4}, Ljava/io/IOError;->addSuppressed(Ljava/lang/Throwable;)V

    .line 339
    .end local v4    # "x":Ljava/io/IOException;
    :goto_78
    if-eqz v3, :cond_7b

    .line 340
    goto :goto_43

    .line 341
    :cond_7b
    nop

    .end local v0    # "passwd":[C
    .end local p0    # "this":Ljava/io/Console;
    .end local p1    # "fmt":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    throw v5

    .line 343
    .end local v3    # "ioe":Ljava/io/IOError;
    .restart local v0    # "passwd":[C
    .restart local p0    # "this":Ljava/io/Console;
    .restart local p1    # "fmt":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catchall_7d
    move-exception v3

    goto :goto_86

    .line 319
    :catch_7f
    move-exception v3

    .line 320
    .local v3, "x":Ljava/io/IOException;
    new-instance v4, Ljava/io/IOError;

    invoke-direct {v4, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "passwd":[C
    .end local p0    # "this":Ljava/io/Console;
    .end local p1    # "fmt":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    throw v4

    .line 343
    .end local v3    # "x":Ljava/io/IOException;
    .restart local v0    # "passwd":[C
    .restart local p0    # "this":Ljava/io/Console;
    .restart local p1    # "fmt":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :goto_86
    monitor-exit v2
    :try_end_87
    .catchall {:try_start_6e .. :try_end_87} :catchall_7d

    .end local v0    # "passwd":[C
    .end local p0    # "this":Ljava/io/Console;
    .end local p1    # "fmt":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    :try_start_87
    throw v3

    .line 344
    .restart local v0    # "passwd":[C
    .restart local p0    # "this":Ljava/io/Console;
    .restart local p1    # "fmt":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catchall_88
    move-exception v2

    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_88

    throw v2
.end method

.method public whitelist test-api reader()Ljava/io/Reader;
    .registers 2

    .line 139
    iget-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public whitelist test-api writer()Ljava/io/PrintWriter;
    .registers 2

    .line 104
    iget-object v0, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    return-object v0
.end method
