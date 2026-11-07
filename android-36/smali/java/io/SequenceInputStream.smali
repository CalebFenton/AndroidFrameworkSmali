.class public Ljava/io/SequenceInputStream;
.super Ljava/io/InputStream;
.source "SequenceInputStream.java"


# instance fields
.field greylist-max-o e:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o in:Ljava/io/InputStream;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .registers 5
    .param p1, "s1"    # Ljava/io/InputStream;
    .param p2, "s2"    # Ljava/io/InputStream;

    .line 82
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 83
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 84
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/io/InputStream;>;"
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    iput-object v1, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    .line 87
    invoke-direct {p0}, Ljava/io/SequenceInputStream;->peekNextStream()V

    .line 88
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Enumeration;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/io/InputStream;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 67
    iput-object p1, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    .line 68
    invoke-direct {p0}, Ljava/io/SequenceInputStream;->peekNextStream()V

    .line 69
    return-void
.end method

.method private blacklist peekNextStream()V
    .registers 2

    .line 101
    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 102
    iget-object v0, p0, Ljava/io/SequenceInputStream;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    .line 103
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_17

    goto :goto_20

    .line 104
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 106
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    .line 108
    :goto_20
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_6

    .line 131
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_6
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    nop

    :cond_1
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    .line 225
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 226
    return-void
.end method

.method final greylist-max-o nextStream()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 95
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 97
    :cond_9
    invoke-direct {p0}, Ljava/io/SequenceInputStream;->peekNextStream()V

    .line 98
    return-void
.end method

.method public whitelist test-api read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    nop

    :goto_1
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-eqz v0, :cond_13

    .line 156
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 157
    .local v0, "c":I
    if-eq v0, v1, :cond_f

    .line 158
    return v0

    .line 160
    :cond_f
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    .line 161
    .end local v0    # "c":I
    goto :goto_1

    .line 162
    :cond_13
    return v1
.end method

.method public whitelist test-api read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 190
    return v1

    .line 191
    :cond_6
    if-eqz p1, :cond_2b

    .line 193
    if-ltz p2, :cond_25

    if-ltz p3, :cond_25

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_25

    .line 195
    if-nez p3, :cond_14

    .line 196
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_14
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 200
    .local v0, "n":I
    if-lez v0, :cond_1d

    .line 201
    return v0

    .line 203
    :cond_1d
    invoke-virtual {p0}, Ljava/io/SequenceInputStream;->nextStream()V

    .line 204
    .end local v0    # "n":I
    iget-object v0, p0, Ljava/io/SequenceInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_14

    .line 205
    return v1

    .line 194
    :cond_25
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 192
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
