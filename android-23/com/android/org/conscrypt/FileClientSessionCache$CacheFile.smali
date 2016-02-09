.class Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;
.super Ljava/io/File;
.source "FileClientSessionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/FileClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheFile"
.end annotation


# instance fields
.field lastModified:J

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 349
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@3
    .line 353
    const-wide/16 v0, -0x1

    #@5
    iput-wide v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified:J

    #@7
    .line 350
    iput-object p2, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    #@9
    .line 348
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/io/File;)I
    .locals 8
    .param p1, "another"    # Ljava/io/File;

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 367
    invoke-virtual {p0}, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified()J

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    #@9
    move-result-wide v4

    #@a
    sub-long v0, v2, v4

    #@c
    .line 368
    .local v0, "result":J
    cmp-long v2, v0, v6

    #@e
    if-nez v2, :cond_0

    #@10
    .line 369
    invoke-super {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    #@13
    move-result v2

    #@14
    return v2

    #@15
    .line 371
    :cond_0
    cmp-long v2, v0, v6

    #@17
    if-gez v2, :cond_1

    #@19
    const/4 v2, -0x1

    #@1a
    :goto_0
    return v2

    #@1b
    :cond_1
    const/4 v2, 0x1

    #@1c
    goto :goto_0
.end method

.method public lastModified()J
    .locals 4

    #@0
    .prologue
    .line 357
    iget-wide v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified:J

    #@2
    .line 358
    .local v0, "lastModified":J
    const-wide/16 v2, -0x1

    #@4
    cmp-long v2, v0, v2

    #@6
    if-nez v2, :cond_0

    #@8
    .line 359
    invoke-super {p0}, Ljava/io/File;->lastModified()J

    #@b
    move-result-wide v0

    #@c
    .end local v0    # "lastModified":J
    iput-wide v0, p0, Lcom/android/org/conscrypt/FileClientSessionCache$CacheFile;->lastModified:J

    #@e
    .line 361
    .restart local v0    # "lastModified":J
    :cond_0
    return-wide v0
.end method
