.class public Ljava/lang/ref/WeakReference;
.super Ljava/lang/ref/Reference;
.source "WeakReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/Reference<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TT;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 70
    return-void
.end method
