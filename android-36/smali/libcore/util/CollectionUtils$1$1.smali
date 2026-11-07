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
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/ref/Reference<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private blacklist next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private blacklist removeIsOkay:Z

.field final synthetic blacklist this$0:Llibcore/util/CollectionUtils$1;


# direct methods
.method constructor blacklist <init>(Llibcore/util/CollectionUtils$1;)V
    .registers 3
    .param p1, "this$0"    # Llibcore/util/CollectionUtils$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40
    iput-object p1, p0, Llibcore/util/CollectionUtils$1$1;->this$0:Llibcore/util/CollectionUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->this$0:Llibcore/util/CollectionUtils$1;

    iget-object v0, v0, Llibcore/util/CollectionUtils$1;->val$iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Llibcore/util/CollectionUtils$1$1;->delegate:Ljava/util/Iterator;

    return-void
.end method

.method private blacklist computeNext()V
    .registers 2

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Llibcore/util/CollectionUtils$1$1;->removeIsOkay:Z

    .line 47
    :cond_3
    :goto_3
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    if-nez v0, :cond_2d

    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 48
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->this$0:Llibcore/util/CollectionUtils$1;

    iget-boolean v0, v0, Llibcore/util/CollectionUtils$1;->val$trim:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 50
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 53
    :cond_2d
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 56
    invoke-direct {p0}, Llibcore/util/CollectionUtils$1$1;->computeNext()V

    .line 57
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Llibcore/util/CollectionUtils$1$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 64
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    .line 65
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Llibcore/util/CollectionUtils$1$1;->removeIsOkay:Z

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Llibcore/util/CollectionUtils$1$1;->next:Ljava/lang/Object;

    .line 67
    return-object v0

    .line 62
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 71
    iget-boolean v0, p0, Llibcore/util/CollectionUtils$1$1;->removeIsOkay:Z

    if-eqz v0, :cond_a

    .line 74
    iget-object v0, p0, Llibcore/util/CollectionUtils$1$1;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 75
    return-void

    .line 72
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
