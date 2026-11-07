.class public Landroid/util/AtomicFileBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "AtomicFileBufferedOutputStream.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AtomicFileBufferedOutputStream"


# instance fields
.field private final blacklist mAtomicFileOutputStream:Landroid/util/AtomicFileOutputStream;


# direct methods
.method public constructor blacklist <init>(Landroid/util/AtomicFile;)V
    .registers 3
    .param p1, "file"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Landroid/util/AtomicFileOutputStream;

    invoke-direct {v0, p1}, Landroid/util/AtomicFileOutputStream;-><init>(Landroid/util/AtomicFile;)V

    invoke-direct {p0, v0}, Landroid/util/AtomicFileBufferedOutputStream;-><init>(Landroid/util/AtomicFileOutputStream;)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/AtomicFile;I)V
    .registers 4
    .param p1, "file"    # Landroid/util/AtomicFile;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Landroid/util/AtomicFileOutputStream;

    invoke-direct {v0, p1}, Landroid/util/AtomicFileOutputStream;-><init>(Landroid/util/AtomicFile;)V

    invoke-direct {p0, v0, p2}, Landroid/util/AtomicFileBufferedOutputStream;-><init>(Landroid/util/AtomicFileOutputStream;I)V

    .line 54
    return-void
.end method

.method private constructor blacklist <init>(Landroid/util/AtomicFileOutputStream;)V
    .registers 2
    .param p1, "atomicFileOutputStream"    # Landroid/util/AtomicFileOutputStream;

    .line 45
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    iput-object p1, p0, Landroid/util/AtomicFileBufferedOutputStream;->mAtomicFileOutputStream:Landroid/util/AtomicFileOutputStream;

    .line 47
    return-void
.end method

.method private constructor blacklist <init>(Landroid/util/AtomicFileOutputStream;I)V
    .registers 3
    .param p1, "atomicFileOutputStream"    # Landroid/util/AtomicFileOutputStream;
    .param p2, "bufferSize"    # I

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 59
    iput-object p1, p0, Landroid/util/AtomicFileBufferedOutputStream;->mAtomicFileOutputStream:Landroid/util/AtomicFileOutputStream;

    .line 60
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

    .line 66
    invoke-virtual {p0}, Landroid/util/AtomicFileBufferedOutputStream;->flush()V

    .line 67
    iget-object v0, p0, Landroid/util/AtomicFileBufferedOutputStream;->mAtomicFileOutputStream:Landroid/util/AtomicFileOutputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFileOutputStream;->markSuccess()V

    .line 68
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtomicFileBufferedOutputStream["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/AtomicFileBufferedOutputStream;->mAtomicFileOutputStream:Landroid/util/AtomicFileOutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
