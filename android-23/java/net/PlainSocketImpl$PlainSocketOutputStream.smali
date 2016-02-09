.class Ljava/net/PlainSocketImpl$PlainSocketOutputStream;
.super Ljava/io/OutputStream;
.source "PlainSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/PlainSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlainSocketOutputStream"
.end annotation


# instance fields
.field private final socketImpl:Ljava/net/PlainSocketImpl;


# direct methods
.method public constructor <init>(Ljava/net/PlainSocketImpl;)V
    .locals 0
    .param p1, "socketImpl"    # Ljava/net/PlainSocketImpl;

    #@0
    .prologue
    .line 253
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 254
    iput-object p1, p0, Ljava/net/PlainSocketImpl$PlainSocketOutputStream;->socketImpl:Ljava/net/PlainSocketImpl;

    #@5
    .line 253
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
    .line 258
    iget-object v0, p0, Ljava/net/PlainSocketImpl$PlainSocketOutputStream;->socketImpl:Ljava/net/PlainSocketImpl;

    #@2
    invoke-virtual {v0}, Ljava/net/PlainSocketImpl;->close()V

    #@5
    .line 257
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    #@3
    .line 261
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Ljava/net/PlainSocketImpl$PlainSocketOutputStream;->socketImpl:Ljava/net/PlainSocketImpl;

    #@2
    invoke-static {v0, p1, p2, p3}, Ljava/net/PlainSocketImpl;->-wrap1(Ljava/net/PlainSocketImpl;[BII)V

    #@5
    .line 265
    return-void
.end method
