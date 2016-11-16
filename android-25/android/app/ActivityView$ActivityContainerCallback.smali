.class Landroid/app/ActivityView$ActivityContainerCallback;
.super Landroid/app/IActivityContainerCallback$Stub;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityContainerCallback"
.end annotation


# instance fields
.field private final mActivityViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ActivityView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/ActivityView;)V
    .locals 1
    .param p1, "activityView"    # Landroid/app/ActivityView;

    #@0
    .prologue
    .line 408
    invoke-direct {p0}, Landroid/app/IActivityContainerCallback$Stub;-><init>()V

    #@3
    .line 409
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/app/ActivityView$ActivityContainerCallback;->mActivityViewWeakReference:Ljava/lang/ref/WeakReference;

    #@a
    .line 408
    return-void
.end method


# virtual methods
.method public onAllActivitiesComplete(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "container"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 420
    iget-object v3, p0, Landroid/app/ActivityView$ActivityContainerCallback;->mActivityViewWeakReference:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityView;

    #@8
    .line 421
    .local v0, "activityView":Landroid/app/ActivityView;
    if-eqz v0, :cond_0

    #@a
    .line 422
    invoke-static {v0}, Landroid/app/ActivityView;->-get2(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;

    #@d
    move-result-object v1

    #@e
    .line 423
    .local v1, "callback":Landroid/app/ActivityView$ActivityViewCallback;
    if-eqz v1, :cond_0

    #@10
    .line 425
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@12
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@15
    .line 426
    .local v2, "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ActivityView$ActivityViewCallback;>;"
    new-instance v3, Landroid/app/ActivityView$ActivityContainerCallback$1;

    #@17
    invoke-direct {v3, p0, v2, v0}, Landroid/app/ActivityView$ActivityContainerCallback$1;-><init>(Landroid/app/ActivityView$ActivityContainerCallback;Ljava/lang/ref/WeakReference;Landroid/app/ActivityView;)V

    #@1a
    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@1d
    .line 419
    .end local v1    # "callback":Landroid/app/ActivityView$ActivityViewCallback;
    .end local v2    # "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ActivityView$ActivityViewCallback;>;"
    :cond_0
    return-void
.end method

.method public setVisible(Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "container"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 413
    return-void
.end method
