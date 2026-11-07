.class Landroid/view/accessibility/WeakSparseArray$WeakReferenceWithId;
.super Ljava/lang/ref/WeakReference;
.source "WeakSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/WeakSparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakReferenceWithId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final blacklist mId:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;I)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TE;>;I)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Landroid/view/accessibility/WeakSparseArray$WeakReferenceWithId;, "Landroid/view/accessibility/WeakSparseArray$WeakReferenceWithId<TE;>;"
    .local p1, "referent":Ljava/lang/Object;, "TE;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 59
    iput p3, p0, Landroid/view/accessibility/WeakSparseArray$WeakReferenceWithId;->mId:I

    .line 60
    return-void
.end method
