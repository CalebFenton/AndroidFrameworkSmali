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
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private blacklist i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$1:Ljava/util/AbstractMap$2;


# direct methods
.method constructor blacklist <init>(Ljava/util/AbstractMap$2;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/AbstractMap$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 414
    .local p0, "this":Ljava/util/AbstractMap$2$1;, "Ljava/util/AbstractMap$2$1;"
    iput-object p1, p0, Ljava/util/AbstractMap$2$1;->this$1:Ljava/util/AbstractMap$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iget-object v0, p0, Ljava/util/AbstractMap$2$1;->this$1:Ljava/util/AbstractMap$2;

    iget-object v0, v0, Ljava/util/AbstractMap$2;->this$0:Ljava/util/AbstractMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/AbstractMap$2$1;->i:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 418
    .local p0, "this":Ljava/util/AbstractMap$2$1;, "Ljava/util/AbstractMap$2$1;"
    iget-object v0, p0, Ljava/util/AbstractMap$2$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 422
    .local p0, "this":Ljava/util/AbstractMap$2$1;, "Ljava/util/AbstractMap$2$1;"
    iget-object v0, p0, Ljava/util/AbstractMap$2$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 426
    .local p0, "this":Ljava/util/AbstractMap$2$1;, "Ljava/util/AbstractMap$2$1;"
    iget-object v0, p0, Ljava/util/AbstractMap$2$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 427
    return-void
.end method
