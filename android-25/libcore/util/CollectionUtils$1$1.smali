.class Llibcore/util/CollectionUtils$1$1;
.super Ljava/lang/Object;
.source "CollectionUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/util/CollectionUtils$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Ljava/lang/ref/Reference",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private removeIsOkay:Z

.field final synthetic this$1:Llibcore/util/CollectionUtils$1;

.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$trim:Z


# direct methods
.method constructor <init>(Llibcore/util/CollectionUtils$1;Ljava/lang/Iterable;Z)V
    .locals 1
    .param p1, "this$1"    # Llibcore/util/CollectionUtils$1;
    .param p3, "val$trim"    # Z

    #@0
    .prologue
    .line 40
    .local p2, "val$iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/ref/Reference<TT;>;>;"
    iput-object p1, p0, Llibcore/util/CollectionUtils$1$1;->this$1:Llibcore/util/CollectionUtils$1;

    #@2
    iput-object p2, p0, Llibcore/util/CollectionUtils$1$1;->val$iterable:Ljava/lang/Iterable;

    #@4
    iput-boolean p3, p0, Llibcore/util/CollectionUtils$1$1;->val$trim:Z

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 41
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->val$iterable:Ljava/lang/Iterable;

    #@b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Llibcore/util/CollectionUtils$1$1;->delegate:Ljava/util/Iterator;

    #@11
    .line 40
    return-void
.end method

.method private computeNext()V
    .locals 1

    #@0
    .prologue
    .line 46
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Llibcore/util/CollectionUtils$1$1;->removeIsOkay:Z

    #@3
    .line 47
    :cond_0
    :goto_0
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    #@5
    if-nez v0, :cond_1

    #@7
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->delegate:Ljava/util/Iterator;

    #@9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 48
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->delegate:Ljava/util/Iterator;

    #@11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/ref/Reference;

    #@17
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    #@1d
    .line 49
    iget-boolean v0, p0, Llibcore/util/CollectionUtils$1$1;->val$trim:Z

    #@1f
    if-eqz v0, :cond_0

    #@21
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    #@23
    if-nez v0, :cond_0

    #@25
    .line 50
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->delegate:Ljava/util/Iterator;

    #@27
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@2a
    goto :goto_0

    #@2b
    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Llibcore/util/CollectionUtils$1$1;->computeNext()V

    #@3
    .line 57
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 61
    invoke-virtual {p0}, Llibcore/util/CollectionUtils$1$1;->hasNext()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 62
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@b
    throw v1

    #@c
    .line 64
    :cond_0
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    #@e
    .line 65
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    #@f
    iput-boolean v1, p0, Llibcore/util/CollectionUtils$1$1;->removeIsOkay:Z

    #@11
    .line 66
    const/4 v1, 0x0

    #@12
    iput-object v1, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    #@14
    .line 67
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 71
    iget-boolean v0, p0, Llibcore/util/CollectionUtils$1$1;->removeIsOkay:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 74
    :cond_0
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->delegate:Ljava/util/Iterator;

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@f
    .line 70
    return-void
.end method
