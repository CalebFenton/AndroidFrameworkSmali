.class public Landroid/database/AbstractCursor$SelfContentObserver;
.super Landroid/database/ContentObserver;
.source "AbstractCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/AbstractCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SelfContentObserver"
.end annotation


# instance fields
.field greylist-max-o mCursor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/database/AbstractCursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/database/AbstractCursor;)V
    .registers 3
    .param p1, "cursor"    # Landroid/database/AbstractCursor;

    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 558
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/database/AbstractCursor$SelfContentObserver;->mCursor:Ljava/lang/ref/WeakReference;

    .line 559
    return-void
.end method


# virtual methods
.method public whitelist deliverSelfNotifications()Z
    .registers 2

    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 568
    iget-object v0, p0, Landroid/database/AbstractCursor$SelfContentObserver;->mCursor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/AbstractCursor;

    .line 569
    .local v0, "cursor":Landroid/database/AbstractCursor;
    if-eqz v0, :cond_e

    .line 570
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/AbstractCursor;->onChange(Z)V

    .line 572
    :cond_e
    return-void
.end method
