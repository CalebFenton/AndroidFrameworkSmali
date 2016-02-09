.class public interface abstract Lcom/android/okhttp/internal/spdy/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# virtual methods
.method public abstract getProtocol()Lcom/android/okhttp/Protocol;
.end method

.method public abstract newReader(Lcom/android/okhttp/okio/BufferedSource;Z)Lcom/android/okhttp/internal/spdy/FrameReader;
.end method

.method public abstract newWriter(Lcom/android/okhttp/okio/BufferedSink;Z)Lcom/android/okhttp/internal/spdy/FrameWriter;
.end method
