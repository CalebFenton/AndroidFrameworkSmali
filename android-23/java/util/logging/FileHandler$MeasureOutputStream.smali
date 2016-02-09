.class Ljava/util/logging/FileHandler$MeasureOutputStream;
.super Ljava/io/OutputStream;
.source "FileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/FileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MeasureOutputStream"
.end annotation


# instance fields
.field length:J

.field wrapped:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 536
    const-wide/16 v0, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Ljava/util/logging/FileHandler$MeasureOutputStream;-><init>(Ljava/io/OutputStream;J)V

    #@5
    .line 535
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;J)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "currentLength"    # J

    #@0
    .prologue
    .line 530
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 531
    iput-object p1, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    #@5
    .line 532
    iput-wide p2, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    #@7
    .line 530
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
    .line 553
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@5
    .line 552
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
    .line 558
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@5
    .line 557
    return-void
.end method

.method public getLength()J
    .locals 2

    #@0
    .prologue
    .line 562
    iget-wide v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    #@2
    return-wide v0
.end method

.method public setLength(J)V
    .locals 1
    .param p1, "newLength"    # J

    #@0
    .prologue
    .line 566
    iput-wide p1, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    #@2
    .line 565
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    .line 542
    iget-wide v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    #@7
    const-wide/16 v2, 0x1

    #@9
    add-long/2addr v0, v2

    #@a
    iput-wide v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    #@c
    .line 540
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 547
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@5
    .line 548
    iget-wide v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    #@7
    int-to-long v2, p3

    #@8
    add-long/2addr v0, v2

    #@9
    iput-wide v0, p0, Ljava/util/logging/FileHandler$MeasureOutputStream;->length:J

    #@b
    .line 546
    return-void
.end method
