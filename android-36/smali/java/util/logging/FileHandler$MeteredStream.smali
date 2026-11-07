.class Ljava/util/logging/FileHandler$MeteredStream;
.super Ljava/io/OutputStream;
.source "FileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/FileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeteredStream"
.end annotation


# instance fields
.field final greylist-max-o out:Ljava/io/OutputStream;

.field greylist-max-o written:I


# direct methods
.method constructor blacklist <init>(Ljava/util/logging/FileHandler;Ljava/io/OutputStream;I)V
    .registers 4
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "written"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 173
    iput-object p2, p0, Ljava/util/logging/FileHandler$MeteredStream;->out:Ljava/io/OutputStream;

    .line 174
    iput p3, p0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    .line 175
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 203
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 198
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 180
    iget v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    .line 181
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 4
    .param p1, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 186
    iget v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    .line 187
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 5
    .param p1, "buff"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 192
    iget v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/util/logging/FileHandler$MeteredStream;->written:I

    .line 193
    return-void
.end method
