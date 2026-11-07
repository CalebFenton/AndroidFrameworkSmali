.class Ljava/util/zip/GZIPInputStream$1;
.super Ljava/io/FilterInputStream;
.source "GZIPInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/zip/GZIPInputStream;->readTrailer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/zip/GZIPInputStream;Ljava/io/InputStream;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/zip/GZIPInputStream;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 234
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    return-void
.end method
