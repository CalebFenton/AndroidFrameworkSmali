.class public Lcom/android/internal/http/multipart/FilePart;
.super Lcom/android/internal/http/multipart/PartBase;
.source "FilePart.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_TRANSFER_ENCODING:Ljava/lang/String; = "binary"

.field protected static final FILE_NAME:Ljava/lang/String; = "; filename="

.field private static final FILE_NAME_BYTES:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private source:Lcom/android/internal/http/multipart/PartSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 69
    const-class v0, Lcom/android/internal/http/multipart/FilePart;

    #@2
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/internal/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    #@8
    .line 76
    const-string/jumbo v0, "; filename="

    #@b
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@e
    move-result-object v0

    #@f
    .line 75
    sput-object v0, Lcom/android/internal/http/multipart/FilePart;->FILE_NAME_BYTES:[B

    #@11
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "partSource"    # Lcom/android/internal/http/multipart/PartSource;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 113
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "partSource"    # Lcom/android/internal/http/multipart/PartSource;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 95
    if-nez p3, :cond_0

    #@2
    const-string/jumbo p3, "application/octet-stream"

    #@5
    .line 96
    .end local p3    # "contentType":Ljava/lang/String;
    :cond_0
    if-nez p4, :cond_1

    #@7
    const-string/jumbo p4, "ISO-8859-1"

    #@a
    .line 97
    .end local p4    # "charset":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "binary"

    #@d
    .line 93
    invoke-direct {p0, p1, p3, p4, v0}, Lcom/android/internal/http/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 100
    if-nez p2, :cond_2

    #@12
    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "Source may not be null"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 103
    :cond_2
    iput-object p2, p0, Lcom/android/internal/http/multipart/FilePart;->source:Lcom/android/internal/http/multipart/PartSource;

    #@1d
    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 127
    new-instance v0, Lcom/android/internal/http/multipart/FilePartSource;

    #@3
    invoke-direct {v0, p2}, Lcom/android/internal/http/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    #@6
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    new-instance v0, Lcom/android/internal/http/multipart/FilePartSource;

    #@2
    invoke-direct {v0, p2}, Lcom/android/internal/http/multipart/FilePartSource;-><init>(Ljava/io/File;)V

    #@5
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/internal/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 160
    new-instance v0, Lcom/android/internal/http/multipart/FilePartSource;

    #@3
    invoke-direct {v0, p2, p3}, Lcom/android/internal/http/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    #@6
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/internal/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    new-instance v0, Lcom/android/internal/http/multipart/FilePartSource;

    #@2
    invoke-direct {v0, p2, p3}, Lcom/android/internal/http/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    #@5
    invoke-direct {p0, p1, v0, p4, p5}, Lcom/android/internal/http/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/android/internal/http/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 178
    return-void
.end method


# virtual methods
.method protected getSource()Lcom/android/internal/http/multipart/PartSource;
    .locals 2

    #@0
    .prologue
    .line 239
    sget-object v0, Lcom/android/internal/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v1, "enter getSource()"

    #@5
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    #@8
    .line 240
    iget-object v0, p0, Lcom/android/internal/http/multipart/FilePart;->source:Lcom/android/internal/http/multipart/PartSource;

    #@a
    return-object v0
.end method

.method protected lengthOfData()J
    .locals 2

    #@0
    .prologue
    .line 250
    sget-object v0, Lcom/android/internal/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v1, "enter lengthOfData()"

    #@5
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    #@8
    .line 251
    iget-object v0, p0, Lcom/android/internal/http/multipart/FilePart;->source:Lcom/android/internal/http/multipart/PartSource;

    #@a
    invoke-interface {v0}, Lcom/android/internal/http/multipart/PartSource;->getLength()J

    #@d
    move-result-wide v0

    #@e
    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    sget-object v3, Lcom/android/internal/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v4, "enter sendData(OutputStream out)"

    #@5
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    #@8
    .line 211
    invoke-virtual {p0}, Lcom/android/internal/http/multipart/FilePart;->lengthOfData()J

    #@b
    move-result-wide v4

    #@c
    const-wide/16 v6, 0x0

    #@e
    cmp-long v3, v4, v6

    #@10
    if-nez v3, :cond_0

    #@12
    .line 216
    sget-object v3, Lcom/android/internal/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    #@14
    const-string/jumbo v4, "No data to send."

    #@17
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@1a
    .line 217
    return-void

    #@1b
    .line 220
    :cond_0
    const/16 v3, 0x1000

    #@1d
    new-array v2, v3, [B

    #@1f
    .line 221
    .local v2, "tmp":[B
    iget-object v3, p0, Lcom/android/internal/http/multipart/FilePart;->source:Lcom/android/internal/http/multipart/PartSource;

    #@21
    invoke-interface {v3}, Lcom/android/internal/http/multipart/PartSource;->createInputStream()Ljava/io/InputStream;

    #@24
    move-result-object v0

    #@25
    .line 224
    .local v0, "instream":Ljava/io/InputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    #@28
    move-result v1

    #@29
    .local v1, "len":I
    if-ltz v1, :cond_1

    #@2b
    .line 225
    const/4 v3, 0x0

    #@2c
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 227
    .end local v1    # "len":I
    :catchall_0
    move-exception v3

    #@31
    .line 229
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@34
    .line 227
    throw v3

    #@35
    .line 229
    .restart local v1    # "len":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@38
    .line 209
    return-void
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    sget-object v1, Lcom/android/internal/http/multipart/FilePart;->LOG:Lorg/apache/commons/logging/Log;

    #@2
    const-string/jumbo v2, "enter sendDispositionHeader(OutputStream out)"

    #@5
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    #@8
    .line 192
    invoke-super {p0, p1}, Lcom/android/internal/http/multipart/PartBase;->sendDispositionHeader(Ljava/io/OutputStream;)V

    #@b
    .line 193
    iget-object v1, p0, Lcom/android/internal/http/multipart/FilePart;->source:Lcom/android/internal/http/multipart/PartSource;

    #@d
    invoke-interface {v1}, Lcom/android/internal/http/multipart/PartSource;->getFileName()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 194
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@13
    .line 195
    sget-object v1, Lcom/android/internal/http/multipart/FilePart;->FILE_NAME_BYTES:[B

    #@15
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@18
    .line 196
    sget-object v1, Lcom/android/internal/http/multipart/FilePart;->QUOTE_BYTES:[B

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 197
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@24
    .line 198
    sget-object v1, Lcom/android/internal/http/multipart/FilePart;->QUOTE_BYTES:[B

    #@26
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@29
    .line 190
    :cond_0
    return-void
.end method
