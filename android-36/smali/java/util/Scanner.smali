.class public final Ljava/util/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Scanner$PatternLRUCache;,
        Ljava/util/Scanner$TokenSpliterator;,
        Ljava/util/Scanner$FindSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o BOOLEAN_PATTERN:Ljava/lang/String; = "true|false"

.field private static final greylist-max-o BUFFER_SIZE:I = 0x400

.field private static greylist-max-o FIND_ANY_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final greylist-max-o LINE_PATTERN:Ljava/lang/String; = ".*(\r\n|[\n\r\u2028\u2029\u0085])|.+$"

.field private static final greylist-max-o LINE_SEPARATOR_PATTERN:Ljava/lang/String; = "\r\n|[\n\r\u2028\u2029\u0085]"

.field private static greylist-max-o NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

.field private static greylist-max-o WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

.field private static volatile greylist-max-o boolPattern:Ljava/util/regex/Pattern;

.field private static volatile greylist-max-o linePattern:Ljava/util/regex/Pattern;

.field private static volatile greylist-max-o separatorPattern:Ljava/util/regex/Pattern;


# instance fields
.field private greylist-max-o SIMPLE_GROUP_INDEX:I

.field private greylist-max-o buf:Ljava/nio/CharBuffer;

.field private greylist-max-o closed:Z

.field private greylist-max-o decimalPattern:Ljava/util/regex/Pattern;

.field private greylist-max-o decimalSeparator:Ljava/lang/String;

.field private greylist-max-o defaultRadix:I

.field private greylist-max-o delimPattern:Ljava/util/regex/Pattern;

.field private greylist-max-o digits:Ljava/lang/String;

.field private greylist-max-o floatPattern:Ljava/util/regex/Pattern;

.field private greylist-max-o groupSeparator:Ljava/lang/String;

.field private greylist-max-o hasNextPattern:Ljava/util/regex/Pattern;

.field private greylist-max-o hasNextPosition:I

.field private greylist-max-o hasNextResult:Ljava/lang/String;

.field private greylist-max-o infinityString:Ljava/lang/String;

.field private greylist-max-o integerPattern:Ljava/util/regex/Pattern;

.field private greylist-max-o lastException:Ljava/io/IOException;

.field private greylist-max-o locale:Ljava/util/Locale;

.field private greylist-max-o matchValid:Z

.field private greylist-max-o matcher:Ljava/util/regex/Matcher;

.field blacklist modCount:I

.field private greylist-max-o nanString:Ljava/lang/String;

.field private greylist-max-o needInput:Z

.field private greylist-max-o negativePrefix:Ljava/lang/String;

.field private greylist-max-o negativeSuffix:Ljava/lang/String;

.field private greylist-max-o non0Digit:Ljava/lang/String;

.field private blacklist patternCache:Ljava/util/Scanner$PatternLRUCache;

.field private greylist-max-o position:I

.field private greylist-max-o positivePrefix:Ljava/lang/String;

.field private greylist-max-o positiveSuffix:Ljava/lang/String;

.field private greylist-max-o radix:I

.field private greylist-max-o savedScannerPosition:I

.field private greylist-max-o skipped:Z

.field private greylist-max-o source:Ljava/lang/Readable;

.field private greylist-max-o sourceClosed:Z

.field private greylist-max-o typeCache:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbuf(Ljava/util/Scanner;)Ljava/nio/CharBuffer;
    .registers 1

    iget-object p0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmatcher(Ljava/util/Scanner;)Ljava/util/regex/Matcher;
    .registers 1

    iget-object p0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetneedInput(Ljava/util/Scanner;)Z
    .registers 1

    iget-boolean p0, p0, Ljava/util/Scanner;->needInput:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetposition(Ljava/util/Scanner;)I
    .registers 1

    iget p0, p0, Ljava/util/Scanner;->position:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsourceClosed(Ljava/util/Scanner;)Z
    .registers 1

    iget-boolean p0, p0, Ljava/util/Scanner;->sourceClosed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmatchValid(Ljava/util/Scanner;Z)V
    .registers 2

    iput-boolean p1, p0, Ljava/util/Scanner;->matchValid:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputneedInput(Ljava/util/Scanner;Z)V
    .registers 2

    iput-boolean p1, p0, Ljava/util/Scanner;->needInput:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputposition(Ljava/util/Scanner;I)V
    .registers 2

    iput p1, p0, Ljava/util/Scanner;->position:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mensureOpen(Ljava/util/Scanner;)V
    .registers 1

    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreadInput(Ljava/util/Scanner;)V
    .registers 1

    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 308
    nop

    .line 379
    const-string v0, "\\p{javaWhitespace}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 383
    const-string v0, "(?s).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    .line 386
    const-string v0, "[\\p{javaDigit}&&[^0-9]]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "source"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 645
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    .line 646
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .param p1, "source"    # Ljava/io/File;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 663
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {p2}, Ljava/util/Scanner;->toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetDecoder;)V

    .line 664
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .registers 5
    .param p1, "source"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetDecoder;)V

    .line 680
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/io/File;Ljava/nio/charset/CharsetDecoder;)V
    .registers 4
    .param p1, "source"    # Ljava/io/File;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 685
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 686
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "source"    # Ljava/io/InputStream;

    .line 572
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 573
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;

    .line 587
    invoke-static {p2}, Ljava/util/Scanner;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 588
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 5
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 601
    const-string v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0, p2}, Ljava/util/Scanner;->makeReadable(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Readable;

    move-result-object v0

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 603
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Readable;)V
    .registers 4
    .param p1, "source"    # Ljava/lang/Readable;

    .line 560
    const-string v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 561
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V
    .registers 6
    .param p1, "source"    # Ljava/lang/Readable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    .line 341
    iput-boolean v0, p0, Ljava/util/Scanner;->needInput:Z

    .line 344
    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    .line 347
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 350
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 353
    iput-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    .line 356
    iput-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    .line 359
    const/16 v2, 0xa

    iput v2, p0, Ljava/util/Scanner;->radix:I

    .line 362
    iput v2, p0, Ljava/util/Scanner;->defaultRadix:I

    .line 365
    iput-object v1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 368
    new-instance v1, Ljava/util/Scanner$PatternLRUCache;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/Scanner$PatternLRUCache;-><init>(I)V

    iput-object v1, p0, Ljava/util/Scanner;->patternCache:Ljava/util/Scanner$PatternLRUCache;

    .line 394
    const-string v1, "\\,"

    iput-object v1, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    .line 395
    const-string v1, "\\."

    iput-object v1, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    .line 396
    const-string v1, "NaN"

    iput-object v1, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    .line 397
    const-string v1, "Infinity"

    iput-object v1, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    .line 398
    const-string v1, ""

    iput-object v1, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    .line 399
    const-string v2, "\\-"

    iput-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    .line 400
    iput-object v1, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    .line 401
    iput-object v1, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    .line 420
    const-string v1, "0123456789abcdefghijklmnopqrstuvwxyz"

    iput-object v1, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    .line 421
    const-string v1, "[\\p{javaDigit}&&[^0]]"

    iput-object v1, p0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    .line 422
    const/4 v1, 0x5

    iput v1, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    .line 540
    nop

    .line 541
    nop

    .line 542
    iput-object p1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    .line 543
    iput-object p2, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 544
    const/16 v1, 0x400

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    .line 545
    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 546
    iget-object v1, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    .line 547
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->useTransparentBounds(Z)Ljava/util/regex/Matcher;

    .line 548
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->useAnchoringBounds(Z)Ljava/util/regex/Matcher;

    .line 549
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    .line 550
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "source"    # Ljava/lang/String;

    .line 776
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 777
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 4
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;

    .line 788
    const-string v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    invoke-static {v0}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;)Ljava/lang/Readable;

    move-result-object v0

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 790
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    .registers 5
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "charsetName"    # Ljava/lang/String;

    .line 808
    const-string v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    invoke-static {p2}, Ljava/util/Scanner;->toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    move-result-object v0

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 810
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;)V
    .registers 5
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 823
    const-string v0, "source"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ReadableByteChannel;

    invoke-static {v0, p2}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;)Ljava/lang/Readable;

    move-result-object v0

    sget-object v1, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;Ljava/util/regex/Pattern;)V

    .line 825
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/nio/file/Path;)V
    .registers 3
    .param p1, "source"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 729
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/nio/file/Path;Ljava/lang/String;)V
    .registers 5
    .param p1, "source"    # Ljava/nio/file/Path;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-static {p2}, Ljava/util/Scanner;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V

    .line 749
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "source"    # Ljava/nio/file/Path;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 766
    invoke-static {p1, p2}, Ljava/util/Scanner;->makeReadable(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/Readable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 767
    return-void
.end method

.method private static greylist-max-o boolPattern()Ljava/util/regex/Pattern;
    .registers 3

    .line 409
    sget-object v0, Ljava/util/Scanner;->boolPattern:Ljava/util/regex/Pattern;

    .line 410
    .local v0, "bp":Ljava/util/regex/Pattern;
    if-nez v0, :cond_e

    .line 411
    const-string v1, "true|false"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    move-object v0, v1

    sput-object v1, Ljava/util/Scanner;->boolPattern:Ljava/util/regex/Pattern;

    .line 413
    :cond_e
    return-object v0
.end method

.method private greylist-max-o buildFloatAndDecimalPattern()V
    .registers 19

    .line 487
    move-object/from16 v0, p0

    const-string v1, "(([0-9\\p{javaDigit}]))"

    .line 488
    .local v1, "digit":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "([eE][+-]?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+)?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, "exponent":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "?("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")+)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, "groupedNumeral":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "++)|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, "numeral":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "*+|"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "++)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 496
    .local v7, "decimalNumeral":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(NaN|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|Infinity|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 498
    .local v9, "nonNumber":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 500
    .local v10, "positiveFloat":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 502
    .local v11, "negativeFloat":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(([-+]?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")|"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 504
    .local v12, "decimal":Ljava/lang/String;
    const-string v15, "[-+]?0[xX][0-9a-fA-F]*\\.[0-9a-fA-F]+([pP][-+]?[0-9]+)?"

    .line 506
    .local v15, "hexFloat":Ljava/lang/String;
    move-object/from16 v16, v1

    .end local v1    # "digit":Ljava/lang/String;
    .local v16, "digit":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v17, v2

    .end local v2    # "exponent":Ljava/lang/String;
    .local v17, "exponent":Ljava/lang/String;
    iget-object v2, v0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "positiveNonNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, "negativeNonNumber":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 513
    .local v4, "signedNonNumber":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    iput-object v6, v0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    .line 515
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    iput-object v6, v0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    .line 516
    return-void
.end method

.method private greylist-max-o buildIntegerPatternString()Ljava/lang/String;
    .registers 12

    .line 424
    iget-object v0, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/Scanner;->radix:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "radixDigits":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "((?i)["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\\p{javaDigit}])"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "digit":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->digits:Ljava/lang/String;

    const/4 v4, 0x1

    iget v5, p0, Ljava/util/Scanner;->radix:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]|("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->non0Digit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "non0RadixDigits":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "?("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")+)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "groupedNumeral":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "++)|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 443
    .local v6, "numeral":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "([-+]?("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "javaStyleInteger":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 445
    .local v8, "negativeInteger":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 446
    .local v9, "positiveInteger":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ")|("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private greylist-max-o cacheResult()V
    .registers 2

    .line 847
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    .line 848
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    .line 849
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 850
    return-void
.end method

.method private greylist-max-o cacheResult(Ljava/lang/String;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/String;

    .line 853
    iput-object p1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    .line 854
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    .line 855
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 856
    return-void
.end method

.method private greylist-max-o clearCaches()V
    .registers 2

    .line 860
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 861
    iput-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 862
    return-void
.end method

.method private greylist-max-o decimalPattern()Ljava/util/regex/Pattern;
    .registers 2

    .line 524
    iget-object v0, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_7

    .line 525
    invoke-direct {p0}, Ljava/util/Scanner;->buildFloatAndDecimalPattern()V

    .line 527
    :cond_7
    iget-object v0, p0, Ljava/util/Scanner;->decimalPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3

    .line 1163
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-nez v0, :cond_5

    .line 1165
    return-void

    .line 1164
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scanner closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist findPatternInBuffer(Ljava/util/regex/Pattern;I)Z
    .registers 9
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "horizon"    # I

    .line 1093
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1094
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1095
    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    .line 1096
    .local v1, "bufferLimit":I
    const/4 v2, -0x1

    .line 1097
    .local v2, "horizonLimit":I
    move v3, v1

    .line 1098
    .local v3, "searchLimit":I
    if-lez p2, :cond_19

    .line 1099
    iget v4, p0, Ljava/util/Scanner;->position:I

    add-int v2, v4, p2

    .line 1100
    if-ge v2, v1, :cond_19

    .line 1101
    move v3, v2

    .line 1103
    :cond_19
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v5, p0, Ljava/util/Scanner;->position:I

    invoke-virtual {v4, v5, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1104
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_50

    .line 1105
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v4

    if-eqz v4, :cond_47

    iget-boolean v4, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-nez v4, :cond_47

    .line 1107
    if-eq v3, v2, :cond_3a

    .line 1109
    iput-boolean v5, p0, Ljava/util/Scanner;->needInput:Z

    .line 1110
    return v0

    .line 1113
    :cond_3a
    if-ne v3, v2, :cond_47

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->requireEnd()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1117
    iput-boolean v5, p0, Ljava/util/Scanner;->needInput:Z

    .line 1118
    return v0

    .line 1122
    :cond_47
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 1123
    return v5

    .line 1126
    :cond_50
    iget-boolean v4, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v4, :cond_55

    .line 1127
    return v0

    .line 1131
    :cond_55
    if-eqz p2, :cond_59

    if-eq v3, v2, :cond_5b

    .line 1132
    :cond_59
    iput-boolean v5, p0, Ljava/util/Scanner;->needInput:Z

    .line 1133
    :cond_5b
    return v0
.end method

.method private greylist-max-o floatPattern()Ljava/util/regex/Pattern;
    .registers 2

    .line 518
    iget-object v0, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_7

    .line 519
    invoke-direct {p0}, Ljava/util/Scanner;->buildFloatAndDecimalPattern()V

    .line 521
    :cond_7
    iget-object v0, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private greylist-max-o getCachedResult()Ljava/lang/String;
    .registers 2

    .line 866
    iget v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 867
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 868
    iput-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 869
    iget-object v0, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    return-object v0
.end method

.method private greylist-max-o getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 7
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 996
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    .line 998
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 999
    iget-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3e

    .line 1000
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v3, p0, Ljava/util/Scanner;->position:I

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1001
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1004
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-nez v0, :cond_34

    .line 1005
    iput-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    .line 1006
    return-object v2

    .line 1009
    :cond_34
    iput-boolean v1, p0, Ljava/util/Scanner;->skipped:Z

    .line 1010
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 1015
    :cond_3e
    iget v0, p0, Ljava/util/Scanner;->position:I

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    if-ne v0, v3, :cond_50

    .line 1016
    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v0, :cond_4d

    .line 1017
    return-object v2

    .line 1018
    :cond_4d
    iput-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    .line 1019
    return-object v2

    .line 1027
    :cond_50
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v3, p0, Ljava/util/Scanner;->position:I

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1028
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 1029
    .local v0, "foundNextDelim":Z
    if-eqz v0, :cond_75

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iget v4, p0, Ljava/util/Scanner;->position:I

    if-ne v3, v4, :cond_75

    .line 1033
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 1035
    :cond_75
    if-eqz v0, :cond_b4

    .line 1042
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->requireEnd()Z

    move-result v3

    if-eqz v3, :cond_86

    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-nez v3, :cond_86

    .line 1043
    iput-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    .line 1044
    return-object v2

    .line 1046
    :cond_86
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 1048
    .local v1, "tokenEnd":I
    if-nez p1, :cond_90

    .line 1050
    sget-object p1, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    .line 1053
    :cond_90
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1054
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->position:I

    invoke-virtual {v3, v4, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1055
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 1056
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 1057
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->position:I

    .line 1058
    return-object v2

    .line 1060
    .end local v2    # "s":Ljava/lang/String;
    :cond_b3
    return-object v2

    .line 1066
    .end local v1    # "tokenEnd":I
    :cond_b4
    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v3, :cond_e6

    .line 1067
    if-nez p1, :cond_bc

    .line 1069
    sget-object p1, Ljava/util/Scanner;->FIND_ANY_PATTERN:Ljava/util/regex/Pattern;

    .line 1072
    :cond_bc
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1073
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v3, p0, Ljava/util/Scanner;->position:I

    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1074
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 1075
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 1076
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->position:I

    .line 1077
    return-object v1

    .line 1080
    .end local v1    # "s":Ljava/lang/String;
    :cond_e5
    return-object v2

    .line 1085
    :cond_e6
    iput-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    .line 1086
    return-object v2
.end method

.method private greylist-max-o hasTokenInBuffer()Z
    .registers 5

    .line 960
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    .line 961
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v2, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 962
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->position:I

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 964
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_37

    .line 965
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-boolean v1, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-nez v1, :cond_2f

    .line 969
    iput-boolean v2, p0, Ljava/util/Scanner;->needInput:Z

    .line 970
    return v0

    .line 972
    :cond_2f
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 975
    :cond_37
    iget v1, p0, Ljava/util/Scanner;->position:I

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    if-ne v1, v3, :cond_42

    .line 976
    return v0

    .line 977
    :cond_42
    return v2
.end method

.method private greylist-max-o integerPattern()Ljava/util/regex/Pattern;
    .registers 3

    .line 451
    iget-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_10

    .line 452
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Ljava/util/Scanner$PatternLRUCache;

    invoke-direct {p0}, Ljava/util/Scanner;->buildIntegerPatternString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Scanner$PatternLRUCache;->forName(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 454
    :cond_10
    iget-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static greylist-max-o linePattern()Ljava/util/regex/Pattern;
    .registers 2

    .line 474
    sget-object v0, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    .line 475
    .local v0, "lp":Ljava/util/regex/Pattern;
    if-nez v0, :cond_d

    .line 476
    const-string v1, ".*(\r\n|[\n\r\u2028\u2029\u0085])|.+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    move-object v0, v1

    sput-object v1, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    .line 477
    :cond_d
    return-object v0
.end method

.method private static greylist-max-o makeReadable(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Readable;
    .registers 3
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 631
    const-string v0, "charset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 632
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static greylist-max-o makeReadable(Ljava/nio/channels/ReadableByteChannel;)Ljava/lang/Readable;
    .registers 2
    .param p0, "source"    # Ljava/nio/channels/ReadableByteChannel;

    .line 793
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Scanner;->makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;)Ljava/lang/Readable;
    .registers 3
    .param p0, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 708
    const-string v0, "charset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 709
    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o makeReadable(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;)Ljava/lang/Readable;
    .registers 3
    .param p0, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "dec"    # Ljava/nio/charset/CharsetDecoder;

    .line 703
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist makeReadable(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/Readable;
    .registers 3
    .param p0, "source"    # Ljava/nio/file/Path;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    const-string v0, "charset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 627
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Scanner;->makeReadable(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Readable;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o makeSpace()Z
    .registers 7

    .line 915
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 916
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 917
    iget v0, p0, Ljava/util/Scanner;->position:I

    goto :goto_d

    :cond_b
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 918
    .local v0, "offset":I
    :goto_d
    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 920
    const/4 v1, 0x1

    if-lez v0, :cond_28

    .line 921
    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 922
    invoke-direct {p0, v0}, Ljava/util/Scanner;->translateSavedIndexes(I)V

    .line 923
    iget v2, p0, Ljava/util/Scanner;->position:I

    sub-int/2addr v2, v0

    iput v2, p0, Ljava/util/Scanner;->position:I

    .line 924
    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 925
    return v1

    .line 928
    :cond_28
    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->capacity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 929
    .local v2, "newSize":I
    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 930
    .local v3, "newBuf":Ljava/nio/CharBuffer;
    iget-object v4, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    .line 931
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 932
    invoke-direct {p0, v0}, Ljava/util/Scanner;->translateSavedIndexes(I)V

    .line 933
    iget v4, p0, Ljava/util/Scanner;->position:I

    sub-int/2addr v4, v0

    iput v4, p0, Ljava/util/Scanner;->position:I

    .line 934
    iput-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    .line 935
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v5, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 936
    return v1
.end method

.method private blacklist matchPatternInBuffer(Ljava/util/regex/Pattern;)Z
    .registers 6
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 1140
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1141
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1142
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->position:I

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1143
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_36

    .line 1144
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-nez v1, :cond_2d

    .line 1146
    iput-boolean v2, p0, Ljava/util/Scanner;->needInput:Z

    .line 1147
    return v0

    .line 1149
    :cond_2d
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 1150
    return v2

    .line 1153
    :cond_36
    iget-boolean v1, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v1, :cond_3b

    .line 1154
    return v0

    .line 1157
    :cond_3b
    iput-boolean v2, p0, Ljava/util/Scanner;->needInput:Z

    .line 1158
    return v0
.end method

.method private greylist-max-o processFloatToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "token"    # Ljava/lang/String;

    .line 2411
    iget-object v0, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2412
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2413
    iget-object v1, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2414
    :cond_1a
    const/4 v1, 0x0

    .line 2415
    .local v1, "isNegative":Z
    iget-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2416
    .local v2, "preLen":I
    if-lez v2, :cond_30

    iget-object v3, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2417
    const/4 v1, 0x1

    .line 2418
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2420
    :cond_30
    iget-object v3, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 2421
    .local v3, "sufLen":I
    if-lez v3, :cond_4e

    iget-object v4, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 2422
    const/4 v1, 0x1

    .line 2423
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 2424
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 2423
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2426
    :cond_4e
    iget-object v4, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 2427
    const-string v0, "NaN"

    .line 2428
    :cond_58
    iget-object v4, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 2429
    const-string v0, "Infinity"

    .line 2431
    :cond_62
    const-string v4, "\u221e"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2432
    const-string v0, "Infinity"

    .line 2434
    :cond_6c
    if-eqz v1, :cond_81

    .line 2435
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2438
    :cond_81
    sget-object v4, Ljava/util/Scanner;->NON_ASCII_DIGIT:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2439
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_be

    .line 2440
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2441
    .local v5, "inASCII":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_93
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_ba

    .line 2442
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2443
    .local v7, "nextChar":C
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_b4

    .line 2444
    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    .line 2445
    .local v8, "d":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_b0

    .line 2446
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 2448
    :cond_b0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2449
    .end local v8    # "d":I
    :goto_b3
    goto :goto_b7

    .line 2450
    :cond_b4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2441
    .end local v7    # "nextChar":C
    :goto_b7
    add-int/lit8 v6, v6, 0x1

    goto :goto_93

    .line 2453
    .end local v6    # "i":I
    :cond_ba
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2456
    .end local v5    # "inASCII":Ljava/lang/StringBuilder;
    :cond_be
    return-object v0
.end method

.method private greylist-max-o processIntegerToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "token"    # Ljava/lang/String;

    .line 2197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2198
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2199
    .local v1, "isNegative":Z
    iget-object v2, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2200
    .local v2, "preLen":I
    if-lez v2, :cond_2f

    iget-object v3, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2201
    const/4 v1, 0x1

    .line 2202
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2204
    :cond_2f
    iget-object v3, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 2205
    .local v3, "sufLen":I
    if-lez v3, :cond_4d

    iget-object v4, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 2206
    const/4 v1, 0x1

    .line 2207
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 2208
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 2207
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2210
    :cond_4d
    if-eqz v1, :cond_62

    .line 2211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2212
    :cond_62
    return-object v0
.end method

.method private greylist-max-o readInput()V
    .registers 5

    .line 883
    iget-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 884
    invoke-direct {p0}, Ljava/util/Scanner;->makeSpace()Z

    .line 886
    :cond_11
    iget-object v0, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 887
    .local v0, "p":I
    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 888
    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    iget-object v2, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 890
    const/4 v1, 0x0

    .line 892
    .local v1, "n":I
    :try_start_2e
    iget-object v2, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-interface {v2, v3}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v2
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_36} :catch_37

    .line 896
    .end local v1    # "n":I
    .local v2, "n":I
    goto :goto_3c

    .line 893
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :catch_37
    move-exception v2

    .line 894
    .local v2, "ioe":Ljava/io/IOException;
    iput-object v2, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    .line 895
    const/4 v1, -0x1

    move v2, v1

    .line 897
    .end local v1    # "n":I
    .local v2, "n":I
    :goto_3c
    const/4 v1, -0x1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_45

    .line 898
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->sourceClosed:Z

    .line 899
    iput-boolean v3, p0, Ljava/util/Scanner;->needInput:Z

    .line 901
    :cond_45
    if-lez v2, :cond_49

    .line 902
    iput-boolean v3, p0, Ljava/util/Scanner;->needInput:Z

    .line 904
    :cond_49
    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 905
    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 909
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v3, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 910
    return-void
.end method

.method private greylist-max-o revertState()V
    .registers 2

    .line 834
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 835
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 836
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    .line 837
    return-void
.end method

.method private greylist-max-o revertState(Z)Z
    .registers 3
    .param p1, "b"    # Z

    .line 840
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 841
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 842
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    .line 843
    return p1
.end method

.method private greylist-max-o saveState()V
    .registers 2

    .line 830
    iget v0, p0, Ljava/util/Scanner;->position:I

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 831
    return-void
.end method

.method private static greylist-max-o separatorPattern()Ljava/util/regex/Pattern;
    .registers 2

    .line 467
    sget-object v0, Ljava/util/Scanner;->separatorPattern:Ljava/util/regex/Pattern;

    .line 468
    .local v0, "sp":Ljava/util/regex/Pattern;
    if-nez v0, :cond_d

    .line 469
    const-string v1, "\r\n|[\n\r\u2028\u2029\u0085]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    move-object v0, v1

    sput-object v1, Ljava/util/Scanner;->separatorPattern:Ljava/util/regex/Pattern;

    .line 470
    :cond_d
    return-object v0
.end method

.method private greylist-max-o setRadix(I)V
    .registers 5
    .param p1, "radix"    # I

    .line 1386
    const/4 v0, 0x2

    if-lt p1, v0, :cond_11

    const/16 v0, 0x24

    if-gt p1, v0, :cond_11

    .line 1389
    iget v0, p0, Ljava/util/Scanner;->radix:I

    if-eq v0, p1, :cond_10

    .line 1391
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 1392
    iput p1, p0, Ljava/util/Scanner;->radix:I

    .line 1394
    :cond_10
    return-void

    .line 1387
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o throwFor()V
    .registers 3

    .line 949
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->skipped:Z

    .line 950
    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-eqz v0, :cond_17

    iget v0, p0, Ljava/util/Scanner;->position:I

    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 951
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 953
    :cond_17
    new-instance v0, Ljava/util/InputMismatchException;

    invoke-direct {v0}, Ljava/util/InputMismatchException;-><init>()V

    throw v0
.end method

.method private static greylist-max-o toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "csn"    # Ljava/lang/String;

    .line 611
    const-string v0, "charsetName"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 613
    :try_start_5
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_9
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_5 .. :try_end_9} :catch_a
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    .line 614
    :catch_a
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o toDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .registers 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .line 691
    if-eqz p0, :cond_12

    .line 695
    :try_start_2
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0
    :try_end_a
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_2 .. :try_end_a} :catch_b
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_a} :catch_b

    return-object v0

    .line 696
    :catch_b
    move-exception v0

    .line 697
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 692
    .end local v0    # "unused":Ljava/lang/IllegalArgumentException;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charsetName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o translateSavedIndexes(I)V
    .registers 4
    .param p1, "offset"    # I

    .line 942
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 943
    iget v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljava/util/Scanner;->savedScannerPosition:I

    .line 944
    :cond_a
    return-void
.end method

.method private greylist-max-o useTypeCache()V
    .registers 3

    .line 874
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-nez v0, :cond_e

    .line 876
    iget v0, p0, Ljava/util/Scanner;->hasNextPosition:I

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 877
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 878
    iput-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    .line 879
    return-void

    .line 875
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scanner closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 1183
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v0, :cond_5

    .line 1184
    return-void

    .line 1185
    :cond_5
    iget-object v0, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_16

    .line 1187
    :try_start_b
    iget-object v0, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_13

    .line 1190
    goto :goto_16

    .line 1188
    :catch_13
    move-exception v0

    .line 1189
    .local v0, "ioe":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    .line 1192
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_16
    :goto_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    .line 1193
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/Scanner;->source:Ljava/lang/Readable;

    .line 1194
    iput-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    .line 1195
    return-void
.end method

.method public whitelist test-api delimiter()Ljava/util/regex/Pattern;
    .registers 2

    .line 1215
    iget-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public whitelist test-api findAll(Ljava/lang/String;)Ljava/util/stream/Stream;
    .registers 3
    .param p1, "patString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/util/regex/MatchResult;",
            ">;"
        }
    .end annotation

    .line 2959
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2960
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 2961
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Ljava/util/Scanner$PatternLRUCache;

    invoke-virtual {v0, p1}, Ljava/util/Scanner$PatternLRUCache;->forName(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->findAll(Ljava/util/regex/Pattern;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api findAll(Ljava/util/regex/Pattern;)Ljava/util/stream/Stream;
    .registers 4
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/util/regex/MatchResult;",
            ">;"
        }
    .end annotation

    .line 2936
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2937
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 2938
    new-instance v0, Ljava/util/Scanner$FindSpliterator;

    invoke-direct {v0, p0, p1}, Ljava/util/Scanner$FindSpliterator;-><init>(Ljava/util/Scanner;Ljava/util/regex/Pattern;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2939
    .local v0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/util/regex/MatchResult;>;"
    new-instance v1, Ljava/util/Scanner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljava/util/Scanner$$ExternalSyntheticLambda0;-><init>(Ljava/util/Scanner;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Stream;

    return-object v1
.end method

.method public whitelist test-api findInLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1696
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Ljava/util/Scanner$PatternLRUCache;

    invoke-virtual {v0, p1}, Ljava/util/Scanner$PatternLRUCache;->forName(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 5
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 1718
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1719
    if-eqz p1, :cond_43

    .line 1721
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1722
    iget v0, p0, Ljava/util/Scanner;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Scanner;->modCount:I

    .line 1724
    const/4 v0, 0x0

    .line 1725
    .local v0, "endPosition":I
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1727
    :goto_12
    invoke-static {}, Ljava/util/Scanner;->separatorPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/util/Scanner;->findPatternInBuffer(Ljava/util/regex/Pattern;I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1728
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 1729
    goto :goto_33

    .line 1731
    :cond_24
    iget-boolean v1, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v1, :cond_2c

    .line 1732
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_12

    .line 1734
    :cond_2c
    iget-object v1, p0, Ljava/util/Scanner;->buf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    .line 1735
    nop

    .line 1738
    :goto_33
    invoke-direct {p0}, Ljava/util/Scanner;->revertState()V

    .line 1739
    iget v1, p0, Ljava/util/Scanner;->position:I

    sub-int v1, v0, v1

    .line 1743
    .local v1, "horizonForLine":I
    if-nez v1, :cond_3e

    .line 1744
    const/4 v2, 0x0

    return-object v2

    .line 1746
    :cond_3e
    invoke-virtual {p0, p1, v1}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1720
    .end local v0    # "endPosition":I
    .end local v1    # "horizonForLine":I
    :cond_43
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "horizon"    # I

    .line 1765
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Ljava/util/Scanner$PatternLRUCache;

    invoke-virtual {v0, p1}, Ljava/util/Scanner$PatternLRUCache;->forName(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .registers 5
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "horizon"    # I

    .line 1800
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1801
    if-eqz p1, :cond_31

    .line 1803
    if-ltz p2, :cond_29

    .line 1805
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1806
    iget v0, p0, Ljava/util/Scanner;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/Scanner;->modCount:I

    .line 1810
    :goto_10
    invoke-direct {p0, p1, p2}, Ljava/util/Scanner;->findPatternInBuffer(Ljava/util/regex/Pattern;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1811
    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1812
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1814
    :cond_1f
    iget-boolean v0, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v0, :cond_27

    .line 1815
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_10

    .line 1819
    :cond_27
    const/4 v0, 0x0

    return-object v0

    .line 1804
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "horizon < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1802
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 1458
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1459
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1460
    iget v0, p0, Ljava/util/Scanner;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/Scanner;->modCount:I

    .line 1461
    :goto_c
    iget-boolean v0, p0, Ljava/util/Scanner;->sourceClosed:Z

    if-nez v0, :cond_1f

    .line 1462
    invoke-direct {p0}, Ljava/util/Scanner;->hasTokenInBuffer()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1463
    invoke-direct {p0, v1}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v0

    return v0

    .line 1465
    :cond_1b
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_c

    .line 1467
    :cond_1f
    invoke-direct {p0}, Ljava/util/Scanner;->hasTokenInBuffer()Z

    move-result v0

    .line 1468
    .local v0, "result":Z
    invoke-direct {p0, v0}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hasNext(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1526
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Ljava/util/Scanner$PatternLRUCache;

    invoke-virtual {v0, p1}, Ljava/util/Scanner$PatternLRUCache;->forName(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNext(Ljava/util/regex/Pattern;)Z
    .registers 4
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 1559
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1560
    if-eqz p1, :cond_2f

    .line 1562
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    .line 1563
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1564
    iget v0, p0, Ljava/util/Scanner;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/Scanner;->modCount:I

    .line 1567
    :goto_11
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1568
    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1569
    invoke-direct {p0}, Ljava/util/Scanner;->cacheResult()V

    .line 1570
    invoke-direct {p0, v1}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v0

    return v0

    .line 1572
    :cond_21
    iget-boolean v0, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v0, :cond_29

    .line 1573
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_11

    .line 1575
    :cond_29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->revertState(Z)Z

    move-result v0

    return v0

    .line 1561
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hasNextBigDecimal()Z
    .registers 4

    .line 2720
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setRadix(I)V

    .line 2721
    invoke-direct {p0}, Ljava/util/Scanner;->decimalPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 2722
    .local v0, "result":Z
    if-eqz v0, :cond_1f

    .line 2724
    :try_start_f
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2725
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1c} :catch_1d

    .line 2728
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_1f

    .line 2726
    :catch_1d
    move-exception v1

    .line 2727
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 2730
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_1f
    :goto_1f
    return v0
.end method

.method public whitelist test-api hasNextBigInteger()Z
    .registers 2

    .line 2607
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextBigInteger(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNextBigInteger(I)Z
    .registers 5
    .param p1, "radix"    # I

    .line 2627
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2628
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 2629
    .local v0, "result":Z
    if-eqz v0, :cond_2b

    .line 2631
    :try_start_d
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 2632
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    .line 2633
    :cond_1e
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    :goto_20
    nop

    .line 2634
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_28} :catch_29

    .line 2637
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_2b

    .line 2635
    :catch_29
    move-exception v1

    .line 2636
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 2639
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2b
    :goto_2b
    return v0
.end method

.method public whitelist test-api hasNextBoolean()Z
    .registers 2

    .line 1895
    invoke-static {}, Ljava/util/Scanner;->boolPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNextByte()Z
    .registers 2

    .line 1925
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextByte(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNextByte(I)Z
    .registers 5
    .param p1, "radix"    # I

    .line 1944
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 1945
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 1946
    .local v0, "result":Z
    if-eqz v0, :cond_2e

    .line 1948
    :try_start_d
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 1949
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    .line 1950
    :cond_1e
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    :goto_20
    nop

    .line 1951
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2b} :catch_2c

    .line 1954
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_2e

    .line 1952
    :catch_2c
    move-exception v1

    .line 1953
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 1956
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2e
    :goto_2e
    return v0
.end method

.method public whitelist test-api hasNextDouble()Z
    .registers 5

    .line 2536
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setRadix(I)V

    .line 2537
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 2538
    .local v0, "result":Z
    if-eqz v0, :cond_22

    .line 2540
    :try_start_f
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2541
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1f} :catch_20

    .line 2544
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_22

    .line 2542
    :catch_20
    move-exception v1

    .line 2543
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 2546
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_22
    :goto_22
    return v0
.end method

.method public whitelist test-api hasNextFloat()Z
    .registers 4

    .line 2469
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setRadix(I)V

    .line 2470
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 2471
    .local v0, "result":Z
    if-eqz v0, :cond_22

    .line 2473
    :try_start_f
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2474
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1f} :catch_20

    .line 2477
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_22

    .line 2475
    :catch_20
    move-exception v1

    .line 2476
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 2479
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_22
    :goto_22
    return v0
.end method

.method public whitelist test-api hasNextInt()Z
    .registers 2

    .line 2157
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextInt(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNextInt(I)Z
    .registers 5
    .param p1, "radix"    # I

    .line 2176
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2177
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 2178
    .local v0, "result":Z
    if-eqz v0, :cond_2e

    .line 2180
    :try_start_d
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 2181
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    .line 2182
    :cond_1e
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    :goto_20
    nop

    .line 2183
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2b} :catch_2c

    .line 2186
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_2e

    .line 2184
    :catch_2c
    move-exception v1

    .line 2185
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 2188
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2e
    :goto_2e
    return v0
.end method

.method public whitelist test-api hasNextLine()Z
    .registers 8

    .line 1626
    invoke-direct {p0}, Ljava/util/Scanner;->saveState()V

    .line 1628
    iget v0, p0, Ljava/util/Scanner;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/Scanner;->modCount:I

    .line 1629
    invoke-static {}, Ljava/util/Scanner;->linePattern()Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    .line 1630
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 1631
    invoke-virtual {p0}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    move-result-object v3

    .line 1632
    .local v3, "mr":Ljava/util/regex/MatchResult;
    invoke-interface {v3, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 1633
    .local v4, "lineSep":Ljava/lang/String;
    if-eqz v4, :cond_2f

    .line 1634
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1635
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1634
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1636
    invoke-direct {p0, v0}, Ljava/util/Scanner;->cacheResult(Ljava/lang/String;)V

    goto :goto_32

    .line 1639
    :cond_2f
    invoke-direct {p0}, Ljava/util/Scanner;->cacheResult()V

    .line 1642
    .end local v3    # "mr":Ljava/util/regex/MatchResult;
    .end local v4    # "lineSep":Ljava/lang/String;
    :cond_32
    :goto_32
    invoke-direct {p0}, Ljava/util/Scanner;->revertState()V

    .line 1643
    if-eqz v0, :cond_38

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    return v1
.end method

.method public whitelist test-api hasNextLong()Z
    .registers 2

    .line 2297
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextLong(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNextLong(I)Z
    .registers 6
    .param p1, "radix"    # I

    .line 2316
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2317
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 2318
    .local v0, "result":Z
    if-eqz v0, :cond_2e

    .line 2320
    :try_start_d
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 2321
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    .line 2322
    :cond_1e
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    :goto_20
    nop

    .line 2323
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2b} :catch_2c

    .line 2326
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_2e

    .line 2324
    :catch_2c
    move-exception v1

    .line 2325
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 2328
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2e
    :goto_2e
    return v0
.end method

.method public whitelist test-api hasNextShort()Z
    .registers 2

    .line 2041
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextShort(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNextShort(I)Z
    .registers 5
    .param p1, "radix"    # I

    .line 2060
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2061
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 2062
    .local v0, "result":Z
    if-eqz v0, :cond_2e

    .line 2064
    :try_start_d
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 2065
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    .line 2066
    :cond_1e
    iget-object v1, p0, Ljava/util/Scanner;->hasNextResult:Ljava/lang/String;

    :goto_20
    nop

    .line 2067
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_2b} :catch_2c

    .line 2070
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_2e

    .line 2068
    :catch_2c
    move-exception v1

    .line 2069
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 2072
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2e
    :goto_2e
    return v0
.end method

.method public whitelist test-api ioException()Ljava/io/IOException;
    .registers 2

    .line 1205
    iget-object v0, p0, Ljava/util/Scanner;->lastException:Ljava/io/IOException;

    return-object v0
.end method

.method public whitelist test-api locale()Ljava/util/Locale;
    .registers 2

    .line 1260
    iget-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist test-api match()Ljava/util/regex/MatchResult;
    .registers 3

    .line 1416
    iget-boolean v0, p0, Ljava/util/Scanner;->matchValid:Z

    if-eqz v0, :cond_b

    .line 1418
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0

    .line 1417
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No match result available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 308
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api next()Ljava/lang/String;
    .registers 4

    .line 1484
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1485
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1486
    iget v0, p0, Ljava/util/Scanner;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/Scanner;->modCount:I

    .line 1488
    :goto_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 1489
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 1490
    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1491
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Scanner;->skipped:Z

    .line 1492
    return-object v0

    .line 1494
    :cond_19
    iget-boolean v2, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v2, :cond_21

    .line 1495
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_24

    .line 1497
    :cond_21
    invoke-direct {p0}, Ljava/util/Scanner;->throwFor()V

    .line 1498
    .end local v0    # "token":Ljava/lang/String;
    :goto_24
    goto :goto_c
.end method

.method public whitelist test-api next(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1544
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Ljava/util/Scanner$PatternLRUCache;

    invoke-virtual {v0, p1}, Ljava/util/Scanner$PatternLRUCache;->forName(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api next(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 5
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 1592
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1593
    if-eqz p1, :cond_2f

    .line 1596
    iget v0, p0, Ljava/util/Scanner;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/Scanner;->modCount:I

    .line 1598
    iget-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    if-ne v0, p1, :cond_14

    .line 1599
    invoke-direct {p0}, Ljava/util/Scanner;->getCachedResult()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1600
    :cond_14
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1604
    :goto_17
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getCompleteTokenInBuffer(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 1605
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 1606
    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1607
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Scanner;->skipped:Z

    .line 1608
    return-object v0

    .line 1610
    :cond_23
    iget-boolean v2, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v2, :cond_2b

    .line 1611
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_2e

    .line 1613
    :cond_2b
    invoke-direct {p0}, Ljava/util/Scanner;->throwFor()V

    .line 1614
    .end local v0    # "token":Ljava/lang/String;
    :goto_2e
    goto :goto_17

    .line 1594
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api nextBigDecimal()Ljava/math/BigDecimal;
    .registers 4

    .line 2755
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_10

    check-cast v0, Ljava/math/BigDecimal;

    .line 2756
    .local v0, "val":Ljava/math/BigDecimal;
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2757
    return-object v0

    .line 2759
    .end local v0    # "val":Ljava/math/BigDecimal;
    :cond_10
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setRadix(I)V

    .line 2760
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2763
    :try_start_18
    invoke-direct {p0}, Ljava/util/Scanner;->decimalPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2764
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_29} :catch_2a

    return-object v1

    .line 2765
    .end local v0    # "s":Ljava/lang/String;
    :catch_2a
    move-exception v0

    .line 2766
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2767
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextBigInteger()Ljava/math/BigInteger;
    .registers 2

    .line 2659
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api nextBigInteger(I)Ljava/math/BigInteger;
    .registers 5
    .param p1, "radix"    # I

    .line 2690
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_14

    check-cast v0, Ljava/math/BigInteger;

    .local v0, "val":Ljava/math/BigInteger;
    iget v1, p0, Ljava/util/Scanner;->radix:I

    if-ne v1, p1, :cond_14

    .line 2692
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2693
    return-object v0

    .line 2695
    .end local v0    # "val":Ljava/math/BigInteger;
    :cond_14
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2696
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2699
    :try_start_1a
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 2700
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_31

    .line 2701
    invoke-direct {p0, v0}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2702
    :cond_31
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_36} :catch_37

    return-object v1

    .line 2703
    .end local v0    # "s":Ljava/lang/String;
    :catch_37
    move-exception v0

    .line 2704
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2705
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextBoolean()Z
    .registers 2

    .line 1911
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1912
    invoke-static {}, Ljava/util/Scanner;->boolPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api nextByte()B
    .registers 2

    .line 1975
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextByte(I)B

    move-result v0

    return v0
.end method

.method public whitelist test-api nextByte(I)B
    .registers 5
    .param p1, "radix"    # I

    .line 2011
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Byte;

    if-eqz v0, :cond_1a

    iget v0, p0, Ljava/util/Scanner;->radix:I

    if-ne v0, p1, :cond_1a

    .line 2013
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 2014
    .local v0, "val":B
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2015
    return v0

    .line 2017
    .end local v0    # "val":B
    :cond_1a
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2018
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2021
    :try_start_20
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 2022
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    .line 2023
    invoke-direct {p0, v0}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2024
    :cond_37
    invoke-static {v0, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v1
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_3b} :catch_3c

    return v1

    .line 2025
    .end local v0    # "s":Ljava/lang/String;
    :catch_3c
    move-exception v0

    .line 2026
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2027
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextDouble()D
    .registers 4

    .line 2578
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_16

    .line 2579
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 2580
    .local v0, "val":D
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2581
    return-wide v0

    .line 2583
    .end local v0    # "val":D
    :cond_16
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setRadix(I)V

    .line 2584
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2587
    :try_start_1e
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_2e} :catch_2f

    return-wide v0

    .line 2588
    :catch_2f
    move-exception v0

    .line 2589
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2590
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextFloat()F
    .registers 4

    .line 2511
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_16

    .line 2512
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2513
    .local v0, "val":F
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2514
    return v0

    .line 2516
    .end local v0    # "val":F
    :cond_16
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setRadix(I)V

    .line 2517
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2519
    :try_start_1e
    invoke-direct {p0}, Ljava/util/Scanner;->floatPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->processFloatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_2e} :catch_2f

    return v0

    .line 2520
    :catch_2f
    move-exception v0

    .line 2521
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2522
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextInt()I
    .registers 2

    .line 2231
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextInt(I)I
    .registers 5
    .param p1, "radix"    # I

    .line 2267
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    iget v0, p0, Ljava/util/Scanner;->radix:I

    if-ne v0, p1, :cond_1a

    .line 2269
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2270
    .local v0, "val":I
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2271
    return v0

    .line 2273
    .end local v0    # "val":I
    :cond_1a
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2274
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2277
    :try_start_20
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 2278
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    .line 2279
    invoke-direct {p0, v0}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2280
    :cond_37
    invoke-static {v0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_3b} :catch_3c

    return v1

    .line 2281
    .end local v0    # "s":Ljava/lang/String;
    :catch_3c
    move-exception v0

    .line 2282
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2283
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextLine()Ljava/lang/String;
    .registers 7

    .line 1663
    iget v0, p0, Ljava/util/Scanner;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/Scanner;->modCount:I

    .line 1664
    iget-object v0, p0, Ljava/util/Scanner;->hasNextPattern:Ljava/util/regex/Pattern;

    invoke-static {}, Ljava/util/Scanner;->linePattern()Ljava/util/regex/Pattern;

    move-result-object v2

    if-ne v0, v2, :cond_13

    .line 1665
    invoke-direct {p0}, Ljava/util/Scanner;->getCachedResult()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1666
    :cond_13
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1668
    sget-object v0, Ljava/util/Scanner;->linePattern:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    .line 1669
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_3f

    .line 1671
    invoke-virtual {p0}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;

    move-result-object v3

    .line 1672
    .local v3, "mr":Ljava/util/regex/MatchResult;
    invoke-interface {v3, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1673
    .local v1, "lineSep":Ljava/lang/String;
    if-eqz v1, :cond_36

    .line 1674
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1675
    :cond_36
    if-eqz v0, :cond_39

    .line 1678
    return-object v0

    .line 1676
    :cond_39
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 1670
    .end local v1    # "lineSep":Ljava/lang/String;
    .end local v3    # "mr":Ljava/util/regex/MatchResult;
    :cond_3f
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No line found"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextLong()J
    .registers 3

    .line 2347
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextLong(I)J
    .registers 5
    .param p1, "radix"    # I

    .line 2383
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_1a

    iget v0, p0, Ljava/util/Scanner;->radix:I

    if-ne v0, p1, :cond_1a

    .line 2385
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2386
    .local v0, "val":J
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2387
    return-wide v0

    .line 2389
    .end local v0    # "val":J
    :cond_1a
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2390
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2392
    :try_start_20
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 2393
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    .line 2394
    invoke-direct {p0, v0}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2395
    :cond_37
    invoke-static {v0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_3b} :catch_3c

    return-wide v1

    .line 2396
    .end local v0    # "s":Ljava/lang/String;
    :catch_3c
    move-exception v0

    .line 2397
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2398
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api nextShort()S
    .registers 2

    .line 2091
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextShort(I)S

    move-result v0

    return v0
.end method

.method public whitelist test-api nextShort(I)S
    .registers 5
    .param p1, "radix"    # I

    .line 2127
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Short;

    if-eqz v0, :cond_1a

    iget v0, p0, Ljava/util/Scanner;->radix:I

    if-ne v0, p1, :cond_1a

    .line 2129
    iget-object v0, p0, Ljava/util/Scanner;->typeCache:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 2130
    .local v0, "val":S
    invoke-direct {p0}, Ljava/util/Scanner;->useTypeCache()V

    .line 2131
    return v0

    .line 2133
    .end local v0    # "val":S
    :cond_1a
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setRadix(I)V

    .line 2134
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2137
    :try_start_20
    invoke-direct {p0}, Ljava/util/Scanner;->integerPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 2138
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v2, p0, Ljava/util/Scanner;->SIMPLE_GROUP_INDEX:I

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    .line 2139
    invoke-direct {p0, v0}, Ljava/util/Scanner;->processIntegerToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2140
    :cond_37
    invoke-static {v0, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v1
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_3b} :catch_3c

    return v1

    .line 2141
    .end local v0    # "s":Ljava/lang/String;
    :catch_3c
    move-exception v0

    .line 2142
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->position:I

    .line 2143
    new-instance v1, Ljava/util/InputMismatchException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/InputMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api radix()I
    .registers 2

    .line 1349
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    return v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 1509
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reset()Ljava/util/Scanner;
    .registers 2

    .line 2795
    sget-object v0, Ljava/util/Scanner;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 2796
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    .line 2797
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useRadix(I)Ljava/util/Scanner;

    .line 2798
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 2799
    iget v0, p0, Ljava/util/Scanner;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Scanner;->modCount:I

    .line 2800
    return-object p0
.end method

.method public whitelist test-api skip(Ljava/lang/String;)Ljava/util/Scanner;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1879
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Ljava/util/Scanner$PatternLRUCache;

    invoke-virtual {v0, p1}, Ljava/util/Scanner$PatternLRUCache;->forName(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .registers 4
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 1846
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 1847
    if-eqz p1, :cond_2d

    .line 1849
    invoke-direct {p0}, Ljava/util/Scanner;->clearCaches()V

    .line 1850
    iget v0, p0, Ljava/util/Scanner;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/Scanner;->modCount:I

    .line 1854
    :goto_e
    invoke-direct {p0, p1}, Ljava/util/Scanner;->matchPatternInBuffer(Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1855
    iput-boolean v1, p0, Ljava/util/Scanner;->matchValid:Z

    .line 1856
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/Scanner;->position:I

    .line 1857
    return-object p0

    .line 1859
    :cond_1f
    iget-boolean v0, p0, Ljava/util/Scanner;->needInput:Z

    if-eqz v0, :cond_27

    .line 1860
    invoke-direct {p0}, Ljava/util/Scanner;->readInput()V

    goto :goto_e

    .line 1862
    :cond_27
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1848
    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1430
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "java.util.Scanner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[delimiters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[position="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Ljava/util/Scanner;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[match valid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Ljava/util/Scanner;->matchValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[need input="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Ljava/util/Scanner;->needInput:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[source closed="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Ljava/util/Scanner;->sourceClosed:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[skipped="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Ljava/util/Scanner;->skipped:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[group separator="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[decimal separator="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[positive prefix="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[negative prefix="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[positive suffix="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[negative suffix="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NaN string="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[infinity string="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api tokens()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2850
    invoke-direct {p0}, Ljava/util/Scanner;->ensureOpen()V

    .line 2851
    new-instance v0, Ljava/util/Scanner$TokenSpliterator;

    invoke-direct {v0, p0}, Ljava/util/Scanner$TokenSpliterator;-><init>(Ljava/util/Scanner;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2852
    .local v0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/Scanner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljava/util/Scanner$$ExternalSyntheticLambda0;-><init>(Ljava/util/Scanner;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Stream;

    return-object v1
.end method

.method public whitelist test-api useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1245
    iget v0, p0, Ljava/util/Scanner;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Scanner;->modCount:I

    .line 1246
    iget-object v0, p0, Ljava/util/Scanner;->patternCache:Ljava/util/Scanner$PatternLRUCache;

    invoke-virtual {v0, p1}, Ljava/util/Scanner$PatternLRUCache;->forName(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 1247
    return-object p0
.end method

.method public whitelist test-api useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .registers 3
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 1225
    iget v0, p0, Ljava/util/Scanner;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Scanner;->modCount:I

    .line 1226
    iput-object p1, p0, Ljava/util/Scanner;->delimPattern:Ljava/util/regex/Pattern;

    .line 1227
    return-object p0
.end method

.method public whitelist test-api useLocale(Ljava/util/Locale;)Ljava/util/Scanner;
    .registers 8
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1277
    iget-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1278
    return-object p0

    .line 1280
    :cond_9
    iget v0, p0, Ljava/util/Scanner;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Scanner;->modCount:I

    .line 1281
    iput-object p1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 1283
    const/4 v0, 0x0

    .line 1284
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-static {p1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    .line 1285
    .local v1, "nf":Ljava/text/NumberFormat;
    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    .line 1307
    .local v2, "dfs":Ljava/text/DecimalFormatSymbols;
    move-object v0, v1

    check-cast v0, Ljava/text/DecimalFormat;

    .line 1311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\x{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->groupSeparator:Ljava/lang/String;

    .line 1312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->decimalSeparator:Ljava/lang/String;

    .line 1316
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->nanString:Ljava/lang/String;

    .line 1317
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->infinityString:Ljava/lang/String;

    .line 1318
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    .line 1319
    iget-object v3, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_89

    .line 1320
    iget-object v3, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->positivePrefix:Ljava/lang/String;

    .line 1321
    :cond_89
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    .line 1322
    iget-object v3, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9f

    .line 1323
    iget-object v3, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->negativePrefix:Ljava/lang/String;

    .line 1324
    :cond_9f
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    .line 1325
    iget-object v3, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b5

    .line 1326
    iget-object v3, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->positiveSuffix:Ljava/lang/String;

    .line 1327
    :cond_b5
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    .line 1328
    iget-object v3, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_cb

    .line 1329
    iget-object v3, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/Scanner;->negativeSuffix:Ljava/lang/String;

    .line 1333
    :cond_cb
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 1334
    iput-object v3, p0, Ljava/util/Scanner;->floatPattern:Ljava/util/regex/Pattern;

    .line 1336
    return-object p0
.end method

.method public whitelist test-api useRadix(I)Ljava/util/Scanner;
    .registers 5
    .param p1, "radix"    # I

    .line 1371
    const/4 v0, 0x2

    if-lt p1, v0, :cond_18

    const/16 v0, 0x24

    if-gt p1, v0, :cond_18

    .line 1374
    iget v0, p0, Ljava/util/Scanner;->defaultRadix:I

    if-ne v0, p1, :cond_c

    .line 1375
    return-object p0

    .line 1376
    :cond_c
    iget v0, p0, Ljava/util/Scanner;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Scanner;->modCount:I

    .line 1377
    iput p1, p0, Ljava/util/Scanner;->defaultRadix:I

    .line 1379
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Scanner;->integerPattern:Ljava/util/regex/Pattern;

    .line 1380
    return-object p0

    .line 1372
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
