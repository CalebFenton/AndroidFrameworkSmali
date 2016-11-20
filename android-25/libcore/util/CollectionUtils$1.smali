.class final Llibcore/util/CollectionUtils$1;
.super Ljava/lang/Object;
.source "CollectionUtils.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/util/CollectionUtils;->dereferenceIterable(Ljava/lang/Iterable;Z)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$trim:Z


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Z)V
    .locals 0
    .param p2, "val$trim"    # Z

    #@0
    .prologue
    .line 38
    .local p1, "val$iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/ref/Reference<TT;>;>;"
    iput-object p1, p0, Llibcore/util/CollectionUtils$1;->val$iterable:Ljava/lang/Iterable;

    #@2
    iput-boolean p2, p0, Llibcore/util/CollectionUtils$1;->val$trim:Z

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 40
    new-instance v0, Llibcore/util/CollectionUtils$1$1;

    #@2
    iget-object v1, p0, Llibcore/util/CollectionUtils$1;->val$iterable:Ljava/lang/Iterable;

    #@4
    iget-boolean v2, p0, Llibcore/util/CollectionUtils$1;->val$trim:Z

    #@6
    invoke-direct {v0, p0, v1, v2}, Llibcore/util/CollectionUtils$1$1;-><init>(Llibcore/util/CollectionUtils$1;Ljava/lang/Iterable;Z)V

    #@9
    return-object v0
.end method
