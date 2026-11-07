.class Lcom/android/internal/org/bouncycastle/cms/NullOutputStream;
.super Ljava/io/OutputStream;
.source "NullOutputStream.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api write(I)V
    .registers 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    return-void
.end method
