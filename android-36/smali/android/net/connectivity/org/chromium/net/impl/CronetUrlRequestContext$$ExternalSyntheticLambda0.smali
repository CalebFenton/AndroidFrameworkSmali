.class public final synthetic Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:Ljava/lang/Runnable;

.field public final synthetic blacklist f$2:Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$$ExternalSyntheticLambda0;->f$2:Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$$ExternalSyntheticLambda0;->f$2:Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;

    invoke-static {v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;->lambda$postObservationTaskToExecutor$0(Ljava/lang/String;Ljava/lang/Runnable;Landroid/net/connectivity/org/chromium/net/impl/RefCountDelegate;)V

    return-void
.end method
