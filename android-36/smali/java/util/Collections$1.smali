.class Ljava/util/Collections$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections;->singletonIterator(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private blacklist hasNext:Z

.field final synthetic blacklist val$e:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2

    .line 5108
    iput-object p1, p0, Ljava/util/Collections$1;->val$e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5109
    const/4 p1, 0x1

    iput-boolean p1, p0, Ljava/util/Collections$1;->hasNext:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 5125
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5126
    iget-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    if-eqz v0, :cond_f

    .line 5127
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    .line 5128
    iget-object v0, p0, Ljava/util/Collections$1;->val$e:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5130
    :cond_f
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 5111
    iget-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 5114
    iget-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    if-eqz v0, :cond_a

    .line 5115
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Collections$1;->hasNext:Z

    .line 5116
    iget-object v0, p0, Ljava/util/Collections$1;->val$e:Ljava/lang/Object;

    return-object v0

    .line 5118
    :cond_a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 5121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
