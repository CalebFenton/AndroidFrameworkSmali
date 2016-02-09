.class public final Ljava/util/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANY_PATTERN:Ljava/util/regex/Pattern;

.field private static final BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

.field private static final DEFAULT_RADIX:I = 0xa

.field private static final LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final LINE_TERMINATOR:Ljava/util/regex/Pattern;

.field private static final MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

.field private static final NL:Ljava/lang/String; = "\n|\r\n|\r|\u0085|\u2028|\u2029"


# instance fields
.field private buffer:Ljava/nio/CharBuffer;

.field private bufferLength:I

.field private cachedFloatPattern:Ljava/util/regex/Pattern;

.field private cachedIntegerPattern:Ljava/util/regex/Pattern;

.field private cachedIntegerPatternRadix:I

.field private cachedNextIndex:I

.field private cachedNextValue:Ljava/lang/Object;

.field private closed:Z

.field private currentRadix:I

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private delimiter:Ljava/util/regex/Pattern;

.field private findStartIndex:I

.field private input:Ljava/lang/Readable;

.field private inputExhausted:Z

.field private lastIOException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private matchSuccessful:Z

.field private matcher:Ljava/util/regex/Matcher;

.field private preStartIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 67
    const-string/jumbo v0, "\\p{javaWhitespace}+"

    #@3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    #@9
    .line 70
    const-string/jumbo v0, "true|false"

    #@c
    const/4 v1, 0x2

    #@d
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@10
    move-result-object v0

    #@11
    sput-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    #@13
    .line 73
    const-string/jumbo v0, "\n|\r\n|\r|\u0085|\u2028|\u2029"

    #@16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Ljava/util/Scanner;->LINE_TERMINATOR:Ljava/util/regex/Pattern;

    #@1c
    .line 76
    const-string/jumbo v0, "(\n|\r\n|\r|\u0085|\u2028|\u2029)+"

    #@1f
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@22
    move-result-object v0

    #@23
    sput-object v0, Ljava/util/Scanner;->MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

    #@25
    .line 79
    const-string/jumbo v0, ".*(\n|\r\n|\r|\u0085|\u2028|\u2029)|.+$"

    #@28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@2b
    move-result-object v0

    #@2c
    sput-object v0, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    #@2e
    .line 82
    const-string/jumbo v0, "(?s).*"

    #@31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@34
    move-result-object v0

    #@35
    sput-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    #@37
    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@b
    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p1, "src"    # Ljava/io/File;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 89
    const/16 v3, 0x400

    #@8
    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@b
    move-result-object v3

    #@c
    iput-object v3, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@e
    .line 91
    sget-object v3, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    #@10
    iput-object v3, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    #@12
    .line 95
    const/16 v3, 0xa

    #@14
    iput v3, p0, Ljava/util/Scanner;->currentRadix:I

    #@16
    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    #@1c
    .line 100
    iput v4, p0, Ljava/util/Scanner;->findStartIndex:I

    #@1e
    .line 103
    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    #@20
    iput v3, p0, Ljava/util/Scanner;->preStartIndex:I

    #@22
    .line 106
    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    #@24
    .line 109
    iput-boolean v4, p0, Ljava/util/Scanner;->closed:Z

    #@26
    .line 113
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@28
    .line 118
    iput-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@2a
    .line 120
    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@2c
    .line 121
    iput v6, p0, Ljava/util/Scanner;->cachedNextIndex:I

    #@2e
    .line 123
    iput-object v5, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    #@30
    .line 125
    iput v6, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    #@32
    .line 126
    iput-object v5, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    #@34
    .line 155
    if-nez p1, :cond_0

    #@36
    .line 156
    new-instance v3, Ljava/lang/NullPointerException;

    #@38
    const-string/jumbo v4, "src == null"

    #@3b
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v3

    #@3f
    .line 158
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    #@41
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@44
    .line 159
    .local v1, "fis":Ljava/io/FileInputStream;
    if-nez p2, :cond_1

    #@46
    .line 160
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@48
    const-string/jumbo v4, "charsetName == null"

    #@4b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v3

    #@4f
    .line 165
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    #@51
    invoke-direct {v2, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    .line 170
    .local v2, "streamReader":Ljava/io/InputStreamReader;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->initialize(Ljava/lang/Readable;)V

    #@57
    .line 154
    return-void

    #@58
    .line 166
    .end local v2    # "streamReader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v0

    #@59
    .line 167
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5c
    .line 168
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@5e
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v3
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "src"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 191
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@b
    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "charsetName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 89
    const/16 v2, 0x400

    #@8
    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@b
    move-result-object v2

    #@c
    iput-object v2, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@e
    .line 91
    sget-object v2, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    #@10
    iput-object v2, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    #@12
    .line 95
    const/16 v2, 0xa

    #@14
    iput v2, p0, Ljava/util/Scanner;->currentRadix:I

    #@16
    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    #@1c
    .line 100
    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    #@1e
    .line 103
    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    #@20
    iput v2, p0, Ljava/util/Scanner;->preStartIndex:I

    #@22
    .line 106
    iput v3, p0, Ljava/util/Scanner;->bufferLength:I

    #@24
    .line 109
    iput-boolean v3, p0, Ljava/util/Scanner;->closed:Z

    #@26
    .line 113
    iput-boolean v3, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@28
    .line 118
    iput-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@2a
    .line 120
    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@2c
    .line 121
    iput v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    #@2e
    .line 123
    iput-object v4, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    #@30
    .line 125
    iput v5, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    #@32
    .line 126
    iput-object v4, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    #@34
    .line 206
    if-nez p1, :cond_0

    #@36
    .line 207
    new-instance v2, Ljava/lang/NullPointerException;

    #@38
    const-string/jumbo v3, "src == null"

    #@3b
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v2

    #@3f
    .line 212
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    #@41
    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 216
    .local v1, "streamReader":Ljava/io/InputStreamReader;
    invoke-direct {p0, v1}, Ljava/util/Scanner;->initialize(Ljava/lang/Readable;)V

    #@47
    .line 205
    return-void

    #@48
    .line 213
    .end local v1    # "streamReader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v0

    #@49
    .line 214
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4b
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@52
    throw v2
.end method

.method public constructor <init>(Ljava/lang/Readable;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/Readable;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 89
    const/16 v0, 0x400

    #@8
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@e
    .line 91
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    #@10
    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    #@12
    .line 95
    const/16 v0, 0xa

    #@14
    iput v0, p0, Ljava/util/Scanner;->currentRadix:I

    #@16
    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    #@1c
    .line 100
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    #@1e
    .line 103
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    #@20
    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    #@22
    .line 106
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    #@24
    .line 109
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    #@26
    .line 113
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@28
    .line 118
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@2a
    .line 120
    iput-object v2, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@2c
    .line 121
    iput v3, p0, Ljava/util/Scanner;->cachedNextIndex:I

    #@2e
    .line 123
    iput-object v2, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    #@30
    .line 125
    iput v3, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    #@32
    .line 126
    iput-object v2, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    #@34
    .line 226
    if-nez p1, :cond_0

    #@36
    .line 227
    new-instance v0, Ljava/lang/NullPointerException;

    #@38
    const-string/jumbo v1, "src == null"

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 229
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->initialize(Ljava/lang/Readable;)V

    #@42
    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 89
    const/16 v0, 0x400

    #@8
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@e
    .line 91
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    #@10
    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    #@12
    .line 95
    const/16 v0, 0xa

    #@14
    iput v0, p0, Ljava/util/Scanner;->currentRadix:I

    #@16
    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    #@1c
    .line 100
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    #@1e
    .line 103
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    #@20
    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    #@22
    .line 106
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    #@24
    .line 109
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    #@26
    .line 113
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@28
    .line 118
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@2a
    .line 120
    iput-object v2, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@2c
    .line 121
    iput v3, p0, Ljava/util/Scanner;->cachedNextIndex:I

    #@2e
    .line 123
    iput-object v2, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    #@30
    .line 125
    iput v3, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    #@32
    .line 126
    iput-object v2, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    #@34
    .line 180
    new-instance v0, Ljava/io/StringReader;

    #@36
    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #@39
    invoke-direct {p0, v0}, Ljava/util/Scanner;->initialize(Ljava/lang/Readable;)V

    #@3c
    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 1
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;

    #@0
    .prologue
    .line 240
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V

    #@b
    .line 239
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    .locals 4
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "charsetName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 89
    const/16 v0, 0x400

    #@8
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@e
    .line 91
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    #@10
    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    #@12
    .line 95
    const/16 v0, 0xa

    #@14
    iput v0, p0, Ljava/util/Scanner;->currentRadix:I

    #@16
    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    #@1c
    .line 100
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    #@1e
    .line 103
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    #@20
    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    #@22
    .line 106
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    #@24
    .line 109
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    #@26
    .line 113
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@28
    .line 118
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@2a
    .line 120
    iput-object v2, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@2c
    .line 121
    iput v3, p0, Ljava/util/Scanner;->cachedNextIndex:I

    #@2e
    .line 123
    iput-object v2, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    #@30
    .line 125
    iput v3, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    #@32
    .line 126
    iput-object v2, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    #@34
    .line 255
    if-nez p1, :cond_0

    #@36
    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    #@38
    const-string/jumbo v1, "src == null"

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 258
    :cond_0
    if-nez p2, :cond_1

    #@41
    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@43
    const-string/jumbo v1, "charsetName == null"

    #@46
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0

    #@4a
    .line 261
    :cond_1
    invoke-static {p1, p2}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;

    #@4d
    move-result-object v0

    #@4e
    invoke-direct {p0, v0}, Ljava/util/Scanner;->initialize(Ljava/lang/Readable;)V

    #@51
    .line 254
    return-void
.end method

.method private addNegativeSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "unsignedNumeral"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1813
    const-string/jumbo v0, ""

    #@3
    .line 1814
    .local v0, "negativePrefix":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@6
    .line 1815
    .local v1, "negativeSuffix":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@8
    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 1816
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "\\Q"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@20
    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    const-string/jumbo v3, "\\E"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 1818
    :cond_0
    iget-object v2, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@35
    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@3c
    move-result v2

    #@3d
    if-nez v2, :cond_1

    #@3f
    .line 1819
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v3, "\\Q"

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@4d
    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    const-string/jumbo v3, "\\E"

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    .line 1821
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    return-object v2
.end method

.method private addPositiveSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "unsignedNumeral"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1798
    const-string/jumbo v0, ""

    #@3
    .line 1799
    .local v0, "positivePrefix":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@6
    .line 1800
    .local v1, "positiveSuffix":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@8
    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@f
    move-result v2

    #@10
    if-nez v2, :cond_0

    #@12
    .line 1801
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "\\Q"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@20
    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    const-string/jumbo v3, "\\E"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 1803
    :cond_0
    iget-object v2, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@35
    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@3c
    move-result v2

    #@3d
    if-nez v2, :cond_1

    #@3f
    .line 1804
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v3, "\\Q"

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@4d
    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    const-string/jumbo v3, "\\E"

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    .line 1806
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    return-object v2
.end method

.method private checkNotNull(Ljava/util/regex/Pattern;)V
    .locals 2
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    .line 1666
    if-nez p1, :cond_0

    #@2
    .line 1667
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "pattern == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1665
    :cond_0
    return-void
.end method

.method private checkOpen()V
    .locals 1

    #@0
    .prologue
    .line 1660
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1661
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1659
    :cond_0
    return-void
.end method

.method private checkRadix(I)V
    .locals 3
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 1644
    const/4 v0, 0x2

    #@1
    if-lt p1, v0, :cond_0

    #@3
    const/16 v0, 0x24

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 1645
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Invalid radix: "

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
    .line 1643
    :cond_1
    return-void
.end method

.method private expandBuffer()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2092
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@3
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    #@6
    move-result v4

    #@7
    .line 2093
    .local v4, "oldPosition":I
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@9
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    #@c
    move-result v2

    #@d
    .line 2094
    .local v2, "oldCapacity":I
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@f
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    #@12
    move-result v3

    #@13
    .line 2095
    .local v3, "oldLimit":I
    mul-int/lit8 v1, v2, 0x2

    #@15
    .line 2096
    .local v1, "newCapacity":I
    new-array v0, v1, [C

    #@17
    .line 2097
    .local v0, "newBuffer":[C
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@19
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->array()[C

    #@1c
    move-result-object v5

    #@1d
    invoke-static {v5, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@20
    .line 2098
    invoke-static {v0, v6, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@23
    move-result-object v5

    #@24
    iput-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@26
    .line 2099
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@28
    invoke-virtual {v5, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@2b
    .line 2100
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@2d
    invoke-virtual {v5, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@30
    .line 2091
    return-void
.end method

.method private findDelimiterAfter()I
    .locals 4

    #@0
    .prologue
    .line 2029
    const/4 v0, 0x0

    #@1
    .line 2030
    .local v0, "findComplete":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    #@3
    .line 2031
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@5
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 2032
    const/4 v0, 0x1

    #@c
    .line 2033
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@e
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    #@11
    move-result v2

    #@12
    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    #@14
    if-ne v2, v3, :cond_0

    #@16
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@18
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    #@1b
    move-result v2

    #@1c
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@1e
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    #@21
    move-result v3

    #@22
    if-ne v2, v3, :cond_0

    #@24
    .line 2034
    const/4 v0, 0x0

    #@25
    goto :goto_0

    #@26
    .line 2037
    :cond_1
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@28
    if-nez v2, :cond_2

    #@2a
    .line 2038
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    #@2d
    .line 2039
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    #@30
    goto :goto_0

    #@31
    .line 2041
    :cond_2
    const/4 v2, -0x1

    #@32
    return v2

    #@33
    .line 2045
    :cond_3
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@35
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    #@38
    move-result v1

    #@39
    .line 2046
    .local v1, "tokenEndIndex":I
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    #@3b
    .line 2047
    return v1
.end method

.method private findPreDelimiter()I
    .locals 4

    #@0
    .prologue
    .line 1973
    const/4 v0, 0x0

    #@1
    .line 1974
    .local v0, "findComplete":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    #@3
    .line 1975
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@5
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 1976
    const/4 v0, 0x1

    #@c
    .line 1978
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@e
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    #@11
    move-result v2

    #@12
    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    #@14
    if-ne v2, v3, :cond_0

    #@16
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@18
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    #@1b
    move-result v2

    #@1c
    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    #@1e
    if-ne v2, v3, :cond_0

    #@20
    .line 1980
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@22
    if-nez v2, :cond_0

    #@24
    .line 1981
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    #@27
    .line 1982
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    #@2a
    .line 1983
    const/4 v0, 0x0

    #@2b
    goto :goto_0

    #@2c
    .line 1987
    :cond_1
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@2e
    if-nez v2, :cond_2

    #@30
    .line 1988
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    #@33
    .line 1989
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    #@36
    goto :goto_0

    #@37
    .line 1991
    :cond_2
    const/4 v2, -0x1

    #@38
    return v2

    #@39
    .line 1995
    :cond_3
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@3b
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    #@3e
    move-result v1

    #@3f
    .line 1996
    .local v1, "tokenStartIndex":I
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    #@41
    .line 1997
    return v1
.end method

.method private getFloatPattern()Ljava/util/regex/Pattern;
    .locals 15

    #@0
    .prologue
    .line 1751
    iget-object v13, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@2
    if-nez v13, :cond_0

    #@4
    .line 1752
    iget-object v13, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    #@6
    invoke-static {v13}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@9
    move-result-object v13

    #@a
    check-cast v13, Ljava/text/DecimalFormat;

    #@c
    iput-object v13, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@e
    .line 1755
    :cond_0
    iget-object v13, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    #@10
    if-eqz v13, :cond_1

    #@12
    .line 1756
    iget-object v13, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    #@14
    return-object v13

    #@15
    .line 1759
    :cond_1
    iget-object v13, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@17
    invoke-virtual {v13}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    #@1a
    move-result-object v3

    #@1b
    .line 1761
    .local v3, "dfs":Ljava/text/DecimalFormatSymbols;
    const-string/jumbo v4, "([0-9]|(\\p{javaDigit}))"

    #@1e
    .line 1762
    .local v4, "digit":Ljava/lang/String;
    const-string/jumbo v10, "[\\p{javaDigit}&&[^0]]"

    #@21
    .line 1763
    .local v10, "nonZeroDigit":Ljava/lang/String;
    invoke-direct {p0, v4, v10}, Ljava/util/Scanner;->getNumeral(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v11

    #@25
    .line 1765
    .local v11, "numeral":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v14, "\\"

    #@2d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v13

    #@31
    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@34
    move-result v14

    #@35
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    move-result-object v13

    #@39
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 1766
    .local v2, "decimalSeparator":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v14, "("

    #@45
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v13

    #@49
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v13

    #@4d
    const-string/jumbo v14, "|"

    #@50
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v13

    #@54
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v13

    #@58
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v13

    #@5c
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v13

    #@60
    .line 1767
    const-string/jumbo v14, "*+|"

    #@63
    .line 1766
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v13

    #@67
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v13

    #@6b
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v13

    #@6f
    .line 1768
    const-string/jumbo v14, "++)"

    #@72
    .line 1766
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v13

    #@76
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    .line 1769
    .local v1, "decimalNumeral":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v14, "([eE][+-]?"

    #@82
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v13

    #@86
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v13

    #@8a
    const-string/jumbo v14, "+)?"

    #@8d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v13

    #@91
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v5

    #@95
    .line 1771
    .local v5, "exponent":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v14, "(([-+]?"

    #@9d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v13

    #@a1
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v13

    #@a5
    const-string/jumbo v14, "("

    #@a8
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v13

    #@ac
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v13

    #@b0
    const-string/jumbo v14, "?)"

    #@b3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v13

    #@b7
    const-string/jumbo v14, ")|"

    #@ba
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v13

    #@be
    .line 1772
    const-string/jumbo v14, "("

    #@c1
    .line 1771
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v13

    #@c5
    .line 1772
    invoke-direct {p0, v1}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/String;)Ljava/lang/String;

    #@c8
    move-result-object v14

    #@c9
    .line 1771
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v13

    #@cd
    .line 1772
    const-string/jumbo v14, "("

    #@d0
    .line 1771
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v13

    #@d4
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v13

    #@d8
    .line 1772
    const-string/jumbo v14, "?)"

    #@db
    .line 1771
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v13

    #@df
    .line 1772
    const-string/jumbo v14, ")|"

    #@e2
    .line 1771
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v13

    #@e6
    .line 1773
    const-string/jumbo v14, "("

    #@e9
    .line 1771
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v13

    #@ed
    .line 1773
    invoke-direct {p0, v1}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/String;)Ljava/lang/String;

    #@f0
    move-result-object v14

    #@f1
    .line 1771
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v13

    #@f5
    .line 1773
    const-string/jumbo v14, "("

    #@f8
    .line 1771
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v13

    #@fc
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v13

    #@100
    .line 1773
    const-string/jumbo v14, "?)"

    #@103
    .line 1771
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v13

    #@107
    .line 1773
    const-string/jumbo v14, "))"

    #@10a
    .line 1771
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v13

    #@10e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v0

    #@112
    .line 1775
    .local v0, "decimal":Ljava/lang/String;
    const-string/jumbo v6, "([-+]?0[xX][0-9a-fA-F]*\\.[0-9a-fA-F]+([pP][-+]?[0-9]+)?)"

    #@115
    .line 1776
    .local v6, "hexFloat":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    #@118
    move-result-object v7

    #@119
    .line 1777
    .local v7, "localNaN":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@11c
    move-result-object v8

    #@11d
    .line 1778
    .local v8, "localeInfinity":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@11f
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@122
    const-string/jumbo v14, "(NaN|\\Q"

    #@125
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v13

    #@129
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v13

    #@12d
    const-string/jumbo v14, "\\E|Infinity|\\Q"

    #@130
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v13

    #@134
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v13

    #@138
    const-string/jumbo v14, "\\E)"

    #@13b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v13

    #@13f
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v9

    #@143
    .line 1779
    .local v9, "nonNumber":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@145
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    const-string/jumbo v14, "((([-+]?("

    #@14b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v13

    #@14f
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v13

    #@153
    const-string/jumbo v14, ")))|"

    #@156
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v13

    #@15a
    .line 1780
    const-string/jumbo v14, "("

    #@15d
    .line 1779
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v13

    #@161
    .line 1780
    invoke-direct {p0, v9}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/String;)Ljava/lang/String;

    #@164
    move-result-object v14

    #@165
    .line 1779
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v13

    #@169
    .line 1780
    const-string/jumbo v14, ")|"

    #@16c
    .line 1779
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v13

    #@170
    .line 1781
    const-string/jumbo v14, "("

    #@173
    .line 1779
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v13

    #@177
    .line 1781
    invoke-direct {p0, v9}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/String;)Ljava/lang/String;

    #@17a
    move-result-object v14

    #@17b
    .line 1779
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v13

    #@17f
    .line 1781
    const-string/jumbo v14, "))"

    #@182
    .line 1779
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v13

    #@186
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189
    move-result-object v12

    #@18a
    .line 1783
    .local v12, "signedNonNumber":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@18c
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@18f
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v13

    #@193
    const-string/jumbo v14, "|"

    #@196
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v13

    #@19a
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v13

    #@19e
    const-string/jumbo v14, "|"

    #@1a1
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v13

    #@1a5
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v13

    #@1a9
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v13

    #@1ad
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@1b0
    move-result-object v13

    #@1b1
    iput-object v13, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    #@1b3
    .line 1784
    iget-object v13, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    #@1b5
    return-object v13
.end method

.method private getIntegerPattern(I)Ljava/util/regex/Pattern;
    .locals 9
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 1723
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkRadix(I)V

    #@3
    .line 1725
    iget-object v7, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@5
    if-nez v7, :cond_0

    #@7
    .line 1726
    iget-object v7, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    #@9
    invoke-static {v7}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    #@c
    move-result-object v7

    #@d
    check-cast v7, Ljava/text/DecimalFormat;

    #@f
    iput-object v7, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@11
    .line 1729
    :cond_0
    iget v7, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    #@13
    if-ne v7, p1, :cond_1

    #@15
    .line 1730
    iget-object v7, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    #@17
    return-object v7

    #@18
    .line 1733
    :cond_1
    const-string/jumbo v2, "0123456789abcdefghijklmnopqrstuvwxyz"

    #@1b
    .line 1734
    .local v2, "digits":Ljava/lang/String;
    const/4 v7, 0x0

    #@1c
    invoke-virtual {v2, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 1735
    .local v0, "ASCIIDigit":Ljava/lang/String;
    const/4 v7, 0x1

    #@21
    invoke-virtual {v2, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 1737
    .local v3, "nonZeroASCIIDigit":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v8, "((?i)["

    #@2d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v7

    #@31
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v7

    #@35
    const-string/jumbo v8, "]|\\p{javaDigit})"

    #@38
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 1738
    .local v1, "digit":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v8, "((?i)["

    #@48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    const-string/jumbo v8, "]|([\\p{javaDigit}&&[^0]]))"

    #@53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    .line 1739
    .local v4, "nonZeroDigit":Ljava/lang/String;
    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->getNumeral(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    .line 1741
    .local v5, "numeral":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v8, "(([-+]?("

    #@67
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v7

    #@6b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v7

    #@6f
    const-string/jumbo v8, ")))|"

    #@72
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v7

    #@76
    .line 1742
    const-string/jumbo v8, "("

    #@79
    .line 1741
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v7

    #@7d
    .line 1742
    invoke-direct {p0, v5}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/String;)Ljava/lang/String;

    #@80
    move-result-object v8

    #@81
    .line 1741
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v7

    #@85
    .line 1742
    const-string/jumbo v8, ")|"

    #@88
    .line 1741
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v7

    #@8c
    .line 1743
    const-string/jumbo v8, "("

    #@8f
    .line 1741
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v7

    #@93
    .line 1743
    invoke-direct {p0, v5}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/String;)Ljava/lang/String;

    #@96
    move-result-object v8

    #@97
    .line 1741
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v7

    #@9b
    .line 1743
    const-string/jumbo v8, ")"

    #@9e
    .line 1741
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v7

    #@a2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v6

    #@a6
    .line 1745
    .local v6, "regex":Ljava/lang/String;
    iput p1, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    #@a8
    .line 1746
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@ab
    move-result-object v7

    #@ac
    iput-object v7, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    #@ae
    .line 1747
    iget-object v7, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    #@b0
    return-object v7
.end method

.method private getNumeral(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "digit"    # Ljava/lang/String;
    .param p2, "nonZeroDigit"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1788
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "\\"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@e
    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@15
    move-result v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    .line 1789
    .local v0, "groupSeparator":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "("

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    const-string/jumbo v3, "?"

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    const-string/jumbo v3, "?"

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 1790
    const-string/jumbo v3, "("

    #@47
    .line 1789
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    .line 1790
    const-string/jumbo v3, ")+)"

    #@5e
    .line 1789
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    .line 1791
    .local v1, "groupedNumeral":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v3, "(("

    #@6e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    const-string/jumbo v3, "++)|"

    #@79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    const-string/jumbo v3, ")"

    #@84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v2

    #@8c
    return-object v2
.end method

.method private initialize(Ljava/lang/Readable;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/Readable;

    #@0
    .prologue
    .line 265
    iput-object p1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    #@2
    .line 266
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    #@4
    const-string/jumbo v1, ""

    #@7
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@d
    .line 267
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@f
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useTransparentBounds(Z)Ljava/util/regex/Matcher;

    #@13
    .line 268
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@15
    const/4 v1, 0x0

    #@16
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useAnchoringBounds(Z)Ljava/util/regex/Matcher;

    #@19
    .line 264
    return-void
.end method

.method private prepareForScan()V
    .locals 3

    #@0
    .prologue
    .line 1689
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    #@2
    iget-object v2, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@4
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->capacity()I

    #@7
    move-result v2

    #@8
    div-int/lit8 v2, v2, 0x2

    #@a
    if-lt v1, v2, :cond_0

    #@c
    .line 1695
    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@e
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    #@11
    move-result v0

    #@12
    .line 1696
    .local v0, "oldPosition":I
    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@14
    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    #@16
    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@19
    .line 1697
    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@1b
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    #@1e
    .line 1698
    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@20
    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@23
    .line 1701
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    #@25
    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    #@27
    sub-int/2addr v1, v2

    #@28
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    #@2a
    .line 1702
    const/4 v1, 0x0

    #@2b
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    #@2d
    .line 1703
    const/4 v1, -0x1

    #@2e
    iput v1, p0, Ljava/util/Scanner;->preStartIndex:I

    #@30
    .line 1707
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    #@33
    .line 1712
    .end local v0    # "oldPosition":I
    :cond_0
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    #@35
    iput v1, p0, Ljava/util/Scanner;->preStartIndex:I

    #@37
    .line 1685
    return-void
.end method

.method private readMore()V
    .locals 6

    #@0
    .prologue
    .line 2056
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@2
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    #@5
    move-result v2

    #@6
    .line 2057
    .local v2, "oldPosition":I
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    #@8
    .line 2059
    .local v1, "oldBufferLength":I
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    #@a
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@c
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    #@f
    move-result v5

    #@10
    if-lt v4, v5, :cond_0

    #@12
    .line 2060
    invoke-direct {p0}, Ljava/util/Scanner;->expandBuffer()V

    #@15
    .line 2066
    :cond_0
    :try_start_0
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@17
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@19
    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    #@1c
    move-result v5

    #@1d
    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@20
    .line 2067
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@22
    invoke-virtual {v4, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@25
    .line 2068
    :cond_1
    iget-object v4, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    #@27
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@29
    invoke-interface {v4, v5}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result v3

    #@2d
    .local v3, "readCount":I
    if-eqz v3, :cond_1

    #@2f
    .line 2081
    :goto_0
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@31
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    #@34
    .line 2082
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@36
    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@39
    .line 2083
    const/4 v4, -0x1

    #@3a
    if-ne v3, v4, :cond_2

    #@3c
    .line 2084
    const/4 v4, 0x1

    #@3d
    iput-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@3f
    .line 2055
    :goto_1
    return-void

    #@40
    .line 2071
    .end local v3    # "readCount":I
    :catch_0
    move-exception v0

    #@41
    .line 2075
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@43
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    #@46
    move-result v4

    #@47
    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    #@49
    .line 2077
    const/4 v3, -0x1

    #@4a
    .line 2078
    .restart local v3    # "readCount":I
    iput-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    #@4c
    goto :goto_0

    #@4d
    .line 2086
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    #@4f
    add-int/2addr v4, v3

    #@50
    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    #@52
    goto :goto_1
.end method

.method private recoverPreviousStatus()V
    .locals 1

    #@0
    .prologue
    .line 1719
    iget v0, p0, Ljava/util/Scanner;->preStartIndex:I

    #@2
    iput v0, p0, Ljava/util/Scanner;->findStartIndex:I

    #@4
    .line 1718
    return-void
.end method

.method private removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 13
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v12, 0xa

    #@2
    const/4 v11, 0x0

    #@3
    const/4 v10, -0x1

    #@4
    .line 1849
    iget-object v8, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@6
    invoke-virtual {v8}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    #@9
    move-result-object v1

    #@a
    .line 1851
    .local v1, "dfs":Ljava/text/DecimalFormatSymbols;
    new-instance v7, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    .line 1852
    .local v7, "tokenBuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v7}, Ljava/util/Scanner;->removeLocaleSign(Ljava/lang/StringBuilder;)Z

    #@12
    move-result v4

    #@13
    .line 1854
    .local v4, "negative":Z
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    #@16
    move-result v8

    #@17
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 1856
    .local v2, "groupSeparator":Ljava/lang/String;
    :goto_0
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@1e
    move-result v6

    #@1f
    .local v6, "separatorIndex":I
    if-eq v6, v10, :cond_0

    #@21
    .line 1857
    add-int/lit8 v8, v6, 0x1

    #@23
    invoke-virtual {v7, v6, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 1860
    :cond_0
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@2a
    move-result v8

    #@2b
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    .line 1861
    .local v0, "decimalSeparator":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@32
    move-result v6

    #@33
    .line 1862
    new-instance v5, Ljava/lang/StringBuilder;

    #@35
    const-string/jumbo v8, ""

    #@38
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3b
    .line 1863
    .local v5, "result":Ljava/lang/StringBuilder;
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@3d
    if-ne p2, v8, :cond_2

    #@3f
    .line 1864
    const/4 v3, 0x0

    #@40
    .local v3, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    #@43
    move-result v8

    #@44
    if-ge v3, v8, :cond_3

    #@46
    .line 1865
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@49
    move-result v8

    #@4a
    const/16 v9, 0x24

    #@4c
    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    #@4f
    move-result v8

    #@50
    if-eq v8, v10, :cond_1

    #@52
    .line 1866
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@55
    move-result v8

    #@56
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@59
    .line 1864
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 1869
    .end local v3    # "i":I
    :cond_2
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@5e
    if-ne p2, v8, :cond_a

    #@60
    .line 1870
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v8

    #@6c
    if-eqz v8, :cond_7

    #@6e
    .line 1871
    const-string/jumbo v8, "NaN"

    #@71
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 1885
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    #@77
    move-result v8

    #@78
    if-nez v8, :cond_4

    #@7a
    .line 1886
    move-object v5, v7

    #@7b
    .line 1888
    :cond_4
    if-eq v6, v10, :cond_5

    #@7d
    .line 1889
    const-string/jumbo v8, "."

    #@80
    invoke-virtual {v5, v6, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    .line 1892
    :cond_5
    if-eqz v4, :cond_6

    #@85
    .line 1893
    const/16 v8, 0x2d

    #@87
    invoke-virtual {v5, v11, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@8a
    .line 1895
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    return-object v8

    #@8f
    .line 1872
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v8

    #@93
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    #@96
    move-result-object v9

    #@97
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v8

    #@9b
    if-eqz v8, :cond_8

    #@9d
    .line 1873
    const-string/jumbo v8, "Infinity"

    #@a0
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    goto :goto_2

    #@a4
    .line 1875
    :cond_8
    const/4 v3, 0x0

    #@a5
    .restart local v3    # "i":I
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    #@a8
    move-result v8

    #@a9
    if-ge v3, v8, :cond_3

    #@ab
    .line 1876
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@ae
    move-result v8

    #@af
    invoke-static {v8, v12}, Ljava/lang/Character;->digit(CI)I

    #@b2
    move-result v8

    #@b3
    if-eq v8, v10, :cond_9

    #@b5
    .line 1877
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@b8
    move-result v8

    #@b9
    invoke-static {v8, v12}, Ljava/lang/Character;->digit(CI)I

    #@bc
    move-result v8

    #@bd
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c0
    .line 1875
    :cond_9
    add-int/lit8 v3, v3, 0x1

    #@c2
    goto :goto_3

    #@c3
    .line 1882
    .end local v3    # "i":I
    :cond_a
    new-instance v8, Ljava/lang/AssertionError;

    #@c5
    new-instance v9, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v10, "Unsupported type: "

    #@cd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v9

    #@d1
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v9

    #@d5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v9

    #@d9
    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@dc
    throw v8
.end method

.method private removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "floatString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 1829
    const/16 v3, 0x78

    #@3
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v3

    #@7
    if-ne v3, v4, :cond_0

    #@9
    const/16 v3, 0x58

    #@b
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v3

    #@f
    if-eq v3, v4, :cond_1

    #@11
    .line 1830
    :cond_0
    return-object p1

    #@12
    .line 1835
    :cond_1
    const/16 v3, 0x65

    #@14
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@17
    move-result v1

    #@18
    .local v1, "exponentIndex":I
    if-ne v1, v4, :cond_2

    #@1a
    const/16 v3, 0x45

    #@1c
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@1f
    move-result v1

    #@20
    if-eq v1, v4, :cond_3

    #@22
    .line 1836
    :cond_2
    const/4 v3, 0x0

    #@23
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 1837
    .local v0, "decimalNumeralString":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    #@29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2c
    move-result v4

    #@2d
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 1838
    .local v2, "exponentString":Ljava/lang/String;
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@33
    invoke-direct {p0, v0, v3}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 1839
    new-instance v3, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    const-string/jumbo v4, "e"

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    return-object v3

    #@50
    .line 1841
    .end local v0    # "decimalNumeralString":Ljava/lang/String;
    .end local v2    # "exponentString":Ljava/lang/String;
    :cond_3
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@52
    invoke-direct {p0, p1, v3}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    return-object v3
.end method

.method private removeLocaleSign(Ljava/lang/StringBuilder;)Z
    .locals 10
    .param p1, "tokenBuilder"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, -0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 1903
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@5
    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 1904
    .local v3, "positivePrefix":Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@b
    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    .line 1905
    .local v4, "positiveSuffix":Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@11
    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 1906
    .local v1, "negativePrefix":Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@17
    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 1908
    .local v2, "negativeSuffix":Ljava/lang/String;
    const-string/jumbo v5, "+"

    #@1e
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_0

    #@24
    .line 1909
    invoke-virtual {p1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@27
    .line 1911
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@2a
    move-result v5

    #@2b
    if-nez v5, :cond_1

    #@2d
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@30
    move-result v5

    #@31
    if-nez v5, :cond_1

    #@33
    .line 1912
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@36
    move-result v5

    #@37
    invoke-virtual {p1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@3a
    .line 1914
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    #@3d
    move-result v5

    #@3e
    if-nez v5, :cond_2

    #@40
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@43
    move-result v5

    #@44
    if-eq v5, v8, :cond_2

    #@46
    .line 1915
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@49
    move-result v5

    #@4a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@4d
    move-result v6

    #@4e
    sub-int/2addr v5, v6

    #@4f
    .line 1916
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@52
    move-result v6

    #@53
    .line 1915
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@56
    .line 1918
    :cond_2
    const/4 v0, 0x0

    #@57
    .line 1919
    .local v0, "negative":Z
    const-string/jumbo v5, "-"

    #@5a
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@5d
    move-result v5

    #@5e
    if-nez v5, :cond_3

    #@60
    .line 1920
    invoke-virtual {p1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@63
    .line 1921
    const/4 v0, 0x1

    #@64
    .line 1923
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@67
    move-result v5

    #@68
    if-nez v5, :cond_4

    #@6a
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@6d
    move-result v5

    #@6e
    if-nez v5, :cond_4

    #@70
    .line 1924
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@73
    move-result v5

    #@74
    invoke-virtual {p1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@77
    .line 1925
    const/4 v0, 0x1

    #@78
    .line 1927
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@7b
    move-result v5

    #@7c
    if-nez v5, :cond_5

    #@7e
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    #@81
    move-result v5

    #@82
    if-eq v5, v8, :cond_5

    #@84
    .line 1928
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@87
    move-result v5

    #@88
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@8b
    move-result v6

    #@8c
    sub-int/2addr v5, v6

    #@8d
    .line 1929
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@90
    move-result v6

    #@91
    .line 1928
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@94
    .line 1930
    const/4 v0, 0x1

    #@95
    .line 1932
    :cond_5
    return v0
.end method

.method private resetMatcher()V
    .locals 3

    #@0
    .prologue
    .line 1676
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@2
    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@4
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@7
    .line 1677
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@9
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    #@b
    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    #@d
    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@10
    .line 1675
    return-void
.end method

.method private setHeadTokenRegion(I)Z
    .locals 6
    .param p1, "findIndex"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 2006
    const/4 v0, 0x0

    #@2
    .line 2008
    .local v0, "setSuccess":Z
    if-ne p1, v5, :cond_0

    #@4
    iget v3, p0, Ljava/util/Scanner;->preStartIndex:I

    #@6
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    #@8
    if-eq v3, v4, :cond_0

    #@a
    .line 2009
    iget v2, p0, Ljava/util/Scanner;->preStartIndex:I

    #@c
    .line 2010
    .local v2, "tokenStartIndex":I
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    #@e
    .line 2011
    .local v1, "tokenEndIndex":I
    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    #@10
    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    #@12
    .line 2012
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@14
    invoke-virtual {v3, v2, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@17
    .line 2013
    const/4 v0, 0x1

    #@18
    .line 2016
    .end local v1    # "tokenEndIndex":I
    .end local v2    # "tokenStartIndex":I
    :cond_0
    if-eq p1, v5, :cond_1

    #@1a
    iget v3, p0, Ljava/util/Scanner;->preStartIndex:I

    #@1c
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@1e
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    #@21
    move-result v4

    #@22
    if-eq v3, v4, :cond_1

    #@24
    .line 2017
    iget v2, p0, Ljava/util/Scanner;->preStartIndex:I

    #@26
    .line 2018
    .restart local v2    # "tokenStartIndex":I
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@28
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    #@2b
    move-result v1

    #@2c
    .line 2019
    .restart local v1    # "tokenEndIndex":I
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@2e
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    #@31
    move-result v3

    #@32
    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    #@34
    .line 2021
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@36
    invoke-virtual {v3, v2, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@39
    .line 2022
    const/4 v0, 0x1

    #@3a
    .line 2024
    .end local v1    # "tokenEndIndex":I
    .end local v2    # "tokenStartIndex":I
    :cond_1
    return v0
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 904
    iput-object p1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    #@3
    .line 905
    iput-object v1, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    #@5
    .line 906
    iput-object v1, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    #@7
    .line 907
    const/4 v0, -0x1

    #@8
    iput v0, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    #@a
    .line 908
    iput-object v1, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    #@c
    .line 903
    return-void
.end method

.method private setTokenRegion()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1946
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@3
    iget-object v3, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    #@5
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@8
    .line 1947
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@a
    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    #@c
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    #@e
    invoke-virtual {v2, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@11
    .line 1949
    invoke-direct {p0}, Ljava/util/Scanner;->findPreDelimiter()I

    #@14
    move-result v1

    #@15
    .line 1950
    .local v1, "tokenStartIndex":I
    invoke-direct {p0, v1}, Ljava/util/Scanner;->setHeadTokenRegion(I)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 1951
    return v5

    #@1c
    .line 1953
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->findDelimiterAfter()I

    #@1f
    move-result v0

    #@20
    .line 1955
    .local v0, "tokenEndIndex":I
    const/4 v2, -0x1

    #@21
    if-ne v0, v2, :cond_2

    #@23
    .line 1957
    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    #@25
    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    #@27
    if-ne v2, v3, :cond_1

    #@29
    .line 1958
    const/4 v2, 0x0

    #@2a
    return v2

    #@2b
    .line 1960
    :cond_1
    iget v0, p0, Ljava/util/Scanner;->bufferLength:I

    #@2d
    .line 1961
    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    #@2f
    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    #@31
    .line 1964
    :cond_2
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@33
    invoke-virtual {v2, v1, v0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@36
    .line 1965
    return v5
.end method


# virtual methods
.method public close()V
    .locals 2

    #@0
    .prologue
    .line 280
    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 281
    return-void

    #@5
    .line 283
    :cond_0
    iget-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    #@7
    instance-of v1, v1, Ljava/io/Closeable;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 285
    :try_start_0
    iget-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    #@d
    check-cast v1, Ljava/io/Closeable;

    #@f
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 290
    :cond_1
    :goto_0
    const/4 v1, 0x1

    #@13
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    #@15
    .line 279
    return-void

    #@16
    .line 286
    :catch_0
    move-exception v0

    #@17
    .line 287
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    #@19
    goto :goto_0
.end method

.method public delimiter()Ljava/util/regex/Pattern;
    .locals 1

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    #@2
    return-object v0
.end method

.method public findInLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 410
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 9
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 318
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    #@5
    .line 319
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNotNull(Ljava/util/regex/Pattern;)V

    #@8
    .line 320
    const/4 v1, 0x0

    #@9
    .line 322
    .local v1, "horizonLineSeparator":I
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@b
    sget-object v5, Ljava/util/Scanner;->MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

    #@d
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@10
    .line 323
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@12
    iget v5, p0, Ljava/util/Scanner;->findStartIndex:I

    #@14
    iget v6, p0, Ljava/util/Scanner;->bufferLength:I

    #@16
    invoke-virtual {v4, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@19
    .line 325
    const/4 v0, 0x0

    #@1a
    .line 326
    .local v0, "findComplete":Z
    const/4 v3, 0x0

    #@1b
    .line 327
    .local v3, "terminatorLength":I
    :goto_0
    if-nez v0, :cond_2

    #@1d
    .line 328
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@1f
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_0

    #@25
    .line 329
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@27
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    #@2a
    move-result v1

    #@2b
    .line 330
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@2d
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    #@30
    move-result v4

    #@31
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@33
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    #@36
    move-result v5

    #@37
    sub-int v3, v4, v5

    #@39
    .line 331
    const/4 v0, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 333
    :cond_0
    iget-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@3d
    if-nez v4, :cond_1

    #@3f
    .line 334
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    #@42
    .line 335
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    #@45
    goto :goto_0

    #@46
    .line 337
    :cond_1
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    #@48
    .line 338
    const/4 v0, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 343
    :cond_2
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@4c
    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@4f
    .line 351
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@51
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->limit()I

    #@54
    move-result v2

    #@55
    .line 353
    .local v2, "oldLimit":I
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@57
    add-int v5, v1, v3

    #@59
    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@5c
    .line 357
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@5e
    iget v5, p0, Ljava/util/Scanner;->findStartIndex:I

    #@60
    add-int v6, v1, v3

    #@62
    invoke-virtual {v4, v5, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@65
    .line 358
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@67
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    #@6a
    move-result v4

    #@6b
    if-eqz v4, :cond_5

    #@6d
    .line 360
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@6f
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    #@72
    move-result v4

    #@73
    iput v4, p0, Ljava/util/Scanner;->findStartIndex:I

    #@75
    .line 363
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@77
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    #@7a
    move-result v4

    #@7b
    if-ne v1, v4, :cond_3

    #@7d
    .line 364
    iget v4, p0, Ljava/util/Scanner;->findStartIndex:I

    #@7f
    add-int/2addr v4, v3

    #@80
    iput v4, p0, Ljava/util/Scanner;->findStartIndex:I

    #@82
    .line 368
    :cond_3
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    #@84
    if-eq v1, v4, :cond_4

    #@86
    .line 369
    add-int v4, v1, v3

    #@88
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@8a
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    #@8d
    move-result v5

    #@8e
    if-ne v4, v5, :cond_4

    #@90
    .line 372
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@92
    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@95
    .line 375
    iput-boolean v7, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@97
    .line 376
    return-object v8

    #@98
    .line 378
    :cond_4
    const/4 v4, 0x1

    #@99
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@9b
    .line 381
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@9d
    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@a0
    .line 384
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@a2
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@a5
    move-result-object v4

    #@a6
    return-object v4

    #@a7
    .line 388
    :cond_5
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@a9
    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@ac
    .line 391
    iput-boolean v7, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@ae
    .line 392
    return-object v8
.end method

.method public findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "horizon"    # I

    #@0
    .prologue
    .line 513
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .locals 7
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "horizon"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 446
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    #@4
    .line 447
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNotNull(Ljava/util/regex/Pattern;)V

    #@7
    .line 448
    if-gez p2, :cond_0

    #@9
    .line 449
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v5, "horizon < 0"

    #@e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v4

    #@12
    .line 451
    :cond_0
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@14
    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@17
    .line 453
    const/4 v3, 0x0

    #@18
    .line 454
    .local v3, "result":Ljava/lang/String;
    if-nez p2, :cond_5

    #@1a
    const v1, 0x7fffffff

    #@1d
    .line 459
    .local v1, "horizonEndIndex":I
    :cond_1
    :goto_0
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    #@1f
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    #@22
    move-result v0

    #@23
    .line 461
    .local v0, "findEndIndex":I
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    #@25
    if-gt v1, v4, :cond_6

    #@27
    const/4 v2, 0x1

    #@28
    .line 465
    .local v2, "isHorizonInBuffer":Z
    :goto_1
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@2a
    iget v5, p0, Ljava/util/Scanner;->findStartIndex:I

    #@2c
    invoke-virtual {v4, v5, v0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@2f
    .line 466
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@31
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_7

    #@37
    .line 467
    if-nez p2, :cond_2

    #@39
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@3b
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->hitEnd()Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_3

    #@41
    :cond_2
    if-nez v2, :cond_3

    #@43
    iget-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@45
    if-eqz v4, :cond_8

    #@47
    .line 468
    :cond_3
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@49
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 486
    .end local v3    # "result":Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_9

    #@4f
    .line 487
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@51
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    #@54
    move-result v4

    #@55
    iput v4, p0, Ljava/util/Scanner;->findStartIndex:I

    #@57
    .line 488
    const/4 v4, 0x1

    #@58
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@5a
    .line 492
    :goto_2
    return-object v3

    #@5b
    .line 454
    .end local v0    # "findEndIndex":I
    .end local v1    # "horizonEndIndex":I
    .end local v2    # "isHorizonInBuffer":Z
    .restart local v3    # "result":Ljava/lang/String;
    :cond_5
    iget v4, p0, Ljava/util/Scanner;->findStartIndex:I

    #@5d
    add-int v1, v4, p2

    #@5f
    .restart local v1    # "horizonEndIndex":I
    goto :goto_0

    #@60
    .line 461
    .restart local v0    # "findEndIndex":I
    :cond_6
    const/4 v2, 0x0

    #@61
    .restart local v2    # "isHorizonInBuffer":Z
    goto :goto_1

    #@62
    .line 475
    :cond_7
    if-nez v2, :cond_4

    #@64
    iget-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@66
    if-nez v4, :cond_4

    #@68
    .line 481
    :cond_8
    iget-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@6a
    if-nez v4, :cond_1

    #@6c
    .line 482
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    #@6f
    .line 483
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    #@72
    goto :goto_0

    #@73
    .line 490
    .end local v3    # "result":Ljava/lang/String;
    :cond_9
    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@75
    goto :goto_2
.end method

.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 526
    sget-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasNext(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 578
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public hasNext(Ljava/util/regex/Pattern;)Z
    .locals 3
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 542
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    #@4
    .line 543
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNotNull(Ljava/util/regex/Pattern;)V

    #@7
    .line 544
    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@9
    .line 545
    invoke-direct {p0}, Ljava/util/Scanner;->prepareForScan()V

    #@c
    .line 548
    invoke-direct {p0}, Ljava/util/Scanner;->setTokenRegion()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 549
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    #@15
    .line 550
    return v2

    #@16
    .line 552
    :cond_0
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@18
    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@1b
    .line 553
    const/4 v0, 0x0

    #@1c
    .line 555
    .local v0, "hasNext":Z
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@1e
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 556
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    #@26
    iput v1, p0, Ljava/util/Scanner;->cachedNextIndex:I

    #@28
    .line 557
    const/4 v1, 0x1

    #@29
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@2b
    .line 558
    const/4 v0, 0x1

    #@2c
    .line 560
    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    #@2f
    .line 561
    return v0
.end method

.method public hasNextBigDecimal()Z
    .locals 5

    #@0
    .prologue
    .line 591
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    #@3
    move-result-object v1

    #@4
    .line 592
    .local v1, "floatPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    #@5
    .line 593
    .local v3, "isBigDecimalValue":Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 594
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@d
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 595
    .local v2, "floatString":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 597
    :try_start_0
    new-instance v4, Ljava/math/BigDecimal;

    #@17
    invoke-direct {v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@1a
    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 598
    const/4 v3, 0x1

    #@1d
    .line 603
    .end local v2    # "floatString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    #@1e
    .line 599
    .restart local v2    # "floatString":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@1f
    .line 600
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    #@20
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@22
    goto :goto_0
.end method

.method public hasNextBigInteger()Z
    .locals 1

    #@0
    .prologue
    .line 616
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

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
    .line 632
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    #@3
    move-result-object v2

    #@4
    .line 633
    .local v2, "integerPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    #@5
    .line 634
    .local v3, "isBigIntegerValue":Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 635
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@d
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 636
    .local v1, "intString":Ljava/lang/String;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@13
    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 638
    :try_start_0
    new-instance v4, Ljava/math/BigInteger;

    #@19
    invoke-direct {v4, v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@1c
    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 639
    const/4 v3, 0x1

    #@1f
    .line 644
    .end local v1    # "intString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    #@20
    .line 640
    .restart local v1    # "intString":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@21
    .line 641
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    #@22
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@24
    goto :goto_0
.end method

.method public hasNextBoolean()Z
    .locals 1

    #@0
    .prologue
    .line 657
    sget-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasNextByte()Z
    .locals 1

    #@0
    .prologue
    .line 670
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

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
    .line 686
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    #@3
    move-result-object v2

    #@4
    .line 687
    .local v2, "integerPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    #@5
    .line 688
    .local v3, "isByteValue":Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 689
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@d
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 690
    .local v1, "intString":Ljava/lang/String;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@13
    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 692
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;I)Ljava/lang/Byte;

    #@1a
    move-result-object v4

    #@1b
    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 693
    const/4 v3, 0x1

    #@1e
    .line 698
    .end local v1    # "intString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    #@1f
    .line 694
    .restart local v1    # "intString":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@20
    .line 695
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    #@21
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@23
    goto :goto_0
.end method

.method public hasNextDouble()Z
    .locals 5

    #@0
    .prologue
    .line 711
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    #@3
    move-result-object v1

    #@4
    .line 712
    .local v1, "floatPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    #@5
    .line 713
    .local v3, "isDoubleValue":Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 714
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@d
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 715
    .local v2, "floatString":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 717
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    #@18
    move-result-object v4

    #@19
    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 718
    const/4 v3, 0x1

    #@1c
    .line 723
    .end local v2    # "floatString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    #@1d
    .line 719
    .restart local v2    # "floatString":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@1e
    .line 720
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    #@1f
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@21
    goto :goto_0
.end method

.method public hasNextFloat()Z
    .locals 5

    #@0
    .prologue
    .line 736
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    #@3
    move-result-object v1

    #@4
    .line 737
    .local v1, "floatPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    #@5
    .line 738
    .local v3, "isFloatValue":Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 739
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@d
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 740
    .local v2, "floatString":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 742
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    #@18
    move-result-object v4

    #@19
    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 743
    const/4 v3, 0x1

    #@1c
    .line 748
    .end local v2    # "floatString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    #@1d
    .line 744
    .restart local v2    # "floatString":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@1e
    .line 745
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    #@1f
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@21
    goto :goto_0
.end method

.method public hasNextInt()Z
    .locals 1

    #@0
    .prologue
    .line 761
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

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
    .line 778
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    #@3
    move-result-object v2

    #@4
    .line 779
    .local v2, "integerPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    #@5
    .line 780
    .local v3, "isIntValue":Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 781
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@d
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 782
    .local v1, "intString":Ljava/lang/String;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@13
    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 784
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    #@1a
    move-result-object v4

    #@1b
    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 785
    const/4 v3, 0x1

    #@1e
    .line 790
    .end local v1    # "intString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    #@1f
    .line 786
    .restart local v1    # "intString":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@20
    .line 787
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    #@21
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@23
    goto :goto_0
.end method

.method public hasNextLine()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 800
    invoke-direct {p0}, Ljava/util/Scanner;->prepareForScan()V

    #@4
    .line 801
    sget-object v2, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    #@6
    invoke-virtual {p0, v2, v1}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 802
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    #@d
    .line 803
    if-eqz v0, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    :cond_0
    return v1
.end method

.method public hasNextLong()Z
    .locals 1

    #@0
    .prologue
    .line 816
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextLong(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasNextLong(I)Z
    .locals 5
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 832
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    #@3
    move-result-object v2

    #@4
    .line 833
    .local v2, "integerPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    #@5
    .line 834
    .local v3, "isLongValue":Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 835
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@d
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 836
    .local v1, "intString":Ljava/lang/String;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@13
    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 838
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    #@1a
    move-result-object v4

    #@1b
    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 839
    const/4 v3, 0x1

    #@1e
    .line 844
    .end local v1    # "intString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    #@1f
    .line 840
    .restart local v1    # "intString":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@20
    .line 841
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    #@21
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@23
    goto :goto_0
.end method

.method public hasNextShort()Z
    .locals 1

    #@0
    .prologue
    .line 857
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

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
    .line 873
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    #@3
    move-result-object v2

    #@4
    .line 874
    .local v2, "integerPattern":Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    #@5
    .line 875
    .local v3, "isShortValue":Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 876
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@d
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 877
    .local v1, "intString":Ljava/lang/String;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@13
    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 879
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;I)Ljava/lang/Short;

    #@1a
    move-result-object v4

    #@1b
    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 880
    const/4 v3, 0x1

    #@1e
    .line 885
    .end local v1    # "intString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    #@1f
    .line 881
    .restart local v1    # "intString":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@20
    .line 882
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    #@21
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@23
    goto :goto_0
.end method

.method public ioException()Ljava/io/IOException;
    .locals 1

    #@0
    .prologue
    .line 893
    iget-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    #@2
    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 900
    iget-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public match()Ljava/util/regex/MatchResult;
    .locals 1

    #@0
    .prologue
    .line 923
    iget-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 924
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 926
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@c
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 940
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 941
    sget-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public next(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 998
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public next(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 1
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    .line 961
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    #@3
    .line 962
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNotNull(Ljava/util/regex/Pattern;)V

    #@6
    .line 963
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@9
    .line 964
    invoke-direct {p0}, Ljava/util/Scanner;->prepareForScan()V

    #@c
    .line 965
    invoke-direct {p0}, Ljava/util/Scanner;->setTokenRegion()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 966
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    #@15
    .line 968
    new-instance v0, Ljava/util/NoSuchElementException;

    #@17
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@1a
    throw v0

    #@1b
    .line 970
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@1d
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@20
    .line 971
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@22
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_1

    #@28
    .line 972
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    #@2b
    .line 973
    new-instance v0, Ljava/util/InputMismatchException;

    #@2d
    invoke-direct {v0}, Ljava/util/InputMismatchException;-><init>()V

    #@30
    throw v0

    #@31
    .line 976
    :cond_1
    const/4 v0, 0x1

    #@32
    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@34
    .line 977
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@36
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    return-object v0
.end method

.method public nextBigDecimal()Ljava/math/BigDecimal;
    .locals 6

    #@0
    .prologue
    .line 1021
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    #@3
    .line 1022
    iget-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@5
    .line 1023
    .local v4, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    #@6
    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@8
    .line 1024
    instance-of v5, v4, Ljava/math/BigDecimal;

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 1025
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    #@e
    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    #@10
    .line 1026
    check-cast v4, Ljava/math/BigDecimal;

    #@12
    .end local v4    # "obj":Ljava/lang/Object;
    return-object v4

    #@13
    .line 1028
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    #@16
    move-result-object v2

    #@17
    .line 1029
    .local v2, "floatPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 1030
    .local v3, "floatString":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 1033
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    #@21
    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 1039
    .local v0, "bigDecimalValue":Ljava/math/BigDecimal;
    return-object v0

    #@25
    .line 1034
    .end local v0    # "bigDecimalValue":Ljava/math/BigDecimal;
    :catch_0
    move-exception v1

    #@26
    .line 1035
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    #@27
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@29
    .line 1036
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    #@2c
    .line 1037
    new-instance v5, Ljava/util/InputMismatchException;

    #@2e
    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    #@31
    throw v5
.end method

.method public nextBigInteger()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 1055
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextBigInteger(I)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public nextBigInteger(I)Ljava/math/BigInteger;
    .locals 6
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 1082
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    #@3
    .line 1083
    iget-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@5
    .line 1084
    .local v4, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    #@6
    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@8
    .line 1085
    instance-of v5, v4, Ljava/math/BigInteger;

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 1086
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    #@e
    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    #@10
    .line 1087
    check-cast v4, Ljava/math/BigInteger;

    #@12
    .end local v4    # "obj":Ljava/lang/Object;
    return-object v4

    #@13
    .line 1089
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    #@16
    move-result-object v3

    #@17
    .line 1090
    .local v3, "integerPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 1091
    .local v2, "intString":Ljava/lang/String;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1d
    invoke-direct {p0, v2, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 1094
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    #@23
    invoke-direct {v0, v2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 1100
    .local v0, "bigIntegerValue":Ljava/math/BigInteger;
    return-object v0

    #@27
    .line 1095
    .end local v0    # "bigIntegerValue":Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    #@28
    .line 1096
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    #@29
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@2b
    .line 1097
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    #@2e
    .line 1098
    new-instance v5, Ljava/util/InputMismatchException;

    #@30
    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    #@33
    throw v5
.end method

.method public nextBoolean()Z
    .locals 1

    #@0
    .prologue
    .line 1117
    sget-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public nextByte()B
    .locals 1

    #@0
    .prologue
    .line 1133
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextByte(I)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nextByte(I)B
    .locals 6
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 1160
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    #@3
    .line 1161
    iget-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@5
    .line 1162
    .local v4, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    #@6
    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@8
    .line 1163
    instance-of v5, v4, Ljava/lang/Byte;

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 1164
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    #@e
    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    #@10
    .line 1165
    check-cast v4, Ljava/lang/Byte;

    #@12
    .end local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    #@15
    move-result v5

    #@16
    return v5

    #@17
    .line 1167
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    #@1a
    move-result-object v3

    #@1b
    .line 1168
    .local v3, "integerPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 1169
    .local v2, "intString":Ljava/lang/String;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@21
    invoke-direct {p0, v2, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 1170
    const/4 v0, 0x0

    #@26
    .line 1172
    .local v0, "byteValue":B
    :try_start_0
    invoke-static {v2, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result v0

    #@2a
    .line 1178
    .local v0, "byteValue":B
    return v0

    #@2b
    .line 1173
    .local v0, "byteValue":B
    :catch_0
    move-exception v1

    #@2c
    .line 1174
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    #@2d
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@2f
    .line 1175
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    #@32
    .line 1176
    new-instance v5, Ljava/util/InputMismatchException;

    #@34
    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    #@37
    throw v5
.end method

.method public nextDouble()D
    .locals 8

    #@0
    .prologue
    .line 1204
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    #@3
    .line 1205
    iget-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@5
    .line 1206
    .local v5, "obj":Ljava/lang/Object;
    const/4 v6, 0x0

    #@6
    iput-object v6, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@8
    .line 1207
    instance-of v6, v5, Ljava/lang/Double;

    #@a
    if-eqz v6, :cond_0

    #@c
    .line 1208
    iget v6, p0, Ljava/util/Scanner;->cachedNextIndex:I

    #@e
    iput v6, p0, Ljava/util/Scanner;->findStartIndex:I

    #@10
    .line 1209
    check-cast v5, Ljava/lang/Double;

    #@12
    .end local v5    # "obj":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    #@15
    move-result-wide v6

    #@16
    return-wide v6

    #@17
    .line 1211
    .restart local v5    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    #@1a
    move-result-object v3

    #@1b
    .line 1212
    .local v3, "floatPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 1213
    .local v4, "floatString":Ljava/lang/String;
    invoke-direct {p0, v4}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    .line 1216
    :try_start_0
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result-wide v0

    #@27
    .line 1222
    .local v0, "doubleValue":D
    return-wide v0

    #@28
    .line 1217
    .end local v0    # "doubleValue":D
    :catch_0
    move-exception v2

    #@29
    .line 1218
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    #@2a
    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@2c
    .line 1219
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    #@2f
    .line 1220
    new-instance v6, Ljava/util/InputMismatchException;

    #@31
    invoke-direct {v6}, Ljava/util/InputMismatchException;-><init>()V

    #@34
    throw v6
.end method

.method public nextFloat()F
    .locals 6

    #@0
    .prologue
    .line 1248
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    #@3
    .line 1249
    iget-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@5
    .line 1250
    .local v4, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    #@6
    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@8
    .line 1251
    instance-of v5, v4, Ljava/lang/Float;

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 1252
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    #@e
    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    #@10
    .line 1253
    check-cast v4, Ljava/lang/Float;

    #@12
    .end local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    #@15
    move-result v5

    #@16
    return v5

    #@17
    .line 1255
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    #@1a
    move-result-object v1

    #@1b
    .line 1256
    .local v1, "floatPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 1257
    .local v2, "floatString":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 1260
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result v3

    #@27
    .line 1266
    .local v3, "floatValue":F
    return v3

    #@28
    .line 1261
    .end local v3    # "floatValue":F
    :catch_0
    move-exception v0

    #@29
    .line 1262
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    #@2a
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@2c
    .line 1263
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    #@2f
    .line 1264
    new-instance v5, Ljava/util/InputMismatchException;

    #@31
    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    #@34
    throw v5
.end method

.method public nextInt()I
    .locals 1

    #@0
    .prologue
    .line 1282
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextInt(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nextInt(I)I
    .locals 6
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 1310
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    #@3
    .line 1311
    iget-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@5
    .line 1312
    .local v4, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    #@6
    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@8
    .line 1313
    instance-of v5, v4, Ljava/lang/Integer;

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 1314
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    #@e
    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    #@10
    .line 1315
    check-cast v4, Ljava/lang/Integer;

    #@12
    .end local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v5

    #@16
    return v5

    #@17
    .line 1317
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    #@1a
    move-result-object v3

    #@1b
    .line 1318
    .local v3, "integerPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 1319
    .local v1, "intString":Ljava/lang/String;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@21
    invoke-direct {p0, v1, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 1322
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result v2

    #@29
    .line 1328
    .local v2, "intValue":I
    return v2

    #@2a
    .line 1323
    .end local v2    # "intValue":I
    :catch_0
    move-exception v0

    #@2b
    .line 1324
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    #@2c
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@2e
    .line 1325
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    #@31
    .line 1326
    new-instance v5, Ljava/util/InputMismatchException;

    #@33
    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    #@36
    throw v5
.end method

.method public nextLine()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1345
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    #@4
    .line 1347
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@6
    sget-object v3, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    #@8
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@b
    .line 1348
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@d
    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    #@f
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    #@11
    invoke-virtual {v2, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@14
    .line 1352
    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@16
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_5

    #@1c
    .line 1353
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@1e
    if-nez v2, :cond_1

    #@20
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@22
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    #@25
    move-result v2

    #@26
    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    #@28
    if-eq v2, v3, :cond_3

    #@2a
    .line 1355
    :cond_1
    const/4 v2, 0x1

    #@2b
    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@2d
    .line 1356
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@2f
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    #@32
    move-result v2

    #@33
    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    #@35
    .line 1357
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@37
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    .line 1372
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@3d
    .line 1373
    sget-object v2, Ljava/util/Scanner;->LINE_TERMINATOR:Ljava/util/regex/Pattern;

    #@3f
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@42
    move-result-object v1

    #@43
    .line 1374
    .local v1, "terminatorMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_2

    #@49
    .line 1375
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    #@4c
    move-result v2

    #@4d
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    .line 1378
    .end local v1    # "terminatorMatcher":Ljava/util/regex/Matcher;
    :cond_2
    return-object v0

    #@52
    .line 1354
    .end local v0    # "result":Ljava/lang/String;
    :cond_3
    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    #@54
    iget-object v3, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    #@56
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->capacity()I

    #@59
    move-result v3

    #@5a
    if-lt v2, v3, :cond_1

    #@5c
    .line 1366
    :cond_4
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@5e
    if-nez v2, :cond_0

    #@60
    .line 1367
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    #@63
    .line 1368
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    #@66
    goto :goto_0

    #@67
    .line 1361
    :cond_5
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@69
    if-eqz v2, :cond_4

    #@6b
    .line 1362
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@6d
    .line 1363
    new-instance v2, Ljava/util/NoSuchElementException;

    #@6f
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@72
    throw v2
.end method

.method public nextLong()J
    .locals 2

    #@0
    .prologue
    .line 1394
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextLong(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public nextLong(I)J
    .locals 8
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 1422
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    #@3
    .line 1423
    iget-object v3, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@5
    .line 1424
    .local v3, "obj":Ljava/lang/Object;
    const/4 v6, 0x0

    #@6
    iput-object v6, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@8
    .line 1425
    instance-of v6, v3, Ljava/lang/Long;

    #@a
    if-eqz v6, :cond_0

    #@c
    .line 1426
    iget v6, p0, Ljava/util/Scanner;->cachedNextIndex:I

    #@e
    iput v6, p0, Ljava/util/Scanner;->findStartIndex:I

    #@10
    .line 1427
    check-cast v3, Ljava/lang/Long;

    #@12
    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@15
    move-result-wide v6

    #@16
    return-wide v6

    #@17
    .line 1429
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    #@1a
    move-result-object v2

    #@1b
    .line 1430
    .local v2, "integerPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 1431
    .local v1, "intString":Ljava/lang/String;
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@21
    invoke-direct {p0, v1, v6}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 1434
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result-wide v4

    #@29
    .line 1440
    .local v4, "longValue":J
    return-wide v4

    #@2a
    .line 1435
    .end local v4    # "longValue":J
    :catch_0
    move-exception v0

    #@2b
    .line 1436
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    #@2c
    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@2e
    .line 1437
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    #@31
    .line 1438
    new-instance v6, Ljava/util/InputMismatchException;

    #@33
    invoke-direct {v6}, Ljava/util/InputMismatchException;-><init>()V

    #@36
    throw v6
.end method

.method public nextShort()S
    .locals 1

    #@0
    .prologue
    .line 1456
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    #@2
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextShort(I)S

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nextShort(I)S
    .locals 6
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 1484
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    #@3
    .line 1485
    iget-object v3, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@5
    .line 1486
    .local v3, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    #@6
    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    #@8
    .line 1487
    instance-of v5, v3, Ljava/lang/Short;

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 1488
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    #@e
    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    #@10
    .line 1489
    check-cast v3, Ljava/lang/Short;

    #@12
    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    #@15
    move-result v5

    #@16
    return v5

    #@17
    .line 1491
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    #@1a
    move-result-object v2

    #@1b
    .line 1492
    .local v2, "integerPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 1493
    .local v1, "intString":Ljava/lang/String;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@21
    invoke-direct {p0, v1, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 1496
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result v4

    #@29
    .line 1502
    .local v4, "shortValue":S
    return v4

    #@2a
    .line 1497
    .end local v4    # "shortValue":S
    :catch_0
    move-exception v0

    #@2b
    .line 1498
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    #@2c
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@2e
    .line 1499
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    #@31
    .line 1500
    new-instance v5, Ljava/util/InputMismatchException;

    #@33
    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    #@36
    throw v5
.end method

.method public radix()I
    .locals 1

    #@0
    .prologue
    .line 1511
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    #@2
    return v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 1656
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
    .line 2110
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    #@2
    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    #@4
    .line 2111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Ljava/util/Scanner;->setLocale(Ljava/util/Locale;)V

    #@b
    .line 2112
    const/16 v0, 0xa

    #@d
    iput v0, p0, Ljava/util/Scanner;->currentRadix:I

    #@f
    .line 2113
    return-object p0
.end method

.method public skip(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1572
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .locals 4
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    .line 1531
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    #@3
    .line 1532
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNotNull(Ljava/util/regex/Pattern;)V

    #@6
    .line 1533
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@8
    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    #@b
    .line 1534
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@d
    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    #@f
    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    #@11
    invoke-virtual {v1, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@14
    .line 1536
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@16
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_3

    #@1c
    .line 1537
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@1e
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    #@21
    move-result v1

    #@22
    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    #@24
    if-lt v1, v2, :cond_1

    #@26
    .line 1538
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@28
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    #@2b
    move-result v1

    #@2c
    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    #@2e
    if-ne v1, v2, :cond_2

    #@30
    iget-boolean v0, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@32
    .line 1539
    :goto_1
    if-eqz v0, :cond_4

    #@34
    .line 1540
    const/4 v1, 0x1

    #@35
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@37
    .line 1541
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    #@39
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    #@3c
    move-result v1

    #@3d
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    #@3f
    .line 1555
    return-object p0

    #@40
    .line 1537
    :cond_1
    const/4 v0, 0x1

    #@41
    .local v0, "matchInBuffer":Z
    goto :goto_1

    #@42
    .line 1538
    .end local v0    # "matchInBuffer":Z
    :cond_2
    const/4 v0, 0x0

    #@43
    .restart local v0    # "matchInBuffer":Z
    goto :goto_1

    #@44
    .line 1545
    .end local v0    # "matchInBuffer":Z
    :cond_3
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@46
    if-eqz v1, :cond_4

    #@48
    .line 1546
    const/4 v1, 0x0

    #@49
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@4b
    .line 1547
    new-instance v1, Ljava/util/NoSuchElementException;

    #@4d
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@50
    throw v1

    #@51
    .line 1550
    :cond_4
    iget-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    #@53
    if-nez v1, :cond_0

    #@55
    .line 1551
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    #@58
    .line 1552
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    #@5b
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/util/Scanner;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    .line 1584
    const-string/jumbo v1, "[delimiter="

    #@14
    .line 1583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 1584
    iget-object v1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    #@1a
    .line 1583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 1585
    const-string/jumbo v1, ",findStartIndex="

    #@21
    .line 1583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 1585
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    #@27
    .line 1583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 1586
    const-string/jumbo v1, ",matchSuccessful="

    #@2e
    .line 1583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 1586
    iget-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    #@34
    .line 1583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 1587
    const-string/jumbo v1, ",closed="

    #@3b
    .line 1583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 1587
    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    #@41
    .line 1583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 1588
    const-string/jumbo v1, "]"

    #@48
    .line 1583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    return-object v0
.end method

.method public useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1612
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    #@0
    .prologue
    .line 1599
    iput-object p1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    #@2
    .line 1600
    return-object p0
.end method

.method public useLocale(Ljava/util/Locale;)Ljava/util/Scanner;
    .locals 2
    .param p1, "l"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1623
    if-nez p1, :cond_0

    #@2
    .line 1624
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "l == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1626
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setLocale(Ljava/util/Locale;)V

    #@e
    .line 1627
    return-object p0
.end method

.method public useRadix(I)Ljava/util/Scanner;
    .locals 0
    .param p1, "radix"    # I

    #@0
    .prologue
    .line 1638
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkRadix(I)V

    #@3
    .line 1639
    iput p1, p0, Ljava/util/Scanner;->currentRadix:I

    #@5
    .line 1640
    return-object p0
.end method
