.class public Lcom/android/org/bouncycastle/util/io/TeeOutputStream;
.super Ljava/io/OutputStream;
.source "TeeOutputStream.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private blacklist output1:Ljava/io/OutputStream;

.field private blacklist output2:Ljava/io/OutputStream;


# direct methods
.method public constructor blacklist <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output1:Ljava/io/OutputStream;

    .line 27
    iput-object p2, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output2:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output1:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 62
    iget-object p0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output2:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output1:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 55
    iget-object p0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output2:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output1:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 48
    iget-object p0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output2:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output1:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 34
    iget-object p0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output2:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 5

    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output1:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 41
    iget-object p0, p0, Lcom/android/org/bouncycastle/util/io/TeeOutputStream;->output2:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
