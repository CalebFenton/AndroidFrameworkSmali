.class Ljava/util/AbstractMap$1;
.super Ljava/util/AbstractSet;
.source "AbstractMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/AbstractMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/AbstractMap;


# direct methods
.method constructor <init>(Ljava/util/AbstractMap;)V
    .locals 0

    #@0
    .prologue
    .line 333
    .local p1, "this$0":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/AbstractMap$1;->this$0:Ljava/util/AbstractMap;

    #@2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 335
    iget-object v0, p0, Ljava/util/AbstractMap$1;->this$0:Ljava/util/AbstractMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 343
    new-instance v0, Ljava/util/AbstractMap$1$1;

    #@2
    invoke-direct {v0, p0}, Ljava/util/AbstractMap$1$1;-><init>(Ljava/util/AbstractMap$1;)V

    #@5
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Ljava/util/AbstractMap$1;->this$0:Ljava/util/AbstractMap;

    #@2
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
