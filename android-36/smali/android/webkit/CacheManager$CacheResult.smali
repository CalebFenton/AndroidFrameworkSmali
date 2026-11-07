.class public Landroid/webkit/CacheManager$CacheResult;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist contentLength:J

.field greylist contentdisposition:Ljava/lang/String;

.field greylist crossDomain:Ljava/lang/String;

.field greylist encoding:Ljava/lang/String;

.field greylist etag:Ljava/lang/String;

.field greylist expires:J

.field greylist expiresString:Ljava/lang/String;

.field greylist httpStatusCode:I

.field greylist inStream:Ljava/io/InputStream;

.field greylist lastModified:Ljava/lang/String;

.field greylist localPath:Ljava/lang/String;

.field greylist location:Ljava/lang/String;

.field greylist mimeType:Ljava/lang/String;

.field greylist outFile:Ljava/io/File;

.field greylist outStream:Ljava/io/OutputStream;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public greylist getContentDisposition()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getContentLength()J
    .registers 3

    .line 109
    iget-wide v0, p0, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    return-wide v0
.end method

.method public greylist getETag()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getEncoding()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getExpires()J
    .registers 3

    .line 132
    iget-wide v0, p0, Landroid/webkit/CacheManager$CacheResult;->expires:J

    return-wide v0
.end method

.method public greylist getExpiresString()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getHttpStatusCode()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    return v0
.end method

.method public greylist getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public greylist getLastModified()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getLocalPath()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getLocation()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getMimeType()Ljava/lang/String;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public greylist-max-o setContentLength(J)V
    .registers 3
    .param p1, "contentLength"    # J

    .line 260
    iput-wide p1, p0, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    .line 261
    return-void
.end method

.method public greylist setEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;

    .line 253
    iput-object p1, p0, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public greylist setInputStream(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 243
    iput-object p1, p0, Landroid/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;

    .line 244
    return-void
.end method
