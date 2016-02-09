.class Ljava/util/AbstractMap$2$1;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/AbstractMap$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field setIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljava/util/AbstractMap$2;


# direct methods
.method constructor <init>(Ljava/util/AbstractMap$2;)V
    .locals 1
    .param p1, "this$1"    # Ljava/util/AbstractMap$2;

    #@0
    .prologue
    .line 478
    iput-object p1, p0, Ljava/util/AbstractMap$2$1;->this$1:Ljava/util/AbstractMap$2;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 479
    iget-object v0, p0, Ljava/util/AbstractMap$2$1;->this$1:Ljava/util/AbstractMap$2;

    #@7
    iget-object v0, v0, Ljava/util/AbstractMap$2;->this$0:Ljava/util/AbstractMap;

    #@9
    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@c
    move-result-object v0

    #@d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Ljava/util/AbstractMap$2$1;->setIterator:Ljava/util/Iterator;

    #@13
    .line 478
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Ljava/util/AbstractMap$2$1;->setIterator:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 486
    iget-object v0, p0, Ljava/util/AbstractMap$2$1;->setIterator:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Map$Entry;

    #@8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Ljava/util/AbstractMap$2$1;->setIterator:Ljava/util/Iterator;

    #@2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@5
    .line 489
    return-void
.end method
