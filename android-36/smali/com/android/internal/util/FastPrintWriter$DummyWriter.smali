.class Lcom/android/internal/util/FastPrintWriter$DummyWriter;
.super Ljava/io/Writer;
.source "FastPrintWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/FastPrintWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyWriter"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/util/FastPrintWriter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shouldn\'t be here"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    throw v0
.end method

.method public whitelist test-api flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;->close()V

    .line 48
    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 4
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;->close()V

    .line 53
    return-void
.end method
