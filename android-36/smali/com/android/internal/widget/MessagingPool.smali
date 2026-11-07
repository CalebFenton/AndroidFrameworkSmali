.class public Lcom/android/internal/widget/MessagingPool;
.super Ljava/lang/Object;
.source "MessagingPool.java"

# interfaces
.implements Landroid/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final blacklist ENABLED:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "MessagingPool"


# instance fields
.field private blacklist mCurrentPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mMaxPoolSize:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "maxPoolSize"    # I

    .line 34
    .local p0, "this":Lcom/android/internal/widget/MessagingPool;, "Lcom/android/internal/widget/MessagingPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/internal/widget/MessagingPool;->mMaxPoolSize:I

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist acquire()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/android/internal/widget/MessagingPool;, "Lcom/android/internal/widget/MessagingPool<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic blacklist acquire()Ljava/lang/Object;
    .registers 2

    .line 28
    .local p0, "this":Lcom/android/internal/widget/MessagingPool;, "Lcom/android/internal/widget/MessagingPool<TT;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingPool;->acquire()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clear()V
    .registers 1

    .line 71
    .local p0, "this":Lcom/android/internal/widget/MessagingPool;, "Lcom/android/internal/widget/MessagingPool<TT;>;"
    return-void
.end method

.method public blacklist release(Landroid/view/View;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/android/internal/widget/MessagingPool;, "Lcom/android/internal/widget/MessagingPool<TT;>;"
    .local p1, "instance":Landroid/view/View;, "TT;"
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releasing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with parent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MessagingPool"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return v1

    .line 61
    :cond_2f
    return v1
.end method

.method public bridge synthetic blacklist release(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/android/internal/widget/MessagingPool;, "Lcom/android/internal/widget/MessagingPool<TT;>;"
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingPool;->release(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
