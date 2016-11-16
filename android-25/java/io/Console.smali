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
.field static final synthetic -assertionsDisabled:Z

.field private static cons:Ljava/io/Console;

.field private static echoOff:Z


# instance fields
.field private cs:Ljava/nio/charset/Charset;

.field private formatter:Ljava/util/Formatter;

.field private out:Ljava/io/Writer;

.field private pw:Ljava/io/PrintWriter;

.field private rcb:[C

.field private readLock:Ljava/lang/Object;

.field private reader:Ljava/io/Reader;

.field private writeLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Ljava/io/Console;)[C
    .locals 1

    #@0
    iget-object v0, p0, Ljava/io/Console;->rcb:[C

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/io/Console;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/io/Console;)[C
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/io/Console;->grow()[C

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/io/Console;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/io/Console;->-assertionsDisabled:Z

    #@b
    .line 93
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 533
    new-instance v0, Ljava/io/FileInputStream;

    #@2
    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    #@4
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@7
    new-instance v1, Ljava/io/FileOutputStream;

    #@9
    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    #@b
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@e
    invoke-direct {p0, v0, v1}, Ljava/io/Console;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@11
    .line 532
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 538
    new-instance v2, Ljava/lang/Object;

    #@5
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v2, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    #@a
    .line 539
    new-instance v2, Ljava/lang/Object;

    #@c
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v2, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    #@11
    .line 540
    invoke-static {}, Ljava/io/Console;->encoding()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 541
    .local v0, "csname":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@17
    .line 543
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@1a
    move-result-object v2

    #@1b
    iput-object v2, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 546
    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    #@1f
    if-nez v2, :cond_1

    #@21
    .line 547
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@24
    move-result-object v2

    #@25
    iput-object v2, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    #@27
    .line 550
    :cond_1
    iget-object v2, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    #@29
    .line 551
    iget-object v3, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    #@2b
    .line 548
    invoke-static {p2, v2, v3}, Lsun/nio/cs/StreamEncoder;->forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamEncoder;

    #@2e
    move-result-object v2

    #@2f
    iput-object v2, p0, Ljava/io/Console;->out:Ljava/io/Writer;

    #@31
    .line 552
    new-instance v2, Ljava/io/Console$1;

    #@33
    iget-object v3, p0, Ljava/io/Console;->out:Ljava/io/Writer;

    #@35
    const/4 v4, 0x1

    #@36
    invoke-direct {v2, p0, v3, v4}, Ljava/io/Console$1;-><init>(Ljava/io/Console;Ljava/io/Writer;Z)V

    #@39
    iput-object v2, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    #@3b
    .line 553
    new-instance v2, Ljava/util/Formatter;

    #@3d
    iget-object v3, p0, Ljava/io/Console;->out:Ljava/io/Writer;

    #@3f
    invoke-direct {v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    #@42
    iput-object v2, p0, Ljava/io/Console;->formatter:Ljava/util/Formatter;

    #@44
    .line 554
    new-instance v2, Ljava/io/Console$LineReader;

    #@46
    .line 556
    iget-object v3, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    #@48
    .line 557
    iget-object v4, p0, Ljava/io/Console;->cs:Ljava/nio/charset/Charset;

    #@4a
    .line 554
    invoke-static {p1, v3, v4}, Lsun/nio/cs/StreamDecoder;->forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamDecoder;

    #@4d
    move-result-object v3

    #@4e
    invoke-direct {v2, p0, v3}, Ljava/io/Console$LineReader;-><init>(Ljava/io/Console;Ljava/io/Reader;)V

    #@51
    iput-object v2, p0, Ljava/io/Console;->reader:Ljava/io/Reader;

    #@53
    .line 558
    const/16 v2, 0x400

    #@55
    new-array v2, v2, [C

    #@57
    iput-object v2, p0, Ljava/io/Console;->rcb:[C

    #@59
    .line 537
    return-void

    #@5a
    .line 544
    :catch_0
    move-exception v1

    #@5b
    .local v1, "x":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static console()Ljava/io/Console;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 522
    invoke-static {}, Ljava/io/Console;->istty()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 523
    sget-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 524
    new-instance v0, Ljava/io/Console;

    #@d
    invoke-direct {v0}, Ljava/io/Console;-><init>()V

    #@10
    sput-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    #@12
    .line 525
    :cond_0
    sget-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    #@14
    return-object v0

    #@15
    .line 527
    :cond_1
    return-object v1
.end method

.method private static native echo(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native encoding()Ljava/lang/String;
.end method

.method public static declared-synchronized getConsole()Ljava/io/Console;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const-class v1, Ljava/io/Console;

    #@3
    monitor-enter v1

    #@4
    .line 568
    :try_start_0
    invoke-static {}, Ljava/io/Console;->istty()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 569
    sget-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    #@c
    if-nez v0, :cond_0

    #@e
    .line 570
    new-instance v0, Ljava/io/Console;

    #@10
    invoke-direct {v0}, Ljava/io/Console;-><init>()V

    #@13
    sput-object v0, Ljava/io/Console;->cons:Ljava/io/Console;

    #@15
    .line 571
    :cond_0
    sget-object v0, Ljava/io/Console;->cons:Ljava/io/Console;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    return-object v0

    #@19
    :cond_1
    monitor-exit v1

    #@1a
    .line 573
    return-object v2

    #@1b
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method private grow()[C
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 396
    sget-boolean v1, Ljava/io/Console;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    #@7
    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    new-instance v1, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v1

    #@13
    .line 397
    :cond_0
    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    #@15
    array-length v1, v1

    #@16
    mul-int/lit8 v1, v1, 0x2

    #@18
    new-array v0, v1, [C

    #@1a
    .line 398
    .local v0, "t":[C
    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    #@1c
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    #@1e
    array-length v2, v2

    #@1f
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@22
    .line 399
    iput-object v0, p0, Ljava/io/Console;->rcb:[C

    #@24
    .line 400
    iget-object v1, p0, Ljava/io/Console;->rcb:[C

    #@26
    return-object v1
.end method

.method private static native istty()Z
.end method

.method private readline(Z)[C
    .locals 7
    .param p1, "zeroOut"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0xd

    #@2
    const/4 v5, 0x0

    #@3
    .line 375
    iget-object v2, p0, Ljava/io/Console;->reader:Ljava/io/Reader;

    #@5
    iget-object v3, p0, Ljava/io/Console;->rcb:[C

    #@7
    iget-object v4, p0, Ljava/io/Console;->rcb:[C

    #@9
    array-length v4, v4

    #@a
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/Reader;->read([CII)I

    #@d
    move-result v1

    #@e
    .line 376
    .local v1, "len":I
    if-gez v1, :cond_0

    #@10
    .line 377
    const/4 v2, 0x0

    #@11
    return-object v2

    #@12
    .line 378
    :cond_0
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    #@14
    add-int/lit8 v3, v1, -0x1

    #@16
    aget-char v2, v2, v3

    #@18
    if-ne v2, v6, :cond_3

    #@1a
    .line 379
    add-int/lit8 v1, v1, -0x1

    #@1c
    .line 385
    :cond_1
    :goto_0
    new-array v0, v1, [C

    #@1e
    .line 386
    .local v0, "b":[C
    if-lez v1, :cond_2

    #@20
    .line 387
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    #@22
    invoke-static {v2, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@25
    .line 388
    if-eqz p1, :cond_2

    #@27
    .line 389
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    #@29
    const/16 v3, 0x20

    #@2b
    invoke-static {v2, v5, v1, v3}, Ljava/util/Arrays;->fill([CIIC)V

    #@2e
    .line 392
    :cond_2
    return-object v0

    #@2f
    .line 380
    .end local v0    # "b":[C
    :cond_3
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    #@31
    add-int/lit8 v3, v1, -0x1

    #@33
    aget-char v2, v2, v3

    #@35
    const/16 v3, 0xa

    #@37
    if-ne v2, v3, :cond_1

    #@39
    .line 381
    add-int/lit8 v1, v1, -0x1

    #@3b
    .line 382
    if-lez v1, :cond_1

    #@3d
    iget-object v2, p0, Ljava/io/Console;->rcb:[C

    #@3f
    add-int/lit8 v3, v1, -0x1

    #@41
    aget-char v2, v2, v3

    #@43
    if-ne v2, v6, :cond_1

    #@45
    .line 383
    add-int/lit8 v1, v1, -0x1

    #@47
    goto :goto_0
.end method


# virtual methods
.method public flush()V
    .locals 1

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    #@2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    #@5
    .line 358
    return-void
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .locals 1
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Ljava/io/Console;->formatter:Ljava/util/Formatter;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/Formatter;->flush()V

    #@9
    .line 170
    return-object p0
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 208
    invoke-virtual {p0, p1, p2}, Ljava/io/Console;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 271
    const-string/jumbo v0, ""

    #@3
    const/4 v1, 0x0

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-virtual {p0, v0, v1}, Ljava/io/Console;->readLine(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public varargs readLine(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 243
    const/4 v1, 0x0

    #@1
    .line 244
    .local v1, "line":Ljava/lang/String;
    iget-object v5, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 245
    :try_start_0
    iget-object v6, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    #@6
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 246
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 247
    iget-object v4, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    #@f
    invoke-virtual {v4, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    .line 249
    :cond_0
    const/4 v4, 0x0

    #@13
    :try_start_2
    invoke-direct {p0, v4}, Ljava/io/Console;->readline(Z)[C

    #@16
    move-result-object v0

    #@17
    .line 250
    .local v0, "ca":[C
    if-eqz v0, :cond_1

    #@19
    .line 251
    new-instance v2, Ljava/lang/String;

    #@1b
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1e
    .local v2, "line":Ljava/lang/String;
    move-object v1, v2

    #@1f
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "line":Ljava/lang/String;
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@20
    monitor-exit v5

    #@21
    .line 257
    return-object v1

    #@22
    .line 252
    .end local v0    # "ca":[C
    .restart local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@23
    .line 253
    .local v3, "x":Ljava/io/IOException;
    :try_start_4
    new-instance v4, Ljava/io/IOError;

    #@25
    invoke-direct {v4, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    #@28
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@29
    .line 245
    .end local v3    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@2a
    :try_start_5
    monitor-exit v6

    #@2b
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@2c
    .line 244
    .end local v1    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v4

    #@2d
    monitor-exit v5

    #@2e
    throw v4
.end method

.method public readPassword()[C
    .locals 2

    #@0
    .prologue
    .line 351
    const-string/jumbo v0, ""

    #@3
    const/4 v1, 0x0

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-virtual {p0, v0, v1}, Ljava/io/Console;->readPassword(Ljava/lang/String;[Ljava/lang/Object;)[C

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public varargs readPassword(Ljava/lang/String;[Ljava/lang/Object;)[C
    .locals 8
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 307
    const/4 v2, 0x0

    #@1
    .line 308
    .local v2, "passwd":[C
    iget-object v5, p0, Ljava/io/Console;->writeLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 309
    :try_start_0
    iget-object v6, p0, Ljava/io/Console;->readLock:Ljava/lang/Object;

    #@6
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@7
    .line 311
    const/4 v4, 0x0

    #@8
    :try_start_1
    invoke-static {v4}, Ljava/io/Console;->echo(Z)Z

    #@b
    move-result v4

    #@c
    sput-boolean v4, Ljava/io/Console;->echoOff:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    .line 315
    const/4 v0, 0x0

    #@f
    .line 317
    .local v0, "ioe":Ljava/io/IOError;
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 318
    iget-object v4, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    #@17
    invoke-virtual {v4, p1, p2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@1a
    .line 319
    :cond_0
    const/4 v4, 0x1

    #@1b
    invoke-direct {p0, v4}, Ljava/io/Console;->readline(Z)[C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@1e
    move-result-object v2

    #@1f
    .line 324
    .local v2, "passwd":[C
    const/4 v4, 0x1

    #@20
    :try_start_3
    invoke-static {v4}, Ljava/io/Console;->echo(Z)Z

    #@23
    move-result v4

    #@24
    sput-boolean v4, Ljava/io/Console;->echoOff:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@26
    .line 331
    .end local v0    # "ioe":Ljava/io/IOError;
    :goto_0
    if-eqz v0, :cond_3

    #@28
    .line 332
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@29
    .line 309
    .end local v2    # "passwd":[C
    :catchall_0
    move-exception v4

    #@2a
    :try_start_5
    monitor-exit v6

    #@2b
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@2c
    .line 308
    :catchall_1
    move-exception v4

    #@2d
    monitor-exit v5

    #@2e
    throw v4

    #@2f
    .line 312
    .local v2, "passwd":[C
    :catch_0
    move-exception v3

    #@30
    .line 313
    .local v3, "x":Ljava/io/IOException;
    :try_start_6
    new-instance v4, Ljava/io/IOError;

    #@32
    invoke-direct {v4, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    #@35
    throw v4

    #@36
    .line 325
    .end local v3    # "x":Ljava/io/IOException;
    .restart local v0    # "ioe":Ljava/io/IOError;
    .local v2, "passwd":[C
    :catch_1
    move-exception v3

    #@37
    .line 327
    .restart local v3    # "x":Ljava/io/IOException;
    new-instance v0, Ljava/io/IOError;

    #@39
    .end local v0    # "ioe":Ljava/io/IOError;
    invoke-direct {v0, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@3c
    .local v0, "ioe":Ljava/io/IOError;
    goto :goto_0

    #@3d
    .line 320
    .end local v3    # "x":Ljava/io/IOException;
    .local v0, "ioe":Ljava/io/IOError;
    .local v2, "passwd":[C
    :catch_2
    move-exception v3

    #@3e
    .line 321
    .restart local v3    # "x":Ljava/io/IOException;
    :try_start_7
    new-instance v1, Ljava/io/IOError;

    #@40
    invoke-direct {v1, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@43
    .line 324
    .end local v0    # "ioe":Ljava/io/IOError;
    .local v1, "ioe":Ljava/io/IOError;
    const/4 v4, 0x1

    #@44
    :try_start_8
    invoke-static {v4}, Ljava/io/Console;->echo(Z)Z

    #@47
    move-result v4

    #@48
    sput-boolean v4, Ljava/io/Console;->echoOff:Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@4a
    move-object v0, v1

    #@4b
    .line 331
    .end local v1    # "ioe":Ljava/io/IOError;
    .local v0, "ioe":Ljava/io/IOError;
    :goto_1
    if-eqz v0, :cond_3

    #@4d
    .line 332
    :try_start_9
    throw v0

    #@4e
    .line 325
    .end local v0    # "ioe":Ljava/io/IOError;
    .restart local v1    # "ioe":Ljava/io/IOError;
    :catch_3
    move-exception v3

    #@4f
    .line 326
    if-nez v1, :cond_1

    #@51
    .line 327
    new-instance v0, Ljava/io/IOError;

    #@53
    invoke-direct {v0, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    #@56
    .end local v1    # "ioe":Ljava/io/IOError;
    .restart local v0    # "ioe":Ljava/io/IOError;
    goto :goto_1

    #@57
    .line 329
    .end local v0    # "ioe":Ljava/io/IOError;
    .restart local v1    # "ioe":Ljava/io/IOError;
    :cond_1
    invoke-virtual {v1, v3}, Ljava/io/IOError;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@5a
    move-object v0, v1

    #@5b
    .end local v1    # "ioe":Ljava/io/IOError;
    .restart local v0    # "ioe":Ljava/io/IOError;
    goto :goto_1

    #@5c
    .line 322
    .end local v3    # "x":Ljava/io/IOException;
    .local v0, "ioe":Ljava/io/IOError;
    :catchall_2
    move-exception v4

    #@5d
    .line 324
    const/4 v7, 0x1

    #@5e
    :try_start_a
    invoke-static {v7}, Ljava/io/Console;->echo(Z)Z

    #@61
    move-result v7

    #@62
    sput-boolean v7, Ljava/io/Console;->echoOff:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@64
    .line 331
    .end local v0    # "ioe":Ljava/io/IOError;
    :goto_2
    if-eqz v0, :cond_2

    #@66
    .line 332
    :try_start_b
    throw v0

    #@67
    .line 325
    .restart local v0    # "ioe":Ljava/io/IOError;
    :catch_4
    move-exception v3

    #@68
    .line 327
    .restart local v3    # "x":Ljava/io/IOException;
    new-instance v0, Ljava/io/IOError;

    #@6a
    .end local v0    # "ioe":Ljava/io/IOError;
    invoke-direct {v0, v3}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    #@6d
    .local v0, "ioe":Ljava/io/IOError;
    goto :goto_2

    #@6e
    .line 322
    .end local v0    # "ioe":Ljava/io/IOError;
    .end local v3    # "x":Ljava/io/IOException;
    :cond_2
    throw v4

    #@6f
    .line 334
    .end local v2    # "passwd":[C
    :cond_3
    iget-object v4, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    #@71
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@74
    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@75
    monitor-exit v5

    #@76
    .line 337
    return-object v2
.end method

.method public reader()Ljava/io/Reader;
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Reader;

    #@2
    return-object v0
.end method

.method public writer()Ljava/io/PrintWriter;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Ljava/io/Console;->pw:Ljava/io/PrintWriter;

    #@2
    return-object v0
.end method
