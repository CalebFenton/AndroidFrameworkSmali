.class final Llibcore/reflect/ListOfVariables;
.super Ljava/lang/Object;
.source "ListOfVariables.java"


# instance fields
.field final array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Llibcore/reflect/ListOfVariables;->array:Ljava/util/ArrayList;

    #@a
    .line 22
    return-void
.end method


# virtual methods
.method add(Ljava/lang/reflect/TypeVariable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 26
    .local p1, "elem":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v0, p0, Llibcore/reflect/ListOfVariables;->array:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 25
    return-void
.end method

.method getArray()[Ljava/lang/reflect/TypeVariable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 30
    iget-object v1, p0, Llibcore/reflect/ListOfVariables;->array:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    new-array v0, v1, [Ljava/lang/reflect/TypeVariable;

    #@8
    .line 31
    .local v0, "a":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v1, p0, Llibcore/reflect/ListOfVariables;->array:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, [Ljava/lang/reflect/TypeVariable;

    #@10
    return-object v1
.end method
