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
    .line 354
    invoke-direct {p0}, Landroid/app/IActivityContainerCallback$Stub;-><init>()V

    #@3
    .line 355
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/app/ActivityView$ActivityContainerCallback;->mActivityViewWeakReference:Ljava/lang/ref/WeakReference;

    #@a
    .line 354
    return-void
.end method


# virtual methods
.method public onAllActivitiesComplete(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "container"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 366
    iget-object v3, p0, Landroid/app/ActivityView$ActivityContainerCallback;->mActivityViewWeakReference:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/ActivityView;

    #@8
    .line 367
    .local v0, "activityView":Landroid/app/ActivityView;
    if-eqz v0, :cond_0

    #@a
    .line 368
    invoke-static {v0}, Landroid/app/ActivityView;->-get1(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;

    #@d
    move-result-object v1

    #@e
    .line 369
    .local v1, "callback":Landroid/app/ActivityView$ActivityViewCallback;
    if-eqz v1, :cond_0

    #@10
    .line 371
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@12
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@15
    .line 372
    .local v2, "callbackRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ActivityView$ActivityViewCallback;>;"
    new-instance v3, Landroid/app/ActivityView$ActivityContainerCallback$1;

    #@17
    invoke-direct {v3, p0, v2, v0}, Landroid/app/ActivityView$ActivityContainerCallback$1;-><init>(Landroid/app/ActivityView$ActivityContainerCallback;Ljava/lang/ref/WeakReference;Landroid/app/ActivityView;)V

    #@1a
    invoke-virtual {v0, v3}, Landroid/app/ActivityView;->post(Ljava/lang/Runnable;)Z

    #@1d
    .line 365
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
    .line 359
    return-void
.end method
