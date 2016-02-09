.class public final Llibcore/reflect/ListOfTypes;
.super Ljava/lang/Object;
.source "ListOfTypes.java"


# static fields
.field public static final EMPTY:Llibcore/reflect/ListOfTypes;


# instance fields
.field private resolvedTypes:[Ljava/lang/reflect/Type;

.field private final types:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 25
    new-instance v0, Llibcore/reflect/ListOfTypes;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    #@6
    sput-object v0, Llibcore/reflect/ListOfTypes;->EMPTY:Llibcore/reflect/ListOfTypes;

    #@8
    .line 24
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    #@8
    iput-object v0, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    #@a
    .line 30
    return-void
.end method

.method constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 4
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    #@5
    array-length v2, p1

    #@6
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    iput-object v1, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    #@b
    .line 36
    const/4 v1, 0x0

    #@c
    array-length v2, p1

    #@d
    :goto_0
    if-ge v1, v2, :cond_0

    #@f
    aget-object v0, p1, v1

    #@11
    .line 37
    .local v0, "type":Ljava/lang/reflect/Type;
    iget-object v3, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 36
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 34
    .end local v0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    return-void
.end method

.method private resolveTypes(Ljava/util/List;)[Ljava/lang/reflect/Type;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    #@0
    .prologue
    .line 62
    .local p1, "unresolved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v4

    #@4
    .line 63
    .local v4, "size":I
    if-nez v4, :cond_0

    #@6
    .line 64
    sget-object v6, Llibcore/util/EmptyArray;->TYPE:[Ljava/lang/reflect/Type;

    #@8
    return-object v6

    #@9
    .line 66
    :cond_0
    new-array v3, v4, [Ljava/lang/reflect/Type;

    #@b
    .line 67
    .local v3, "result":[Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    #@e
    .line 68
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v5

    #@12
    check-cast v5, Ljava/lang/reflect/Type;

    #@14
    .line 70
    .local v5, "type":Ljava/lang/reflect/Type;
    :try_start_0
    move-object v0, v5

    #@15
    check-cast v0, Llibcore/reflect/ParameterizedTypeImpl;

    #@17
    move-object v6, v0

    #@18
    invoke-virtual {v6}, Llibcore/reflect/ParameterizedTypeImpl;->getResolvedType()Ljava/lang/reflect/Type;

    #@1b
    move-result-object v6

    #@1c
    aput-object v6, v3, v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 67
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 71
    :catch_0
    move-exception v1

    #@22
    .line 72
    .local v1, "e":Ljava/lang/ClassCastException;
    aput-object v5, v3, v2

    #@24
    goto :goto_1

    #@25
    .line 75
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .end local v5    # "type":Ljava/lang/reflect/Type;
    :cond_1
    return-object v3
.end method


# virtual methods
.method add(Ljava/lang/reflect/Type;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;

    #@0
    .prologue
    .line 42
    if-nez p1, :cond_0

    #@2
    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "type == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 45
    :cond_0
    iget-object v0, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 41
    return-void
.end method

.method public getResolvedTypes()[Ljava/lang/reflect/Type;
    .locals 2

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Llibcore/reflect/ListOfTypes;->resolvedTypes:[Ljava/lang/reflect/Type;

    #@2
    .line 54
    .local v0, "result":[Ljava/lang/reflect/Type;
    if-nez v0, :cond_0

    #@4
    .line 55
    iget-object v1, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    #@6
    invoke-direct {p0, v1}, Llibcore/reflect/ListOfTypes;->resolveTypes(Ljava/util/List;)[Ljava/lang/reflect/Type;

    #@9
    move-result-object v0

    #@a
    .line 56
    iput-object v0, p0, Llibcore/reflect/ListOfTypes;->resolvedTypes:[Ljava/lang/reflect/Type;

    #@c
    .line 58
    :cond_0
    return-object v0
.end method

.method length()I
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 80
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v2

    #@c
    if-ge v0, v2, :cond_1

    #@e
    .line 81
    if-lez v0, :cond_0

    #@10
    .line 82
    const-string/jumbo v2, ", "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 84
    :cond_0
    iget-object v2, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    .line 80
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 86
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    return-object v2
.end method
