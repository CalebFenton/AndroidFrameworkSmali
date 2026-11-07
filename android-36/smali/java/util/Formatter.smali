.class public final Ljava/util/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Formatter$FormatString;,
        Ljava/util/Formatter$FixedString;,
        Ljava/util/Formatter$FormatSpecifierParser;,
        Ljava/util/Formatter$FormatSpecifier;,
        Ljava/util/Formatter$DateTime;,
        Ljava/util/Formatter$Conversion;,
        Ljava/util/Formatter$Flags;,
        Ljava/util/Formatter$BigDecimalLayoutForm;
    }
.end annotation


# static fields
.field public static final blacklist ENABLE_STRICT_FORMATTER_VALIDATION:J = 0x10222b27L

.field private static final blacklist ZERO_SENTINEL:C = '\ufffe'


# instance fields
.field private greylist-max-o a:Ljava/lang/Appendable;

.field private final greylist-max-o l:Ljava/util/Locale;

.field private greylist-max-o lastException:Ljava/io/IOException;

.field private greylist-max-o zero:C


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgeta(Ljava/util/Formatter;)Ljava/lang/Appendable;
    .registers 1

    iget-object p0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mzero(Ljava/util/Formatter;)C
    .registers 1

    invoke-direct {p0}, Ljava/util/Formatter;->zero()C

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisStrictValidationEnabled()Z
    .registers 1

    invoke-static {}, Ljava/util/Formatter;->isStrictValidationEnabled()Z

    move-result v0

    return v0
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 1999
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2000
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2225
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2227
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2264
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2265
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2303
    invoke-static {p2}, Ljava/util/Formatter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0, p3, p1}, Ljava/util/Formatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    .line 2304
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/util/Locale;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2336
    const-string v0, "charset"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p3, p1}, Ljava/util/Formatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    .line 2337
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 2377
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2379
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2404
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2405
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2430
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, p3, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2431
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/util/Locale;)V
    .registers 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "l"    # Ljava/util/Locale;

    .line 2453
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, p3, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2454
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/PrintStream;)V
    .registers 4
    .param p1, "ps"    # Ljava/io/PrintStream;

    .line 2356
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 2357
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Appendable;

    .line 2356
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2358
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Appendable;)V
    .registers 4
    .param p1, "a"    # Ljava/lang/Appendable;

    .line 2015
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Formatter;->nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2016
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    .registers 4
    .param p1, "a"    # Ljava/lang/Appendable;
    .param p2, "l"    # Ljava/util/Locale;

    .line 2048
    invoke-static {p1}, Ljava/util/Formatter;->nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2049
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2081
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2083
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2120
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2121
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2159
    invoke-static {p2}, Ljava/util/Formatter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, v1}, Ljava/util/Formatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    .line 2160
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/Locale;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2192
    const-string v0, "charset"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, v1}, Ljava/util/Formatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    .line 2193
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V
    .registers 7
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "l"    # Ljava/util/Locale;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1983
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1985
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "l"    # Ljava/util/Locale;

    .line 2032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2033
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/Locale;Ljava/lang/Appendable;)V
    .registers 4
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "a"    # Ljava/lang/Appendable;

    .line 1975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1948
    const v0, 0xfffe

    iput-char v0, p0, Ljava/util/Formatter;->zero:C

    .line 1976
    iput-object p2, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    .line 1977
    iput-object p1, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    .line 1978
    return-void
.end method

.method private greylist-max-o ensureOpen()V
    .registers 2

    .line 2591
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    if-eqz v0, :cond_5

    .line 2593
    return-void

    .line 2592
    :cond_5
    new-instance v0, Ljava/util/FormatterClosedException;

    invoke-direct {v0}, Ljava/util/FormatterClosedException;-><init>()V

    throw v0
.end method

.method private static blacklist isStrictValidationEnabled()Z
    .registers 2

    .line 2898
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x23

    if-lt v0, v1, :cond_13

    .line 2899
    const-wide/32 v0, 0x10222b27

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 2898
    :goto_14
    return v0
.end method

.method private static final greylist-max-o nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 2
    .param p0, "a"    # Ljava/lang/Appendable;

    .line 1968
    if-nez p0, :cond_8

    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0

    .line 1971
    :cond_8
    return-object p0
.end method

.method private blacklist parse(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Formatter$FormatString;",
            ">;"
        }
    .end annotation

    .line 2725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2726
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Formatter$FormatString;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_a
    if-ge v1, v2, :cond_3d

    .line 2727
    const/16 v3, 0x25

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2728
    .local v4, "nextPercent":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_2a

    .line 2731
    move v3, v1

    .line 2732
    .local v3, "plainTextStart":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1e

    move v5, v2

    goto :goto_1f

    :cond_1e
    move v5, v4

    .line 2733
    .local v5, "plainTextEnd":I
    :goto_1f
    new-instance v6, Ljava/util/Formatter$FixedString;

    invoke-direct {v6, p0, p1, v3, v5}, Ljava/util/Formatter$FixedString;-><init>(Ljava/util/Formatter;Ljava/lang/String;II)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2734
    nop

    .line 2735
    .end local v1    # "i":I
    .end local v3    # "plainTextStart":I
    .local v5, "i":I
    move v1, v5

    goto :goto_3c

    .line 2737
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_2a
    new-instance v3, Ljava/util/Formatter$FormatSpecifierParser;

    add-int/lit8 v5, v1, 0x1

    invoke-direct {v3, p0, p1, v5}, Ljava/util/Formatter$FormatSpecifierParser;-><init>(Ljava/util/Formatter;Ljava/lang/String;I)V

    .line 2738
    .local v3, "fsp":Ljava/util/Formatter$FormatSpecifierParser;
    invoke-virtual {v3}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifier()Ljava/util/Formatter$FormatSpecifier;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2739
    invoke-virtual {v3}, Ljava/util/Formatter$FormatSpecifierParser;->getEndIdx()I

    move-result v1

    .line 2741
    .end local v3    # "fsp":Ljava/util/Formatter$FormatSpecifierParser;
    .end local v4    # "nextPercent":I
    :goto_3c
    goto :goto_a

    .line 2742
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_3d
    return-object v0
.end method

.method private static greylist-max-o toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .param p0, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1958
    const-string v0, "charsetName"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1960
    :try_start_5
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_9
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_5 .. :try_end_9} :catch_a
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    .line 1961
    :catch_a
    move-exception v0

    .line 1963
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist zero()C
    .registers 4

    .line 2457
    iget-char v0, p0, Ljava/util/Formatter;->zero:C

    .line 2458
    .local v0, "zero":C
    const v1, 0xfffe

    if-ne v0, v1, :cond_28

    .line 2459
    iget-object v1, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    if-eqz v1, :cond_24

    iget-object v1, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 2462
    iget-object v1, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    .line 2463
    invoke-static {v1}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/DecimalFormatData;->getInstance(Ljava/util/Locale;)Llibcore/icu/DecimalFormatData;

    move-result-object v1

    .line 2464
    .local v1, "decimalFormatData":Llibcore/icu/DecimalFormatData;
    invoke-virtual {v1}, Llibcore/icu/DecimalFormatData;->getZeroDigit()C

    move-result v2

    return v2

    .line 2468
    .end local v1    # "decimalFormatData":Llibcore/icu/DecimalFormatData;
    :cond_24
    const/16 v0, 0x30

    .line 2470
    iput-char v0, p0, Ljava/util/Formatter;->zero:C

    .line 2472
    :cond_28
    return v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 2578
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    if-nez v0, :cond_5

    .line 2579
    return-void

    .line 2581
    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_19

    .line 2582
    iget-object v1, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_13} :catch_16
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    goto :goto_19

    .line 2586
    :catchall_14
    move-exception v1

    goto :goto_1d

    .line 2583
    :catch_16
    move-exception v1

    .line 2584
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_17
    iput-object v1, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_14

    .line 2586
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_19
    :goto_19
    iput-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    .line 2587
    nop

    .line 2588
    return-void

    .line 2586
    :goto_1d
    iput-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    .line 2587
    throw v1
.end method

.method public whitelist test-api flush()V
    .registers 2

    .line 2555
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2556
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/io/Flushable;

    if-eqz v0, :cond_14

    .line 2558
    :try_start_9
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_11

    .line 2561
    goto :goto_14

    .line 2559
    :catch_11
    move-exception v0

    .line 2560
    .local v0, "ioe":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    .line 2563
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_14
    :goto_14
    return-void
.end method

.method public varargs whitelist test-api format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 2640
    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .registers 12
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 2679
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2682
    const/4 v0, -0x1

    .line 2684
    .local v0, "last":I
    const/4 v1, -0x1

    .line 2686
    .local v1, "lasto":I
    invoke-direct {p0, p2}, Ljava/util/Formatter;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2687
    .local v2, "fsa":Ljava/util/List;, "Ljava/util/List<Ljava/util/Formatter$FormatString;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_81

    .line 2688
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Formatter$FormatString;

    .line 2689
    .local v4, "fs":Ljava/util/Formatter$FormatString;
    invoke-interface {v4}, Ljava/util/Formatter$FormatString;->index()I

    move-result v5

    .line 2691
    .local v5, "index":I
    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_82

    .line 2707
    add-int/lit8 v0, v5, -0x1

    .line 2708
    if-eqz p3, :cond_73

    :try_start_22
    array-length v7, p3

    goto :goto_64

    .line 2700
    :pswitch_24
    add-int/lit8 v1, v1, 0x1

    .line 2701
    move v0, v1

    .line 2702
    if-eqz p3, :cond_39

    array-length v7, p3

    add-int/lit8 v7, v7, -0x1

    if-gt v1, v7, :cond_2f

    goto :goto_39

    .line 2703
    :cond_2f
    new-instance v6, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v4}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "last":I
    .end local v1    # "lasto":I
    .end local v2    # "fsa":Ljava/util/List;, "Ljava/util/List<Ljava/util/Formatter$FormatString;>;"
    .end local v3    # "i":I
    .end local v4    # "fs":Ljava/util/Formatter$FormatString;
    .end local v5    # "index":I
    .end local p0    # "this":Ljava/util/Formatter;
    .end local p1    # "l":Ljava/util/Locale;
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "args":[Ljava/lang/Object;
    throw v6

    .line 2704
    .restart local v0    # "last":I
    .restart local v1    # "lasto":I
    .restart local v2    # "fsa":Ljava/util/List;, "Ljava/util/List<Ljava/util/Formatter$FormatString;>;"
    .restart local v3    # "i":I
    .restart local v4    # "fs":Ljava/util/Formatter$FormatString;
    .restart local v5    # "index":I
    .restart local p0    # "this":Ljava/util/Formatter;
    .restart local p1    # "l":Ljava/util/Locale;
    .restart local p2    # "format":Ljava/lang/String;
    .restart local p3    # "args":[Ljava/lang/Object;
    :cond_39
    :goto_39
    if-nez p3, :cond_3c

    goto :goto_3e

    :cond_3c
    aget-object v6, p3, v1

    :goto_3e
    invoke-interface {v4, v6, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2705
    goto :goto_7b

    .line 2695
    :pswitch_42
    if-ltz v0, :cond_54

    if-eqz p3, :cond_4b

    array-length v7, p3

    add-int/lit8 v7, v7, -0x1

    if-gt v0, v7, :cond_54

    .line 2697
    :cond_4b
    if-nez p3, :cond_4e

    goto :goto_50

    :cond_4e
    aget-object v6, p3, v0

    :goto_50
    invoke-interface {v4, v6, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2698
    goto :goto_7b

    .line 2696
    :cond_54
    new-instance v6, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v4}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "last":I
    .end local v1    # "lasto":I
    .end local v2    # "fsa":Ljava/util/List;, "Ljava/util/List<Ljava/util/Formatter$FormatString;>;"
    .end local v3    # "i":I
    .end local v4    # "fs":Ljava/util/Formatter$FormatString;
    .end local v5    # "index":I
    .end local p0    # "this":Ljava/util/Formatter;
    .end local p1    # "l":Ljava/util/Locale;
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "args":[Ljava/lang/Object;
    throw v6

    .line 2693
    .restart local v0    # "last":I
    .restart local v1    # "lasto":I
    .restart local v2    # "fsa":Ljava/util/List;, "Ljava/util/List<Ljava/util/Formatter$FormatString;>;"
    .restart local v3    # "i":I
    .restart local v4    # "fs":Ljava/util/Formatter$FormatString;
    .restart local v5    # "index":I
    .restart local p0    # "this":Ljava/util/Formatter;
    .restart local p1    # "l":Ljava/util/Locale;
    .restart local p2    # "format":Ljava/lang/String;
    .restart local p3    # "args":[Ljava/lang/Object;
    :pswitch_5e
    invoke-interface {v4, v6, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_7b

    .line 2713
    :catch_62
    move-exception v6

    goto :goto_7c

    .line 2708
    :goto_64
    add-int/lit8 v7, v7, -0x1

    if-gt v0, v7, :cond_69

    goto :goto_73

    .line 2709
    :cond_69
    new-instance v6, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v4}, Ljava/util/Formatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "last":I
    .end local v1    # "lasto":I
    .end local v2    # "fsa":Ljava/util/List;, "Ljava/util/List<Ljava/util/Formatter$FormatString;>;"
    .end local v3    # "i":I
    .end local v4    # "fs":Ljava/util/Formatter$FormatString;
    .end local v5    # "index":I
    .end local p0    # "this":Ljava/util/Formatter;
    .end local p1    # "l":Ljava/util/Locale;
    .end local p2    # "format":Ljava/lang/String;
    .end local p3    # "args":[Ljava/lang/Object;
    throw v6

    .line 2710
    .restart local v0    # "last":I
    .restart local v1    # "lasto":I
    .restart local v2    # "fsa":Ljava/util/List;, "Ljava/util/List<Ljava/util/Formatter$FormatString;>;"
    .restart local v3    # "i":I
    .restart local v4    # "fs":Ljava/util/Formatter$FormatString;
    .restart local v5    # "index":I
    .restart local p0    # "this":Ljava/util/Formatter;
    .restart local p1    # "l":Ljava/util/Locale;
    .restart local p2    # "format":Ljava/lang/String;
    .restart local p3    # "args":[Ljava/lang/Object;
    :cond_73
    :goto_73
    if-nez p3, :cond_76

    goto :goto_78

    :cond_76
    aget-object v6, p3, v0

    :goto_78
    invoke-interface {v4, v6, p1}, Ljava/util/Formatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_7b} :catch_62

    .line 2715
    :goto_7b
    goto :goto_7e

    .line 2714
    .local v6, "x":Ljava/io/IOException;
    :goto_7c
    iput-object v6, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    .line 2687
    .end local v4    # "fs":Ljava/util/Formatter$FormatString;
    .end local v5    # "index":I
    .end local v6    # "x":Ljava/io/IOException;
    :goto_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2717
    .end local v3    # "i":I
    :cond_81
    return-object p0

    :pswitch_data_82
    .packed-switch -0x2
        :pswitch_5e
        :pswitch_42
        :pswitch_24
    .end packed-switch
.end method

.method public whitelist test-api ioException()Ljava/io/IOException;
    .registers 2

    .line 2606
    iget-object v0, p0, Ljava/util/Formatter;->lastException:Ljava/io/IOException;

    return-object v0
.end method

.method public whitelist test-api locale()Ljava/util/Locale;
    .registers 2

    .line 2489
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2490
    iget-object v0, p0, Ljava/util/Formatter;->l:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist test-api out()Ljava/lang/Appendable;
    .registers 2

    .line 2503
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2504
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 2539
    invoke-direct {p0}, Ljava/util/Formatter;->ensureOpen()V

    .line 2540
    iget-object v0, p0, Ljava/util/Formatter;->a:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
