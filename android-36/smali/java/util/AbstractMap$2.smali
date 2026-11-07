.class Ljava/util/AbstractMap$2;
.super Ljava/util/AbstractCollection;
.source "AbstractMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/AbstractMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/AbstractMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/AbstractMap;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/AbstractMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 412
    .local p0, "this":Ljava/util/AbstractMap$2;, "Ljava/util/AbstractMap$2;"
    iput-object p1, p0, Ljava/util/AbstractMap$2;->this$0:Ljava/util/AbstractMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 440
    .local p0, "this":Ljava/util/AbstractMap$2;, "Ljava/util/AbstractMap$2;"
    iget-object v0, p0, Ljava/util/AbstractMap$2;->this$0:Ljava/util/AbstractMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    .line 441
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "v"    # Ljava/lang/Object;

    .line 444
    .local p0, "this":Ljava/util/AbstractMap$2;, "Ljava/util/AbstractMap$2;"
    iget-object v0, p0, Ljava/util/AbstractMap$2;->this$0:Ljava/util/AbstractMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 436
    .local p0, "this":Ljava/util/AbstractMap$2;, "Ljava/util/AbstractMap$2;"
    iget-object v0, p0, Ljava/util/AbstractMap$2;->this$0:Ljava/util/AbstractMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 414
    .local p0, "this":Ljava/util/AbstractMap$2;, "Ljava/util/AbstractMap$2;"
    new-instance v0, Ljava/util/AbstractMap$2$1;

    invoke-direct {v0, p0}, Ljava/util/AbstractMap$2$1;-><init>(Ljava/util/AbstractMap$2;)V

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 432
    .local p0, "this":Ljava/util/AbstractMap$2;, "Ljava/util/AbstractMap$2;"
    iget-object v0, p0, Ljava/util/AbstractMap$2;->this$0:Ljava/util/AbstractMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method
