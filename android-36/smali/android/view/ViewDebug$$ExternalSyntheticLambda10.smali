.class public final synthetic Landroid/view/ViewDebug$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/View;

.field public final synthetic blacklist f$1:[Landroid/graphics/Bitmap;

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/View;[Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda10;->f$0:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda10;->f$1:[Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda10;->f$2:Z

    iput-object p4, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda10;->f$3:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda10;->f$0:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda10;->f$1:[Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda10;->f$2:Z

    iget-object v3, p0, Landroid/view/ViewDebug$$ExternalSyntheticLambda10;->f$3:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3}, Landroid/view/ViewDebug;->lambda$performViewCapture$4(Landroid/view/View;[Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method
