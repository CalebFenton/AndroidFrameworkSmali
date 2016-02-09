.class final Lcom/android/okhttp/okio/Timeout$1;
.super Lcom/android/okhttp/okio/Timeout;
.source "Timeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/okio/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;
    .locals 0
    .param p1, "deadlineNanoTime"    # J

    #@0
    .prologue
    .line 54
    return-object p0
.end method

.method public throwIfReached()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;
    .locals 0
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 50
    return-object p0
.end method
