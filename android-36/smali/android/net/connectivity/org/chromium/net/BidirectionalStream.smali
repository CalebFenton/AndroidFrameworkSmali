.class public abstract Landroid/net/connectivity/org/chromium/net/BidirectionalStream;
.super Ljava/lang/Object;
.source "BidirectionalStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Callback;,
        Landroid/net/connectivity/org/chromium/net/BidirectionalStream$Builder;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist cancel()V
.end method

.method public abstract blacklist flush()V
.end method

.method public abstract blacklist isDone()Z
.end method

.method public abstract blacklist read(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract blacklist start()V
.end method

.method public abstract blacklist write(Ljava/nio/ByteBuffer;Z)V
.end method
