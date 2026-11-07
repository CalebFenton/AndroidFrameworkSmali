.class public interface abstract Lcom/android/okhttp/internal/framed/FrameReader$Handler;
.super Ljava/lang/Object;
.source "FrameReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/FrameReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation


# virtual methods
.method public abstract blacklist ackSettings()V
.end method

.method public abstract blacklist alternateService(ILjava/lang/String;Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;IJ)V
.end method

.method public abstract blacklist data(ZILcom/android/okhttp/okio/BufferedSource;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist goAway(ILcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/okio/ByteString;)V
.end method

.method public abstract blacklist headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;",
            "Lcom/android/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract blacklist ping(ZII)V
.end method

.method public abstract blacklist priority(IIIZ)V
.end method

.method public abstract blacklist pushPromise(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V
.end method

.method public abstract blacklist settings(ZLcom/android/okhttp/internal/framed/Settings;)V
.end method

.method public abstract blacklist windowUpdate(IJ)V
.end method
