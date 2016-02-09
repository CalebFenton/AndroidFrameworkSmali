.class Ljava/util/Collections$SingletonMap$1$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$SingletonMap$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field hasNext:Z

.field final synthetic this$2:Ljava/util/Collections$SingletonMap$1;


# direct methods
.method constructor <init>(Ljava/util/Collections$SingletonMap$1;)V
    .locals 1
    .param p1, "this$2"    # Ljava/util/Collections$SingletonMap$1;

    #@0
    .prologue
    .line 338
    iput-object p1, p0, Ljava/util/Collections$SingletonMap$1$1;->this$2:Ljava/util/Collections$SingletonMap$1;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 339
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Ljava/util/Collections$SingletonMap$1$1;->hasNext:Z

    #@8
    .line 338
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 342
    iget-boolean v0, p0, Ljava/util/Collections$SingletonMap$1$1;->hasNext:Z

    #@2
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 345
    invoke-virtual {p0}, Ljava/util/Collections$SingletonMap$1$1;->next()Ljava/util/Map$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 346
    iget-boolean v0, p0, Ljava/util/Collections$SingletonMap$1$1;->hasNext:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 347
    new-instance v0, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v0

    #@a
    .line 350
    :cond_0
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/util/Collections$SingletonMap$1$1;->hasNext:Z

    #@d
    .line 351
    new-instance v0, Ljava/util/Collections$SingletonMap$1$1$1;

    #@f
    iget-object v1, p0, Ljava/util/Collections$SingletonMap$1$1;->this$2:Ljava/util/Collections$SingletonMap$1;

    #@11
    iget-object v1, v1, Ljava/util/Collections$SingletonMap$1;->this$1:Ljava/util/Collections$SingletonMap;

    #@13
    iget-object v1, v1, Ljava/util/Collections$SingletonMap;->k:Ljava/lang/Object;

    #@15
    iget-object v2, p0, Ljava/util/Collections$SingletonMap$1$1;->this$2:Ljava/util/Collections$SingletonMap$1;

    #@17
    iget-object v2, v2, Ljava/util/Collections$SingletonMap$1;->this$1:Ljava/util/Collections$SingletonMap;

    #@19
    iget-object v2, v2, Ljava/util/Collections$SingletonMap;->v:Ljava/lang/Object;

    #@1b
    invoke-direct {v0, p0, v1, v2}, Ljava/util/Collections$SingletonMap$1$1$1;-><init>(Ljava/util/Collections$SingletonMap$1$1;Ljava/lang/Object;Ljava/lang/Object;)V

    #@1e
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 359
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
