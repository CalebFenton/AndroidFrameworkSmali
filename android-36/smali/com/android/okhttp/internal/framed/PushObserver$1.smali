.class Lcom/android/okhttp/internal/framed/PushObserver$1;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lcom/android/okhttp/internal/framed/PushObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/PushObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onData(ILcom/android/okhttp/okio/BufferedSource;IZ)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long p0, p3

    .line 90
    invoke-interface {p2, p0, p1}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist onHeaders(ILjava/util/List;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;Z)Z"
        }
    .end annotation

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist onRequest(ILjava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)Z"
        }
    .end annotation

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist onReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 3

    .line 0
    return-void
.end method
