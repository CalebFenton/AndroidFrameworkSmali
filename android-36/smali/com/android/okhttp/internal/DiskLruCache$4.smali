.class Lcom/android/okhttp/internal/DiskLruCache$4;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Lcom/android/okhttp/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 0
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 1

    .line 821
    sget-object p0, Lcom/android/okhttp/okio/Timeout;->NONE:Lcom/android/okhttp/okio/Timeout;

    return-object p0
.end method

.method public blacklist write(Lcom/android/okhttp/okio/Buffer;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 814
    invoke-virtual {p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->skip(J)V

    return-void
.end method
