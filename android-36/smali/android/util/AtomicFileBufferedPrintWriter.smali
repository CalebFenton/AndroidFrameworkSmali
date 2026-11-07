.class public Landroid/util/AtomicFileBufferedPrintWriter;
.super Ljava/io/PrintWriter;
.source "AtomicFileBufferedPrintWriter.java"


# instance fields
.field private final blacklist mAtomicFileOutStream:Landroid/util/AtomicFileOutputStream;


# direct methods
.method public constructor blacklist <init>(Landroid/util/AtomicFile;Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "atomicFile"    # Landroid/util/AtomicFile;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Landroid/util/AtomicFileOutputStream;

    invoke-direct {v0, p1}, Landroid/util/AtomicFileOutputStream;-><init>(Landroid/util/AtomicFile;)V

    invoke-direct {p0, v0, p2}, Landroid/util/AtomicFileBufferedPrintWriter;-><init>(Landroid/util/AtomicFileOutputStream;Ljava/nio/charset/Charset;)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/AtomicFile;Ljava/nio/charset/Charset;I)V
    .registers 5
    .param p1, "atomicFile"    # Landroid/util/AtomicFile;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Landroid/util/AtomicFileOutputStream;

    invoke-direct {v0, p1}, Landroid/util/AtomicFileOutputStream;-><init>(Landroid/util/AtomicFile;)V

    invoke-direct {p0, v0, p2, p3}, Landroid/util/AtomicFileBufferedPrintWriter;-><init>(Landroid/util/AtomicFileOutputStream;Ljava/nio/charset/Charset;I)V

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/AtomicFileOutputStream;Ljava/nio/charset/Charset;)V
    .registers 5
    .param p1, "outStream"    # Landroid/util/AtomicFileOutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 51
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 52
    iput-object p1, p0, Landroid/util/AtomicFileBufferedPrintWriter;->mAtomicFileOutStream:Landroid/util/AtomicFileOutputStream;

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/AtomicFileOutputStream;Ljava/nio/charset/Charset;I)V
    .registers 6
    .param p1, "outStream"    # Landroid/util/AtomicFileOutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "bufferSize"    # I

    .line 68
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1, p3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-direct {p0, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 69
    iput-object p1, p0, Landroid/util/AtomicFileBufferedPrintWriter;->mAtomicFileOutStream:Landroid/util/AtomicFileOutputStream;

    .line 70
    return-void
.end method


# virtual methods
.method public blacklist markSuccess()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Landroid/util/AtomicFileBufferedPrintWriter;->flush()V

    .line 78
    iget-object v0, p0, Landroid/util/AtomicFileBufferedPrintWriter;->mAtomicFileOutStream:Landroid/util/AtomicFileOutputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFileOutputStream;->markSuccess()V

    .line 79
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtomicFileBufferedPrintWriter["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/AtomicFileBufferedPrintWriter;->mAtomicFileOutStream:Landroid/util/AtomicFileOutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
