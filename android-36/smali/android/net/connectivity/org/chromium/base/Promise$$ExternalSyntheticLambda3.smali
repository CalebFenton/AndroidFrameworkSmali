.class public final synthetic Landroid/net/connectivity/org/chromium/base/Promise$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/Callback;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist onResult(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/Exception;

    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/Promise;->lambda$then$0(Ljava/lang/Exception;)V

    return-void
.end method
