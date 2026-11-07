.class public Lcom/android/internal/os/ByteTransferPipe;
.super Lcom/android/internal/os/TransferPipe;
.source "ByteTransferPipe.java"


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "ByteTransferPipe"


# instance fields
.field private blacklist mOutputStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "bufferPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    const-string v0, "ByteTransferPipe"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/TransferPipe;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public blacklist get()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/ByteTransferPipe;->go(Ljava/io/FileDescriptor;)V

    .line 47
    iget-object v0, p0, Lcom/android/internal/os/ByteTransferPipe;->mOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getNewOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 41
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ByteTransferPipe;->mOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 42
    iget-object v0, p0, Lcom/android/internal/os/ByteTransferPipe;->mOutputStream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method
