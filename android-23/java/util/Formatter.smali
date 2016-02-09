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
        Ljava/util/Formatter$CachedDecimalFormat;,
        Ljava/util/Formatter$FormatToken;,
        Ljava/util/Formatter$FormatSpecifierParser;,
        Ljava/util/Formatter$1;
    }
.end annotation


# static fields
.field private static final ZEROS:[C

.field private static final cachedDecimalFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Formatter$CachedDecimalFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arg:Ljava/lang/Object;

.field private closed:Z

.field private formatToken:Ljava/util/Formatter$FormatToken;

.field private lastIOException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private localeData:Llibcore/icu/LocaleData;

.field private out:Ljava/lang/Appendable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 529
    const/16 v0, 0x9

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Ljava/util/Formatter;->ZEROS:[C

    #@9
    .line 583
    new-instance v0, Ljava/util/Formatter$1;

    #@b
    invoke-direct {v0}, Ljava/util/Formatter$1;-><init>()V

    #@e
    sput-object v0, Ljava/util/Formatter;->cachedDecimalFormat:Ljava/lang/ThreadLocal;

    #@10
    .line 528
    return-void

    #@11
    .line 529
    nop

    #@12
    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@8
    move-result-object v1

    #@9
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@c
    .line 606
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 754
    new-instance v0, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@5
    invoke-direct {p0, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;)V

    #@8
    .line 753
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
    .line 780
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    #@7
    .line 779
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 6
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
    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 552
    const/4 v4, 0x0

    #@4
    iput-boolean v4, p0, Ljava/util/Formatter;->closed:Z

    #@6
    .line 806
    const/4 v2, 0x0

    #@7
    .line 808
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    #@9
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 809
    .local v3, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedWriter;

    #@e
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/OutputStreamWriter;

    #@10
    invoke-direct {v5, v3, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@13
    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@16
    iput-object v4, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    #@18
    .line 818
    iput-object p3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@1a
    .line 805
    return-void

    #@1b
    .line 813
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    #@1c
    .line 814
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1f
    .line 815
    throw v0

    #@20
    .line 810
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    #@21
    .line 811
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@24
    .line 812
    throw v1

    #@25
    .line 810
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    #@26
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    move-object v2, v3

    #@27
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .local v2, "fout":Ljava/io/FileOutputStream;
    goto :goto_1

    #@28
    .line 813
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    #@29
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    move-object v2, v3

    #@2a
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 552
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    #@6
    .line 833
    new-instance v0, Ljava/io/BufferedWriter;

    #@8
    new-instance v1, Ljava/io/OutputStreamWriter;

    #@a
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    #@11
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@14
    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    #@16
    .line 834
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@1c
    .line 832
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
    .line 852
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V

    #@7
    .line 851
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
    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 552
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    #@6
    .line 870
    new-instance v0, Ljava/io/BufferedWriter;

    #@8
    new-instance v1, Ljava/io/OutputStreamWriter;

    #@a
    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@d
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@10
    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    #@12
    .line 871
    iput-object p3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@14
    .line 869
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "ps"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 552
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    #@6
    .line 888
    if-nez p1, :cond_0

    #@8
    .line 889
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v1, "ps == null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 891
    :cond_0
    iput-object p1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    #@13
    .line 892
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@19
    .line 887
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Appendable;

    #@0
    .prologue
    .line 622
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@7
    .line 621
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Appendable;
    .param p2, "l"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 552
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    #@6
    .line 652
    if-nez p1, :cond_0

    #@8
    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    iput-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    #@f
    .line 657
    :goto_0
    iput-object p2, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@11
    .line 651
    return-void

    #@12
    .line 655
    :cond_0
    iput-object p1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    #@14
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 679
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-direct {p0, v0}, Ljava/util/Formatter;-><init>(Ljava/io/File;)V

    #@8
    .line 678
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
    .line 705
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-direct {p0, v0, p2}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8
    .line 704
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
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
    .line 732
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-direct {p0, v0, p2, p3}, Ljava/util/Formatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    #@8
    .line 730
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-direct {p0, v0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@8
    .line 635
    return-void
.end method

.method private appendLocalized(Ljava/lang/StringBuilder;JI)V
    .locals 8
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # J
    .param p4, "width"    # I

    #@0
    .prologue
    const/16 v6, 0x30

    #@2
    const/4 v5, 0x0

    #@3
    .line 1978
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v1

    #@7
    .line 1979
    .local v1, "paddingIndex":I
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@9
    iget-char v3, v4, Llibcore/icu/LocaleData;->zeroDigit:C

    #@b
    .line 1980
    .local v3, "zeroDigit":C
    if-ne v3, v6, :cond_0

    #@d
    .line 1981
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@10
    .line 1985
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@13
    move-result v4

    #@14
    sub-int/2addr v4, v1

    #@15
    sub-int v2, p4, v4

    #@17
    .line 1986
    .local v2, "zeroCount":I
    if-gtz v2, :cond_1

    #@19
    .line 1987
    return-void

    #@1a
    .line 1983
    .end local v2    # "zeroCount":I
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-direct {p0, v4}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@25
    goto :goto_0

    #@26
    .line 1989
    .restart local v2    # "zeroCount":I
    :cond_1
    if-ne v3, v6, :cond_3

    #@28
    .line 1990
    sget-object v4, Ljava/util/Formatter;->ZEROS:[C

    #@2a
    invoke-virtual {p1, v1, v4, v5, v2}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    #@2d
    .line 1977
    :cond_2
    return-void

    #@2e
    .line 1992
    :cond_3
    const/4 v0, 0x0

    #@2f
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    #@31
    .line 1993
    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@34
    .line 1992
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_1
.end method

.method private appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z
    .locals 11
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "conversion"    # C
    .param p3, "calendar"    # Ljava/util/Calendar;

    #@0
    .prologue
    const/16 v6, 0x3a

    #@2
    const/16 v5, 0x20

    #@4
    const/4 v10, 0x0

    #@5
    const/4 v9, 0x2

    #@6
    const/4 v8, 0x1

    #@7
    .line 1837
    packed-switch p2, :pswitch_data_0

    #@a
    .line 1970
    :pswitch_0
    return v10

    #@b
    .line 1839
    :pswitch_1
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@d
    iget-object v4, v4, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    #@f
    const/4 v5, 0x7

    #@10
    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    #@13
    move-result v5

    #@14
    aget-object v4, v4, v5

    #@16
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 1840
    return v8

    #@1a
    .line 1842
    :pswitch_2
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@1c
    iget-object v4, v4, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    #@1e
    const/4 v5, 0x7

    #@1f
    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    #@22
    move-result v5

    #@23
    aget-object v4, v4, v5

    #@25
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 1843
    return v8

    #@29
    .line 1845
    :pswitch_3
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@2b
    iget-object v4, v4, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    #@2d
    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    #@30
    move-result v5

    #@31
    aget-object v4, v4, v5

    #@33
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 1846
    return v8

    #@37
    .line 1848
    :pswitch_4
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@39
    iget-object v4, v4, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    #@3b
    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    #@3e
    move-result v5

    #@3f
    aget-object v4, v4, v5

    #@41
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 1849
    return v8

    #@45
    .line 1851
    :pswitch_5
    invoke-virtual {p3, v8}, Ljava/util/Calendar;->get(I)I

    #@48
    move-result v4

    #@49
    div-int/lit8 v4, v4, 0x64

    #@4b
    int-to-long v4, v4

    #@4c
    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@4f
    .line 1852
    return v8

    #@50
    .line 1854
    :pswitch_6
    const/16 v4, 0x6d

    #@52
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@55
    .line 1855
    const/16 v4, 0x2f

    #@57
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    .line 1856
    const/16 v4, 0x64

    #@5c
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@5f
    .line 1857
    const/16 v4, 0x2f

    #@61
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@64
    .line 1858
    const/16 v4, 0x79

    #@66
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@69
    .line 1859
    return v8

    #@6a
    .line 1861
    :pswitch_7
    const/16 v4, 0x59

    #@6c
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@6f
    .line 1862
    const/16 v4, 0x2d

    #@71
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@74
    .line 1863
    const/16 v4, 0x6d

    #@76
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@79
    .line 1864
    const/16 v4, 0x2d

    #@7b
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7e
    .line 1865
    const/16 v4, 0x64

    #@80
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@83
    .line 1866
    return v8

    #@84
    .line 1868
    :pswitch_8
    const/16 v4, 0xb

    #@86
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    #@89
    move-result v4

    #@8a
    int-to-long v4, v4

    #@8b
    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@8e
    .line 1869
    return v8

    #@8f
    .line 1871
    :pswitch_9
    const/16 v4, 0xa

    #@91
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    #@94
    move-result v4

    #@95
    invoke-direct {p0, v4}, Ljava/util/Formatter;->to12Hour(I)I

    #@98
    move-result v4

    #@99
    int-to-long v4, v4

    #@9a
    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@9d
    .line 1872
    return v8

    #@9e
    .line 1874
    :pswitch_a
    const/16 v4, 0xe

    #@a0
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    #@a3
    move-result v4

    #@a4
    int-to-long v4, v4

    #@a5
    const/4 v6, 0x3

    #@a6
    invoke-direct {p0, p1, v4, v5, v6}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@a9
    .line 1875
    return v8

    #@aa
    .line 1877
    :pswitch_b
    const/16 v4, 0xc

    #@ac
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    #@af
    move-result v4

    #@b0
    int-to-long v4, v4

    #@b1
    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@b4
    .line 1878
    return v8

    #@b5
    .line 1880
    :pswitch_c
    const/16 v4, 0xe

    #@b7
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    #@ba
    move-result v4

    #@bb
    int-to-long v4, v4

    #@bc
    const-wide/32 v6, 0xf4240

    #@bf
    mul-long/2addr v4, v6

    #@c0
    const/16 v6, 0x9

    #@c2
    invoke-direct {p0, p1, v4, v5, v6}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@c5
    .line 1881
    return v8

    #@c6
    .line 1883
    :pswitch_d
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    #@c9
    move-result-wide v4

    #@ca
    invoke-direct {p0, p1, v4, v5, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@cd
    .line 1884
    return v8

    #@ce
    .line 1886
    :pswitch_e
    const/16 v4, 0x48

    #@d0
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@d3
    .line 1887
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d6
    .line 1888
    const/16 v4, 0x4d

    #@d8
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@db
    .line 1889
    return v8

    #@dc
    .line 1891
    :pswitch_f
    const/16 v4, 0xd

    #@de
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    #@e1
    move-result v4

    #@e2
    int-to-long v4, v4

    #@e3
    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@e6
    .line 1892
    return v8

    #@e7
    .line 1894
    :pswitch_10
    const/16 v4, 0x48

    #@e9
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@ec
    .line 1895
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ef
    .line 1896
    const/16 v4, 0x4d

    #@f1
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@f4
    .line 1897
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f7
    .line 1898
    const/16 v4, 0x53

    #@f9
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@fc
    .line 1899
    return v8

    #@fd
    .line 1901
    :pswitch_11
    invoke-virtual {p3, v8}, Ljava/util/Calendar;->get(I)I

    #@100
    move-result v4

    #@101
    int-to-long v4, v4

    #@102
    const/4 v6, 0x4

    #@103
    invoke-direct {p0, p1, v4, v5, v6}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@106
    .line 1902
    return v8

    #@107
    .line 1904
    :pswitch_12
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@10a
    move-result-object v3

    #@10b
    .line 1905
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@10e
    move-result-object v4

    #@10f
    invoke-virtual {v3, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@112
    move-result v4

    #@113
    .line 1906
    iget-object v5, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@115
    .line 1905
    invoke-virtual {v3, v4, v10, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@118
    move-result-object v4

    #@119
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    .line 1907
    return v8

    #@11d
    .line 1909
    .end local v3    # "timeZone":Ljava/util/TimeZone;
    :pswitch_13
    const/16 v4, 0x61

    #@11f
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@122
    .line 1910
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@125
    .line 1911
    const/16 v4, 0x62

    #@127
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@12a
    .line 1912
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12d
    .line 1913
    const/16 v4, 0x64

    #@12f
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@132
    .line 1914
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@135
    .line 1915
    const/16 v4, 0x54

    #@137
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@13a
    .line 1916
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13d
    .line 1917
    const/16 v4, 0x5a

    #@13f
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@142
    .line 1918
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@145
    .line 1919
    const/16 v4, 0x59

    #@147
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@14a
    .line 1920
    return v8

    #@14b
    .line 1922
    :pswitch_14
    const/4 v4, 0x5

    #@14c
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    #@14f
    move-result v4

    #@150
    int-to-long v4, v4

    #@151
    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@154
    .line 1923
    return v8

    #@155
    .line 1925
    :pswitch_15
    const/4 v4, 0x5

    #@156
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    #@159
    move-result v4

    #@15a
    int-to-long v4, v4

    #@15b
    invoke-direct {p0, p1, v4, v5, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@15e
    .line 1926
    return v8

    #@15f
    .line 1928
    :pswitch_16
    const/4 v4, 0x6

    #@160
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    #@163
    move-result v4

    #@164
    int-to-long v4, v4

    #@165
    const/4 v6, 0x3

    #@166
    invoke-direct {p0, p1, v4, v5, v6}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@169
    .line 1929
    return v8

    #@16a
    .line 1931
    :pswitch_17
    const/16 v4, 0xb

    #@16c
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    #@16f
    move-result v4

    #@170
    int-to-long v4, v4

    #@171
    invoke-direct {p0, p1, v4, v5, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@174
    .line 1932
    return v8

    #@175
    .line 1934
    :pswitch_18
    const/16 v4, 0xa

    #@177
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    #@17a
    move-result v4

    #@17b
    invoke-direct {p0, v4}, Ljava/util/Formatter;->to12Hour(I)I

    #@17e
    move-result v4

    #@17f
    int-to-long v4, v4

    #@180
    invoke-direct {p0, p1, v4, v5, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@183
    .line 1935
    return v8

    #@184
    .line 1938
    :pswitch_19
    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    #@187
    move-result v4

    #@188
    add-int/lit8 v4, v4, 0x1

    #@18a
    int-to-long v4, v4

    #@18b
    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@18e
    .line 1939
    return v8

    #@18f
    .line 1941
    :pswitch_1a
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@191
    iget-object v4, v4, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    #@193
    const/16 v5, 0x9

    #@195
    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    #@198
    move-result v5

    #@199
    aget-object v4, v4, v5

    #@19b
    iget-object v5, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@19d
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1a0
    move-result-object v4

    #@1a1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    .line 1942
    return v8

    #@1a5
    .line 1944
    :pswitch_1b
    const/16 v4, 0x49

    #@1a7
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@1aa
    .line 1945
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1ad
    .line 1946
    const/16 v4, 0x4d

    #@1af
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@1b2
    .line 1947
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b5
    .line 1948
    const/16 v4, 0x53

    #@1b7
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@1ba
    .line 1949
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1bd
    .line 1950
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@1bf
    iget-object v4, v4, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    #@1c1
    const/16 v5, 0x9

    #@1c3
    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    #@1c6
    move-result v5

    #@1c7
    aget-object v4, v4, v5

    #@1c9
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    .line 1951
    return v8

    #@1cd
    .line 1953
    :pswitch_1c
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    #@1d0
    move-result-wide v4

    #@1d1
    const-wide/16 v6, 0x3e8

    #@1d3
    div-long/2addr v4, v6

    #@1d4
    invoke-direct {p0, p1, v4, v5, v10}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@1d7
    .line 1954
    return v8

    #@1d8
    .line 1956
    :pswitch_1d
    invoke-virtual {p3, v8}, Ljava/util/Calendar;->get(I)I

    #@1db
    move-result v4

    #@1dc
    rem-int/lit8 v4, v4, 0x64

    #@1de
    int-to-long v4, v4

    #@1df
    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@1e2
    .line 1957
    return v8

    #@1e3
    .line 1959
    :pswitch_1e
    const/16 v4, 0xf

    #@1e5
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    #@1e8
    move-result v4

    #@1e9
    const/16 v5, 0x10

    #@1eb
    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    #@1ee
    move-result v5

    #@1ef
    add-int/2addr v4, v5

    #@1f0
    int-to-long v0, v4

    #@1f1
    .line 1960
    .local v0, "offset":J
    const/16 v2, 0x2b

    #@1f3
    .line 1961
    .local v2, "sign":C
    const-wide/16 v4, 0x0

    #@1f5
    cmp-long v4, v0, v4

    #@1f7
    if-gez v4, :cond_0

    #@1f9
    .line 1962
    const/16 v2, 0x2d

    #@1fb
    .line 1963
    neg-long v0, v0

    #@1fc
    .line 1965
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1ff
    .line 1966
    const-wide/32 v4, 0x36ee80

    #@202
    div-long v4, v0, v4

    #@204
    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@207
    .line 1967
    const-wide/32 v4, 0x36ee80

    #@20a
    rem-long v4, v0, v4

    #@20c
    const-wide/32 v6, 0xea60

    #@20f
    div-long/2addr v4, v6

    #@210
    invoke-direct {p0, p1, v4, v5, v9}, Ljava/util/Formatter;->appendLocalized(Ljava/lang/StringBuilder;JI)V

    #@213
    .line 1968
    return v8

    #@214
    .line 1837
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method private badArgumentType()Ljava/util/IllegalFormatConversionException;
    .locals 3

    #@0
    .prologue
    .line 1489
    new-instance v0, Ljava/util/IllegalFormatConversionException;

    #@2
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@4
    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    #@7
    move-result v1

    #@8
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v0, v1, v2}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    #@11
    throw v0
.end method

.method private checkNotClosed()V
    .locals 1

    #@0
    .prologue
    .line 896
    iget-boolean v0, p0, Ljava/util/Formatter;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 897
    new-instance v0, Ljava/util/FormatterClosedException;

    #@6
    invoke-direct {v0}, Ljava/util/FormatterClosedException;-><init>()V

    #@9
    throw v0

    #@a
    .line 895
    :cond_0
    return-void
.end method

.method private varargs doFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 17
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1050
    invoke-direct/range {p0 .. p0}, Ljava/util/Formatter;->checkNotClosed()V

    #@3
    .line 1052
    new-instance v5, Ljava/util/Formatter$FormatSpecifierParser;

    #@5
    move-object/from16 v0, p1

    #@7
    invoke-direct {v5, v0}, Ljava/util/Formatter$FormatSpecifierParser;-><init>(Ljava/lang/String;)V

    #@a
    .line 1053
    .local v5, "fsp":Ljava/util/Formatter$FormatSpecifierParser;
    const/4 v9, 0x0

    #@b
    .line 1054
    .local v9, "currentObjectIndex":I
    const/4 v6, 0x0

    #@c
    .line 1055
    .local v6, "lastArgument":Ljava/lang/Object;
    const/4 v7, 0x0

    #@d
    .line 1057
    .local v7, "hasLastArgumentSet":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@10
    move-result v11

    #@11
    .line 1058
    .local v11, "length":I
    const/4 v10, 0x0

    #@12
    .line 1059
    .end local v6    # "lastArgument":Ljava/lang/Object;
    .local v10, "i":I
    :cond_0
    :goto_0
    if-ge v10, v11, :cond_6

    #@14
    .line 1061
    move v14, v10

    #@15
    .line 1062
    .local v14, "plainTextStart":I
    const/16 v2, 0x25

    #@17
    move-object/from16 v0, p1

    #@19
    invoke-virtual {v0, v2, v10}, Ljava/lang/String;->indexOf(II)I

    #@1c
    move-result v12

    #@1d
    .line 1063
    .local v12, "nextPercent":I
    const/4 v2, -0x1

    #@1e
    if-ne v12, v2, :cond_4

    #@20
    move v13, v11

    #@21
    .line 1065
    .local v13, "plainTextEnd":I
    :goto_1
    if-le v13, v14, :cond_1

    #@23
    .line 1066
    move-object/from16 v0, p0

    #@25
    move-object/from16 v1, p1

    #@27
    invoke-direct {v0, v1, v14, v13}, Ljava/util/Formatter;->outputCharSequence(Ljava/lang/CharSequence;II)V

    #@2a
    .line 1068
    :cond_1
    move v10, v13

    #@2b
    .line 1070
    if-ge v10, v11, :cond_0

    #@2d
    .line 1071
    add-int/lit8 v2, v10, 0x1

    #@2f
    invoke-virtual {v5, v2}, Ljava/util/Formatter$FormatSpecifierParser;->parseFormatToken(I)Ljava/util/Formatter$FormatToken;

    #@32
    move-result-object v16

    #@33
    .line 1073
    .local v16, "token":Ljava/util/Formatter$FormatToken;
    const/4 v8, 0x0

    #@34
    .line 1074
    .local v8, "argument":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Formatter$FormatToken;->requireArgument()Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_2

    #@3a
    .line 1075
    invoke-virtual/range {v16 .. v16}, Ljava/util/Formatter$FormatToken;->getArgIndex()I

    #@3d
    move-result v2

    #@3e
    const/4 v3, -0x1

    #@3f
    if-ne v2, v3, :cond_5

    #@41
    move v4, v9

    #@42
    .local v4, "index":I
    add-int/lit8 v9, v9, 0x1

    #@44
    :goto_2
    move-object/from16 v2, p0

    #@46
    move-object/from16 v3, p2

    #@48
    .line 1076
    invoke-direct/range {v2 .. v7}, Ljava/util/Formatter;->getArgument([Ljava/lang/Object;ILjava/util/Formatter$FormatSpecifierParser;Ljava/lang/Object;Z)Ljava/lang/Object;

    #@4b
    move-result-object v8

    #@4c
    .line 1077
    move-object v6, v8

    #@4d
    .line 1078
    .restart local v6    # "lastArgument":Ljava/lang/Object;
    const/4 v7, 0x1

    #@4e
    .line 1081
    .end local v4    # "index":I
    .end local v6    # "lastArgument":Ljava/lang/Object;
    .end local v8    # "argument":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    #@50
    move-object/from16 v1, v16

    #@52
    invoke-direct {v0, v1, v8}, Ljava/util/Formatter;->transform(Ljava/util/Formatter$FormatToken;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@55
    move-result-object v15

    #@56
    .line 1083
    .local v15, "substitution":Ljava/lang/CharSequence;
    if-eqz v15, :cond_3

    #@58
    .line 1084
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    #@5b
    move-result v2

    #@5c
    const/4 v3, 0x0

    #@5d
    move-object/from16 v0, p0

    #@5f
    invoke-direct {v0, v15, v3, v2}, Ljava/util/Formatter;->outputCharSequence(Ljava/lang/CharSequence;II)V

    #@62
    .line 1086
    :cond_3
    invoke-static {v5}, Ljava/util/Formatter$FormatSpecifierParser;->-get0(Ljava/util/Formatter$FormatSpecifierParser;)I

    #@65
    move-result v10

    #@66
    goto :goto_0

    #@67
    .line 1063
    .end local v13    # "plainTextEnd":I
    .end local v15    # "substitution":Ljava/lang/CharSequence;
    .end local v16    # "token":Ljava/util/Formatter$FormatToken;
    :cond_4
    move v13, v12

    #@68
    .restart local v13    # "plainTextEnd":I
    goto :goto_1

    #@69
    .line 1075
    .restart local v8    # "argument":Ljava/lang/Object;
    .restart local v16    # "token":Ljava/util/Formatter$FormatToken;
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/Formatter$FormatToken;->getArgIndex()I

    #@6c
    move-result v4

    #@6d
    .restart local v4    # "index":I
    goto :goto_2

    #@6e
    .line 1049
    .end local v4    # "index":I
    .end local v8    # "argument":Ljava/lang/Object;
    .end local v12    # "nextPercent":I
    .end local v13    # "plainTextEnd":I
    .end local v14    # "plainTextStart":I
    .end local v16    # "token":Ljava/util/Formatter$FormatToken;
    :cond_6
    return-void
.end method

.method private getArgument([Ljava/lang/Object;ILjava/util/Formatter$FormatSpecifierParser;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "fsp"    # Ljava/util/Formatter$FormatSpecifierParser;
    .param p4, "lastArgument"    # Ljava/lang/Object;
    .param p5, "hasLastArgumentSet"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, -0x2

    #@2
    .line 1102
    if-ne p2, v1, :cond_0

    #@4
    if-eqz p5, :cond_1

    #@6
    .line 1106
    :cond_0
    if-nez p1, :cond_2

    #@8
    .line 1107
    return-object v0

    #@9
    .line 1103
    :cond_1
    new-instance v0, Ljava/util/MissingFormatArgumentException;

    #@b
    const-string/jumbo v1, "<"

    #@e
    invoke-direct {v0, v1}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1110
    :cond_2
    array-length v0, p1

    #@13
    if-lt p2, v0, :cond_3

    #@15
    .line 1111
    new-instance v0, Ljava/util/MissingFormatArgumentException;

    #@17
    invoke-virtual {p3}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifierText()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 1114
    :cond_3
    if-ne p2, v1, :cond_4

    #@21
    .line 1115
    return-object p4

    #@22
    .line 1118
    :cond_4
    aget-object v0, p1, p2

    #@24
    return-object v0
.end method

.method private getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 594
    sget-object v0, Ljava/util/Formatter;->cachedDecimalFormat:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Formatter$CachedDecimalFormat;

    #@8
    iget-object v1, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@a
    invoke-virtual {v0, v1, p1}, Ljava/util/Formatter$CachedDecimalFormat;->update(Llibcore/icu/LocaleData;Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/16 v7, 0x2d

    #@2
    const/4 v6, 0x0

    #@3
    .line 1515
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v4

    #@9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@c
    move-result v5

    #@d
    div-int/lit8 v5, v5, 0x3

    #@f
    add-int/2addr v4, v5

    #@10
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@13
    .line 1518
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@16
    move-result v0

    #@17
    .line 1519
    .local v0, "digitsLength":I
    const/4 v2, 0x0

    #@18
    .line 1520
    .local v2, "i":I
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    #@1b
    move-result v4

    #@1c
    if-ne v4, v7, :cond_0

    #@1e
    .line 1521
    add-int/lit8 v0, v0, -0x1

    #@20
    .line 1522
    const/4 v2, 0x1

    #@21
    .line 1523
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 1527
    :cond_0
    rem-int/lit8 v1, v0, 0x3

    #@26
    .line 1528
    .local v1, "headLength":I
    if-nez v1, :cond_1

    #@28
    .line 1529
    const/4 v1, 0x3

    #@29
    .line 1531
    :cond_1
    add-int v4, v2, v1

    #@2b
    invoke-virtual {v3, p1, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@2e
    .line 1532
    add-int/2addr v2, v1

    #@2f
    .line 1535
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@32
    move-result v4

    #@33
    if-ge v2, v4, :cond_2

    #@35
    .line 1536
    iget-object v4, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@37
    iget-char v4, v4, Llibcore/icu/LocaleData;->groupingSeparator:C

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    .line 1537
    add-int/lit8 v4, v2, 0x3

    #@3e
    invoke-virtual {v3, p1, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@41
    .line 1535
    add-int/lit8 v2, v2, 0x3

    #@43
    goto :goto_0

    #@44
    .line 1539
    :cond_2
    return-object v3
.end method

.method private localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1497
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v2

    #@4
    .line 1498
    .local v2, "length":I
    iget-object v5, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@6
    iget-char v5, v5, Llibcore/icu/LocaleData;->zeroDigit:C

    #@8
    add-int/lit8 v3, v5, -0x30

    #@a
    .line 1499
    .local v3, "offsetToLocalizedDigits":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f
    .line 1500
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@12
    .line 1501
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@15
    move-result v0

    #@16
    .line 1502
    .local v0, "ch":C
    const/16 v5, 0x30

    #@18
    if-lt v0, v5, :cond_0

    #@1a
    const/16 v5, 0x39

    #@1c
    if-gt v0, v5, :cond_0

    #@1e
    .line 1503
    add-int v5, v0, v3

    #@20
    int-to-char v0, v5

    #@21
    .line 1505
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 1500
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 1507
    .end local v0    # "ch":C
    :cond_1
    return-object v4
.end method

.method private outputCharSequence(Ljava/lang/CharSequence;II)V
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 1094
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    #@2
    invoke-interface {v1, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1092
    :goto_0
    return-void

    #@6
    .line 1095
    :catch_0
    move-exception v0

    #@7
    .line 1096
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    #@9
    goto :goto_0
.end method

.method private padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1613
    move v6, p2

    #@2
    .line 1614
    .local v6, "start":I
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@4
    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getWidth()I

    #@7
    move-result v7

    #@8
    .line 1615
    .local v7, "width":I
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@a
    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    #@d
    move-result v4

    #@e
    .line 1617
    .local v4, "precision":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@11
    move-result v0

    #@12
    .line 1618
    .local v0, "length":I
    if-ltz v4, :cond_0

    #@14
    .line 1619
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    #@17
    move-result v0

    #@18
    .line 1620
    instance-of v8, p1, Ljava/lang/StringBuilder;

    #@1a
    if-eqz v8, :cond_2

    #@1c
    move-object v8, p1

    #@1d
    .line 1621
    check-cast v8, Ljava/lang/StringBuilder;

    #@1f
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@22
    .line 1626
    :cond_0
    :goto_0
    if-lez v7, :cond_1

    #@24
    .line 1627
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@27
    move-result v8

    #@28
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    #@2b
    move-result v7

    #@2c
    .line 1629
    :cond_1
    if-lt v0, v7, :cond_3

    #@2e
    .line 1630
    return-object p1

    #@2f
    .line 1623
    :cond_2
    invoke-interface {p1, v9, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@32
    move-result-object p1

    #@33
    goto :goto_0

    #@34
    .line 1633
    :cond_3
    const/16 v1, 0x20

    #@36
    .line 1634
    .local v1, "paddingChar":C
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@38
    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagZero:Z

    #@3a
    if-eqz v8, :cond_5

    #@3c
    .line 1635
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@3e
    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    #@41
    move-result v8

    #@42
    const/16 v9, 0x64

    #@44
    if-ne v8, v9, :cond_4

    #@46
    .line 1636
    iget-object v8, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@48
    iget-char v1, v8, Llibcore/icu/LocaleData;->zeroDigit:C

    #@4a
    .line 1644
    .end local v1    # "paddingChar":C
    :goto_1
    sub-int v8, v7, v0

    #@4c
    new-array v2, v8, [C

    #@4e
    .line 1645
    .local v2, "paddingChars":[C
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([CC)V

    #@51
    .line 1647
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@53
    iget-boolean v3, v8, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    #@55
    .line 1648
    .local v3, "paddingRight":Z
    invoke-direct {p0, p1}, Ljava/util/Formatter;->toStringBuilder(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    .line 1649
    .local v5, "result":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_6

    #@5b
    .line 1650
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@5e
    .line 1654
    :goto_2
    return-object v5

    #@5f
    .line 1638
    .end local v2    # "paddingChars":[C
    .end local v3    # "paddingRight":Z
    .end local v5    # "result":Ljava/lang/StringBuilder;
    .restart local v1    # "paddingChar":C
    :cond_4
    const/16 v1, 0x30

    #@61
    goto :goto_1

    #@62
    .line 1642
    :cond_5
    const/4 v6, 0x0

    #@63
    goto :goto_1

    #@64
    .line 1652
    .end local v1    # "paddingChar":C
    .restart local v2    # "paddingChars":[C
    .restart local v3    # "paddingRight":Z
    .restart local v5    # "result":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {v5, v6, v2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    #@67
    goto :goto_2
.end method

.method private static startsWithMinusSign(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "minusSign"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2096
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v1

    #@5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v2

    #@9
    if-ge v1, v2, :cond_0

    #@b
    .line 2097
    return v3

    #@c
    .line 2100
    :cond_0
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    if-ge v0, v1, :cond_2

    #@13
    .line 2101
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v1

    #@17
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@1a
    move-result v2

    #@1b
    if-eq v1, v2, :cond_1

    #@1d
    .line 2102
    return v3

    #@1e
    .line 2100
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 2106
    :cond_2
    const/4 v1, 0x1

    #@22
    return v1
.end method

.method private to12Hour(I)I
    .locals 0
    .param p1, "hour"    # I

    #@0
    .prologue
    .line 1974
    if-nez p1, :cond_0

    #@2
    const/16 p1, 0xc

    #@4
    .end local p1    # "hour":I
    :cond_0
    return p1
.end method

.method private toStringBuilder(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1658
    instance-of v0, p1, Ljava/lang/StringBuilder;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Ljava/lang/StringBuilder;

    #@6
    .end local p1    # "cs":Ljava/lang/CharSequence;
    :goto_0
    return-object p1

    #@7
    .restart local p1    # "cs":Ljava/lang/CharSequence;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@c
    move-object p1, v0

    #@d
    goto :goto_0
.end method

.method private transform(Ljava/util/Formatter$FormatToken;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "token"    # Ljava/util/Formatter$FormatToken;
    .param p2, "argument"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1408
    iput-object p1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@3
    .line 1409
    iput-object p2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@5
    .line 1415
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->isDefault()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 1416
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    #@e
    move-result v3

    #@f
    sparse-switch v3, :sswitch_data_0

    #@12
    .line 1442
    :cond_0
    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@14
    iget-object v4, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@16
    invoke-virtual {v3, v4}, Ljava/util/Formatter$FormatToken;->checkFlags(Ljava/lang/Object;)V

    #@19
    .line 1444
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    #@1c
    move-result v3

    #@1d
    sparse-switch v3, :sswitch_data_1

    #@20
    .line 1477
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    #@23
    move-result-object v3

    #@24
    throw v3

    #@25
    .line 1418
    :sswitch_0
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@27
    if-nez v3, :cond_1

    #@29
    .line 1419
    const-string/jumbo v3, "null"

    #@2c
    return-object v3

    #@2d
    .line 1420
    :cond_1
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@2f
    instance-of v3, v3, Ljava/util/Formattable;

    #@31
    if-nez v3, :cond_0

    #@33
    .line 1421
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@35
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    return-object v3

    #@3a
    .line 1425
    :sswitch_1
    iget-object v3, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@3c
    iget-char v3, v3, Llibcore/icu/LocaleData;->zeroDigit:C

    #@3e
    const/16 v4, 0x30

    #@40
    if-eq v3, v4, :cond_5

    #@42
    const/4 v0, 0x1

    #@43
    .line 1426
    .local v0, "needLocalizedDigits":Z
    :goto_0
    iget-object v3, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    #@45
    instance-of v3, v3, Ljava/lang/StringBuilder;

    #@47
    if-eqz v3, :cond_2

    #@49
    if-eqz v0, :cond_6

    #@4b
    .line 1435
    :cond_2
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@4d
    instance-of v3, v3, Ljava/lang/Integer;

    #@4f
    if-nez v3, :cond_3

    #@51
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@53
    instance-of v3, v3, Ljava/lang/Long;

    #@55
    if-nez v3, :cond_3

    #@57
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@59
    instance-of v3, v3, Ljava/lang/Short;

    #@5b
    if-nez v3, :cond_3

    #@5d
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@5f
    instance-of v3, v3, Ljava/lang/Byte;

    #@61
    if-eqz v3, :cond_0

    #@63
    .line 1436
    :cond_3
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@65
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    .line 1437
    .local v2, "result":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@6b
    invoke-direct {p0, v2}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@6e
    move-result-object v2

    #@6f
    .end local v2    # "result":Ljava/lang/String;
    :cond_4
    return-object v2

    #@70
    .line 1425
    .end local v0    # "needLocalizedDigits":Z
    :cond_5
    const/4 v0, 0x0

    #@71
    .restart local v0    # "needLocalizedDigits":Z
    goto :goto_0

    #@72
    .line 1427
    :cond_6
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@74
    instance-of v3, v3, Ljava/lang/Integer;

    #@76
    if-nez v3, :cond_7

    #@78
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@7a
    instance-of v3, v3, Ljava/lang/Short;

    #@7c
    if-nez v3, :cond_7

    #@7e
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@80
    instance-of v3, v3, Ljava/lang/Byte;

    #@82
    if-eqz v3, :cond_8

    #@84
    .line 1428
    :cond_7
    iget-object v3, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    #@86
    check-cast v3, Ljava/lang/StringBuilder;

    #@88
    iget-object v4, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@8a
    check-cast v4, Ljava/lang/Number;

    #@8c
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    #@8f
    move-result v4

    #@90
    invoke-static {v3, v4}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    #@93
    .line 1429
    return-object v6

    #@94
    .line 1430
    :cond_8
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@96
    instance-of v3, v3, Ljava/lang/Long;

    #@98
    if-eqz v3, :cond_2

    #@9a
    .line 1431
    iget-object v3, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    #@9c
    check-cast v3, Ljava/lang/StringBuilder;

    #@9e
    iget-object v4, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@a0
    check-cast v4, Ljava/lang/Long;

    #@a2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@a5
    move-result-wide v4

    #@a6
    invoke-static {v3, v4, v5}, Ljava/lang/IntegralToString;->appendLong(Ljava/lang/AbstractStringBuilder;J)V

    #@a9
    .line 1432
    return-object v6

    #@aa
    .line 1446
    .end local v0    # "needLocalizedDigits":Z
    :sswitch_2
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromBoolean()Ljava/lang/CharSequence;

    #@ad
    move-result-object v1

    #@ae
    .line 1480
    .local v1, "result":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {p1}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    #@b1
    move-result v3

    #@b2
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    #@b5
    move-result v3

    #@b6
    if-eqz v3, :cond_9

    #@b8
    .line 1481
    if-eqz v1, :cond_9

    #@ba
    .line 1482
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@bd
    move-result-object v3

    #@be
    iget-object v4, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@c0
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@c3
    move-result-object v1

    #@c4
    .line 1485
    :cond_9
    return-object v1

    #@c5
    .line 1449
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_3
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromHashCode()Ljava/lang/CharSequence;

    #@c8
    move-result-object v1

    #@c9
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_1

    #@ca
    .line 1452
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_4
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromString()Ljava/lang/CharSequence;

    #@cd
    move-result-object v1

    #@ce
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_1

    #@cf
    .line 1455
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_5
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromCharacter()Ljava/lang/CharSequence;

    #@d2
    move-result-object v1

    #@d3
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_1

    #@d4
    .line 1458
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_6
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@d6
    if-eqz v3, :cond_a

    #@d8
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@da
    instance-of v3, v3, Ljava/math/BigInteger;

    #@dc
    if-eqz v3, :cond_b

    #@de
    .line 1459
    :cond_a
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromBigInteger()Ljava/lang/CharSequence;

    #@e1
    move-result-object v1

    #@e2
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_1

    #@e3
    .line 1461
    .end local v1    # "result":Ljava/lang/CharSequence;
    :cond_b
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromInteger()Ljava/lang/CharSequence;

    #@e6
    move-result-object v1

    #@e7
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_1

    #@e8
    .line 1465
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_7
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromFloat()Ljava/lang/CharSequence;

    #@eb
    move-result-object v1

    #@ec
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_1

    #@ed
    .line 1468
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_8
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromPercent()Ljava/lang/CharSequence;

    #@f0
    move-result-object v1

    #@f1
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_1

    #@f2
    .line 1471
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_9
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@f5
    move-result-object v1

    #@f6
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_1

    #@f7
    .line 1474
    .end local v1    # "result":Ljava/lang/CharSequence;
    :sswitch_a
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromDateTime()Ljava/lang/CharSequence;

    #@fa
    move-result-object v1

    #@fb
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_1

    #@fc
    .line 1416
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch

    #@106
    .line 1444
    :sswitch_data_1
    .sparse-switch
        0x25 -> :sswitch_8
        0x41 -> :sswitch_7
        0x42 -> :sswitch_2
        0x43 -> :sswitch_5
        0x45 -> :sswitch_7
        0x47 -> :sswitch_7
        0x48 -> :sswitch_3
        0x53 -> :sswitch_4
        0x54 -> :sswitch_a
        0x58 -> :sswitch_6
        0x61 -> :sswitch_7
        0x62 -> :sswitch_2
        0x63 -> :sswitch_5
        0x64 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_7
        0x67 -> :sswitch_7
        0x68 -> :sswitch_3
        0x6e -> :sswitch_9
        0x6f -> :sswitch_6
        0x73 -> :sswitch_4
        0x74 -> :sswitch_a
        0x78 -> :sswitch_6
    .end sparse-switch
.end method

.method private transformA(Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 2243
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@2
    instance-of v5, v5, Ljava/lang/Float;

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 2244
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@8
    check-cast v5, Ljava/lang/Float;

    #@a
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    #@d
    move-result v5

    #@e
    invoke-static {v5}, Ljava/lang/Float;->toHexString(F)Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 2251
    :goto_0
    iget-object v5, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@17
    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    #@1a
    move-result v5

    #@1b
    if-nez v5, :cond_2

    #@1d
    .line 2252
    return-void

    #@1e
    .line 2245
    :cond_0
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@20
    instance-of v5, v5, Ljava/lang/Double;

    #@22
    if-eqz v5, :cond_1

    #@24
    .line 2246
    iget-object v5, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@26
    check-cast v5, Ljava/lang/Double;

    #@28
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    #@2b
    move-result-wide v6

    #@2c
    invoke-static {v6, v7}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    goto :goto_0

    #@34
    .line 2248
    :cond_1
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    #@37
    move-result-object v5

    #@38
    throw v5

    #@39
    .line 2255
    :cond_2
    iget-object v5, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@3b
    invoke-virtual {v5}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    #@3e
    move-result v3

    #@3f
    .line 2256
    .local v3, "precision":I
    if-nez v3, :cond_3

    #@41
    .line 2257
    const/4 v3, 0x1

    #@42
    .line 2259
    :cond_3
    const-string/jumbo v5, "."

    #@45
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@48
    move-result v5

    #@49
    add-int/lit8 v1, v5, 0x1

    #@4b
    .line 2260
    .local v1, "indexOfFirstFractionalDigit":I
    const-string/jumbo v5, "p"

    #@4e
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@51
    move-result v2

    #@52
    .line 2261
    .local v2, "indexOfP":I
    sub-int v0, v2, v1

    #@54
    .line 2263
    .local v0, "fractionalLength":I
    if-ne v0, v3, :cond_4

    #@56
    .line 2264
    return-void

    #@57
    .line 2267
    :cond_4
    if-ge v0, v3, :cond_5

    #@59
    .line 2268
    sub-int v5, v3, v0

    #@5b
    new-array v4, v5, [C

    #@5d
    .line 2269
    .local v4, "zeros":[C
    const/16 v5, 0x30

    #@5f
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([CC)V

    #@62
    .line 2270
    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    #@65
    .line 2271
    return-void

    #@66
    .line 2273
    .end local v4    # "zeros":[C
    :cond_5
    add-int v5, v1, v3

    #@68
    invoke-virtual {p1, v5, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@6b
    .line 2242
    return-void
.end method

.method private transformE(Ljava/lang/StringBuilder;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2111
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@3
    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    #@6
    move-result v5

    #@7
    .line 2112
    .local v5, "precision":I
    const-string/jumbo v4, "0E+00"

    #@a
    .line 2113
    .local v4, "pattern":Ljava/lang/String;
    if-lez v5, :cond_0

    #@c
    .line 2114
    new-instance v6, Ljava/lang/StringBuilder;

    #@e
    const-string/jumbo v8, "0."

    #@11
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    .line 2115
    .local v6, "sb":Ljava/lang/StringBuilder;
    new-array v7, v5, [C

    #@16
    .line 2116
    .local v7, "zeros":[C
    const/16 v8, 0x30

    #@18
    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([CC)V

    #@1b
    .line 2117
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@1e
    .line 2118
    const-string/jumbo v8, "E+00"

    #@21
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 2119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    .line 2122
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "zeros":[C
    :cond_0
    invoke-direct {p0, v4}, Ljava/util/Formatter;->getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    #@2b
    move-result-object v3

    #@2c
    .line 2124
    .local v3, "nf":Llibcore/icu/NativeDecimalFormat;
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@2e
    instance-of v8, v8, Ljava/math/BigDecimal;

    #@30
    if-eqz v8, :cond_2

    #@32
    .line 2125
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@34
    check-cast v8, Ljava/math/BigDecimal;

    #@36
    invoke-virtual {v3, v8, v10}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    #@39
    move-result-object v0

    #@3a
    .line 2130
    .local v0, "chars":[C
    :goto_0
    const/4 v1, 0x0

    #@3b
    .local v1, "i":I
    :goto_1
    array-length v8, v0

    #@3c
    if-ge v1, v8, :cond_3

    #@3e
    .line 2131
    aget-char v8, v0, v1

    #@40
    const/16 v9, 0x45

    #@42
    if-ne v8, v9, :cond_1

    #@44
    .line 2132
    const/16 v8, 0x65

    #@46
    aput-char v8, v0, v1

    #@48
    .line 2130
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 2127
    .end local v0    # "chars":[C
    .end local v1    # "i":I
    :cond_2
    iget-object v8, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@4d
    check-cast v8, Ljava/lang/Number;

    #@4f
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    #@52
    move-result-wide v8

    #@53
    invoke-virtual {v3, v8, v9, v10}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    #@56
    move-result-object v0

    #@57
    .restart local v0    # "chars":[C
    goto :goto_0

    #@58
    .line 2135
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@5b
    .line 2137
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@5d
    iget-boolean v8, v8, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    #@5f
    if-eqz v8, :cond_4

    #@61
    if-nez v5, :cond_4

    #@63
    .line 2138
    const-string/jumbo v8, "e"

    #@66
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@69
    move-result v2

    #@6a
    .line 2139
    .local v2, "indexOfE":I
    iget-object v8, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@6c
    iget-char v8, v8, Llibcore/icu/LocaleData;->decimalSeparator:C

    #@6e
    invoke-virtual {p1, v2, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@71
    .line 2109
    .end local v2    # "indexOfE":I
    :cond_4
    return-void
.end method

.method private transformF(Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/16 v7, 0x30

    #@3
    .line 2209
    const-string/jumbo v2, "0.000000"

    #@6
    .line 2210
    .local v2, "pattern":Ljava/lang/String;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@8
    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    #@b
    move-result v4

    #@c
    .line 2211
    .local v4, "precision":I
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@e
    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagComma:Z

    #@10
    if-nez v6, :cond_0

    #@12
    const/4 v6, 0x6

    #@13
    if-eq v4, v6, :cond_3

    #@15
    .line 2212
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    .line 2213
    .local v3, "patternBuilder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@1c
    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagComma:Z

    #@1e
    if-eqz v6, :cond_1

    #@20
    .line 2214
    const/16 v6, 0x2c

    #@22
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 2216
    const/4 v6, 0x2

    #@26
    new-array v5, v6, [C

    #@28
    .line 2217
    .local v5, "sharps":[C
    const/16 v6, 0x23

    #@2a
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([CC)V

    #@2d
    .line 2218
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@30
    .line 2220
    .end local v5    # "sharps":[C
    :cond_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    .line 2221
    if-lez v4, :cond_2

    #@35
    .line 2222
    const/16 v6, 0x2e

    #@37
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    .line 2223
    const/4 v0, 0x0

    #@3b
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    #@3d
    .line 2224
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 2223
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_0

    #@43
    .line 2227
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    .line 2230
    .end local v3    # "patternBuilder":Ljava/lang/StringBuilder;
    :cond_3
    invoke-direct {p0, v2}, Ljava/util/Formatter;->getDecimalFormat(Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;

    #@4a
    move-result-object v1

    #@4b
    .line 2231
    .local v1, "nf":Llibcore/icu/NativeDecimalFormat;
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@4d
    instance-of v6, v6, Ljava/math/BigDecimal;

    #@4f
    if-eqz v6, :cond_5

    #@51
    .line 2232
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@53
    check-cast v6, Ljava/math/BigDecimal;

    #@55
    invoke-virtual {v1, v6, v8}, Llibcore/icu/NativeDecimalFormat;->formatBigDecimal(Ljava/math/BigDecimal;Ljava/text/FieldPosition;)[C

    #@58
    move-result-object v6

    #@59
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@5c
    .line 2237
    :goto_1
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@5e
    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    #@60
    if-eqz v6, :cond_4

    #@62
    if-nez v4, :cond_4

    #@64
    .line 2238
    iget-object v6, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@66
    iget-char v6, v6, Llibcore/icu/LocaleData;->decimalSeparator:C

    #@68
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6b
    .line 2207
    :cond_4
    return-void

    #@6c
    .line 2234
    :cond_5
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@6e
    check-cast v6, Ljava/lang/Number;

    #@70
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    #@73
    move-result-wide v6

    #@74
    invoke-virtual {v1, v6, v7, v8}, Llibcore/icu/NativeDecimalFormat;->formatDouble(DLjava/text/FieldPosition;)[C

    #@77
    move-result-object v6

    #@78
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@7b
    goto :goto_1
.end method

.method private transformFromBigInteger()Ljava/lang/CharSequence;
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x6f

    #@2
    const/4 v7, 0x0

    #@3
    .line 1752
    const/4 v5, 0x0

    #@4
    .line 1753
    .local v5, "startIndex":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 1754
    .local v4, "result":Ljava/lang/StringBuilder;
    iget-object v0, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@b
    check-cast v0, Ljava/math/BigInteger;

    #@d
    .line 1755
    .local v0, "bigInt":Ljava/math/BigInteger;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@f
    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    #@12
    move-result v1

    #@13
    .line 1757
    .local v1, "currentConversionType":C
    if-nez v0, :cond_0

    #@15
    .line 1758
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    #@18
    move-result-object v6

    #@19
    return-object v6

    #@1a
    .line 1761
    :cond_0
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    #@1c
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@1f
    move-result v6

    #@20
    if-gez v6, :cond_5

    #@22
    const/4 v3, 0x1

    #@23
    .line 1763
    .local v3, "isNegative":Z
    :goto_0
    const/16 v6, 0x64

    #@25
    if-ne v1, v6, :cond_6

    #@27
    .line 1764
    const/16 v6, 0xa

    #@29
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 1765
    .local v2, "digits":Ljava/lang/CharSequence;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@2f
    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagComma:Z

    #@31
    if-eqz v6, :cond_1

    #@33
    .line 1766
    invoke-direct {p0, v2}, Ljava/util/Formatter;->insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@36
    move-result-object v2

    #@37
    .line 1768
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3a
    .line 1776
    .end local v2    # "digits":Ljava/lang/CharSequence;
    :goto_1
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@3c
    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    #@3e
    if-eqz v6, :cond_2

    #@40
    .line 1777
    if-eqz v3, :cond_8

    #@42
    const/4 v5, 0x1

    #@43
    .line 1778
    :goto_2
    if-ne v1, v8, :cond_9

    #@45
    .line 1779
    const-string/jumbo v6, "0"

    #@48
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 1780
    add-int/lit8 v5, v5, 0x1

    #@4d
    .line 1787
    :cond_2
    :goto_3
    if-nez v3, :cond_4

    #@4f
    .line 1788
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@51
    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    #@53
    if-eqz v6, :cond_3

    #@55
    .line 1789
    const/16 v6, 0x2b

    #@57
    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@5a
    .line 1790
    add-int/lit8 v5, v5, 0x1

    #@5c
    .line 1792
    :cond_3
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@5e
    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    #@60
    if-eqz v6, :cond_4

    #@62
    .line 1793
    const/16 v6, 0x20

    #@64
    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@67
    .line 1794
    add-int/lit8 v5, v5, 0x1

    #@69
    .line 1799
    :cond_4
    if-eqz v3, :cond_b

    #@6b
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@6d
    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    #@6f
    if-eqz v6, :cond_b

    #@71
    .line 1800
    invoke-direct {p0, v4}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v6

    #@75
    return-object v6

    #@76
    .line 1761
    .end local v3    # "isNegative":Z
    :cond_5
    const/4 v3, 0x0

    #@77
    .restart local v3    # "isNegative":Z
    goto :goto_0

    #@78
    .line 1769
    :cond_6
    if-ne v1, v8, :cond_7

    #@7a
    .line 1771
    const/16 v6, 0x8

    #@7c
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@7f
    move-result-object v6

    #@80
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    goto :goto_1

    #@84
    .line 1774
    :cond_7
    const/16 v6, 0x10

    #@86
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    #@89
    move-result-object v6

    #@8a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    goto :goto_1

    #@8e
    .line 1777
    :cond_8
    const/4 v5, 0x0

    #@8f
    goto :goto_2

    #@90
    .line 1781
    :cond_9
    const/16 v6, 0x78

    #@92
    if-eq v1, v6, :cond_a

    #@94
    const/16 v6, 0x58

    #@96
    if-ne v1, v6, :cond_2

    #@98
    .line 1782
    :cond_a
    const-string/jumbo v6, "0x"

    #@9b
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    .line 1783
    add-int/lit8 v5, v5, 0x2

    #@a0
    goto :goto_3

    #@a1
    .line 1802
    :cond_b
    if-eqz v3, :cond_c

    #@a3
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@a5
    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagZero:Z

    #@a7
    if-eqz v6, :cond_c

    #@a9
    .line 1803
    add-int/lit8 v5, v5, 0x1

    #@ab
    .line 1805
    :cond_c
    invoke-direct {p0, v4, v5}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    #@ae
    move-result-object v6

    #@af
    return-object v6
.end method

.method private transformFromBoolean()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 1544
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@2
    instance-of v1, v1, Ljava/lang/Boolean;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1545
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 1551
    .local v0, "result":Ljava/lang/CharSequence;
    :goto_0
    const/4 v1, 0x0

    #@d
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 1546
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@14
    if-nez v1, :cond_1

    #@16
    .line 1547
    const-string/jumbo v0, "false"

    #@19
    .restart local v0    # "result":Ljava/lang/CharSequence;
    goto :goto_0

    #@1a
    .line 1549
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_1
    const-string/jumbo v0, "true"

    #@1d
    .restart local v0    # "result":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private transformFromCharacter()Ljava/lang/CharSequence;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1589
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1590
    const-string/jumbo v2, "null"

    #@8
    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 1592
    :cond_0
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@f
    instance-of v2, v2, Ljava/lang/Character;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 1593
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@15
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    #@1c
    move-result-object v2

    #@1d
    return-object v2

    #@1e
    .line 1594
    :cond_1
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@20
    instance-of v2, v2, Ljava/lang/Byte;

    #@22
    if-nez v2, :cond_2

    #@24
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@26
    instance-of v2, v2, Ljava/lang/Short;

    #@28
    if-nez v2, :cond_2

    #@2a
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@2c
    instance-of v2, v2, Ljava/lang/Integer;

    #@2e
    if-eqz v2, :cond_5

    #@30
    .line 1595
    :cond_2
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@32
    check-cast v2, Ljava/lang/Number;

    #@34
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    #@37
    move-result v0

    #@38
    .line 1596
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    #@3b
    move-result v2

    #@3c
    if-nez v2, :cond_3

    #@3e
    .line 1597
    new-instance v2, Ljava/util/IllegalFormatCodePointException;

    #@40
    invoke-direct {v2, v0}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    #@43
    throw v2

    #@44
    .line 1599
    :cond_3
    const/high16 v2, 0x10000

    #@46
    if-ge v0, v2, :cond_4

    #@48
    .line 1600
    int-to-char v2, v0

    #@49
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    .line 1602
    .local v1, "result":Ljava/lang/CharSequence;
    :goto_0
    invoke-direct {p0, v1, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    #@50
    move-result-object v2

    #@51
    return-object v2

    #@52
    .line 1601
    .end local v1    # "result":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    #@55
    move-result-object v2

    #@56
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_0

    #@5b
    .line 1604
    .end local v0    # "codePoint":I
    .end local v1    # "result":Ljava/lang/CharSequence;
    :cond_5
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    #@5e
    move-result-object v2

    #@5f
    throw v2
.end method

.method private transformFromDateTime()Ljava/lang/CharSequence;
    .locals 6

    #@0
    .prologue
    .line 1809
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 1810
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    #@7
    move-result-object v3

    #@8
    return-object v3

    #@9
    .line 1814
    :cond_0
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@b
    instance-of v3, v3, Ljava/util/Calendar;

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 1815
    iget-object v0, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@11
    check-cast v0, Ljava/util/Calendar;

    #@13
    .line 1829
    .local v0, "calendar":Ljava/util/Calendar;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    .line 1830
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@1a
    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getDateSuffix()C

    #@1d
    move-result v3

    #@1e
    invoke-direct {p0, v2, v3, v0}, Ljava/util/Formatter;->appendT(Ljava/lang/StringBuilder;CLjava/util/Calendar;)Z

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_4

    #@24
    .line 1831
    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@26
    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    #@29
    move-result-object v3

    #@2a
    throw v3

    #@2b
    .line 1817
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "result":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v1, 0x0

    #@2c
    .line 1818
    .local v1, "date":Ljava/util/Date;
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@2e
    instance-of v3, v3, Ljava/lang/Long;

    #@30
    if-eqz v3, :cond_2

    #@32
    .line 1819
    new-instance v1, Ljava/util/Date;

    #@34
    .end local v1    # "date":Ljava/util/Date;
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@36
    check-cast v3, Ljava/lang/Long;

    #@38
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@3b
    move-result-wide v4

    #@3c
    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@3f
    .line 1825
    .local v1, "date":Ljava/util/Date;
    :goto_1
    iget-object v3, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@41
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    #@44
    move-result-object v0

    #@45
    .line 1826
    .restart local v0    # "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@48
    goto :goto_0

    #@49
    .line 1820
    .end local v0    # "calendar":Ljava/util/Calendar;
    .local v1, "date":Ljava/util/Date;
    :cond_2
    iget-object v3, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@4b
    instance-of v3, v3, Ljava/util/Date;

    #@4d
    if-eqz v3, :cond_3

    #@4f
    .line 1821
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@51
    .end local v1    # "date":Ljava/util/Date;
    check-cast v1, Ljava/util/Date;

    #@53
    .local v1, "date":Ljava/util/Date;
    goto :goto_1

    #@54
    .line 1823
    .local v1, "date":Ljava/util/Date;
    :cond_3
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    #@57
    move-result-object v3

    #@58
    throw v3

    #@59
    .line 1833
    .end local v1    # "date":Ljava/util/Date;
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v2    # "result":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v3, 0x0

    #@5a
    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    #@5d
    move-result-object v3

    #@5e
    return-object v3
.end method

.method private transformFromFloat()Ljava/lang/CharSequence;
    .locals 14

    #@0
    .prologue
    const/16 v13, 0x61

    #@2
    const/16 v12, 0x41

    #@4
    const/16 v11, 0x2b

    #@6
    const/4 v10, 0x0

    #@7
    .line 2026
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@9
    if-nez v7, :cond_0

    #@b
    .line 2027
    invoke-direct {p0}, Ljava/util/Formatter;->transformFromNull()Ljava/lang/CharSequence;

    #@e
    move-result-object v7

    #@f
    return-object v7

    #@10
    .line 2028
    :cond_0
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@12
    instance-of v7, v7, Ljava/lang/Float;

    #@14
    if-nez v7, :cond_1

    #@16
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@18
    instance-of v7, v7, Ljava/lang/Double;

    #@1a
    if-eqz v7, :cond_6

    #@1c
    .line 2029
    :cond_1
    iget-object v4, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@1e
    check-cast v4, Ljava/lang/Number;

    #@20
    .line 2030
    .local v4, "number":Ljava/lang/Number;
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    #@23
    move-result-wide v2

    #@24
    .line 2031
    .local v2, "d":D
    cmpl-double v7, v2, v2

    #@26
    if-nez v7, :cond_2

    #@28
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@2a
    cmpl-double v7, v2, v8

    #@2c
    if-nez v7, :cond_3

    #@2e
    .line 2032
    :cond_2
    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->transformFromSpecialNumber(D)Ljava/lang/CharSequence;

    #@31
    move-result-object v7

    #@32
    return-object v7

    #@33
    .line 2031
    :cond_3
    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@35
    cmpl-double v7, v2, v8

    #@37
    if-eqz v7, :cond_2

    #@39
    .line 2041
    .end local v2    # "d":D
    .end local v4    # "number":Ljava/lang/Number;
    :cond_4
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@3b
    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    #@3e
    move-result v0

    #@3f
    .line 2042
    .local v0, "conversionType":C
    if-eq v0, v13, :cond_5

    #@41
    if-eq v0, v12, :cond_5

    #@43
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@45
    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->isPrecisionSet()Z

    #@48
    move-result v7

    #@49
    if-eqz v7, :cond_7

    #@4b
    .line 2046
    :cond_5
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    .line 2047
    .local v5, "result":Ljava/lang/StringBuilder;
    sparse-switch v0, :sswitch_data_0

    #@53
    .line 2062
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@55
    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    #@58
    move-result-object v7

    #@59
    throw v7

    #@5a
    .line 2034
    .end local v0    # "conversionType":C
    .end local v5    # "result":Ljava/lang/StringBuilder;
    :cond_6
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@5c
    instance-of v7, v7, Ljava/math/BigDecimal;

    #@5e
    if-nez v7, :cond_4

    #@60
    .line 2038
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    #@63
    move-result-object v7

    #@64
    throw v7

    #@65
    .line 2043
    .restart local v0    # "conversionType":C
    :cond_7
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@67
    const/4 v8, 0x6

    #@68
    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    #@6b
    goto :goto_0

    #@6c
    .line 2049
    .restart local v5    # "result":Ljava/lang/StringBuilder;
    :sswitch_0
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformA(Ljava/lang/StringBuilder;)V

    #@6f
    .line 2065
    :goto_1
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@71
    const/4 v8, -0x1

    #@72
    invoke-virtual {v7, v8}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    #@75
    .line 2067
    const/4 v6, 0x0

    #@76
    .line 2068
    .local v6, "startIndex":I
    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@78
    iget-object v7, v7, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    #@7a
    invoke-static {v5, v7}, Ljava/util/Formatter;->startsWithMinusSign(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    #@7d
    move-result v7

    #@7e
    if-eqz v7, :cond_8

    #@80
    .line 2069
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@82
    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    #@84
    if-eqz v7, :cond_a

    #@86
    .line 2070
    invoke-direct {p0, v5}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v7

    #@8a
    return-object v7

    #@8b
    .line 2052
    .end local v6    # "startIndex":I
    :sswitch_1
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformE(Ljava/lang/StringBuilder;)V

    #@8e
    goto :goto_1

    #@8f
    .line 2055
    :sswitch_2
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformF(Ljava/lang/StringBuilder;)V

    #@92
    goto :goto_1

    #@93
    .line 2059
    :sswitch_3
    invoke-direct {p0, v5}, Ljava/util/Formatter;->transformG(Ljava/lang/StringBuilder;)V

    #@96
    goto :goto_1

    #@97
    .line 2073
    .restart local v6    # "startIndex":I
    :cond_8
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@99
    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    #@9b
    if-eqz v7, :cond_9

    #@9d
    .line 2074
    const/16 v7, 0x20

    #@9f
    invoke-virtual {v5, v10, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@a2
    .line 2075
    const/4 v6, 0x1

    #@a3
    .line 2077
    :cond_9
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@a5
    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    #@a7
    if-eqz v7, :cond_a

    #@a9
    .line 2078
    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@ac
    .line 2079
    add-int/lit8 v6, v6, 0x1

    #@ae
    .line 2083
    :cond_a
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    #@b1
    move-result v1

    #@b2
    .line 2084
    .local v1, "firstChar":C
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@b4
    iget-boolean v7, v7, Ljava/util/Formatter$FormatToken;->flagZero:Z

    #@b6
    if-eqz v7, :cond_c

    #@b8
    if-eq v1, v11, :cond_b

    #@ba
    .line 2085
    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@bc
    iget-object v7, v7, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    #@be
    invoke-static {v5, v7}, Ljava/util/Formatter;->startsWithMinusSign(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    #@c1
    move-result v7

    #@c2
    .line 2084
    if-eqz v7, :cond_c

    #@c4
    .line 2086
    :cond_b
    iget-object v7, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@c6
    iget-object v7, v7, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    #@c8
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@cb
    move-result v6

    #@cc
    .line 2089
    :cond_c
    if-eq v0, v13, :cond_d

    #@ce
    if-ne v0, v12, :cond_e

    #@d0
    .line 2090
    :cond_d
    add-int/lit8 v6, v6, 0x2

    #@d2
    .line 2092
    :cond_e
    invoke-direct {p0, v5, v6}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    #@d5
    move-result-object v7

    #@d6
    return-object v7

    #@d7
    .line 2047
    nop

    #@d8
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x45 -> :sswitch_1
        0x47 -> :sswitch_3
        0x61 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
    .end sparse-switch
.end method

.method private transformFromHashCode()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 1556
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1557
    const-string/jumbo v0, "null"

    #@7
    .line 1561
    .local v0, "result":Ljava/lang/CharSequence;
    :goto_0
    const/4 v1, 0x0

    #@8
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 1559
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@12
    move-result v1

    #@13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .restart local v0    # "result":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private transformFromInteger()Ljava/lang/CharSequence;
    .locals 10

    #@0
    .prologue
    const/16 v9, 0x6f

    #@2
    const/4 v8, 0x0

    #@3
    .line 1675
    const/4 v3, 0x0

    #@4
    .line 1676
    .local v3, "startIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 1677
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@b
    invoke-virtual {v6}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    #@e
    move-result v0

    #@f
    .line 1680
    .local v0, "currentConversionType":C
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@11
    instance-of v6, v6, Ljava/lang/Long;

    #@13
    if-eqz v6, :cond_3

    #@15
    .line 1681
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@17
    check-cast v6, Ljava/lang/Long;

    #@19
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@1c
    move-result-wide v4

    #@1d
    .line 1692
    .local v4, "value":J
    :goto_0
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@1f
    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    #@21
    if-eqz v6, :cond_0

    #@23
    .line 1693
    if-ne v0, v9, :cond_7

    #@25
    .line 1694
    const-string/jumbo v6, "0"

    #@28
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 1695
    const/4 v3, 0x1

    #@2c
    .line 1702
    :cond_0
    :goto_1
    const/16 v6, 0x64

    #@2e
    if-ne v0, v6, :cond_c

    #@30
    .line 1703
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 1704
    .local v1, "digits":Ljava/lang/CharSequence;
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@36
    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagComma:Z

    #@38
    if-eqz v6, :cond_1

    #@3a
    .line 1705
    invoke-direct {p0, v1}, Ljava/util/Formatter;->insertGrouping(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3d
    move-result-object v1

    #@3e
    .line 1707
    :cond_1
    iget-object v6, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@40
    iget-char v6, v6, Llibcore/icu/LocaleData;->zeroDigit:C

    #@42
    const/16 v7, 0x30

    #@44
    if-eq v6, v7, :cond_2

    #@46
    .line 1708
    invoke-direct {p0, v1}, Ljava/util/Formatter;->localizeDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@49
    move-result-object v1

    #@4a
    .line 1710
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@4d
    .line 1712
    const-wide/16 v6, 0x0

    #@4f
    cmp-long v6, v4, v6

    #@51
    if-gez v6, :cond_a

    #@53
    .line 1713
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@55
    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    #@57
    if-eqz v6, :cond_8

    #@59
    .line 1714
    invoke-direct {p0, v2}, Ljava/util/Formatter;->wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    return-object v6

    #@5e
    .line 1682
    .end local v1    # "digits":Ljava/lang/CharSequence;
    .end local v4    # "value":J
    :cond_3
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@60
    instance-of v6, v6, Ljava/lang/Integer;

    #@62
    if-eqz v6, :cond_4

    #@64
    .line 1683
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@66
    check-cast v6, Ljava/lang/Integer;

    #@68
    invoke-virtual {v6}, Ljava/lang/Integer;->longValue()J

    #@6b
    move-result-wide v4

    #@6c
    .restart local v4    # "value":J
    goto :goto_0

    #@6d
    .line 1684
    .end local v4    # "value":J
    :cond_4
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@6f
    instance-of v6, v6, Ljava/lang/Short;

    #@71
    if-eqz v6, :cond_5

    #@73
    .line 1685
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@75
    check-cast v6, Ljava/lang/Short;

    #@77
    invoke-virtual {v6}, Ljava/lang/Short;->longValue()J

    #@7a
    move-result-wide v4

    #@7b
    .restart local v4    # "value":J
    goto :goto_0

    #@7c
    .line 1686
    .end local v4    # "value":J
    :cond_5
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@7e
    instance-of v6, v6, Ljava/lang/Byte;

    #@80
    if-eqz v6, :cond_6

    #@82
    .line 1687
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@84
    check-cast v6, Ljava/lang/Byte;

    #@86
    invoke-virtual {v6}, Ljava/lang/Byte;->longValue()J

    #@89
    move-result-wide v4

    #@8a
    .restart local v4    # "value":J
    goto :goto_0

    #@8b
    .line 1689
    .end local v4    # "value":J
    :cond_6
    invoke-direct {p0}, Ljava/util/Formatter;->badArgumentType()Ljava/util/IllegalFormatConversionException;

    #@8e
    move-result-object v6

    #@8f
    throw v6

    #@90
    .line 1697
    .restart local v4    # "value":J
    :cond_7
    const-string/jumbo v6, "0x"

    #@93
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    .line 1698
    const/4 v3, 0x2

    #@97
    goto :goto_1

    #@98
    .line 1715
    .restart local v1    # "digits":Ljava/lang/CharSequence;
    :cond_8
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@9a
    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagZero:Z

    #@9c
    if-eqz v6, :cond_9

    #@9e
    .line 1716
    add-int/lit8 v3, v3, 0x1

    #@a0
    .line 1743
    .end local v1    # "digits":Ljava/lang/CharSequence;
    :cond_9
    :goto_2
    invoke-direct {p0, v2, v3}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    #@a3
    move-result-object v6

    #@a4
    return-object v6

    #@a5
    .line 1719
    .restart local v1    # "digits":Ljava/lang/CharSequence;
    :cond_a
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@a7
    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    #@a9
    if-eqz v6, :cond_b

    #@ab
    .line 1720
    const/16 v6, 0x2b

    #@ad
    invoke-virtual {v2, v8, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@b0
    .line 1721
    add-int/lit8 v3, v3, 0x1

    #@b2
    goto :goto_2

    #@b3
    .line 1722
    :cond_b
    iget-object v6, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@b5
    iget-boolean v6, v6, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    #@b7
    if-eqz v6, :cond_9

    #@b9
    .line 1723
    const/16 v6, 0x20

    #@bb
    invoke-virtual {v2, v8, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@be
    .line 1724
    add-int/lit8 v3, v3, 0x1

    #@c0
    goto :goto_2

    #@c1
    .line 1729
    .end local v1    # "digits":Ljava/lang/CharSequence;
    :cond_c
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@c3
    instance-of v6, v6, Ljava/lang/Byte;

    #@c5
    if-eqz v6, :cond_e

    #@c7
    .line 1730
    const-wide/16 v6, 0xff

    #@c9
    and-long/2addr v4, v6

    #@ca
    .line 1736
    :cond_d
    :goto_3
    if-ne v0, v9, :cond_10

    #@cc
    .line 1737
    invoke-static {v4, v5}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    #@cf
    move-result-object v6

    #@d0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    goto :goto_2

    #@d4
    .line 1731
    :cond_e
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@d6
    instance-of v6, v6, Ljava/lang/Short;

    #@d8
    if-eqz v6, :cond_f

    #@da
    .line 1732
    const-wide/32 v6, 0xffff

    #@dd
    and-long/2addr v4, v6

    #@de
    goto :goto_3

    #@df
    .line 1733
    :cond_f
    iget-object v6, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@e1
    instance-of v6, v6, Ljava/lang/Integer;

    #@e3
    if-eqz v6, :cond_d

    #@e5
    .line 1734
    const-wide v6, 0xffffffffL

    #@ea
    and-long/2addr v4, v6

    #@eb
    goto :goto_3

    #@ec
    .line 1739
    :cond_10
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@ef
    move-result-object v6

    #@f0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    goto :goto_2
.end method

.method private transformFromNull()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1747
    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@3
    iput-boolean v1, v0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    #@5
    .line 1748
    const-string/jumbo v0, "null"

    #@8
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private transformFromPercent()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 1609
    const-string/jumbo v0, "%"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private transformFromSpecialNumber(D)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "d"    # D

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1999
    const/4 v0, 0x0

    #@2
    .line 2000
    .local v0, "source":Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 2001
    const-string/jumbo v0, "NaN"

    #@b
    .line 2020
    .local v0, "source":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@d
    const/4 v2, -0x1

    #@e
    invoke-virtual {v1, v2}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    #@11
    .line 2021
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@13
    iput-boolean v4, v1, Ljava/util/Formatter$FormatToken;->flagZero:Z

    #@15
    .line 2022
    invoke-direct {p0, v0, v4}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    #@18
    move-result-object v1

    #@19
    return-object v1

    #@1a
    .line 2002
    .local v0, "source":Ljava/lang/String;
    :cond_0
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@1c
    cmpl-double v1, p1, v2

    #@1e
    if-nez v1, :cond_3

    #@20
    .line 2003
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@22
    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagPlus:Z

    #@24
    if-eqz v1, :cond_1

    #@26
    .line 2004
    const-string/jumbo v0, "+Infinity"

    #@29
    .local v0, "source":Ljava/lang/String;
    goto :goto_0

    #@2a
    .line 2005
    .local v0, "source":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@2c
    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagSpace:Z

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 2006
    const-string/jumbo v0, " Infinity"

    #@33
    .local v0, "source":Ljava/lang/String;
    goto :goto_0

    #@34
    .line 2008
    .local v0, "source":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "Infinity"

    #@37
    .local v0, "source":Ljava/lang/String;
    goto :goto_0

    #@38
    .line 2010
    .local v0, "source":Ljava/lang/String;
    :cond_3
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@3a
    cmpl-double v1, p1, v2

    #@3c
    if-nez v1, :cond_5

    #@3e
    .line 2011
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@40
    iget-boolean v1, v1, Ljava/util/Formatter$FormatToken;->flagParenthesis:Z

    #@42
    if-eqz v1, :cond_4

    #@44
    .line 2012
    const-string/jumbo v0, "(Infinity)"

    #@47
    .local v0, "source":Ljava/lang/String;
    goto :goto_0

    #@48
    .line 2014
    .local v0, "source":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "-Infinity"

    #@4b
    .local v0, "source":Ljava/lang/String;
    goto :goto_0

    #@4c
    .line 2017
    .local v0, "source":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    #@4d
    return-object v1
.end method

.method private transformFromString()Ljava/lang/CharSequence;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1565
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@3
    instance-of v2, v2, Ljava/util/Formattable;

    #@5
    if-eqz v2, :cond_3

    #@7
    .line 1566
    const/4 v0, 0x0

    #@8
    .line 1567
    .local v0, "flags":I
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@a
    iget-boolean v2, v2, Ljava/util/Formatter$FormatToken;->flagMinus:Z

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 1568
    const/4 v0, 0x1

    #@f
    .line 1570
    :cond_0
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@11
    iget-boolean v2, v2, Ljava/util/Formatter$FormatToken;->flagSharp:Z

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 1571
    or-int/lit8 v0, v0, 0x4

    #@17
    .line 1573
    :cond_1
    iget-object v2, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@19
    invoke-virtual {v2}, Ljava/util/Formatter$FormatToken;->getConversionType()C

    #@1c
    move-result v2

    #@1d
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 1574
    or-int/lit8 v0, v0, 0x2

    #@25
    .line 1576
    :cond_2
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@27
    check-cast v2, Ljava/util/Formattable;

    #@29
    iget-object v3, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@2b
    invoke-virtual {v3}, Ljava/util/Formatter$FormatToken;->getWidth()I

    #@2e
    move-result v3

    #@2f
    .line 1577
    iget-object v4, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@31
    invoke-virtual {v4}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    #@34
    move-result v4

    #@35
    .line 1576
    invoke-interface {v2, p0, v0, v3, v4}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V

    #@38
    .line 1582
    return-object v5

    #@39
    .line 1584
    .end local v0    # "flags":I
    :cond_3
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@3b
    if-eqz v2, :cond_4

    #@3d
    iget-object v2, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@3f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    .line 1585
    .local v1, "result":Ljava/lang/CharSequence;
    :goto_0
    const/4 v2, 0x0

    #@44
    invoke-direct {p0, v1, v2}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    #@47
    move-result-object v2

    #@48
    return-object v2

    #@49
    .line 1584
    .end local v1    # "result":Ljava/lang/CharSequence;
    :cond_4
    const-string/jumbo v1, "null"

    #@4c
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private transformG(Ljava/lang/StringBuilder;)V
    .locals 14
    .param p1, "result"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@2
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    #@4
    .line 2144
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@6
    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    #@9
    move-result v1

    #@a
    .line 2145
    .local v1, "precision":I
    if-nez v1, :cond_0

    #@c
    .line 2146
    const/4 v1, 0x1

    #@d
    .line 2148
    :cond_0
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@f
    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    #@12
    .line 2150
    iget-object v7, p0, Ljava/util/Formatter;->arg:Ljava/lang/Object;

    #@14
    check-cast v7, Ljava/lang/Number;

    #@16
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    #@19
    move-result-wide v2

    #@1a
    .line 2151
    .local v2, "d":D
    const-wide/16 v8, 0x0

    #@1c
    cmpl-double v7, v2, v8

    #@1e
    if-nez v7, :cond_1

    #@20
    .line 2152
    add-int/lit8 v1, v1, -0x1

    #@22
    .line 2153
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@24
    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    #@27
    .line 2154
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformF(Ljava/lang/StringBuilder;)V

    #@2a
    .line 2155
    return-void

    #@2b
    .line 2158
    :cond_1
    const/4 v6, 0x1

    #@2c
    .line 2159
    .local v6, "requireScientificRepresentation":Z
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    #@2f
    move-result-wide v2

    #@30
    .line 2160
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    #@33
    move-result v7

    #@34
    if-eqz v7, :cond_2

    #@36
    .line 2161
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@38
    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    #@3b
    move-result v1

    #@3c
    .line 2162
    add-int/lit8 v1, v1, -0x1

    #@3e
    .line 2163
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@40
    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    #@43
    .line 2164
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformE(Ljava/lang/StringBuilder;)V

    #@46
    .line 2165
    return-void

    #@47
    .line 2167
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    #@49
    new-instance v7, Ljava/math/MathContext;

    #@4b
    invoke-direct {v7, v1}, Ljava/math/MathContext;-><init>(I)V

    #@4e
    invoke-direct {v0, v2, v3, v7}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    #@51
    .line 2168
    .local v0, "b":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    #@54
    move-result-wide v2

    #@55
    .line 2169
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    #@58
    move-result-wide v4

    #@59
    .line 2171
    .local v4, "l":J
    cmpl-double v7, v2, v10

    #@5b
    if-ltz v7, :cond_6

    #@5d
    int-to-double v8, v1

    #@5e
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@61
    move-result-wide v8

    #@62
    cmpg-double v7, v2, v8

    #@64
    if-gez v7, :cond_6

    #@66
    .line 2172
    long-to-double v8, v4

    #@67
    int-to-double v10, v1

    #@68
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@6b
    move-result-wide v10

    #@6c
    cmpg-double v7, v8, v10

    #@6e
    if-gez v7, :cond_5

    #@70
    .line 2173
    const/4 v6, 0x0

    #@71
    .line 2174
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@78
    move-result v7

    #@79
    sub-int/2addr v1, v7

    #@7a
    .line 2175
    if-gez v1, :cond_3

    #@7c
    const/4 v1, 0x0

    #@7d
    .line 2176
    :cond_3
    add-int/lit8 v7, v1, 0x1

    #@7f
    int-to-double v8, v7

    #@80
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@83
    move-result-wide v8

    #@84
    mul-double/2addr v8, v2

    #@85
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    #@88
    move-result-wide v4

    #@89
    .line 2177
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@8c
    move-result-object v7

    #@8d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@90
    move-result v7

    #@91
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@93
    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    #@96
    move-result v8

    #@97
    if-gt v7, v8, :cond_4

    #@99
    .line 2178
    add-int/lit8 v1, v1, 0x1

    #@9b
    .line 2180
    :cond_4
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@9d
    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    #@a0
    .line 2197
    :cond_5
    :goto_0
    if-eqz v6, :cond_8

    #@a2
    .line 2198
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@a4
    invoke-virtual {v7}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    #@a7
    move-result v1

    #@a8
    .line 2199
    add-int/lit8 v1, v1, -0x1

    #@aa
    .line 2200
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@ac
    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    #@af
    .line 2201
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformE(Ljava/lang/StringBuilder;)V

    #@b2
    .line 2143
    :goto_1
    return-void

    #@b3
    .line 2183
    :cond_6
    const/4 v7, 0x4

    #@b4
    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    #@b7
    move-result-object v7

    #@b8
    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    #@bb
    move-result-wide v4

    #@bc
    .line 2184
    const-wide/high16 v8, -0x3ff0000000000000L    # -4.0

    #@be
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@c1
    move-result-wide v8

    #@c2
    cmpl-double v7, v2, v8

    #@c4
    if-ltz v7, :cond_5

    #@c6
    cmpg-double v7, v2, v10

    #@c8
    if-gez v7, :cond_5

    #@ca
    .line 2185
    const/4 v6, 0x0

    #@cb
    .line 2186
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@ce
    move-result-object v7

    #@cf
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@d2
    move-result v7

    #@d3
    rsub-int/lit8 v7, v7, 0x4

    #@d5
    add-int/2addr v1, v7

    #@d6
    .line 2187
    add-int/lit8 v7, v1, 0x1

    #@d8
    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    #@db
    move-result-object v7

    #@dc
    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    #@df
    move-result-wide v4

    #@e0
    .line 2188
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@e3
    move-result-object v7

    #@e4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@e7
    move-result v7

    #@e8
    iget-object v8, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@ea
    invoke-virtual {v8}, Ljava/util/Formatter$FormatToken;->getPrecision()I

    #@ed
    move-result v8

    #@ee
    if-gt v7, v8, :cond_7

    #@f0
    .line 2189
    add-int/lit8 v1, v1, 0x1

    #@f2
    .line 2191
    :cond_7
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    #@f5
    move-result-object v7

    #@f6
    invoke-virtual {v7}, Ljava/math/BigDecimal;->longValue()J

    #@f9
    move-result-wide v4

    #@fa
    .line 2192
    long-to-double v8, v4

    #@fb
    add-int/lit8 v7, v1, -0x4

    #@fd
    int-to-double v10, v7

    #@fe
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@101
    move-result-wide v10

    #@102
    cmpl-double v7, v8, v10

    #@104
    if-ltz v7, :cond_5

    #@106
    .line 2193
    iget-object v7, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@108
    invoke-virtual {v7, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    #@10b
    goto :goto_0

    #@10c
    .line 2203
    :cond_8
    invoke-direct {p0, p1}, Ljava/util/Formatter;->transformF(Ljava/lang/StringBuilder;)V

    #@10f
    goto :goto_1
.end method

.method private wrapParentheses(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "result"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v2, 0x29

    #@2
    const/4 v1, 0x0

    #@3
    .line 1662
    const/16 v0, 0x28

    #@5
    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    #@8
    .line 1663
    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@a
    iget-boolean v0, v0, Ljava/util/Formatter$FormatToken;->flagZero:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1664
    iget-object v0, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@10
    iget-object v1, p0, Ljava/util/Formatter;->formatToken:Ljava/util/Formatter$FormatToken;

    #@12
    invoke-virtual {v1}, Ljava/util/Formatter$FormatToken;->getWidth()I

    #@15
    move-result v1

    #@16
    add-int/lit8 v1, v1, -0x1

    #@18
    invoke-virtual {v0, v1}, Ljava/util/Formatter$FormatToken;->setWidth(I)V

    #@1b
    .line 1665
    const/4 v0, 0x1

    #@1c
    invoke-direct {p0, p1, v0}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    #@1f
    move-result-object p1

    #@20
    .end local p1    # "result":Ljava/lang/StringBuilder;
    check-cast p1, Ljava/lang/StringBuilder;

    #@22
    .line 1666
    .restart local p1    # "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 1671
    :goto_0
    return-object p1

    #@26
    .line 1668
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    .line 1669
    invoke-direct {p0, p1, v1}, Ljava/util/Formatter;->padding(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    #@2c
    move-result-object p1

    #@2d
    .end local p1    # "result":Ljava/lang/StringBuilder;
    check-cast p1, Ljava/lang/StringBuilder;

    #@2f
    .restart local p1    # "result":Ljava/lang/StringBuilder;
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    #@0
    .prologue
    .line 969
    iget-boolean v1, p0, Ljava/util/Formatter;->closed:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 970
    const/4 v1, 0x1

    #@5
    iput-boolean v1, p0, Ljava/util/Formatter;->closed:Z

    #@7
    .line 972
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    #@9
    instance-of v1, v1, Ljava/io/Closeable;

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 973
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    #@f
    check-cast v1, Ljava/io/Closeable;

    #@11
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 968
    :cond_0
    :goto_0
    return-void

    #@15
    .line 975
    :catch_0
    move-exception v0

    #@16
    .line 976
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    #@18
    goto :goto_0
.end method

.method public flush()V
    .locals 2

    #@0
    .prologue
    .line 948
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    #@3
    .line 949
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    #@5
    instance-of v1, v1, Ljava/io/Flushable;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 951
    :try_start_0
    iget-object v1, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    #@b
    check-cast v1, Ljava/io/Flushable;

    #@d
    invoke-interface {v1}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 947
    :cond_0
    :goto_0
    return-void

    #@11
    .line 952
    :catch_0
    move-exception v0

    #@12
    .line 953
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    #@14
    goto :goto_0
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1011
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@2
    invoke-virtual {p0, v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    .locals 2
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1038
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@2
    .line 1040
    .local v0, "originalLocale":Ljava/util/Locale;
    if-nez p1, :cond_0

    #@4
    :try_start_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@6
    .end local p1    # "l":Ljava/util/Locale;
    :cond_0
    iput-object p1, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@8
    .line 1041
    iget-object v1, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@a
    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Ljava/util/Formatter;->localeData:Llibcore/icu/LocaleData;

    #@10
    .line 1042
    invoke-direct {p0, p2, p3}, Ljava/util/Formatter;->doFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 1044
    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@15
    .line 1046
    return-object p0

    #@16
    .line 1043
    :catchall_0
    move-exception v1

    #@17
    .line 1044
    iput-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@19
    .line 1043
    throw v1
.end method

.method public ioException()Ljava/io/IOException;
    .locals 1

    #@0
    .prologue
    .line 990
    iget-object v0, p0, Ljava/util/Formatter;->lastIOException:Ljava/io/IOException;

    #@2
    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 909
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    #@3
    .line 910
    iget-object v0, p0, Ljava/util/Formatter;->locale:Ljava/util/Locale;

    #@5
    return-object v0
.end method

.method public out()Ljava/lang/Appendable;
    .locals 1

    #@0
    .prologue
    .line 921
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    #@3
    .line 922
    iget-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 936
    invoke-direct {p0}, Ljava/util/Formatter;->checkNotClosed()V

    #@3
    .line 937
    iget-object v0, p0, Ljava/util/Formatter;->out:Ljava/lang/Appendable;

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
