.class public final synthetic Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/Callback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/connectivity/org/chromium/base/Promise;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/Promise;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda0;->f$0:Landroid/net/connectivity/org/chromium/base/Promise;

    return-void
.end method


# virtual methods
.method public final blacklist onResult(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda0;->f$0:Landroid/net/connectivity/org/chromium/base/Promise;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/Promise;->fulfill(Ljava/lang/Object;)V

    return-void
.end method
