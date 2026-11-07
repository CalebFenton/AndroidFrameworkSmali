.class final Llibcore/reflect/ListOfVariables;
.super Ljava/lang/Object;
.source "ListOfVariables.java"


# instance fields
.field final blacklist array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llibcore/reflect/ListOfVariables;->array:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method blacklist add(Ljava/lang/reflect/TypeVariable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 26
    .local p1, "elem":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v0, p0, Llibcore/reflect/ListOfVariables;->array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method blacklist getArray()[Ljava/lang/reflect/TypeVariable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Llibcore/reflect/ListOfVariables;->array:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/TypeVariable;

    .line 31
    .local v0, "a":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v1, p0, Llibcore/reflect/ListOfVariables;->array:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/TypeVariable;

    return-object v1
.end method
