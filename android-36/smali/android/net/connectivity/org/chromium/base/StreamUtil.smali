.class public Landroid/net/connectivity/org/chromium/base/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 18
    if-nez p0, :cond_3

    return-void

    .line 21
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    .line 24
    goto :goto_8

    .line 22
    :catch_7
    move-exception v0

    .line 25
    :goto_8
    return-void
.end method
