.class final Landroid/app/Activity$RequestFinishCallback;
.super Landroid/app/IRequestFinishCallback$Stub;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestFinishCallback"
.end annotation


# instance fields
.field private final blacklist mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 4244
    .local p1, "activityRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-direct {p0}, Landroid/app/IRequestFinishCallback$Stub;-><init>()V

    .line 4245
    iput-object p1, p0, Landroid/app/Activity$RequestFinishCallback;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 4246
    return-void
.end method


# virtual methods
.method public blacklist requestFinish()V
    .registers 4

    .line 4250
    iget-object v0, p0, Landroid/app/Activity$RequestFinishCallback;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 4251
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_17

    .line 4252
    iget-object v1, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/Activity$RequestFinishCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/app/Activity$RequestFinishCallback$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4254
    :cond_17
    return-void
.end method
