.class public interface abstract Lcom/android/okhttp/internal/framed/FrameReader;
.super Ljava/lang/Object;
.source "FrameReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    }
.end annotation


# virtual methods
.method public abstract blacklist nextFrame(Lcom/android/okhttp/internal/framed/FrameReader$Handler;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readConnectionPreface()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
