.class public final Ljava/util/regex/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Ljava/util/regex/MatchResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/regex/Matcher$OffsetBasedMatchResult;
    }
.end annotation


# static fields
.field private static final registry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private address:J

.field private anchoringBounds:Z

.field private appendPos:I

.field private input:Ljava/lang/String;

.field private matchFound:Z

.field private matchOffsets:[I

.field private nativeFinalizer:Ljava/lang/Runnable;

.field private pattern:Ljava/util/regex/Pattern;

.field private regionEnd:I

.field private regionStart:I

.field private transparentBounds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 123
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    #@2
    .line 124
    const-class v1, Ljava/util/regex/Matcher;

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-static {}, Ljava/util/regex/Matcher;->getNativeFinalizer()J

    #@b
    move-result-wide v2

    #@c
    invoke-static {}, Ljava/util/regex/Matcher;->nativeSize()I

    #@f
    move-result v4

    #@10
    int-to-long v4, v4

    #@11
    .line 123
    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    #@14
    sput-object v0, Ljava/util/regex/Matcher;->registry:Llibcore/util/NativeAllocationRegistry;

    #@16
    .line 106
    return-void
.end method

.method constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "parent"    # Ljava/util/regex/Pattern;
    .param p2, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 162
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    #@6
    .line 173
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@9
    .line 174
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@c
    .line 172
    return-void
.end method

.method private appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 616
    const/4 v2, 0x0

    #@1
    .line 617
    .local v2, "escape":Z
    const/4 v1, 0x0

    #@2
    .line 619
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
    .line 620
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v0

    #@d
    .line 621
    .local v0, "c":C
    const/16 v4, 0x5c

    #@f
    if-ne v0, v4, :cond_0

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 623
    :cond_0
    const/16 v4, 0x24

    #@15
    if-ne v0, v4, :cond_1

    #@17
    if-eqz v2, :cond_3

    #@19
    .line 625
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
    .line 626
    add-int/lit8 v4, v0, -0x30

    #@25
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    .line 627
    const/4 v1, 0x0

    #@2d
    .line 619
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 622
    :cond_2
    const/4 v2, 0x1

    #@31
    .line 621
    goto :goto_1

    #@32
    .line 624
    :cond_3
    const/4 v1, 0x1

    #@33
    .line 623
    goto :goto_1

    #@34
    .line 629
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@37
    .line 630
    const/4 v1, 0x0

    #@38
    .line 631
    const/4 v2, 0x0

    #@39
    goto :goto_1

    #@3a
    .line 635
    .end local v0    # "c":C
    :cond_5
    if-eqz v2, :cond_6

    #@3c
    .line 636
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
    .line 615
    :cond_6
    return-void
.end method

.method private ensureMatch()V
    .locals 2

    #@0
    .prologue
    .line 1050
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1051
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "No successful match so far"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1049
    :cond_0
    return-void
.end method

.method private static native findImpl(JLjava/lang/String;I[I)Z
.end method

.method private static native findNextImpl(JLjava/lang/String;[I)Z
.end method

.method private static native getNativeFinalizer()J
.end method

.method private static native groupCountImpl(J)I
.end method

.method private static native hitEndImpl(J)Z
.end method

.method private static native lookingAtImpl(JLjava/lang/String;[I)Z
.end method

.method private static native matchesImpl(JLjava/lang/String;[I)Z
.end method

.method private static native nativeSize()I
.end method

.method private static native openImpl(J)J
.end method

.method public static quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x24

    #@2
    const/4 v5, -0x1

    #@3
    const/16 v4, 0x5c

    #@5
    .line 508
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    #@8
    move-result v3

    #@9
    if-ne v3, v5, :cond_0

    #@b
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v3

    #@f
    if-ne v3, v5, :cond_0

    #@11
    .line 509
    return-object p0

    #@12
    .line 510
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    .line 511
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1b
    move-result v3

    #@1c
    if-ge v1, v3, :cond_3

    #@1e
    .line 512
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@21
    move-result v0

    #@22
    .line 513
    .local v0, "c":C
    if-eq v0, v4, :cond_1

    #@24
    if-ne v0, v6, :cond_2

    #@26
    .line 514
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    .line 516
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 511
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 518
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
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
    .line 1015
    if-nez p1, :cond_0

    #@3
    .line 1016
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "input == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 1019
    :cond_0
    if-ltz p2, :cond_1

    #@e
    if-gez p3, :cond_2

    #@10
    .line 1020
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@12
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@15
    throw v0

    #@16
    .line 1019
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
    .line 1023
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@2a
    .line 1024
    iput p2, p0, Ljava/util/regex/Matcher;->regionStart:I

    #@2c
    .line 1025
    iput p3, p0, Ljava/util/regex/Matcher;->regionEnd:I

    #@2e
    .line 1026
    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    #@31
    .line 1028
    iput-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@33
    .line 1029
    iput v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    #@35
    .line 1031
    return-object p0
.end method

.method private resetForInput()V
    .locals 5

    #@0
    .prologue
    .line 1035
    monitor-enter p0

    #@1
    .line 1036
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
    .line 1037
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@e
    iget-boolean v2, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    #@10
    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->useAnchoringBoundsImpl(JZ)V

    #@13
    .line 1038
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
    .line 1034
    return-void

    #@1c
    .line 1035
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
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "replacement"    # Ljava/lang/String;

    #@0
    .prologue
    .line 600
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
    .line 601
    invoke-direct {p0, p1, p2}, Ljava/util/regex/Matcher;->appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    #@12
    .line 602
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    #@18
    .line 604
    return-object p0
.end method

.method public appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 656
    iget v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    #@2
    iget v1, p0, Ljava/util/regex/Matcher;->regionEnd:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 657
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
    .line 659
    :cond_0
    return-object p1
.end method

.method public end()I
    .locals 1

    #@0
    .prologue
    .line 251
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
    .line 279
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    #@3
    .line 280
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

.method public find()Z
    .locals 4

    #@0
    .prologue
    .line 436
    monitor-enter p0

    #@1
    .line 437
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
    .line 439
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@10
    return v0

    #@11
    .line 436
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
    .line 461
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
    .line 462
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
    .line 465
    :cond_1
    monitor-enter p0

    #@36
    .line 466
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
    .line 468
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@45
    return v0

    #@46
    .line 465
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
    .line 303
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
    .line 342
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    #@4
    .line 343
    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    #@6
    mul-int/lit8 v3, p1, 0x2

    #@8
    aget v0, v2, v3

    #@a
    .line 344
    .local v0, "from":I
    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    #@c
    mul-int/lit8 v3, p1, 0x2

    #@e
    add-int/lit8 v3, v3, 0x1

    #@10
    aget v1, v2, v3

    #@12
    .line 345
    .local v1, "to":I
    if-eq v0, v4, :cond_0

    #@14
    if-ne v1, v4, :cond_1

    #@16
    .line 346
    :cond_0
    const/4 v2, 0x0

    #@17
    return-object v2

    #@18
    .line 348
    :cond_1
    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@1a
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    return-object v2
.end method

.method public group(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 383
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public groupCount()I
    .locals 2

    #@0
    .prologue
    .line 399
    monitor-enter p0

    #@1
    .line 400
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
    .line 399
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
    .line 874
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    #@2
    return v0
.end method

.method public hasTransparentBounds()Z
    .locals 1

    #@0
    .prologue
    .line 820
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    #@2
    return v0
.end method

.method public hitEnd()Z
    .locals 2

    #@0
    .prologue
    .line 940
    monitor-enter p0

    #@1
    .line 941
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
    .line 940
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
    .line 486
    monitor-enter p0

    #@1
    .line 487
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
    .line 489
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@10
    return v0

    #@11
    .line 486
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
    .line 414
    monitor-enter p0

    #@1
    .line 415
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
    .line 417
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@10
    return v0

    #@11
    .line 414
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
    .line 183
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
    .line 773
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
    .line 799
    iget v0, p0, Ljava/util/regex/Matcher;->regionEnd:I

    #@2
    return v0
.end method

.method public regionStart()I
    .locals 1

    #@0
    .prologue
    .line 786
    iget v0, p0, Ljava/util/regex/Matcher;->regionStart:I

    #@2
    return v0
.end method

.method public replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "replacement"    # Ljava/lang/String;

    #@0
    .prologue
    .line 697
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    #@3
    .line 698
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
    .line 699
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 700
    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@17
    goto :goto_0

    #@18
    .line 702
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
    .line 739
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    #@3
    .line 740
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
    .line 741
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 742
    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@17
    .line 744
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
    .line 961
    monitor-enter p0

    #@1
    .line 962
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
    .line 961
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
    .line 977
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
    .line 995
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
    .line 1065
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
    .line 1093
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    #@3
    .line 1094
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
    .line 195
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    #@3
    .line 196
    new-instance v0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;

    #@5
    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@7
    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    #@9
    invoke-direct {v0, v1, v2}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;-><init>(Ljava/lang/String;[I)V

    #@c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 916
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "java.util.regex.Matcher"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 917
    const-string/jumbo v1, "[pattern="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    .line 918
    const-string/jumbo v1, " region="

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 919
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->regionStart()I

    #@22
    move-result v1

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, ","

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->regionEnd()I

    #@31
    move-result v2

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    .line 920
    const-string/jumbo v1, " lastmatch="

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 921
    iget-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@3d
    if-eqz v1, :cond_0

    #@3f
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    if-eqz v1, :cond_0

    #@45
    .line 922
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 924
    :cond_0
    const-string/jumbo v1, "]"

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 925
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    return-object v1
.end method

.method public useAnchoringBounds(Z)Ljava/util/regex/Matcher;
    .locals 2
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 899
    monitor-enter p0

    #@1
    .line 900
    :try_start_0
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    #@3
    .line 901
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@5
    invoke-static {v0, v1, p1}, Ljava/util/regex/Matcher;->useAnchoringBoundsImpl(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 903
    return-object p0

    #@a
    .line 899
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    .locals 4
    .param p1, "newPattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    .line 216
    if-nez p1, :cond_0

    #@2
    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "newPattern == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 220
    :cond_0
    iput-object p1, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    #@d
    .line 222
    monitor-enter p0

    #@e
    .line 223
    :try_start_0
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 224
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;

    #@14
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@17
    .line 225
    const-wide/16 v0, 0x0

    #@19
    iput-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@1b
    .line 226
    const/4 v0, 0x0

    #@1c
    iput-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;

    #@1e
    .line 228
    :cond_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    #@20
    iget-wide v0, v0, Ljava/util/regex/Pattern;->address:J

    #@22
    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->openImpl(J)J

    #@25
    move-result-wide v0

    #@26
    iput-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@28
    .line 229
    sget-object v0, Ljava/util/regex/Matcher;->registry:Llibcore/util/NativeAllocationRegistry;

    #@2a
    iget-wide v2, p0, Ljava/util/regex/Matcher;->address:J

    #@2c
    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    monitor-exit p0

    #@33
    .line 232
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    #@35
    if-eqz v0, :cond_2

    #@37
    .line 233
    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    #@3a
    .line 236
    :cond_2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    #@3d
    move-result v0

    #@3e
    add-int/lit8 v0, v0, 0x1

    #@40
    mul-int/lit8 v0, v0, 0x2

    #@42
    new-array v0, v0, [I

    #@44
    iput-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    #@46
    .line 237
    const/4 v0, 0x0

    #@47
    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    #@49
    .line 238
    return-object p0

    #@4a
    .line 222
    :catchall_0
    move-exception v0

    #@4b
    monitor-exit p0

    #@4c
    throw v0
.end method

.method public useTransparentBounds(Z)Ljava/util/regex/Matcher;
    .locals 2
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 850
    monitor-enter p0

    #@1
    .line 851
    :try_start_0
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    #@3
    .line 852
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    #@5
    invoke-static {v0, v1, p1}, Ljava/util/regex/Matcher;->useTransparentBoundsImpl(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 854
    return-object p0

    #@a
    .line 850
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method
