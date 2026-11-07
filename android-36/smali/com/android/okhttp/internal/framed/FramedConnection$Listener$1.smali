.class Lcom/android/okhttp/internal/framed/FramedConnection$Listener$1;
.super Lcom/android/okhttp/internal/framed/FramedConnection$Listener;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/FramedConnection$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 922
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedConnection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onStream(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 924
    sget-object p0, Lcom/android/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p1, p0}, Lcom/android/okhttp/internal/framed/FramedStream;->close(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method
