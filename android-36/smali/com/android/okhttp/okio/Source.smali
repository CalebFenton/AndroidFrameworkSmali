.class public interface abstract Lcom/android/okhttp/okio/Source;
.super Ljava/lang/Object;
.source "Source.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract whitelist test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o read(Lcom/android/okhttp/okio/Buffer;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o timeout()Lcom/android/okhttp/okio/Timeout;
.end method
