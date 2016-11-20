.class public Lcom/android/org/bouncycastle/util/io/TeeOutputStream;
.super Ljava/io/OutputStream;
.source "TeeOutputStream.java"


# instance fields
.field private output1:Ljava/io/OutputStream;

.field private output2:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "output1"    # Ljava/io/OutputStream;
    .param p2, "output2"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 24
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output1:Ljava/io/OutputStream;

    #@5
    .line 25
    iput-object p2, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output2:Ljava/io/OutputStream;

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
    .line 59
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output1:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@5
    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output2:Ljava/io/OutputStream;

    #@7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@a
    .line 57
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output1:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@5
    .line 53
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output2:Ljava/io/OutputStream;

    #@7
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@a
    .line 50
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output1:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    .line 46
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output2:Ljava/io/OutputStream;

    #@7
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@a
    .line 43
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output1:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    #@5
    .line 32
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output2:Ljava/io/OutputStream;

    #@7
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    #@a
    .line 29
    return-void
.end method

.method public write([BII)V
    .locals 1
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
    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output1:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@5
    .line 39
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output2:Ljava/io/OutputStream;

    #@7
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@a
    .line 36
    return-void
.end method
