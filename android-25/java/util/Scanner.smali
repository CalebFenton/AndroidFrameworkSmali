.class public final Ljava/util/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Scanner$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BOOLEAN_PATTERN:Ljava/lang/String; = "true|false"

.field private static final BUFFER_SIZE:I = 0x400

.field private static FIND_ANY_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final LINE_PATTERN:Ljava/lang/String; = ".*(\r\n|[\n\r\u2028\u2029\u0085])|.+$"

.field private static final LINE_SEPARATOR_PATTERN:Ljava/lang/String; = "\r\n|[\n\r\u2028\u2029\u0085]"

.field private static NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

.field private static WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

.field private static volatile boolPattern:Ljava/util/regex/Pattern;

.field private static volatile linePattern:Ljava/util/regex/Pattern;

.field private static volatile separatorPattern:Ljava/util/regex/Pattern;


# instance fields
.field private SIMPLE_GROUP_INDEX:I

.field private buf:Ljava/nio/CharBuffer;

.field private closed:Z

.field private decimalPattern:Ljava/util/regex/Pattern;

.field private decimalSeparator:Ljava/lang/String;

.field private defaultRadix:I

.field private delimPattern:Ljava/util/regex/Pattern;

.field private digits:Ljava/lang/String;

.field private floatPattern:Ljava/util/regex/Pattern;

.field private groupSeparator:Ljava/lang/String;

.field private hasNextPattern:Ljava/util/regex/Pattern;

.field private hasNextPosition:I

.field private hasNextResult:Ljava/lang/String;

.field private infinityString:Ljava/lang/String;

.field private integerPattern:Ljava/util/regex/Pattern;

.field private lastException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private matchValid:Z

.field private matcher:Ljava/util/regex/Matcher;

.field private nanString:Ljava/lang/String;

.field private needInput:Z

.field private negativePrefix:Ljava/lang/String;

.field private negativeSuffix:Ljava/lang/String;

.field private non0Digit:Ljava/lang/String;

.field private patternCache:Lsun/misc/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/misc/LRUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private positivePrefix:Ljava/lang/String;

.field private positiveSuffix:Ljava/lang/String;

.field private radix:I

.field private savedScannerPosition:I

.field private skipped:Z

.field private source:Ljava/lang/Readable;

.field private sourceClosed:Z

.field private typeCache:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/Scanner;

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
    sput-boolean v0, Ljava/util/Scanner;->-assertionsDisabled:Z

    #@b
    .line 422
    const-string/jumbo v0, "\\p{javaWhitespace}+"

    #@e
    .line 421
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    #@14
    .line 425
    const-string/jumbo v0, "(?s).*"

    #@17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@1a
    move-result-object v0

    #@1b
    sput-object v0, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    #@1d
    .line 429
    const-string/jumbo v0, "[\\p{javaDigit}&&[^0-9]]"

    #@20
    .line 428
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@23
    move-result-object v0

    #@24
    sput-object v0, Ljava/util/Scanner;->NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

    #@26
    .line 347
    return-void

    #@27
    :cond_0
    const/4 v0, 0x1

    #@28
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "source"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 659
    new-instance v0, Ljava/io/FileInputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@8
    move-result-object v0

    #@9
    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    #@c
    .line 658
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/io/File;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 677
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/io/File;

    #@6
    invoke-static {p2}, Ljava/util/Scanner;->toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetDecoder;)V

    #@d
    .line 675
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/nio/charset/CharsetDecoder;)V
    .locals 1
    .param p1, "source"    # Ljava/io/File;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 683
    new-instance v0, Ljava/io/FileInputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0, p2}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    #@c
    move-result-object v0

    #@d
    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    #@10
    .line 681
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "source"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 611
    new-instance v0, Ljava/io/InputStreamReader;

    #@2
    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@5
    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    #@7
    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    #@a
    .line 610
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 626
    const-string/jumbo v0, "source"

    #@3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/io/InputStream;

    #@9
    invoke-static {p2}, Ljava/util/Scanner;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@c
    move-result-object v1

    #@d
    invoke-static {v0, v1}, Ljava/util/Scanner;->makeReadable(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Readable;

    #@10
    move-result-object v0

    #@11
    .line 627
    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    #@13
    .line 626
    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    #@16
    .line 625
    return-void
.end method

.method public constructor <init>(Ljava/lang/Readable;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Readable;

    #@0
    .prologue
    .line 599
    const-string/jumbo v0, "source"

    #@3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/Readable;

    #@9
    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    #@b
    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    #@e
    .line 598
    return-void
.end method

.method private constructor <init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V
    .locals 5
    .param p1, "source"    # Ljava/lang/Readable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    const/16 v4, 0xa

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v2, 0x0

    #@5
    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 377
    iput-boolean v2, p0, Ljava/util/Scanner;->sourceClosed:Z

    #@a
    .line 380
    iput-boolean v2, p0, Ljava/util/Scanner;->needInput:Z

    #@c
    .line 383
    iput-boolean v2, p0, Ljava/util/Scanner;->skipped:Z

    #@e
    .line 386
    const/4 v0, -0x1

    #@f
    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    #@11
    .line 389
    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@13
    .line 392
    iput-boolean v2, p0, Ljava/util/Scanner;->matchValid:Z

    #@15
    .line 395
    iput-boolean v2, p0, Ljava/util/Scanner;->closed:Z

    #@17
    .line 398
    iput v4, p0, Ljava/util/Scanner;->radix:I

    #@19
    .line 401
    iput v4, p0, Ljava/util/Scanner;->defaultRadix:I

    #@1b
    .line 404
    iput-object v3, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    #@1d
    .line 408
    new-instance v0, Ljava/util/Scanner$1;

    #@1f
    const/4 v3, 0x7

    #@20
    invoke-direct {v0, p0, v3}, Ljava/util/Scanner$1;-><init>(Ljava/util/Scanner;I)V

    #@23
    .line 407
    iput-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    #@25
    .line 436
    const-string/jumbo v0, "\\,"

    #@28
    iput-object v0, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    #@2a
    .line 437
    const-string/jumbo v0, "\\."

    #@2d
    iput-object v0, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    #@2f
    .line 438
    const-string/jumbo v0, "NaN"

    #@32
    iput-object v0, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    #@34
    .line 439
    const-string/jumbo v0, "Infinity"

    #@37
    iput-object v0, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    #@39
    .line 440
    const-string/jumbo v0, ""

    #@3c
    iput-object v0, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    #@3e
    .line 441
    const-string/jumbo v0, "\\-"

    #@41
    iput-object v0, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    #@43
    .line 442
    const-string/jumbo v0, ""

    #@46
    iput-object v0, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    #@48
    .line 443
    const-string/jumbo v0, ""

    #@4b
    iput-object v0, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    #@4d
    .line 462
    const-string/jumbo v0, "0123456789abcdefghijklmnopqrstuvwxyz"

    #@50
    iput-object v0, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    #@52
    .line 463
    const-string/jumbo v0, "[\\p{javaDigit}&&[^0]]"

    #@55
    iput-object v0, p0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    #@57
    .line 464
    const/4 v0, 0x5

    #@58
    iput v0, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    #@5a
    .line 579
    sget-boolean v0, Ljava/util/Scanner;->-assertionsDisabled:Z

    #@5c
    if-nez v0, :cond_1

    #@5e
    if-eqz p1, :cond_0

    #@60
    move v0, v1

    #@61
    :goto_0
    if-nez v0, :cond_1

    #@63
    new-instance v0, Ljava/lang/AssertionError;

    #@65
    const-string/jumbo v1, "source should not be null"

    #@68
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@6b
    throw v0

    #@6c
    :cond_0
    move v0, v2

    #@6d
    goto :goto_0

    #@6e
    .line 580
    :cond_1
    sget-boolean v0, Ljava/util/Scanner;->-assertionsDisabled:Z

    #@70
    if-nez v0, :cond_3

    #@72
    if-eqz p2, :cond_2

    #@74
    move v0, v1

    #@75
    :goto_1
    if-nez v0, :cond_3

    #@77
    new-instance v0, Ljava/lang/AssertionError;

    #@79
    const-string/jumbo v1, "pattern should not be null"

    #@7c
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@7f
    throw v0

    #@80
    :cond_2
    move v0, v2

    #@81
    goto :goto_1

    #@82
    .line 581
    :cond_3
    iput-object p1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    #@84
    .line 582
    iput-object p2, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    #@86
    .line 583
    const/16 v0, 0x400

    #@88
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@8b
    move-result-object v0

    #@8c
    iput-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@8e
    .line 584
    iget-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@90
    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@93
    .line 585
    iget-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    #@95
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@97
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@9a
    move-result-object v0

    #@9b
    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@9d
    .line 586
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@9f
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useTransparentBounds(Z)Ljava/util/regex/Matcher;

    #@a2
    .line 587
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@a4
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->useAnchoringBounds(Z)Ljava/util/regex/Matcher;

    #@a7
    .line 588
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@a9
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@ac
    move-result-object v0

    #@ad
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    #@b0
    .line 578
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 711
    new-instance v0, Ljava/io/StringReader;

    #@2
    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@5
    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    #@7
    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    #@a
    .line 710
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 2
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;

    #@0
    .prologue
    .line 723
    const-string/jumbo v0, "source"

    #@3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    #@9
    invoke-static {v0}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;)Ljava/lang/Readable;

    #@c
    move-result-object v0

    #@d
    .line 724
    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    #@f
    .line 723
    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    #@12
    .line 722
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "charsetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 743
    const-string/jumbo v0, "source"

    #@3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    #@9
    invoke-static {p2}, Ljava/util/Scanner;->toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    #@c
    move-result-object v1

    #@d
    invoke-static {v0, v1}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    #@10
    move-result-object v0

    #@11
    .line 744
    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    #@13
    .line 743
    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    #@16
    .line 742
    return-void
.end method

.method private static boolPattern()Ljava/util/regex/Pattern;
    .locals 3

    #@0
    .prologue
    .line 451
    sget-object v0, Ljava/util/Scanner;->boolPattern:Ljava/util/regex/Pattern;

    #@2
    .line 452
    .local v0, "bp":Ljava/util/regex/Pattern;
    if-nez v0, :cond_0

    #@4
    .line 453
    const-string/jumbo v1, "true|false"

    #@7
    .line 454
    const/4 v2, 0x2

    #@8
    .line 453
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Ljava/util/Scanner;->boolPattern:Ljava/util/regex/Pattern;

    #@e
    .line 455
    :cond_0
    return-object v0
.end method

.method private buildFloatAndDecimalPattern()V
    .locals 15

    #@0
    .prologue
    .line 525
    const-string/jumbo v2, "([0-9]|(\\p{javaDigit}))"

    #@3
    .line 526
    .local v2, "digit":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v14, "([eE][+-]?"

    #@b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v13

    #@f
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v13

    #@13
    const-string/jumbo v14, "+)?"

    #@16
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v13

    #@1a
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 527
    .local v3, "exponent":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v14, "("

    #@26
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v13

    #@2a
    iget-object v14, p0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    #@2c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v13

    #@30
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v13

    #@34
    const-string/jumbo v14, "?"

    #@37
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v13

    #@3b
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v13

    #@3f
    const-string/jumbo v14, "?("

    #@42
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v13

    #@46
    .line 528
    iget-object v14, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    #@48
    .line 527
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v13

    #@4c
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v13

    #@50
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v13

    #@54
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v13

    #@58
    .line 528
    const-string/jumbo v14, ")+)"

    #@5b
    .line 527
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v13

    #@5f
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    .line 530
    .local v4, "groupedNumeral":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v14, "(("

    #@6b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v13

    #@6f
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v13

    #@73
    const-string/jumbo v14, "++)|"

    #@76
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v13

    #@7a
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v13

    #@7e
    const-string/jumbo v14, ")"

    #@81
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v13

    #@85
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v9

    #@89
    .line 531
    .local v9, "numeral":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v14, "("

    #@91
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v13

    #@95
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v13

    #@99
    const-string/jumbo v14, "|"

    #@9c
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v13

    #@a0
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v13

    #@a4
    .line 532
    iget-object v14, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    #@a6
    .line 531
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v13

    #@aa
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v13

    #@ae
    .line 532
    const-string/jumbo v14, "*+|"

    #@b1
    .line 531
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v13

    #@b5
    .line 532
    iget-object v14, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    #@b7
    .line 531
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v13

    #@bb
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v13

    #@bf
    .line 533
    const-string/jumbo v14, "++)"

    #@c2
    .line 531
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v13

    #@c6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v1

    #@ca
    .line 534
    .local v1, "decimalNumeral":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v14, "(NaN|"

    #@d2
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v13

    #@d6
    iget-object v14, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    #@d8
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v13

    #@dc
    const-string/jumbo v14, "|Infinity|"

    #@df
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v13

    #@e3
    .line 535
    iget-object v14, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    #@e5
    .line 534
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v13

    #@e9
    .line 535
    const-string/jumbo v14, ")"

    #@ec
    .line 534
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v13

    #@f0
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v8

    #@f4
    .line 536
    .local v8, "nonNumber":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    const-string/jumbo v14, "("

    #@fc
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v13

    #@100
    iget-object v14, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    #@102
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v13

    #@106
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v13

    #@10a
    .line 537
    iget-object v14, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    #@10c
    .line 536
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v13

    #@110
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v13

    #@114
    .line 537
    const-string/jumbo v14, ")"

    #@117
    .line 536
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v13

    #@11b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11e
    move-result-object v10

    #@11f
    .line 538
    .local v10, "positiveFloat":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@121
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@124
    const-string/jumbo v14, "("

    #@127
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v13

    #@12b
    iget-object v14, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    #@12d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v13

    #@131
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v13

    #@135
    .line 539
    iget-object v14, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    #@137
    .line 538
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v13

    #@13b
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v13

    #@13f
    .line 539
    const-string/jumbo v14, ")"

    #@142
    .line 538
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v13

    #@146
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@149
    move-result-object v6

    #@14a
    .line 540
    .local v6, "negativeFloat":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@14c
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@14f
    const-string/jumbo v14, "(([-+]?"

    #@152
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v13

    #@156
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v13

    #@15a
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v13

    #@15e
    const-string/jumbo v14, ")|"

    #@161
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v13

    #@165
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v13

    #@169
    .line 541
    const-string/jumbo v14, "|"

    #@16c
    .line 540
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v13

    #@170
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v13

    #@174
    .line 541
    const-string/jumbo v14, ")"

    #@177
    .line 540
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v13

    #@17b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17e
    move-result-object v0

    #@17f
    .line 543
    .local v0, "decimal":Ljava/lang/String;
    const-string/jumbo v5, "[-+]?0[xX][0-9a-fA-F]*\\.[0-9a-fA-F]+([pP][-+]?[0-9]+)?"

    #@182
    .line 544
    .local v5, "hexFloat":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@184
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@187
    const-string/jumbo v14, "("

    #@18a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v13

    #@18e
    iget-object v14, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    #@190
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v13

    #@194
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v13

    #@198
    .line 545
    iget-object v14, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    #@19a
    .line 544
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v13

    #@19e
    .line 545
    const-string/jumbo v14, ")"

    #@1a1
    .line 544
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v13

    #@1a5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v11

    #@1a9
    .line 546
    .local v11, "positiveNonNumber":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@1ab
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@1ae
    const-string/jumbo v14, "("

    #@1b1
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v13

    #@1b5
    iget-object v14, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    #@1b7
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v13

    #@1bb
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1be
    move-result-object v13

    #@1bf
    .line 547
    iget-object v14, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    #@1c1
    .line 546
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v13

    #@1c5
    .line 547
    const-string/jumbo v14, ")"

    #@1c8
    .line 546
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v13

    #@1cc
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cf
    move-result-object v7

    #@1d0
    .line 548
    .local v7, "negativeNonNumber":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@1d2
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@1d5
    const-string/jumbo v14, "(([-+]?"

    #@1d8
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v13

    #@1dc
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1df
    move-result-object v13

    #@1e0
    const-string/jumbo v14, ")|"

    #@1e3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v13

    #@1e7
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v13

    #@1eb
    .line 549
    const-string/jumbo v14, "|"

    #@1ee
    .line 548
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v13

    #@1f2
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v13

    #@1f6
    .line 550
    const-string/jumbo v14, ")"

    #@1f9
    .line 548
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fc
    move-result-object v13

    #@1fd
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@200
    move-result-object v12

    #@201
    .line 551
    .local v12, "signedNonNumber":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@203
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@206
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@209
    move-result-object v13

    #@20a
    const-string/jumbo v14, "|"

    #@20d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@210
    move-result-object v13

    #@211
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@214
    move-result-object v13

    #@215
    const-string/jumbo v14, "|"

    #@218
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v13

    #@21c
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v13

    #@220
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@223
    move-result-object v13

    #@224
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@227
    move-result-object v13

    #@228
    iput-object v13, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    #@22a
    .line 553
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@22d
    move-result-object v13

    #@22e
    iput-object v13, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    #@230
    .line 523
    return-void
.end method

.method private buildIntegerPatternString()Ljava/lang/String;
    .locals 12

    #@0
    .prologue
    .line 466
    iget-object v8, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    #@2
    iget v9, p0, Ljava/util/Scanner;->radix:I

    #@4
    const/4 v10, 0x0

    #@5
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8
    move-result-object v7

    #@9
    .line 468
    .local v7, "radixDigits":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v9, "((?i)["

    #@11
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v8

    #@15
    iget-object v9, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    #@17
    iget v10, p0, Ljava/util/Scanner;->radix:I

    #@19
    const/4 v11, 0x1

    #@1a
    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v9

    #@1e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v8

    #@22
    const-string/jumbo v9, "]|("

    #@25
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v8

    #@29
    iget-object v9, p0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    #@2b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v8

    #@2f
    const-string/jumbo v9, "))"

    #@32
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v8

    #@36
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    .line 474
    .local v4, "nonZeroRadixDigits":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v9, "((?i)["

    #@42
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v8

    #@46
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v8

    #@4a
    const-string/jumbo v9, "]|\\p{javaDigit})"

    #@4d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v8

    #@51
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    .line 476
    .local v0, "digit":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v9, "("

    #@5d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v8

    #@61
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v8

    #@65
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v8

    #@69
    const-string/jumbo v9, "?"

    #@6c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v8

    #@70
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v8

    #@74
    const-string/jumbo v9, "?("

    #@77
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v8

    #@7b
    .line 477
    iget-object v9, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    #@7d
    .line 476
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v8

    #@81
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v8

    #@85
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v8

    #@89
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v8

    #@8d
    .line 477
    const-string/jumbo v9, ")+)"

    #@90
    .line 476
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v8

    #@94
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v1

    #@98
    .line 480
    .local v1, "groupedNumeral":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v9, "(("

    #@a0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v8

    #@a4
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v8

    #@a8
    const-string/jumbo v9, "++)|"

    #@ab
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v8

    #@af
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v8

    #@b3
    const-string/jumbo v9, ")"

    #@b6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v8

    #@ba
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v5

    #@be
    .line 481
    .local v5, "numeral":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v9, "([-+]?("

    #@c6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v8

    #@ca
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v8

    #@ce
    const-string/jumbo v9, "))"

    #@d1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v8

    #@d5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v2

    #@d9
    .line 482
    .local v2, "javaStyleInteger":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    iget-object v9, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    #@e0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v8

    #@e4
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v8

    #@e8
    iget-object v9, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    #@ea
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v8

    #@ee
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v3

    #@f2
    .line 483
    .local v3, "negativeInteger":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    iget-object v9, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    #@f9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v8

    #@fd
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v8

    #@101
    iget-object v9, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    #@103
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v8

    #@107
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v6

    #@10b
    .line 484
    .local v6, "positiveInteger":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v9, "("

    #@113
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v8

    #@117
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v8

    #@11b
    const-string/jumbo v9, ")|("

    #@11e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v8

    #@122
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v8

    #@126
    .line 485
    const-string/jumbo v9, ")|("

    #@129
    .line 484
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v8

    #@12d
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v8

    #@131
    .line 486
    const-string/jumbo v9, ")"

    #@134
    .line 484
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v8

    #@138
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v8

    #@13c
    return-object v8
.end method

.method private cacheResult()V
    .locals 1

    #@0
    .prologue
    .line 767
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    #@8
    .line 768
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    #@10
    .line 769
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@12
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    #@18
    .line 766
    return-void
.end method

.method private cacheResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    #@0
    .prologue
    .line 773
    iput-object p1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    #@2
    .line 774
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@7
    move-result v0

    #@8
    iput v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    #@a
    .line 775
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@c
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    #@12
    .line 772
    return-void
.end method

.method private clearCaches()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 780
    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    #@3
    .line 781
    iput-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@5
    .line 779
    return-void
.end method

.method private decimalPattern()Ljava/util/regex/Pattern;
    .locals 1

    #@0
    .prologue
    .line 562
    iget-object v0, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 563
    invoke-direct {p0}, Ljava/util/Scanner;->buildFloatAndDecimalPattern()V

    #@7
    .line 565
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    #@9
    return-object v0
.end method

.method private ensureOpen()V
    .locals 2

    #@0
    .prologue
    .line 1081
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1082
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Scanner closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1080
    :cond_0
    return-void
.end method

.method private findPatternInBuffer(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .locals 7
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "horizon"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 1012
    iput-boolean v3, p0, Ljava/util/Scanner;->matchValid:Z

    #@5
    .line 1013
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@7
    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@a
    .line 1014
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@c
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    #@f
    move-result v0

    #@10
    .line 1015
    .local v0, "bufferLimit":I
    const/4 v1, -0x1

    #@11
    .line 1016
    .local v1, "horizonLimit":I
    move v2, v0

    #@12
    .line 1017
    .local v2, "searchLimit":I
    if-lez p2, :cond_0

    #@14
    .line 1018
    iget v3, p0, Ljava/util/Scanner;->position:I

    #@16
    add-int v1, v3, p2

    #@18
    .line 1019
    if-ge v1, v0, :cond_0

    #@1a
    .line 1020
    move v2, v1

    #@1b
    .line 1022
    :cond_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@1d
    iget v4, p0, Ljava/util/Scanner;->position:I

    #@1f
    invoke-virtual {v3, v4, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@22
    .line 1023
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@24
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_4

    #@2a
    .line 1024
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@2c
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->hitEnd()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_1

    #@32
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    #@34
    if-eqz v3, :cond_2

    #@36
    .line 1041
    :cond_1
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@38
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    #@3b
    move-result v3

    #@3c
    iput v3, p0, Ljava/util/Scanner;->position:I

    #@3e
    .line 1042
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@40
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    return-object v3

    #@45
    .line 1026
    :cond_2
    if-eq v2, v1, :cond_3

    #@47
    .line 1028
    iput-boolean v6, p0, Ljava/util/Scanner;->needInput:Z

    #@49
    .line 1029
    return-object v5

    #@4a
    .line 1032
    :cond_3
    if-ne v2, v1, :cond_1

    #@4c
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@4e
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->requireEnd()Z

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_1

    #@54
    .line 1036
    iput-boolean v6, p0, Ljava/util/Scanner;->needInput:Z

    #@56
    .line 1037
    return-object v5

    #@57
    .line 1045
    :cond_4
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    #@59
    if-eqz v3, :cond_5

    #@5b
    .line 1046
    return-object v5

    #@5c
    .line 1050
    :cond_5
    if-eqz p2, :cond_6

    #@5e
    if-eq v2, v1, :cond_7

    #@60
    .line 1051
    :cond_6
    iput-boolean v6, p0, Ljava/util/Scanner;->needInput:Z

    #@62
    .line 1052
    :cond_7
    return-object v5
.end method

.method private floatPattern()Ljava/util/regex/Pattern;
    .locals 1

    #@0
    .prologue
    .line 556
    iget-object v0, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 557
    invoke-direct {p0}, Ljava/util/Scanner;->buildFloatAndDecimalPattern()V

    #@7
    .line 559
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    #@9
    return-object v0
.end method

.method private getCachedResult()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 786
    iget v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    #@3
    iput v0, p0, Ljava/util/Scanner;->position:I

    #@5
    .line 787
    iput-object v1, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    #@7
    .line 788
    iput-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@9
    .line 789
    iget-object v0, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    #@b
    return-object v0
.end method

.method private getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 8
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 914
    const/4 v3, 0x0

    #@3
    iput-boolean v3, p0, Ljava/util/Scanner;->matchValid:Z

    #@5
    .line 917
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@7
    iget-object v4, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    #@9
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@c
    .line 918
    iget-boolean v3, p0, Ljava/util/Scanner;->skipped:Z

    #@e
    if-nez v3, :cond_1

    #@10
    .line 919
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@12
    iget v4, p0, Ljava/util/Scanner;->position:I

    #@14
    iget-object v5, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@16
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    #@19
    move-result v5

    #@1a
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@1d
    .line 920
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@1f
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 923
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@27
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->hitEnd()Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_0

    #@2d
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    #@2f
    if-eqz v3, :cond_2

    #@31
    .line 928
    :cond_0
    iput-boolean v7, p0, Ljava/util/Scanner;->skipped:Z

    #@33
    .line 929
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@35
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    #@38
    move-result v3

    #@39
    iput v3, p0, Ljava/util/Scanner;->position:I

    #@3b
    .line 934
    :cond_1
    iget v3, p0, Ljava/util/Scanner;->position:I

    #@3d
    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@3f
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    #@42
    move-result v4

    #@43
    if-ne v3, v4, :cond_4

    #@45
    .line 935
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    #@47
    if-eqz v3, :cond_3

    #@49
    .line 936
    return-object v6

    #@4a
    .line 924
    :cond_2
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    #@4c
    .line 925
    return-object v6

    #@4d
    .line 937
    :cond_3
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    #@4f
    .line 938
    return-object v6

    #@50
    .line 947
    :cond_4
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@52
    iget v4, p0, Ljava/util/Scanner;->position:I

    #@54
    iget-object v5, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@56
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    #@59
    move-result v5

    #@5a
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@5d
    .line 948
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@5f
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    #@62
    move-result v0

    #@63
    .line 949
    .local v0, "foundNextDelim":Z
    if-eqz v0, :cond_5

    #@65
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@67
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    #@6a
    move-result v3

    #@6b
    iget v4, p0, Ljava/util/Scanner;->position:I

    #@6d
    if-ne v3, v4, :cond_5

    #@6f
    .line 953
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@71
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    #@74
    move-result v0

    #@75
    .line 955
    :cond_5
    if-eqz v0, :cond_a

    #@77
    .line 962
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@79
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->requireEnd()Z

    #@7c
    move-result v3

    #@7d
    if-eqz v3, :cond_6

    #@7f
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    #@81
    if-eqz v3, :cond_8

    #@83
    .line 966
    :cond_6
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@85
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    #@88
    move-result v2

    #@89
    .line 968
    .local v2, "tokenEnd":I
    if-nez p1, :cond_7

    #@8b
    .line 970
    sget-object p1, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    #@8d
    .line 973
    :cond_7
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@8f
    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@92
    .line 974
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@94
    iget v4, p0, Ljava/util/Scanner;->position:I

    #@96
    invoke-virtual {v3, v4, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@99
    .line 975
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@9b
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    #@9e
    move-result v3

    #@9f
    if-eqz v3, :cond_9

    #@a1
    .line 976
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@a3
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@a6
    move-result-object v1

    #@a7
    .line 977
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@a9
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    #@ac
    move-result v3

    #@ad
    iput v3, p0, Ljava/util/Scanner;->position:I

    #@af
    .line 978
    return-object v1

    #@b0
    .line 963
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "tokenEnd":I
    :cond_8
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    #@b2
    .line 964
    return-object v6

    #@b3
    .line 980
    .restart local v2    # "tokenEnd":I
    :cond_9
    return-object v6

    #@b4
    .line 986
    .end local v2    # "tokenEnd":I
    :cond_a
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    #@b6
    if-eqz v3, :cond_d

    #@b8
    .line 987
    if-nez p1, :cond_b

    #@ba
    .line 989
    sget-object p1, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    #@bc
    .line 992
    :cond_b
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@be
    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@c1
    .line 993
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@c3
    iget v4, p0, Ljava/util/Scanner;->position:I

    #@c5
    iget-object v5, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@c7
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    #@ca
    move-result v5

    #@cb
    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@ce
    .line 994
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@d0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    #@d3
    move-result v3

    #@d4
    if-eqz v3, :cond_c

    #@d6
    .line 995
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@d8
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@db
    move-result-object v1

    #@dc
    .line 996
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@de
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    #@e1
    move-result v3

    #@e2
    iput v3, p0, Ljava/util/Scanner;->position:I

    #@e4
    .line 997
    return-object v1

    #@e5
    .line 1000
    .end local v1    # "s":Ljava/lang/String;
    :cond_c
    return-object v6

    #@e6
    .line 1005
    :cond_d
    iput-boolean v7, p0, Ljava/util/Scanner;->needInput:Z

    #@e8
    .line 1006
    return-object v6
.end method

.method private hasTokenInBuffer()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 883
    iput-boolean v3, p0, Ljava/util/Scanner;->matchValid:Z

    #@3
    .line 884
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@5
    iget-object v1, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    #@7
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@a
    .line 885
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@c
    iget v1, p0, Ljava/util/Scanner;->position:I

    #@e
    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@10
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    #@13
    move-result v2

    #@14
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@17
    .line 888
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@19
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 889
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@21
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Ljava/util/Scanner;->position:I

    #@27
    .line 892
    :cond_0
    iget v0, p0, Ljava/util/Scanner;->position:I

    #@29
    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@2b
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    #@2e
    move-result v1

    #@2f
    if-ne v0, v1, :cond_1

    #@31
    .line 893
    return v3

    #@32
    .line 895
    :cond_1
    const/4 v0, 0x1

    #@33
    return v0
.end method

.method private integerPattern()Ljava/util/regex/Pattern;
    .locals 2

    #@0
    .prologue
    .line 489
    iget-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 490
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    #@6
    invoke-direct {p0}, Ljava/util/Scanner;->buildIntegerPatternString()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/regex/Pattern;

    #@10
    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    #@12
    .line 492
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    #@14
    return-object v0
.end method

.method private static linePattern()Ljava/util/regex/Pattern;
    .locals 2

    #@0
    .prologue
    .line 512
    sget-object v0, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    #@2
    .line 513
    .local v0, "lp":Ljava/util/regex/Pattern;
    if-nez v0, :cond_0

    #@4
    .line 514
    const-string/jumbo v1, ".*(\r\n|[\n\r\u2028\u2029\u0085])|.+$"

    #@7
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    #@d
    .line 515
    :cond_0
    return-object v0
.end method

.method private static makeReadable(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Readable;
    .locals 1
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 646
    new-instance v0, Ljava/io/InputStreamReader;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    #@5
    return-object v0
.end method

.method private static makeReadable(Ljava/nio/channels/ReadableByteChannel;)Ljava/lang/Readable;
    .locals 1
    .param p0, "source"    # Ljava/nio/channels/ReadableByteChannel;

    #@0
    .prologue
    .line 728
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@7
    move-result-object v0

    #@8
    invoke-static {p0, v0}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;
    .locals 1
    .param p0, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "dec"    # Ljava/nio/charset/CharsetDecoder;

    #@0
    .prologue
    .line 701
    const/4 v0, -0x1

    #@1
    invoke-static {p0, p1, v0}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private makeSpace()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 838
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@4
    .line 839
    iget v3, p0, Ljava/util/Scanner;->savedScannerPosition:I

    #@6
    const/4 v4, -0x1

    #@7
    if-ne v3, v4, :cond_0

    #@9
    .line 840
    iget v2, p0, Ljava/util/Scanner;->position:I

    #@b
    .line 841
    .local v2, "offset":I
    :goto_0
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@d
    invoke-virtual {v3, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@10
    .line 843
    if-lez v2, :cond_1

    #@12
    .line 844
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@14
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    #@17
    .line 845
    invoke-direct {p0, v2}, Ljava/util/Scanner;->translateSavedIndexes(I)V

    #@1a
    .line 846
    iget v3, p0, Ljava/util/Scanner;->position:I

    #@1c
    sub-int/2addr v3, v2

    #@1d
    iput v3, p0, Ljava/util/Scanner;->position:I

    #@1f
    .line 847
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@21
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@24
    .line 848
    return v5

    #@25
    .line 840
    .end local v2    # "offset":I
    :cond_0
    iget v2, p0, Ljava/util/Scanner;->savedScannerPosition:I

    #@27
    .restart local v2    # "offset":I
    goto :goto_0

    #@28
    .line 851
    :cond_1
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@2a
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->capacity()I

    #@2d
    move-result v3

    #@2e
    mul-int/lit8 v1, v3, 0x2

    #@30
    .line 852
    .local v1, "newSize":I
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@33
    move-result-object v0

    #@34
    .line 853
    .local v0, "newBuf":Ljava/nio/CharBuffer;
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@36
    invoke-virtual {v0, v3}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    #@39
    .line 854
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@3c
    .line 855
    invoke-direct {p0, v2}, Ljava/util/Scanner;->translateSavedIndexes(I)V

    #@3f
    .line 856
    iget v3, p0, Ljava/util/Scanner;->position:I

    #@41
    sub-int/2addr v3, v2

    #@42
    iput v3, p0, Ljava/util/Scanner;->position:I

    #@44
    .line 857
    iput-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@46
    .line 858
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@48
    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@4a
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@4d
    .line 859
    return v5
.end method

.method private matchPatternInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 5
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1058
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    #@5
    .line 1059
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@a
    .line 1060
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@c
    iget v1, p0, Ljava/util/Scanner;->position:I

    #@e
    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@10
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    #@13
    move-result v2

    #@14
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@17
    .line 1061
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@19
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 1062
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@21
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->hitEnd()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_0

    #@27
    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 1067
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@2d
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Ljava/util/Scanner;->position:I

    #@33
    .line 1068
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@35
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    return-object v0

    #@3a
    .line 1064
    :cond_1
    iput-boolean v4, p0, Ljava/util/Scanner;->needInput:Z

    #@3c
    .line 1065
    return-object v3

    #@3d
    .line 1071
    :cond_2
    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    #@3f
    if-eqz v0, :cond_3

    #@41
    .line 1072
    return-object v3

    #@42
    .line 1075
    :cond_3
    iput-boolean v4, p0, Ljava/util/Scanner;->needInput:Z

    #@44
    .line 1076
    return-object v3
.end method

.method private processFloatToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "token"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2256
    iget-object v9, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    #@2
    const-string/jumbo v10, ""

    #@5
    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v7

    #@9
    .line 2257
    .local v7, "result":Ljava/lang/String;
    iget-object v9, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    #@b
    const-string/jumbo v10, "\\."

    #@e
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v9

    #@12
    if-nez v9, :cond_0

    #@14
    .line 2258
    iget-object v9, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    #@16
    const-string/jumbo v10, "."

    #@19
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v7

    #@1d
    .line 2259
    :cond_0
    const/4 v3, 0x0

    #@1e
    .line 2260
    .local v3, "isNegative":Z
    iget-object v9, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    #@20
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@23
    move-result v6

    #@24
    .line 2261
    .local v6, "preLen":I
    if-lez v6, :cond_1

    #@26
    iget-object v9, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    #@28
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2b
    move-result v9

    #@2c
    if-eqz v9, :cond_1

    #@2e
    .line 2262
    const/4 v3, 0x1

    #@2f
    .line 2263
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    .line 2265
    :cond_1
    iget-object v9, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    #@35
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@38
    move-result v8

    #@39
    .line 2266
    .local v8, "sufLen":I
    if-lez v8, :cond_2

    #@3b
    iget-object v9, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    #@3d
    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@40
    move-result v9

    #@41
    if-eqz v9, :cond_2

    #@43
    .line 2267
    const/4 v3, 0x1

    #@44
    .line 2268
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@47
    move-result v9

    #@48
    sub-int/2addr v9, v8

    #@49
    .line 2269
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@4c
    move-result v10

    #@4d
    .line 2268
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    .line 2271
    :cond_2
    iget-object v9, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    #@53
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v9

    #@57
    if-eqz v9, :cond_3

    #@59
    .line 2272
    const-string/jumbo v7, "NaN"

    #@5c
    .line 2273
    :cond_3
    iget-object v9, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    #@5e
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v9

    #@62
    if-eqz v9, :cond_4

    #@64
    .line 2274
    const-string/jumbo v7, "Infinity"

    #@67
    .line 2276
    :cond_4
    const-string/jumbo v9, "\u221e"

    #@6a
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v9

    #@6e
    if-eqz v9, :cond_5

    #@70
    .line 2277
    const-string/jumbo v7, "Infinity"

    #@73
    .line 2278
    :cond_5
    if-eqz v3, :cond_6

    #@75
    .line 2279
    new-instance v9, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v10, "-"

    #@7d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v9

    #@81
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v9

    #@85
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v7

    #@89
    .line 2282
    :cond_6
    sget-object v9, Ljava/util/Scanner;->NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

    #@8b
    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@8e
    move-result-object v4

    #@8f
    .line 2283
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    #@92
    move-result v9

    #@93
    if-eqz v9, :cond_a

    #@95
    .line 2284
    new-instance v2, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    .line 2285
    .local v2, "inASCII":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@9b
    .local v1, "i":I
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@9e
    move-result v9

    #@9f
    if-ge v1, v9, :cond_9

    #@a1
    .line 2286
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    #@a4
    move-result v5

    #@a5
    .line 2287
    .local v5, "nextChar":C
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    #@a8
    move-result v9

    #@a9
    if-eqz v9, :cond_8

    #@ab
    .line 2288
    const/16 v9, 0xa

    #@ad
    invoke-static {v5, v9}, Ljava/lang/Character;->digit(CI)I

    #@b0
    move-result v0

    #@b1
    .line 2289
    .local v0, "d":I
    const/4 v9, -0x1

    #@b2
    if-eq v0, v9, :cond_7

    #@b4
    .line 2290
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b7
    .line 2285
    .end local v0    # "d":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@b9
    goto :goto_0

    #@ba
    .line 2292
    .restart local v0    # "d":I
    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@bd
    goto :goto_1

    #@be
    .line 2294
    .end local v0    # "d":I
    :cond_8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c1
    goto :goto_1

    #@c2
    .line 2297
    .end local v5    # "nextChar":C
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v7

    #@c6
    .line 2300
    .end local v1    # "i":I
    .end local v2    # "inASCII":Ljava/lang/StringBuilder;
    :cond_a
    return-object v7
.end method

.method private processIntegerToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "token"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2057
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, ""

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    iget-object v5, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    const-string/jumbo v5, ""

    #@19
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 2058
    .local v2, "result":Ljava/lang/String;
    const/4 v0, 0x0

    #@1e
    .line 2059
    .local v0, "isNegative":Z
    iget-object v4, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    #@20
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@23
    move-result v1

    #@24
    .line 2060
    .local v1, "preLen":I
    if-lez v1, :cond_0

    #@26
    iget-object v4, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    #@28
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_0

    #@2e
    .line 2061
    const/4 v0, 0x1

    #@2f
    .line 2062
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 2064
    :cond_0
    iget-object v4, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    #@35
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@38
    move-result v3

    #@39
    .line 2065
    .local v3, "sufLen":I
    if-lez v3, :cond_1

    #@3b
    iget-object v4, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    #@3d
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@40
    move-result v4

    #@41
    if-eqz v4, :cond_1

    #@43
    .line 2066
    const/4 v0, 0x1

    #@44
    .line 2067
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@47
    move-result v4

    #@48
    sub-int/2addr v4, v3

    #@49
    .line 2068
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@4c
    move-result v5

    #@4d
    .line 2067
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    .line 2070
    :cond_1
    if-eqz v0, :cond_2

    #@53
    .line 2071
    new-instance v4, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v5, "-"

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    .line 2072
    :cond_2
    return-object v2
.end method

.method private readInput()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 803
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@3
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    #@6
    move-result v3

    #@7
    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@9
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->capacity()I

    #@c
    move-result v4

    #@d
    if-ne v3, v4, :cond_0

    #@f
    .line 804
    invoke-direct {p0}, Ljava/util/Scanner;->makeSpace()Z

    #@12
    .line 807
    :cond_0
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@14
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    #@17
    move-result v2

    #@18
    .line 808
    .local v2, "p":I
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@1a
    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@1c
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    #@1f
    move-result v4

    #@20
    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@23
    .line 809
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@25
    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@27
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->capacity()I

    #@2a
    move-result v4

    #@2b
    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@2e
    .line 811
    const/4 v1, 0x0

    #@2f
    .line 813
    .local v1, "n":I
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    #@31
    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@33
    invoke-interface {v3, v4}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    move-result v1

    #@37
    .line 819
    :goto_0
    const/4 v3, -0x1

    #@38
    if-ne v1, v3, :cond_1

    #@3a
    .line 820
    const/4 v3, 0x1

    #@3b
    iput-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    #@3d
    .line 821
    iput-boolean v5, p0, Ljava/util/Scanner;->needInput:Z

    #@3f
    .line 824
    :cond_1
    if-lez v1, :cond_2

    #@41
    .line 825
    iput-boolean v5, p0, Ljava/util/Scanner;->needInput:Z

    #@43
    .line 828
    :cond_2
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@45
    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@47
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    #@4a
    move-result v4

    #@4b
    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@4e
    .line 829
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@50
    invoke-virtual {v3, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@53
    .line 832
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@55
    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@57
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5a
    .line 802
    return-void

    #@5b
    .line 814
    :catch_0
    move-exception v0

    #@5c
    .line 815
    .local v0, "ioe":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    #@5e
    .line 816
    const/4 v1, -0x1

    #@5f
    goto :goto_0
.end method

.method private revertState()V
    .locals 1

    #@0
    .prologue
    .line 754
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    #@2
    iput v0, p0, Ljava/util/Scanner;->position:I

    #@4
    .line 755
    const/4 v0, -0x1

    #@5
    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    #@7
    .line 756
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    #@a
    .line 753
    return-void
.end method

.method private revertState(Z)Z
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 760
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    #@2
    iput v0, p0, Ljava/util/Scanner;->position:I

    #@4
    .line 761
    const/4 v0, -0x1

    #@5
    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    #@7
    .line 762
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    #@a
    .line 763
    return p1
.end method

.method private saveState()V
    .locals 1

    #@0
    .prologue
    .line 750
    iget v0, p0, Ljava/util/Scanner;->position:I

    #@2
    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    #@4
    .line 749
    return-void
.end method

.method private static separatorPattern()Ljava/util/regex/Pattern;
    .locals 2

    #@0
    .prologue
    .line 505
    sget-object v0, Ljava/util/Scanner;->separatorPattern:Ljava/util/regex/Pattern;

    #@2
    .line 506
    .local v0, "sp":Ljava/util/regex/Pattern;
    if-nez v0, :cond_0

    #@4
    .line 507
    const-string/jumbo v1, "\r\n|[\n\r\u2028\u2029\u0085]"

    #@7
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Ljava/util/Scanner;->separatorPattern:Ljava/util/regex/Pattern;

    #@d
    .line 508
    :cond_0
    return-object v0
.end method

.method private setRadix(I)V
    .locals 3
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 1278
    const/16 v0, 0x24

    #@2
    if-le p1, v0, :cond_0

    #@4
    .line 1279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "radix == "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 1282
    :cond_0
    iget v0, p0, Ljava/util/Scanner;->radix:I

    #@20
    if-eq v0, p1, :cond_1

    #@22
    .line 1284
    const/4 v0, 0x0

    #@23
    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    #@25
    .line 1285
    iput p1, p0, Ljava/util/Scanner;->radix:I

    #@27
    .line 1276
    :cond_1
    return-void
.end method

.method private throwFor()V
    .locals 2

    #@0
    .prologue
    .line 872
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    #@3
    .line 873
    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    iget v0, p0, Ljava/util/Scanner;->position:I

    #@9
    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@b
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    #@e
    move-result v1

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 874
    new-instance v0, Ljava/util/NoSuchElementException;

    #@13
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@16
    throw v0

    #@17
    .line 876
    :cond_0
    new-instance v0, Ljava/util/InputMismatchException;

    #@19
    invoke-direct {v0}, Ljava/util/InputMismatchException;-><init>()V

    #@1c
    throw v0
.end method

.method private static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "csn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 636
    const-string/jumbo v1, "charsetName"

    #@3
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    .line 638
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 639
    :catch_0
    move-exception v0

    #@c
    .line 641
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@11
    throw v1
.end method

.method private static toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .locals 3
    .param p0, "charsetName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 689
    if-nez p0, :cond_0

    #@2
    .line 690
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "charsetName == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 693
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 694
    :catch_0
    move-exception v0

    #@15
    .line 695
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@17
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method private translateSavedIndexes(I)V
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 865
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 866
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    #@7
    sub-int/2addr v0, p1

    #@8
    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    #@a
    .line 864
    :cond_0
    return-void
.end method

.method private useTypeCache()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 794
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 795
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Scanner closed"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 796
    :cond_0
    iget v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    #@10
    iput v0, p0, Ljava/util/Scanner;->position:I

    #@12
    .line 797
    iput-object v1, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    #@14
    .line 798
    iput-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@16
    .line 793
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1101
    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1102
    return-void

    #@6
    .line 1103
    :cond_0
    iget-object v1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    #@8
    instance-of v1, v1, Ljava/io/Closeable;

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 1105
    :try_start_0
    iget-object v1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    #@e
    check-cast v1, Ljava/io/Closeable;

    #@10
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 1110
    :cond_1
    :goto_0
    iput-boolean v2, p0, Ljava/util/Scanner;->sourceClosed:Z

    #@15
    .line 1111
    const/4 v1, 0x0

    #@16
    iput-object v1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    #@18
    .line 1112
    iput-boolean v2, p0, Ljava/util/Scanner;->closed:Z

    #@1a
    .line 1100
    return-void

    #@1b
    .line 1106
    :catch_0
    move-exception v0

    #@1c
    .line 1107
    .local v0, "ioe":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    #@1e
    goto :goto_0
.end method

.method public delimiter()Ljava/util/regex/Pattern;
    .locals 1

    #@0
    .prologue
    .line 1133
    iget-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    #@2
    return-object v0
.end method

.method public findInLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1583
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    #@2
    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/regex/Pattern;

    #@8
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 6
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1605
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    #@5
    .line 1606
    if-nez p1, :cond_0

    #@7
    .line 1607
    new-instance v3, Ljava/lang/NullPointerException;

    #@9
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@c
    throw v3

    #@d
    .line 1608
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@10
    .line 1610
    const/4 v0, 0x0

    #@11
    .line 1611
    .local v0, "endPosition":I
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    #@14
    .line 1613
    :goto_0
    invoke-static {}, Ljava/util/Scanner;->separatorPattern()Ljava/util/regex/Pattern;

    #@17
    move-result-object v3

    #@18
    invoke-direct {p0, v3, v5}, Ljava/util/Scanner;->findPatternInBuffer(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 1614
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@1e
    .line 1615
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@20
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    #@23
    move-result v0

    #@24
    .line 1625
    :goto_1
    invoke-direct {p0}, Ljava/util/Scanner;->revertState()V

    #@27
    .line 1626
    iget v3, p0, Ljava/util/Scanner;->position:I

    #@29
    sub-int v1, v0, v3

    #@2b
    .line 1630
    .local v1, "horizonForLine":I
    if-nez v1, :cond_3

    #@2d
    .line 1631
    return-object v4

    #@2e
    .line 1618
    .end local v1    # "horizonForLine":I
    :cond_1
    iget-boolean v3, p0, Ljava/util/Scanner;->needInput:Z

    #@30
    if-eqz v3, :cond_2

    #@32
    .line 1619
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    #@35
    goto :goto_0

    #@36
    .line 1621
    :cond_2
    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    #@38
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    #@3b
    move-result v0

    #@3c
    goto :goto_1

    #@3d
    .line 1633
    .restart local v1    # "horizonForLine":I
    :cond_3
    invoke-virtual {p0, p1, v1}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    return-object v3
.end method

.method public findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "horizon"    # I

    #@0
    .prologue
    .line 1651
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    #@2
    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/regex/Pattern;

    #@8
    invoke-virtual {p0, v0, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .locals 3
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "horizon"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1685
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    #@4
    .line 1686
    if-nez p1, :cond_0

    #@6
    .line 1687
    new-instance v1, Ljava/lang/NullPointerException;

    #@8
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@b
    throw v1

    #@c
    .line 1688
    :cond_0
    if-gez p2, :cond_1

    #@e
    .line 1689
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "horizon < 0"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 1690
    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@1a
    .line 1694
    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/util/Scanner;->findPatternInBuffer(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 1695
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@20
    .line 1696
    const/4 v1, 0x1

    #@21
    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    #@23
    .line 1697
    return-object v0

    #@24
    .line 1699
    :cond_2
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 1700
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    #@2b
    goto :goto_0

    #@2c
    .line 1704
    :cond_3
    return-object v2
.end method

.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 1351
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    #@3
    .line 1352
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    #@6
    .line 1353
    :goto_0
    iget-boolean v1, p0, Ljava/util/Scanner;->sourceClosed:Z

    #@8
    if-nez v1, :cond_1

    #@a
    .line 1354
    invoke-direct {p0}, Ljava/util/Scanner;->hasTokenInBuffer()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1355
    const/4 v1, 0x1

    #@11
    invoke-direct {p0, v1}, Ljava/util/Scanner;->revertState(Z)Z

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 1356
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    #@19
    goto :goto_0

    #@1a
    .line 1358
    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->hasTokenInBuffer()Z

    #@1d
    move-result v0

    #@1e
    .line 1359
    .local v0, "result":Z
    invoke-direct {p0, v0}, Ljava/util/Scanner;->revertState(Z)Z

    #@21
    move-result v1

    #@22
    return v1
.end method

.method public hasNext(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1417
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    #@2
    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/regex/Pattern;

    #@8
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public hasNext(Ljava/util/regex/Pattern;)Z
    .locals 2
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 1450
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    #@5
    .line 1451
    if-nez p1, :cond_0

    #@7
    .line 1452
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@c
    throw v0

    #@d
    .line 1453
    :cond_0
    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    #@f
    .line 1454
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    #@12
    .line 1457
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 1458
    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    #@1a
    .line 1459
    invoke-direct {p0}, Ljava/util/Scanner;->cacheResult()V

    #@1d
    .line 1460
    invoke-direct {p0, v1}, Ljava/util/Scanner;->revertState(Z)Z

    #@20
    move-result v0

    #@21
    return v0

    #@22
    .line 1462
    :cond_1
    iget-boolean v0, p0, Ljava/util/Scanner;->needInput:Z

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 1463
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    #@29
    goto :goto_0

    #@2a
    .line 1465
    :cond_2
    const/4 v0, 0x0

    #@2b
    invoke-direct {p0, v0}, Ljava/util/Scanner;->revertState(Z)Z

    #@2e
    move-result v0

    #@2f
    return v0
.end method

.method public hasNextBigDecimal()Z
    .locals 4

    #@0
    .prologue
    .line 2555
    const/16 v3, 0xa

    #@2
    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    #@5
    .line 2556
    invoke-direct {p0}, Ljava/util/Scanner;->decimalPattern()Ljava/util/regex/Pattern;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@c
    move-result v1

    #@d
    .line 2557
    .local v1, "result":Z
    if-eqz v1, :cond_0

    #@f
    .line 2559
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    #@11
    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 2560
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Ljava/math/BigDecimal;

    #@17
    invoke-direct {v3, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@1a
    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 2565
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    #@1d
    .line 2561
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    #@1e
    .line 2562
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    #@1f
    .local v1, "result":Z
    goto :goto_0
.end method

.method public hasNextBigInteger()Z
    .locals 1

    #@0
    .prologue
    .line 2451
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextBigInteger(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasNextBigInteger(I)Z
    .locals 5
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 2466
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    #@3
    .line 2467
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@a
    move-result v1

    #@b
    .line 2468
    .local v1, "result":Z
    if-eqz v1, :cond_0

    #@d
    .line 2470
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@f
    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    #@11
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 2471
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    #@19
    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 2473
    .local v2, "s":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/math/BigInteger;

    #@1f
    invoke-direct {v3, v2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@22
    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@24
    .line 2478
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    #@25
    .line 2472
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    #@28
    .line 2474
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@29
    .line 2475
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    #@2a
    .local v1, "result":Z
    goto :goto_1
.end method

.method public hasNextBoolean()Z
    .locals 1

    #@0
    .prologue
    .line 1780
    invoke-static {}, Ljava/util/Scanner;->boolPattern()Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public hasNextByte()Z
    .locals 1

    #@0
    .prologue
    .line 1810
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextByte(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasNextByte(I)Z
    .locals 5
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 1824
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    #@3
    .line 1825
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@a
    move-result v1

    #@b
    .line 1826
    .local v1, "result":Z
    if-eqz v1, :cond_0

    #@d
    .line 1828
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@f
    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    #@11
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 1829
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    #@19
    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 1831
    .local v2, "s":Ljava/lang/String;
    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    #@20
    move-result v3

    #@21
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@24
    move-result-object v3

    #@25
    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@27
    .line 1836
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    #@28
    .line 1830
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    #@2b
    .line 1832
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@2c
    .line 1833
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    #@2d
    .local v1, "result":Z
    goto :goto_1
.end method

.method public hasNextDouble()Z
    .locals 6

    #@0
    .prologue
    .line 2380
    const/16 v3, 0xa

    #@2
    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    #@5
    .line 2381
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@c
    move-result v1

    #@d
    .line 2382
    .local v1, "result":Z
    if-eqz v1, :cond_0

    #@f
    .line 2384
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    #@11
    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 2385
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@18
    move-result-wide v4

    #@19
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1c
    move-result-object v3

    #@1d
    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 2390
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    #@20
    .line 2386
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    #@21
    .line 2387
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    #@22
    .local v1, "result":Z
    goto :goto_0
.end method

.method public hasNextFloat()Z
    .locals 4

    #@0
    .prologue
    .line 2313
    const/16 v3, 0xa

    #@2
    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    #@5
    .line 2314
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@c
    move-result v1

    #@d
    .line 2315
    .local v1, "result":Z
    if-eqz v1, :cond_0

    #@f
    .line 2317
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    #@11
    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 2318
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@18
    move-result v3

    #@19
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1c
    move-result-object v3

    #@1d
    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 2323
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    #@20
    .line 2319
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    #@21
    .line 2320
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    #@22
    .local v1, "result":Z
    goto :goto_0
.end method

.method public hasNextInt()Z
    .locals 1

    #@0
    .prologue
    .line 2022
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextInt(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasNextInt(I)Z
    .locals 5
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 2036
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    #@3
    .line 2037
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@a
    move-result v1

    #@b
    .line 2038
    .local v1, "result":Z
    if-eqz v1, :cond_0

    #@d
    .line 2040
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@f
    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    #@11
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 2041
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    #@19
    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 2043
    .local v2, "s":Ljava/lang/String;
    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@20
    move-result v3

    #@21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v3

    #@25
    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@27
    .line 2048
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    #@28
    .line 2042
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    #@2b
    .line 2044
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@2c
    .line 2045
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    #@2d
    .local v1, "result":Z
    goto :goto_1
.end method

.method public hasNextLine()Z
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1515
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    #@5
    .line 1517
    invoke-static {}, Ljava/util/Scanner;->linePattern()Ljava/util/regex/Pattern;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {p0, v5, v4}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 1518
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@f
    .line 1519
    invoke-virtual {p0}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    #@12
    move-result-object v1

    #@13
    .line 1520
    .local v1, "mr":Ljava/util/regex/MatchResult;
    invoke-interface {v1, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 1521
    .local v0, "lineSep":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@19
    .line 1522
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1c
    move-result v5

    #@1d
    .line 1523
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@20
    move-result v6

    #@21
    .line 1522
    sub-int/2addr v5, v6

    #@22
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 1524
    invoke-direct {p0, v2}, Ljava/util/Scanner;->cacheResult(Ljava/lang/String;)V

    #@29
    .line 1530
    .end local v0    # "lineSep":Ljava/lang/String;
    .end local v1    # "mr":Ljava/util/regex/MatchResult;
    :cond_0
    :goto_0
    invoke-direct {p0}, Ljava/util/Scanner;->revertState()V

    #@2c
    .line 1531
    if-eqz v2, :cond_2

    #@2e
    :goto_1
    return v3

    #@2f
    .line 1527
    .restart local v0    # "lineSep":Ljava/lang/String;
    .restart local v1    # "mr":Ljava/util/regex/MatchResult;
    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->cacheResult()V

    #@32
    goto :goto_0

    #@33
    .end local v0    # "lineSep":Ljava/lang/String;
    .end local v1    # "mr":Ljava/util/regex/MatchResult;
    :cond_2
    move v3, v4

    #@34
    .line 1531
    goto :goto_1
.end method

.method public hasNextLong()Z
    .locals 1

    #@0
    .prologue
    .line 2152
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextLong(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasNextLong(I)Z
    .locals 6
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 2166
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    #@3
    .line 2167
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@a
    move-result v1

    #@b
    .line 2168
    .local v1, "result":Z
    if-eqz v1, :cond_0

    #@d
    .line 2170
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@f
    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    #@11
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 2171
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    #@19
    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 2173
    .local v2, "s":Ljava/lang/String;
    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@20
    move-result-wide v4

    #@21
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@24
    move-result-object v3

    #@25
    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@27
    .line 2178
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    #@28
    .line 2172
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    #@2b
    .line 2174
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@2c
    .line 2175
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    #@2d
    .local v1, "result":Z
    goto :goto_1
.end method

.method public hasNextShort()Z
    .locals 1

    #@0
    .prologue
    .line 1916
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextShort(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasNextShort(I)Z
    .locals 5
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 1930
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    #@3
    .line 1931
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@a
    move-result v1

    #@b
    .line 1932
    .local v1, "result":Z
    if-eqz v1, :cond_0

    #@d
    .line 1934
    :try_start_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@f
    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    #@11
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 1935
    iget-object v3, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    #@19
    invoke-direct {p0, v3}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    .line 1937
    .local v2, "s":Ljava/lang/String;
    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    #@20
    move-result v3

    #@21
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@24
    move-result-object v3

    #@25
    iput-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@27
    .line 1942
    .end local v1    # "result":Z
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    #@28
    .line 1936
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    #@2b
    .line 1938
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@2c
    .line 1939
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    #@2d
    .local v1, "result":Z
    goto :goto_1
.end method

.method public ioException()Ljava/io/IOException;
    .locals 1

    #@0
    .prologue
    .line 1123
    iget-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    #@2
    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 1176
    iget-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public match()Ljava/util/regex/MatchResult;
    .locals 2

    #@0
    .prologue
    .line 1309
    iget-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1310
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "No match result available"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1311
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@f
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1374
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1375
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    #@4
    .line 1376
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@7
    .line 1379
    :goto_0
    invoke-direct {p0, v2}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 1380
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@d
    .line 1381
    const/4 v1, 0x1

    #@e
    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    #@10
    .line 1382
    const/4 v1, 0x0

    #@11
    iput-boolean v1, p0, Ljava/util/Scanner;->skipped:Z

    #@13
    .line 1383
    return-object v0

    #@14
    .line 1385
    :cond_0
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 1386
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    #@1b
    goto :goto_0

    #@1c
    .line 1388
    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->throwFor()V

    #@1f
    goto :goto_0
.end method

.method public next(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1435
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    #@2
    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/regex/Pattern;

    #@8
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public next(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 2
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    .line 1482
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    #@3
    .line 1483
    if-nez p1, :cond_0

    #@5
    .line 1484
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v1

    #@b
    .line 1487
    :cond_0
    iget-object v1, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    #@d
    if-ne v1, p1, :cond_1

    #@f
    .line 1488
    invoke-direct {p0}, Ljava/util/Scanner;->getCachedResult()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 1489
    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@17
    .line 1493
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 1494
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@1d
    .line 1495
    const/4 v1, 0x1

    #@1e
    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    #@20
    .line 1496
    const/4 v1, 0x0

    #@21
    iput-boolean v1, p0, Ljava/util/Scanner;->skipped:Z

    #@23
    .line 1497
    return-object v0

    #@24
    .line 1499
    :cond_2
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 1500
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    #@2b
    goto :goto_0

    #@2c
    .line 1502
    :cond_3
    invoke-direct {p0}, Ljava/util/Scanner;->throwFor()V

    #@2f
    goto :goto_0
.end method

.method public nextBigDecimal()Ljava/math/BigDecimal;
    .locals 5

    #@0
    .prologue
    .line 2590
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@6
    instance-of v3, v3, Ljava/math/BigDecimal;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 2591
    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@c
    check-cast v2, Ljava/math/BigDecimal;

    #@e
    .line 2592
    .local v2, "val":Ljava/math/BigDecimal;
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    #@11
    .line 2593
    return-object v2

    #@12
    .line 2595
    .end local v2    # "val":Ljava/math/BigDecimal;
    :cond_0
    const/16 v3, 0xa

    #@14
    invoke-direct {p0, v3}, Ljava/util/Scanner;->setRadix(I)V

    #@17
    .line 2596
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@1a
    .line 2599
    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->decimalPattern()Ljava/util/regex/Pattern;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-direct {p0, v3}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 2600
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/math/BigDecimal;

    #@28
    invoke-direct {v3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    return-object v3

    #@2c
    .line 2601
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@2d
    .line 2602
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@2f
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    #@32
    move-result v3

    #@33
    iput v3, p0, Ljava/util/Scanner;->position:I

    #@35
    .line 2603
    new-instance v3, Ljava/util/InputMismatchException;

    #@37
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v3
.end method

.method public nextBigInteger()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 2498
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextBigInteger(I)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public nextBigInteger(I)Ljava/math/BigInteger;
    .locals 5
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 2524
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@6
    instance-of v3, v3, Ljava/math/BigInteger;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 2525
    iget v3, p0, Ljava/util/Scanner;->radix:I

    #@c
    if-ne v3, p1, :cond_0

    #@e
    .line 2526
    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@10
    check-cast v2, Ljava/math/BigInteger;

    #@12
    .line 2527
    .local v2, "val":Ljava/math/BigInteger;
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    #@15
    .line 2528
    return-object v2

    #@16
    .line 2530
    .end local v2    # "val":Ljava/math/BigInteger;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    #@19
    .line 2531
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@1c
    .line 2534
    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 2535
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@26
    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    #@28
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    if-nez v3, :cond_1

    #@2e
    .line 2536
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 2537
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    #@34
    invoke-direct {v3, v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    return-object v3

    #@38
    .line 2538
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@39
    .line 2539
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@3b
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    #@3e
    move-result v3

    #@3f
    iput v3, p0, Ljava/util/Scanner;->position:I

    #@41
    .line 2540
    new-instance v3, Ljava/util/InputMismatchException;

    #@43
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3
.end method

.method public nextBoolean()Z
    .locals 1

    #@0
    .prologue
    .line 1796
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@3
    .line 1797
    invoke-static {}, Ljava/util/Scanner;->boolPattern()Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public nextByte()B
    .locals 1

    #@0
    .prologue
    .line 1855
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextByte(I)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nextByte(I)B
    .locals 5
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 1886
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@6
    instance-of v3, v3, Ljava/lang/Byte;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 1887
    iget v3, p0, Ljava/util/Scanner;->radix:I

    #@c
    if-ne v3, p1, :cond_0

    #@e
    .line 1888
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@10
    check-cast v3, Ljava/lang/Byte;

    #@12
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    #@15
    move-result v2

    #@16
    .line 1889
    .local v2, "val":B
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    #@19
    .line 1890
    return v2

    #@1a
    .line 1892
    .end local v2    # "val":B
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    #@1d
    .line 1893
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@20
    .line 1896
    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 1897
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@2a
    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    #@2c
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    if-nez v3, :cond_1

    #@32
    .line 1898
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 1899
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    move-result v3

    #@3a
    return v3

    #@3b
    .line 1900
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@3c
    .line 1901
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@3e
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    #@41
    move-result v3

    #@42
    iput v3, p0, Ljava/util/Scanner;->position:I

    #@44
    .line 1902
    new-instance v3, Ljava/util/InputMismatchException;

    #@46
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v3
.end method

.method public nextDouble()D
    .locals 6

    #@0
    .prologue
    .line 2422
    iget-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@6
    instance-of v1, v1, Ljava/lang/Double;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 2423
    iget-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@c
    check-cast v1, Ljava/lang/Double;

    #@e
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    #@11
    move-result-wide v2

    #@12
    .line 2424
    .local v2, "val":D
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    #@15
    .line 2425
    return-wide v2

    #@16
    .line 2427
    .end local v2    # "val":D
    :cond_0
    const/16 v1, 0xa

    #@18
    invoke-direct {p0, v1}, Ljava/util/Scanner;->setRadix(I)V

    #@1b
    .line 2428
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@1e
    .line 2431
    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    move-result-wide v4

    #@2e
    return-wide v4

    #@2f
    .line 2432
    :catch_0
    move-exception v0

    #@30
    .line 2433
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@32
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    #@35
    move-result v1

    #@36
    iput v1, p0, Ljava/util/Scanner;->position:I

    #@38
    .line 2434
    new-instance v1, Ljava/util/InputMismatchException;

    #@3a
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-direct {v1, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    #@41
    throw v1
.end method

.method public nextFloat()F
    .locals 4

    #@0
    .prologue
    .line 2355
    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@6
    instance-of v2, v2, Ljava/lang/Float;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 2356
    iget-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@c
    check-cast v2, Ljava/lang/Float;

    #@e
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@11
    move-result v1

    #@12
    .line 2357
    .local v1, "val":F
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    #@15
    .line 2358
    return v1

    #@16
    .line 2360
    .end local v1    # "val":F
    :cond_0
    const/16 v2, 0xa

    #@18
    invoke-direct {p0, v2}, Ljava/util/Scanner;->setRadix(I)V

    #@1b
    .line 2361
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@1e
    .line 2363
    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {p0, v2}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    move-result v2

    #@2e
    return v2

    #@2f
    .line 2364
    :catch_0
    move-exception v0

    #@30
    .line 2365
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@32
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    #@35
    move-result v2

    #@36
    iput v2, p0, Ljava/util/Scanner;->position:I

    #@38
    .line 2366
    new-instance v2, Ljava/util/InputMismatchException;

    #@3a
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-direct {v2, v3}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    #@41
    throw v2
.end method

.method public nextInt()I
    .locals 1

    #@0
    .prologue
    .line 2091
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextInt(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nextInt(I)I
    .locals 5
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 2122
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@6
    instance-of v3, v3, Ljava/lang/Integer;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 2123
    iget v3, p0, Ljava/util/Scanner;->radix:I

    #@c
    if-ne v3, p1, :cond_0

    #@e
    .line 2124
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@10
    check-cast v3, Ljava/lang/Integer;

    #@12
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v2

    #@16
    .line 2125
    .local v2, "val":I
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    #@19
    .line 2126
    return v2

    #@1a
    .line 2128
    .end local v2    # "val":I
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    #@1d
    .line 2129
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@20
    .line 2132
    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 2133
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@2a
    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    #@2c
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    if-nez v3, :cond_1

    #@32
    .line 2134
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 2135
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    move-result v3

    #@3a
    return v3

    #@3b
    .line 2136
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@3c
    .line 2137
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@3e
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    #@41
    move-result v3

    #@42
    iput v3, p0, Ljava/util/Scanner;->position:I

    #@44
    .line 2138
    new-instance v3, Ljava/util/InputMismatchException;

    #@46
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v3
.end method

.method public nextLine()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1551
    iget-object v3, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    #@3
    invoke-static {}, Ljava/util/Scanner;->linePattern()Ljava/util/regex/Pattern;

    #@6
    move-result-object v4

    #@7
    if-ne v3, v4, :cond_0

    #@9
    .line 1552
    invoke-direct {p0}, Ljava/util/Scanner;->getCachedResult()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    return-object v3

    #@e
    .line 1553
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@11
    .line 1555
    sget-object v3, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    #@13
    invoke-virtual {p0, v3, v5}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 1556
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_1

    #@19
    .line 1557
    new-instance v3, Ljava/util/NoSuchElementException;

    #@1b
    const-string/jumbo v4, "No line found"

    #@1e
    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@21
    throw v3

    #@22
    .line 1558
    :cond_1
    invoke-virtual {p0}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    #@25
    move-result-object v1

    #@26
    .line 1559
    .local v1, "mr":Ljava/util/regex/MatchResult;
    const/4 v3, 0x1

    #@27
    invoke-interface {v1, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 1560
    .local v0, "lineSep":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@2d
    .line 1561
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@30
    move-result v3

    #@31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@34
    move-result v4

    #@35
    sub-int/2addr v3, v4

    #@36
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 1562
    :cond_2
    if-nez v2, :cond_3

    #@3c
    .line 1563
    new-instance v3, Ljava/util/NoSuchElementException;

    #@3e
    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    #@41
    throw v3

    #@42
    .line 1565
    :cond_3
    return-object v2
.end method

.method public nextLong()J
    .locals 2

    #@0
    .prologue
    .line 2197
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextLong(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public nextLong(I)J
    .locals 6
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 2228
    iget-object v4, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@2
    if-eqz v4, :cond_0

    #@4
    iget-object v4, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@6
    instance-of v4, v4, Ljava/lang/Long;

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 2229
    iget v4, p0, Ljava/util/Scanner;->radix:I

    #@c
    if-ne v4, p1, :cond_0

    #@e
    .line 2230
    iget-object v4, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@10
    check-cast v4, Ljava/lang/Long;

    #@12
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@15
    move-result-wide v2

    #@16
    .line 2231
    .local v2, "val":J
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    #@19
    .line 2232
    return-wide v2

    #@1a
    .line 2234
    .end local v2    # "val":J
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    #@1d
    .line 2235
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@20
    .line 2237
    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {p0, v4}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 2238
    .local v1, "s":Ljava/lang/String;
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@2a
    iget v5, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    #@2c
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    if-nez v4, :cond_1

    #@32
    .line 2239
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 2240
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    move-result-wide v4

    #@3a
    return-wide v4

    #@3b
    .line 2241
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@3c
    .line 2242
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@3e
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    #@41
    move-result v4

    #@42
    iput v4, p0, Ljava/util/Scanner;->position:I

    #@44
    .line 2243
    new-instance v4, Ljava/util/InputMismatchException;

    #@46
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-direct {v4, v5}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v4
.end method

.method public nextShort()S
    .locals 1

    #@0
    .prologue
    .line 1961
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextShort(I)S

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nextShort(I)S
    .locals 5
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 1992
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@6
    instance-of v3, v3, Ljava/lang/Short;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 1993
    iget v3, p0, Ljava/util/Scanner;->radix:I

    #@c
    if-ne v3, p1, :cond_0

    #@e
    .line 1994
    iget-object v3, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    #@10
    check-cast v3, Ljava/lang/Short;

    #@12
    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    #@15
    move-result v2

    #@16
    .line 1995
    .local v2, "val":S
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    #@19
    .line 1996
    return v2

    #@1a
    .line 1998
    .end local v2    # "val":S
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    #@1d
    .line 1999
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@20
    .line 2002
    :try_start_0
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 2003
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@2a
    iget v4, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    #@2c
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    if-nez v3, :cond_1

    #@32
    .line 2004
    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 2005
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    move-result v3

    #@3a
    return v3

    #@3b
    .line 2006
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@3c
    .line 2007
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@3e
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    #@41
    move-result v3

    #@42
    iput v3, p0, Ljava/util/Scanner;->position:I

    #@44
    .line 2008
    new-instance v3, Ljava/util/InputMismatchException;

    #@46
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-direct {v3, v4}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v3
.end method

.method public radix()I
    .locals 1

    #@0
    .prologue
    .line 1241
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    #@2
    return v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 1400
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public reset()Ljava/util/Scanner;
    .locals 1

    #@0
    .prologue
    .line 2629
    sget-object v0, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    #@2
    iput-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    #@4
    .line 2630
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@6
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    #@d
    .line 2631
    const/16 v0, 0xa

    #@f
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useRadix(I)Ljava/util/Scanner;

    #@12
    .line 2632
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@15
    .line 2633
    return-object p0
.end method

.method public skip(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1764
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    #@2
    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/regex/Pattern;

    #@8
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .locals 2
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    .line 1731
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    #@3
    .line 1732
    if-nez p1, :cond_0

    #@5
    .line 1733
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v1

    #@b
    .line 1734
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    #@e
    .line 1738
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->matchPatternInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 1739
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@14
    .line 1740
    const/4 v1, 0x1

    #@15
    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    #@17
    .line 1741
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@19
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Ljava/util/Scanner;->position:I

    #@1f
    .line 1742
    return-object p0

    #@20
    .line 1744
    :cond_1
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    #@22
    if-eqz v1, :cond_2

    #@24
    .line 1745
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    #@27
    goto :goto_0

    #@28
    .line 1747
    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    #@2a
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@2d
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1323
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "java.util.Scanner"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 1324
    const-string/jumbo v1, "[delimiters="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "]"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 1325
    const-string/jumbo v1, "[position="

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    iget v2, p0, Ljava/util/Scanner;->position:I

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, "]"

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 1326
    const-string/jumbo v1, "[match valid="

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    iget-boolean v2, p0, Ljava/util/Scanner;->matchValid:Z

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    const-string/jumbo v2, "]"

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 1327
    const-string/jumbo v1, "[need input="

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    iget-boolean v2, p0, Ljava/util/Scanner;->needInput:Z

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    const-string/jumbo v2, "]"

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 1328
    const-string/jumbo v1, "[source closed="

    #@5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    iget-boolean v2, p0, Ljava/util/Scanner;->sourceClosed:Z

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    const-string/jumbo v2, "]"

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 1329
    const-string/jumbo v1, "[skipped="

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    iget-boolean v2, p0, Ljava/util/Scanner;->skipped:Z

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    const-string/jumbo v2, "]"

    #@7a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 1330
    const-string/jumbo v1, "[group separator="

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    iget-object v2, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    #@86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    const-string/jumbo v2, "]"

    #@8d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    .line 1331
    const-string/jumbo v1, "[decimal separator="

    #@93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v1

    #@97
    iget-object v2, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    #@99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v1

    #@9d
    const-string/jumbo v2, "]"

    #@a0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    .line 1332
    const-string/jumbo v1, "[positive prefix="

    #@a6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    iget-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    #@ac
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v1

    #@b0
    const-string/jumbo v2, "]"

    #@b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    .line 1333
    const-string/jumbo v1, "[negative prefix="

    #@b9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v1

    #@bd
    iget-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    #@bf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v1

    #@c3
    const-string/jumbo v2, "]"

    #@c6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    .line 1334
    const-string/jumbo v1, "[positive suffix="

    #@cc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v1

    #@d0
    iget-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    #@d2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    const-string/jumbo v2, "]"

    #@d9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    .line 1335
    const-string/jumbo v1, "[negative suffix="

    #@df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v1

    #@e3
    iget-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    #@e5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v1

    #@e9
    const-string/jumbo v2, "]"

    #@ec
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    .line 1336
    const-string/jumbo v1, "[NaN string="

    #@f2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v1

    #@f6
    iget-object v2, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    #@f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v1

    #@fc
    const-string/jumbo v2, "]"

    #@ff
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    .line 1337
    const-string/jumbo v1, "[infinity string="

    #@105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v1

    #@109
    iget-object v2, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    #@10b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v1

    #@10f
    const-string/jumbo v2, "]"

    #@112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    .line 1338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v1

    #@119
    return-object v1
.end method

.method public useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1162
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Lsun/misc/LRUCache;

    #@2
    invoke-virtual {v0, p1}, Lsun/misc/LRUCache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/regex/Pattern;

    #@8
    iput-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    #@a
    .line 1163
    return-object p0
.end method

.method public useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    .line 1143
    iput-object p1, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    #@2
    .line 1144
    return-object p0
.end method

.method public useLocale(Ljava/util/Locale;)Ljava/util/Scanner;
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1193
    iget-object v2, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    #@3
    invoke-virtual {p1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1194
    return-object p0

    #@a
    .line 1196
    :cond_0
    iput-object p1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    #@c
    .line 1198
    invoke-static {p1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/text/DecimalFormat;

    #@12
    .line 1199
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    #@15
    move-result-object v1

    #@16
    .line 1203
    .local v1, "dfs":Ljava/text/DecimalFormatSymbols;
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "\\"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@25
    move-result v3

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    iput-object v2, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    #@30
    .line 1204
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v3, "\\"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@3f
    move-result v3

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    iput-object v2, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    #@4a
    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v3, "\\Q"

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    const-string/jumbo v3, "\\E"

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    iput-object v2, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    #@6b
    .line 1209
    new-instance v2, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    const-string/jumbo v3, "\\Q"

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v2

    #@7f
    const-string/jumbo v3, "\\E"

    #@82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v2

    #@8a
    iput-object v2, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    #@8c
    .line 1210
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    #@8f
    move-result-object v2

    #@90
    iput-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    #@92
    .line 1211
    iget-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    #@94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@97
    move-result v2

    #@98
    if-lez v2, :cond_1

    #@9a
    .line 1212
    new-instance v2, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v3, "\\Q"

    #@a2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v2

    #@a6
    iget-object v3, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    #@a8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v2

    #@ac
    const-string/jumbo v3, "\\E"

    #@af
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v2

    #@b3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v2

    #@b7
    iput-object v2, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    #@b9
    .line 1213
    :cond_1
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    #@bc
    move-result-object v2

    #@bd
    iput-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    #@bf
    .line 1214
    iget-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    #@c1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@c4
    move-result v2

    #@c5
    if-lez v2, :cond_2

    #@c7
    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v3, "\\Q"

    #@cf
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v2

    #@d3
    iget-object v3, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    #@d5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v2

    #@d9
    const-string/jumbo v3, "\\E"

    #@dc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v2

    #@e0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v2

    #@e4
    iput-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    #@e6
    .line 1216
    :cond_2
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    #@e9
    move-result-object v2

    #@ea
    iput-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    #@ec
    .line 1217
    iget-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    #@ee
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@f1
    move-result v2

    #@f2
    if-lez v2, :cond_3

    #@f4
    .line 1218
    new-instance v2, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    const-string/jumbo v3, "\\Q"

    #@fc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v2

    #@100
    iget-object v3, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    #@102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v2

    #@106
    const-string/jumbo v3, "\\E"

    #@109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v2

    #@10d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@110
    move-result-object v2

    #@111
    iput-object v2, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    #@113
    .line 1219
    :cond_3
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    #@116
    move-result-object v2

    #@117
    iput-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    #@119
    .line 1220
    iget-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    #@11b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@11e
    move-result v2

    #@11f
    if-lez v2, :cond_4

    #@121
    .line 1221
    new-instance v2, Ljava/lang/StringBuilder;

    #@123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@126
    const-string/jumbo v3, "\\Q"

    #@129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v2

    #@12d
    iget-object v3, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    #@12f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v2

    #@133
    const-string/jumbo v3, "\\E"

    #@136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v2

    #@13a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v2

    #@13e
    iput-object v2, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    #@140
    .line 1225
    :cond_4
    iput-object v4, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    #@142
    .line 1226
    iput-object v4, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    #@144
    .line 1228
    return-object p0
.end method

.method public useRadix(I)Ljava/util/Scanner;
    .locals 3
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 1263
    const/4 v0, 0x2

    #@1
    if-lt p1, v0, :cond_0

    #@3
    const/16 v0, 0x24

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 1264
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "radix:"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 1266
    :cond_1
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    #@23
    if-ne v0, p1, :cond_2

    #@25
    .line 1267
    return-object p0

    #@26
    .line 1268
    :cond_2
    iput p1, p0, Ljava/util/Scanner;->defaultRadix:I

    #@28
    .line 1270
    const/4 v0, 0x0

    #@29
    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    #@2b
    .line 1271
    return-object p0
.end method
