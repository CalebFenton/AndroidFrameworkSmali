.class public interface abstract Landroid/net/connectivity/org/chromium/base/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/Callback$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$4nd-AmJyoOdjJgwoXVs8pQYpX68(Landroid/net/connectivity/org/chromium/base/Callback;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/Callback;->lambda$bind$0(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$bind$0(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .line 33
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    invoke-interface {p0, p1}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist runNullSafe(Landroid/net/connectivity/org/chromium/base/Callback;Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 45
    .local p0, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 46
    :cond_5
    return-void
.end method


# virtual methods
.method public blacklist bind(Ljava/lang/Object;)Ljava/lang/Runnable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 33
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Landroid/net/connectivity/org/chromium/base/Callback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/Callback$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/Callback;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract blacklist onResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
