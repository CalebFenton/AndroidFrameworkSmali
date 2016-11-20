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
.field mCursor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/AbstractCursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/AbstractCursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/AbstractCursor;

    #@0
    .prologue
    .line 481
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@4
    .line 482
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@9
    iput-object v0, p0, Landroid/database/AbstractCursor$SelfContentObserver;->mCursor:Ljava/lang/ref/WeakReference;

    #@b
    .line 480
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    #@0
    .prologue
    .line 487
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 492
    iget-object v1, p0, Landroid/database/AbstractCursor$SelfContentObserver;->mCursor:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/database/AbstractCursor;

    #@8
    .line 493
    .local v0, "cursor":Landroid/database/AbstractCursor;
    if-eqz v0, :cond_0

    #@a
    .line 494
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1}, Landroid/database/AbstractCursor;->onChange(Z)V

    #@e
    .line 491
    :cond_0
    return-void
.end method
