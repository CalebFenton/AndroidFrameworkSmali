.class public Lcom/android/org/bouncycastle/util/io/TeeInputStream;
.super Ljava/io/InputStream;
.source "TeeInputStream.java"


# instance fields
.field private final input:Ljava/io/InputStream;

.field private final output:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 24
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    #@5
    .line 25
    iput-object p2, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    #@7
    .line 22
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@5
    .line 64
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    #@7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@a
    .line 61
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    #@2
    return-object v0
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
    .line 50
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    .line 52
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@8
    .line 54
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    #@a
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    #@d
    .line 57
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 31
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 37
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->input:Ljava/io/InputStream;

    #@2
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    .line 39
    .local v0, "i":I
    if-lez v0, :cond_0

    #@8
    .line 41
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/io/TeeInputStream;->output:Ljava/io/OutputStream;

    #@a
    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    #@d
    .line 44
    :cond_0
    return v0
.end method
