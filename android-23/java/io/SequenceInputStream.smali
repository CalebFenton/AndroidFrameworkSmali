.class public Ljava/io/SequenceInputStream;
.super Ljava/io/InputStream;
.source "SequenceInputStream.java"


# instance fields
.field private e:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "s1"    # Ljava/io/InputStream;
    .param p2, "s2"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 52
    if-nez p1, :cond_0

    #@5
    .line 53
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v2, "s1 == null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 55
    :cond_0
    new-instance v0, Ljava/util/Vector;

    #@10
    const/4 v1, 0x1

    #@11
    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    #@14
    .line 56
    .local v0, "inVector":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/io/InputStream;>;"
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@17
    .line 57
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    #@1d
    .line 58
    iput-object p1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@1f
    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/Enumeration;)V
    .locals 2
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
    .line 71
    .local p1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/io/InputStream;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 72
    iput-object p1, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    #@5
    .line 73
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 74
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/io/InputStream;

    #@11
    iput-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@13
    .line 75
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@15
    if-nez v0, :cond_0

    #@17
    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    #@19
    const-string/jumbo v1, "element is null"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 71
    :cond_0
    return-void
.end method

.method private nextStream()V
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
    .line 109
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 110
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@a
    .line 112
    :cond_0
    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    #@c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 113
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
    .line 114
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@1e
    if-nez v0, :cond_2

    #@20
    .line 115
    new-instance v0, Ljava/lang/NullPointerException;

    #@22
    const-string/jumbo v1, "element is null"

    #@25
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 118
    :cond_1
    iput-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@2b
    .line 108
    :cond_2
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
    .line 83
    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 84
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@a
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 86
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public close()V
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
    .line 97
    :goto_0
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 98
    invoke-direct {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    #@8
    goto :goto_0

    #@9
    .line 100
    :cond_0
    iput-object v1, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    #@b
    .line 96
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    :goto_0
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 139
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@6
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@9
    move-result v0

    #@a
    .line 140
    .local v0, "result":I
    if-ltz v0, :cond_0

    #@c
    .line 141
    return v0

    #@d
    .line 143
    :cond_0
    invoke-direct {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    #@10
    goto :goto_0

    #@11
    .line 145
    .end local v0    # "result":I
    :cond_1
    const/4 v1, -0x1

    #@12
    return v1
.end method

.method public read([BII)I
    .locals 3
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
    const/4 v2, -0x1

    #@1
    .line 174
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 175
    return v2

    #@6
    .line 177
    :cond_0
    array-length v1, p1

    #@7
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@a
    .line 178
    :goto_0
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@c
    if-eqz v1, :cond_2

    #@e
    .line 179
    iget-object v1, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    #@10
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@13
    move-result v0

    #@14
    .line 180
    .local v0, "result":I
    if-ltz v0, :cond_1

    #@16
    .line 181
    return v0

    #@17
    .line 183
    :cond_1
    invoke-direct {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    #@1a
    goto :goto_0

    #@1b
    .line 185
    .end local v0    # "result":I
    :cond_2
    return v2
.end method
