.class final Ljava/util/jar/JarFile$JarFileInputStream;
.super Ljava/io/FilterInputStream;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JarFileInputStream"
.end annotation


# instance fields
.field private count:J

.field private done:Z

.field private final entry:Ljava/util/jar/JarVerifier$VerifierEntry;


# direct methods
.method constructor <init>(Ljava/io/InputStream;JLjava/util/jar/JarVerifier$VerifierEntry;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "size"    # J
    .param p4, "e"    # Ljava/util/jar/JarVerifier$VerifierEntry;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 64
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    #@6
    .line 68
    iput-object p4, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    #@8
    .line 70
    iput-wide p2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    #@a
    .line 66
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    iget-boolean v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 130
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 132
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const-wide/16 v6, 0x0

    #@3
    const/4 v4, -0x1

    #@4
    .line 75
    iget-boolean v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 76
    return v4

    #@9
    .line 78
    :cond_0
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    #@b
    cmp-long v1, v2, v6

    #@d
    if-lez v1, :cond_3

    #@f
    .line 79
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    #@12
    move-result v0

    #@13
    .line 80
    .local v0, "r":I
    if-eq v0, v4, :cond_2

    #@15
    .line 81
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    #@17
    invoke-virtual {v1, v0}, Ljava/util/jar/JarVerifier$VerifierEntry;->write(I)V

    #@1a
    .line 82
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    #@1c
    const-wide/16 v4, 0x1

    #@1e
    sub-long/2addr v2, v4

    #@1f
    iput-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    #@21
    .line 86
    :goto_0
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    #@23
    cmp-long v1, v2, v6

    #@25
    if-nez v1, :cond_1

    #@27
    .line 87
    iput-boolean v8, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    #@29
    .line 88
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    #@2b
    invoke-virtual {v1}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    #@2e
    .line 90
    :cond_1
    return v0

    #@2f
    .line 84
    :cond_2
    iput-wide v6, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    #@31
    goto :goto_0

    #@32
    .line 92
    .end local v0    # "r":I
    :cond_3
    iput-boolean v8, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    #@34
    .line 93
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    #@36
    invoke-virtual {v1}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    #@39
    .line 94
    return v4
.end method

.method public read([BII)I
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const-wide/16 v6, 0x0

    #@3
    const/4 v4, -0x1

    #@4
    .line 100
    iget-boolean v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 101
    return v4

    #@9
    .line 103
    :cond_0
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    #@b
    cmp-long v2, v2, v6

    #@d
    if-lez v2, :cond_4

    #@f
    .line 104
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    #@12
    move-result v0

    #@13
    .line 105
    .local v0, "r":I
    if-eq v0, v4, :cond_3

    #@15
    .line 106
    move v1, v0

    #@16
    .line 107
    .local v1, "size":I
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    #@18
    int-to-long v4, v1

    #@19
    cmp-long v2, v2, v4

    #@1b
    if-gez v2, :cond_1

    #@1d
    .line 108
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    #@1f
    long-to-int v1, v2

    #@20
    .line 110
    :cond_1
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    #@22
    invoke-virtual {v2, p1, p2, v1}, Ljava/util/jar/JarVerifier$VerifierEntry;->write([BII)V

    #@25
    .line 111
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    #@27
    int-to-long v4, v1

    #@28
    sub-long/2addr v2, v4

    #@29
    iput-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    #@2b
    .line 115
    .end local v1    # "size":I
    :goto_0
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    #@2d
    cmp-long v2, v2, v6

    #@2f
    if-nez v2, :cond_2

    #@31
    .line 116
    iput-boolean v8, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    #@33
    .line 117
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    #@35
    invoke-virtual {v2}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    #@38
    .line 119
    :cond_2
    return v0

    #@39
    .line 113
    :cond_3
    iput-wide v6, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    #@3b
    goto :goto_0

    #@3c
    .line 121
    .end local v0    # "r":I
    :cond_4
    iput-boolean v8, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    #@3e
    .line 122
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    #@40
    invoke-virtual {v2}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    #@43
    .line 123
    return v4
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
