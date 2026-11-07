.class public final Landroid/net/connectivity/org/chromium/net/impl/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkDirect(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    return-void

    .line 15
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteBuffer must be a direct ByteBuffer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkHasRemaining(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    return-void

    .line 21
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer is already full."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
