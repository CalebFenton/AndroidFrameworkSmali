.class public interface abstract Lcom/android/okhttp/internal/framed/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# virtual methods
.method public abstract blacklist getProtocol()Lcom/android/okhttp/Protocol;
.end method

.method public abstract blacklist newReader(Lcom/android/okhttp/okio/BufferedSource;Z)Lcom/android/okhttp/internal/framed/FrameReader;
.end method

.method public abstract blacklist newWriter(Lcom/android/okhttp/okio/BufferedSink;Z)Lcom/android/okhttp/internal/framed/FrameWriter;
.end method
