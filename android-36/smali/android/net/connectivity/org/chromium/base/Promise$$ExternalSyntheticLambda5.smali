.class public final synthetic Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/Callback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/connectivity/org/chromium/base/Promise;

.field public final synthetic blacklist f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/Promise;Ljava/util/function/Function;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda5;->f$0:Landroid/net/connectivity/org/chromium/base/Promise;

    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final blacklist onResult(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda5;->f$0:Landroid/net/connectivity/org/chromium/base/Promise;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Function;

    invoke-static {v0, v1, p1}, Landroid/net/connectivity/org/chromium/base/Promise;->lambda$then$1(Landroid/net/connectivity/org/chromium/base/Promise;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method
