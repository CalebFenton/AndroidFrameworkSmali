.class public abstract Landroid/net/connectivity/org/chromium/base/Callback$Helper;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Helper"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist onBooleanResultFromNative(Landroid/net/connectivity/org/chromium/base/Callback;Z)V
    .registers 3
    .param p0, "callback"    # Landroid/net/connectivity/org/chromium/base/Callback;
    .param p1, "result"    # Z

    .line 69
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method static blacklist onIntResultFromNative(Landroid/net/connectivity/org/chromium/base/Callback;I)V
    .registers 3
    .param p0, "callback"    # Landroid/net/connectivity/org/chromium/base/Callback;
    .param p1, "result"    # I

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method static blacklist onLongResultFromNative(Landroid/net/connectivity/org/chromium/base/Callback;J)V
    .registers 4
    .param p0, "callback"    # Landroid/net/connectivity/org/chromium/base/Callback;
    .param p1, "result"    # J

    .line 81
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method static blacklist onObjectResultFromNative(Landroid/net/connectivity/org/chromium/base/Callback;Ljava/lang/Object;)V
    .registers 2
    .param p0, "callback"    # Landroid/net/connectivity/org/chromium/base/Callback;
    .param p1, "result"    # Ljava/lang/Object;

    .line 56
    invoke-interface {p0, p1}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method static blacklist onOptionalStringResultFromNative(Landroid/net/connectivity/org/chromium/base/Callback;ZLjava/lang/String;)V
    .registers 4
    .param p1, "hasValue"    # Z
    .param p2, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    .local p0, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<Ljava/util/Optional<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_7

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    :goto_b
    invoke-interface {p0, v0}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method static blacklist onTimeResultFromNative(Landroid/net/connectivity/org/chromium/base/Callback;J)V
    .registers 4
    .param p0, "callback"    # Landroid/net/connectivity/org/chromium/base/Callback;
    .param p1, "result"    # J

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method static blacklist runRunnable(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 92
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 93
    return-void
.end method
