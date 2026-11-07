.class final Landroid/widget/RemoteViews$ViewContentNavigation;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewContentNavigation"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final greylist-max-o mNext:Z


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;IZ)V
    .registers 4
    .param p2, "viewId"    # I
    .param p3, "next"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2437
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2438
    iput p2, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mViewId:I

    .line 2439
    iput-boolean p3, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    .line 2440
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2442
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mViewId:I

    .line 2444
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    .line 2445
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;

    .line 2454
    iget v0, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2455
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 2458
    :cond_9
    nop

    .line 2459
    :try_start_a
    iget-boolean v1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    if-eqz v1, :cond_12

    const-string/jumbo v1, "showNext"

    goto :goto_15

    :cond_12
    const-string/jumbo v1, "showPrevious"

    .line 2458
    :goto_15
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smgetMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 2459
    invoke-polymorphic {v1, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/view/View;)V
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_21

    .line 2462
    nop

    .line 2463
    return-void

    .line 2460
    :catchall_21
    move-exception v1

    .line 2461
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 2471
    const/4 v0, 0x5

    return v0
.end method

.method public greylist-max-o mergeBehavior()I
    .registers 2

    .line 2466
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2448
    iget v0, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2449
    iget-boolean v0, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2450
    return-void
.end method
