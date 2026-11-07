.class public Lcom/android/internal/org/bouncycastle/util/io/StreamOverflowException;
.super Ljava/io/IOException;
.source "StreamOverflowException.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
