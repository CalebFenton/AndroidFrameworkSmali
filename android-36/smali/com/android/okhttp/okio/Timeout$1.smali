.class Lcom/android/okhttp/okio/Timeout$1;
.super Lcom/android/okhttp/okio/Timeout;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/okio/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;
    .registers 3

    .line 0
    return-object p0
.end method

.method public blacklist throwIfReached()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;
    .registers 4

    .line 0
    return-object p0
.end method
