.class public Landroid/net/connectivity/org/chromium/base/RequiredCallback;
.super Ljava/lang/Object;
.source "RequiredCallback.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/org/chromium/base/Callback<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mCallback:Landroid/net/connectivity/org/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mLifetimeAssert:Landroid/net/connectivity/org/chromium/base/LifetimeAssert;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 15
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 20
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/RequiredCallback;, "Landroid/net/connectivity/org/chromium/base/RequiredCallback<TT;>;"
    .local p1, "callback":Landroid/net/connectivity/org/chromium/base/Callback;, "Landroid/net/connectivity/org/chromium/base/Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert;->create(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/base/LifetimeAssert;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/RequiredCallback;->mLifetimeAssert:Landroid/net/connectivity/org/chromium/base/LifetimeAssert;

    .line 21
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/RequiredCallback;->mCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    .line 22
    return-void
.end method


# virtual methods
.method public blacklist onResult(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/RequiredCallback;, "Landroid/net/connectivity/org/chromium/base/RequiredCallback<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    nop

    .line 27
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/RequiredCallback;->mCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/RequiredCallback;->mLifetimeAssert:Landroid/net/connectivity/org/chromium/base/LifetimeAssert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/base/LifetimeAssert;->setSafeToGc(Landroid/net/connectivity/org/chromium/base/LifetimeAssert;Z)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/RequiredCallback;->mCallback:Landroid/net/connectivity/org/chromium/base/Callback;

    .line 30
    return-void
.end method
