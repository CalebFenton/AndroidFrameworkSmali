.class public final Ljava/util/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Formatter$BigDecimalLayoutForm;,
        Ljava/util/Formatter$Conversion;,
        Ljava/util/Formatter$DateTime;,
        Ljava/util/Formatter$FixedString;,
        Ljava/util/Formatter$Flags;,
        Ljava/util/Formatter$FormatSpecifier;,
        Ljava/util/Formatter$FormatSpecifierParser;,
        Ljava/util/Formatter$FormatString;
    }
.end annotation


# static fields
.field private static final MAX_FD_CHARS:I = 0x1e

.field private static scaleUp:D


# instance fields
.field private a:Ljava/lang/Appendable;

.field private final l:Ljava/util/Locale;

.field private lastException:Ljava/io/IOException;

.field private final zero:C


# direct methods
.method static synthetic -get0(Ljava/util/Formatter;)Ljava/lang/Appendable;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/Formatter;)Ljava/util/Locale;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method static synthetic -get2()D
    .locals 2

    #@0
    sget-wide v0, Ljava/util/Formatter;->scaleUp:D

    #@2
    return-wide v0
.end method

.method static synthetic -get3(Ljava/util/Formatter;)C
    .locals 1

    #@0
    iget-char v0, p0, Ljava/util/Formatter;->zero:C

    #@2
    return v0
.end method

.method static synthetic -set0(D)D
    .locals 0

    #@0
    sput-wide p0, Ljava/util/Formatter;->scaleUp:D

    #@2
    return-wide p0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 1901
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    #@e
    .line 1900
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2086
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    .line 2087
    new-instance v1, Ljava/io/BufferedWriter;

    #@8
    new-instance v2, Ljava/io/OutputStreamWriter;

    #@a
    new-instance v3, Ljava/io/FileOutputStream;

    #@c
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@f
    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@12
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@15
    .line 2086
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    #@18
    .line 2085
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 2123
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    #@9
    .line 2121
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 2162
    invoke-static {p2}, Ljava/util/Formatter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p3, p1}, Ljava/util/Formatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    #@7
    .line 2160
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 2198
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    .line 2199
    new-instance v1, Ljava/io/BufferedWriter;

    #@8
    new-instance v2, Ljava/io/OutputStreamWriter;

    #@a
    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@d
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@10
    .line 2198
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    #@13
    .line 2197
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 2223
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V

    #@9
    .line 2221
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 2249
    new-instance v0, Ljava/io/BufferedWriter;

    #@2
    new-instance v1, Ljava/io/OutputStreamWriter;

    #@4
    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@7
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@a
    invoke-direct {p0, p3, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    #@d
    .line 2247
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "ps"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 2179
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v1

    #@6
    .line 2180
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Appendable;

    #@c
    .line 2179
    invoke-direct {p0, v1, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    #@f
    .line 2178
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Appendable;

    #@0
    .prologue
    .line 1915
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p1}, Ljava/util/Formatter;->nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    #@d
    .line 1914
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Appendable;
    .param p2, "l"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1948
    invoke-static {p1}, Ljava/util/Formatter;->nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    #@7
    .line 1947
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1979
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    .line 1980
    new-instance v1, Ljava/io/BufferedWriter;

    #@8
    new-instance v2, Ljava/io/OutputStreamWriter;

    #@a
    new-instance v3, Ljava/io/FileOutputStream;

    #@c
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    #@f
    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    #@12
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@15
    .line 1979
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    #@18
    .line 1978
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 2016
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    #@9
    .line 2014
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 2055
    invoke-static {p2}, Ljava/util/Formatter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Ljava/io/File;

    #@6
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@9
    invoke-direct {p0, v0, p3, v1}, Ljava/util/Formatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    #@c
    .line 2053
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V
    .locals 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "l"    # Ljava/util/Locale;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1887
    new-instance v0, Ljava/io/BufferedWriter;

    #@2
    new-instance v1, Ljava/io/OutputStreamWriter;

    #@4
    new-instance v2, Ljava/io/FileOutputStream;

    #@6
    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@9
    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    #@c
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@f
    .line 1886
    invoke-direct {p0, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    #@12
    .line 1884
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    #@8
    .line 1931
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "a"    # Ljava/lang/Appendable;

    #@0
    .prologue
    .line 1877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1878
    iput-object p2, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    #@5
    .line 1879
    iput-object p1, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    #@7
    .line 1880
    invoke-static {p1}, Ljava/util/Formatter;->getZero(Ljava/util/Locale;)C

    #@a
    move-result v0

    #@b
    iput-char v0, p0, Ljava/util/Formatter;->zero:C

    #@d
    .line 1877
    return-void
.end method

.method private ensureOpen()V
    .locals 1

    #@0
    .prologue
    .line 2377
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2378
    new-instance v0, Ljava/util/FormatterClosedException;

    #@6
    invoke-direct {v0}, Ljava/util/FormatterClosedException;-><init>()V

    #@9
    throw v0

    #@a
    .line 2376
    :cond_0
    return-void
.end method

.method private static getZero(Ljava/util/Locale;)C
    .locals 2
    .param p0, "l"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 2253
    if-eqz p0, :cond_0

    #@2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@4
    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 2257
    :cond_0
    const/16 v1, 0x30

    #@c
    return v1

    #@d
    .line 2254
    :cond_1
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    #@10
    move-result-object v0

    #@11
    .line 2255
    .local v0, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    #@14
    move-result v1

    #@15
    return v1
.end method

.method private static final nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Appendable;

    #@0
    .prologue
    .line 1870
    if-nez p0, :cond_0

    #@2
    .line 1871
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    return-object v0

    #@8
    .line 1873
    :cond_0
    return-object p0
.end method

.method private parse(Ljava/lang/String;)[Ljava/util/Formatter$FormatString;
    .locals 10
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v9, 0x25

    #@2
    .line 2511
    new-instance v0, Ljava/util/ArrayList;

    #@4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@7
    .line 2512
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Formatter$FormatString;>;"
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v3

    #@c
    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@e
    .line 2513
    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->indexOf(II)I

    #@11
    move-result v4

    #@12
    .line 2514
    .local v4, "nextPercent":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v7

    #@16
    if-eq v7, v9, :cond_1

    #@18
    .line 2517
    move v6, v2

    #@19
    .line 2518
    .local v6, "plainTextStart":I
    const/4 v7, -0x1

    #@1a
    if-ne v4, v7, :cond_0

    #@1c
    move v5, v3

    #@1d
    .line 2519
    .local v5, "plainTextEnd":I
    :goto_1
    new-instance v7, Ljava/util/Formatter$FixedString;

    #@1f
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v8

    #@23
    invoke-direct {v7, p0, v8}, Ljava/util/Formatter$FixedString;-><init>(Ljava/util/Formatter;Ljava/lang/String;)V

    #@26
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    .line 2521
    move v2, v5

    #@2a
    goto :goto_0

    #@2b
    .line 2518
    .end local v5    # "plainTextEnd":I
    :cond_0
    move v5, v4

    #@2c
    .restart local v5    # "plainTextEnd":I
    goto :goto_1

    #@2d
    .line 2524
    .end local v5    # "plainTextEnd":I
    .end local v6    # "plainTextStart":I
    :cond_1
    new-instance v1, Ljava/util/Formatter$FormatSpecifierParser;

    #@2f
    add-int/lit8 v7, v2, 0x1

    #@31
    invoke-direct {v1, p0, p1, v7}, Ljava/util/Formatter$FormatSpecifierParser;-><init>(Ljava/util/Formatter;Ljava/lang/String;I)V

    #@34
    .line 2525
    .local v1, "fsp":Ljava/util/Formatter$FormatSpecifierParser;
    invoke-virtual {v1}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifier()Ljava/util/Formatter$FormatSpecifier;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3b
    .line 2526
    invoke-virtual {v1}, Ljava/util/Formatter$FormatSpecifierParser;->getEndIdx()I

    #@3e
    move-result v2

    #@3f
    goto :goto_0

    #@40
    .line 2529
    .end local v1    # "fsp":Ljava/util/Formatter$FormatSpecifierParser;
    .end local v4    # "nextPercent":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v7

    #@44
    new-array v7, v7, [Ljava/util/Formatter$FormatString;

    #@46
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@49
    move-result-object v7

    #@4a
    check-cast v7, [Ljava/util/Formatter$FormatString;

    #@4c
    return-object v7
.end method

.method private static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 1860
    const-string/jumbo v1, "charsetName"

    #@3
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@6
    .line 1862
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
    .line 1863
    :catch_0
    move-exception v0

    #@c
    .line 1865
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    #@e
    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2364
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2365
    return-void

    #@6
    .line 2367
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    #@8
    instance-of v1, v1, Ljava/io/Closeable;

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 2368
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    #@e
    check-cast v1, Ljava/io/Closeable;

    #@10
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 2372
    :cond_1
    :goto_0
    iput-object v2, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    #@15
    .line 2363
    return-void

    #@16
    .line 2369
    :catch_0
    move-exception v0

    #@17
    .line 2370
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_1
    iput-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    goto :goto_0

    #@1a
    .line 2371
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@1b
    .line 2372
    iput-object v2, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    #@1d
    .line 2371
    throw v1
.end method

.method public flush()V
    .locals 2

    #@0
    .prologue
    .line 2341
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    #@3
    .line 2342
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    #@5
    instance-of v1, v1, Ljava/io/Flushable;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 2344
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    #@b
    check-cast v1, Ljava/io/Flushable;

    #@d
    invoke-interface {v1}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 2340
    :cond_0
    :goto_0
    return-void

    #@11
    .line 2345
    :catch_0
    move-exception v0

    #@12
    .line 2346
    .local v0, "ioe":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    #@14
    goto :goto_0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 2426
    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .locals 10
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2465
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    #@4
    .line 2468
    const/4 v4, -0x1

    #@5
    .line 2470
    .local v4, "last":I
    const/4 v5, -0x1

    #@6
    .line 2472
    .local v5, "lasto":I
    invoke-direct {p0, p2}, Ljava/util/Formatter;->parse(Ljava/lang/String;)[Ljava/util/Formatter$FormatString;

    #@9
    move-result-object v1

    #@a
    .line 2473
    .local v1, "fsa":[Ljava/util/Formatter$FormatString;
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    array-length v7, v1

    #@c
    if-ge v2, v7, :cond_7

    #@e
    .line 2474
    aget-object v0, v1, v2

    #@10
    .line 2475
    .local v0, "fs":Ljava/util/Formatter$FormatString;
    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->index()I

    #@13
    move-result v3

    #@14
    .line 2477
    .local v3, "index":I
    packed-switch v3, :pswitch_data_0

    #@17
    .line 2494
    add-int/lit8 v4, v3, -0x1

    #@19
    .line 2495
    if-eqz p3, :cond_5

    #@1b
    :try_start_0
    array-length v7, p3

    #@1c
    add-int/lit8 v7, v7, -0x1

    #@1e
    if-le v4, v7, :cond_5

    #@20
    .line 2496
    new-instance v7, Ljava/util/MissingFormatArgumentException;

    #@22
    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    #@25
    move-result-object v9

    #@26
    invoke-direct {v7, v9}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 2500
    :catch_0
    move-exception v6

    #@2b
    .line 2501
    .local v6, "x":Ljava/io/IOException;
    iput-object v6, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    #@2d
    .line 2473
    .end local v6    # "x":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 2479
    :pswitch_0
    const/4 v7, 0x0

    #@31
    :try_start_1
    invoke-interface {v0, v7, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    #@34
    goto :goto_1

    #@35
    .line 2482
    :pswitch_1
    if-ltz v4, :cond_0

    #@37
    if-eqz p3, :cond_1

    #@39
    array-length v7, p3

    #@3a
    add-int/lit8 v7, v7, -0x1

    #@3c
    if-le v4, v7, :cond_1

    #@3e
    .line 2483
    :cond_0
    new-instance v7, Ljava/util/MissingFormatArgumentException;

    #@40
    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    #@43
    move-result-object v9

    #@44
    invoke-direct {v7, v9}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v7

    #@48
    .line 2484
    :cond_1
    if-nez p3, :cond_2

    #@4a
    move-object v7, v8

    #@4b
    :goto_2
    invoke-interface {v0, v7, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    #@4e
    goto :goto_1

    #@4f
    :cond_2
    aget-object v7, p3, v4

    #@51
    goto :goto_2

    #@52
    .line 2487
    :pswitch_2
    add-int/lit8 v5, v5, 0x1

    #@54
    .line 2488
    move v4, v5

    #@55
    .line 2489
    if-eqz p3, :cond_3

    #@57
    array-length v7, p3

    #@58
    add-int/lit8 v7, v7, -0x1

    #@5a
    if-le v5, v7, :cond_3

    #@5c
    .line 2490
    new-instance v7, Ljava/util/MissingFormatArgumentException;

    #@5e
    invoke-interface {v0}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    #@61
    move-result-object v9

    #@62
    invoke-direct {v7, v9}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v7

    #@66
    .line 2491
    :cond_3
    if-nez p3, :cond_4

    #@68
    move-object v7, v8

    #@69
    :goto_3
    invoke-interface {v0, v7, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    #@6c
    goto :goto_1

    #@6d
    :cond_4
    aget-object v7, p3, v5

    #@6f
    goto :goto_3

    #@70
    .line 2497
    :cond_5
    if-nez p3, :cond_6

    #@72
    move-object v7, v8

    #@73
    :goto_4
    invoke-interface {v0, v7, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    #@76
    goto :goto_1

    #@77
    :cond_6
    aget-object v7, p3, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@79
    goto :goto_4

    #@7a
    .line 2504
    .end local v0    # "fs":Ljava/util/Formatter$FormatString;
    .end local v3    # "index":I
    :cond_7
    return-object p0

    #@7b
    .line 2477
    nop

    #@7c
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public ioException()Ljava/io/IOException;
    .locals 1

    #@0
    .prologue
    .line 2392
    iget-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    #@2
    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 2275
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    #@3
    .line 2276
    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    #@5
    return-object v0
.end method

.method public out()Ljava/lang/Appendable;
    .locals 1

    #@0
    .prologue
    .line 2289
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    #@3
    .line 2290
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2325
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    #@3
    .line 2326
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
