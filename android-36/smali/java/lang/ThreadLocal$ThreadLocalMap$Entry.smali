.class Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
.super Ljava/lang/ref/WeakReference;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ThreadLocal$ThreadLocalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/ThreadLocal<",
        "*>;>;"
    }
.end annotation


# instance fields
.field greylist-max-o value:Ljava/lang/Object;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .registers 3
    .param p2, "v"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 334
    .local p1, "k":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<*>;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 335
    iput-object p2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 336
    return-void
.end method
