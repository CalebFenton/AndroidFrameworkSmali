.class public Ljava/io/SequenceInputStream;
.super Ljava/io/InputStream;
.source "SequenceInputStream.java"


# instance fields
.field e:Ljava/util/Enumeration;

.field in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "s1"    # Ljava/io/InputStream;
    .param p2, "s2"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 88
    new-instance v1, Ljava/util/Vector;

    #@5
    const/4 v2, 0x2

    #@6
    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    #@9
    .line 90
    .local v1, "v":Ljava/util/Vector;
    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@c
    .line 91
    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@f
    .line 92
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@12
    move-result-object v2

    #@13
    iput-object v2, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    #@15
    .line 94
    :try_start_0
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 87
    return-void

    #@19
    .line 95
    :catch_0
    move-exception v0

    #@1a
    .line 97
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/Error;

    #@1c
    const-string/jumbo v3, "panic"

    #@1f
    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@22
    throw v2
.end method

.method public constructor <init>(Ljava/util/Enumeration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 66
    .local p1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/io/InputStream;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 67
    iput-object p1, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    #@5
    .line 69
    :try_start_0
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 66
    return-void

    #@9
    .line 70
    :catch_0
    move-exception v0

    #@a
    .line 72
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    #@c
    const-string/jumbo v2, "panic"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@12
    throw v1
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
    .line 138
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 139
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 141
    :cond_0
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@8
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    :cond_0
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    #@3
    .line 233
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 230
    return-void
.end method

.method final nextStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 105
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 106
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@a
    .line 109
    :cond_0
    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    #@c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 110
    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    #@14
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/io/InputStream;

    #@1a
    iput-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@1c
    .line 111
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@1e
    if-nez v0, :cond_2

    #@20
    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    #@22
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@25
    throw v0

    #@26
    .line 114
    :cond_1
    iput-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@28
    .line 104
    :cond_2
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 163
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 164
    return v2

    #@6
    .line 166
    :cond_0
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@8
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@b
    move-result v0

    #@c
    .line 167
    .local v0, "c":I
    if-ne v0, v2, :cond_1

    #@e
    .line 168
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    #@11
    .line 169
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->read()I

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 171
    :cond_1
    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 198
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 199
    const/4 v1, -0x1

    #@6
    return v1

    #@7
    .line 200
    :cond_0
    if-nez p1, :cond_1

    #@9
    .line 201
    new-instance v1, Ljava/lang/NullPointerException;

    #@b
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@e
    throw v1

    #@f
    .line 202
    :cond_1
    if-ltz p2, :cond_2

    #@11
    if-gez p3, :cond_3

    #@13
    .line 203
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@15
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@18
    throw v1

    #@19
    .line 202
    :cond_3
    array-length v1, p1

    #@1a
    sub-int/2addr v1, p2

    #@1b
    if-gt p3, v1, :cond_2

    #@1d
    .line 204
    if-nez p3, :cond_4

    #@1f
    .line 205
    return v2

    #@20
    .line 208
    :cond_4
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@22
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@25
    move-result v0

    #@26
    .line 209
    .local v0, "n":I
    if-gtz v0, :cond_5

    #@28
    .line 210
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    #@2b
    .line 211
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/SequenceInputStream;->read([BII)I

    #@2e
    move-result v1

    #@2f
    return v1

    #@30
    .line 213
    :cond_5
    return v0
.end method
