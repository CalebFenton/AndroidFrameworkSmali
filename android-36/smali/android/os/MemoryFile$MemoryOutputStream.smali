.class Landroid/os/MemoryFile$MemoryOutputStream;
.super Ljava/io/OutputStream;
.source "MemoryFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MemoryFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryOutputStream"
.end annotation


# instance fields
.field private greylist-max-o mOffset:I

.field private greylist-max-o mSingleByte:[B

.field final synthetic blacklist this$0:Landroid/os/MemoryFile;


# direct methods
.method private constructor blacklist <init>(Landroid/os/MemoryFile;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 316
    iput-object p1, p0, Landroid/os/MemoryFile$MemoryOutputStream;->this$0:Landroid/os/MemoryFile;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 318
    const/4 p1, 0x0

    iput p1, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mOffset:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/MemoryFile$MemoryOutputStream;-><init>(Landroid/os/MemoryFile;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api write(I)V
    .registers 6
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mSingleByte:[B

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 330
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mSingleByte:[B

    .line 332
    :cond_9
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mSingleByte:[B

    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 333
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mSingleByte:[B

    invoke-virtual {p0, v0, v3, v1}, Landroid/os/MemoryFile$MemoryOutputStream;->write([BII)V

    .line 334
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->this$0:Landroid/os/MemoryFile;

    iget v1, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mOffset:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 324
    iget v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/os/MemoryFile$MemoryOutputStream;->mOffset:I

    .line 325
    return-void
.end method
