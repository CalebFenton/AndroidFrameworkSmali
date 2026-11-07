.class public final synthetic Landroid/view/ViewDebug$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewDebug$ViewOperation;

.field public final synthetic blacklist f$1:[J

.field public final synthetic blacklist f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda9;->f$0:Landroid/view/ViewDebug$ViewOperation;

    iput-object p2, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda9;->f$1:[J

    iput-object p3, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda9;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda9;->f$0:Landroid/view/ViewDebug$ViewOperation;

    iget-object v1, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda9;->f$1:[J

    iget-object v2, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda9;->f$2:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug;->lambda$profileViewOperation$3(Landroid/view/ViewDebug$ViewOperation;[JLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method
