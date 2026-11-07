.class public final synthetic Landroid/net/connectivity/org/chromium/base/PowerMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/connectivity/org/chromium/base/PowerMonitor$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/PowerMonitor$$ExternalSyntheticLambda1;->f$0:I

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/PowerMonitor;->lambda$createInternal$0(I)V

    return-void
.end method
