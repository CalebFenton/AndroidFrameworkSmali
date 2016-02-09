.class public final Landroid/icu/impl/StringPrepDataReader;
.super Ljava/lang/Object;
.source "StringPrepDataReader.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# static fields
.field private static final DATA_FORMAT_ID:I = 0x53505250

.field private static final DATA_FORMAT_VERSION:[B

.field private static final debug:Z


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private unicodeVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 26
    const-string/jumbo v0, "NormalizerDataReader"

    #@3
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    sput-boolean v0, Landroid/icu/impl/StringPrepDataReader;->debug:Z

    #@9
    .line 86
    const/4 v0, 0x4

    #@a
    new-array v0, v0, [B

    #@c
    fill-array-data v0, :array_0

    #@f
    sput-object v0, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    #@11
    .line 25
    return-void

    #@12
    .line 86
    :array_0
    .array-data 1
        0x3t
        0x2t
        0x5t
        0x2t
    .end array-data
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    sget-boolean v0, Landroid/icu/impl/StringPrepDataReader;->debug:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Bytes in buffer "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@18
    move-result v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24
    .line 37
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    #@26
    .line 38
    iget-object v0, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    #@28
    const v1, 0x53505250

    #@2b
    invoke-static {v0, v1, p0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Landroid/icu/impl/StringPrepDataReader;->unicodeVersion:I

    #@31
    .line 40
    sget-boolean v0, Landroid/icu/impl/StringPrepDataReader;->debug:Z

    #@33
    if-eqz v0, :cond_1

    #@35
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@37
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v2, "Bytes left in byteBuffer "

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    iget-object v2, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    #@45
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    #@48
    move-result v2

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@54
    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public getDataFormatVersion()[B
    .locals 1

    #@0
    .prologue
    .line 51
    sget-object v0, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    #@2
    return-object v0
.end method

.method public getUnicodeVersion()[B
    .locals 1

    #@0
    .prologue
    .line 69
    iget v0, p0, Landroid/icu/impl/StringPrepDataReader;->unicodeVersion:I

    #@2
    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getVersionByteArrayFromCompactInt(I)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isDataVersionAcceptable([B)Z
    .locals 5
    .param p1, "version"    # [B

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v0, 0x0

    #@3
    .line 55
    aget-byte v1, p1, v0

    #@5
    sget-object v2, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    #@7
    aget-byte v2, v2, v0

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 56
    aget-byte v1, p1, v3

    #@d
    sget-object v2, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    #@f
    aget-byte v2, v2, v3

    #@11
    if-ne v1, v2, :cond_0

    #@13
    .line 57
    aget-byte v1, p1, v4

    #@15
    sget-object v2, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    #@17
    aget-byte v2, v2, v4

    #@19
    if-ne v1, v2, :cond_0

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 55
    :cond_0
    return v0
.end method

.method public read([C)V
    .locals 2
    .param p1, "mappingTable"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 46
    iget-object v1, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    #@6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getChar()C

    #@9
    move-result v1

    #@a
    aput-char v1, p1, v0

    #@c
    .line 45
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 43
    :cond_0
    return-void
.end method

.method public readIndexes(I)[I
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    new-array v1, p1, [I

    #@2
    .line 62
    .local v1, "indexes":[I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    #@5
    .line 63
    iget-object v2, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    #@7
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    #@a
    move-result v2

    #@b
    aput v2, v1, v0

    #@d
    .line 62
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 65
    :cond_0
    return-object v1
.end method
