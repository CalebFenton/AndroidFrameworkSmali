.class public interface abstract Lcom/android/okhttp/internal/spdy/FrameReader$Handler;
.super Ljava/lang/Object;
.source "FrameReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/FrameReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation


# virtual methods
.method public abstract ackSettings()V
.end method

.method public abstract alternateService(ILjava/lang/String;Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;IJ)V
.end method

.method public abstract data(ZILcom/android/okhttp/okio/BufferedSource;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract goAway(ILcom/android/okhttp/internal/spdy/ErrorCode;Lcom/android/okhttp/okio/ByteString;)V
.end method

.method public abstract headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/spdy/HeadersMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;",
            "Lcom/android/okhttp/internal/spdy/HeadersMode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract priority(IIIZ)V
.end method

.method public abstract pushPromise(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract rstStream(ILcom/android/okhttp/internal/spdy/ErrorCode;)V
.end method

.method public abstract settings(ZLcom/android/okhttp/internal/spdy/Settings;)V
.end method

.method public abstract windowUpdate(IJ)V
.end method
