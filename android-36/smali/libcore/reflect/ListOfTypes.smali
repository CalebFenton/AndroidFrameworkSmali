.class public final Llibcore/reflect/ListOfTypes;
.super Ljava/lang/Object;
.source "ListOfTypes.java"


# static fields
.field public static final blacklist EMPTY:Llibcore/reflect/ListOfTypes;


# instance fields
.field private blacklist resolvedTypes:[Ljava/lang/reflect/Type;

.field private final blacklist types:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Llibcore/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    sput-object v0, Llibcore/reflect/ListOfTypes;->EMPTY:Llibcore/reflect/ListOfTypes;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method constructor blacklist <init>([Ljava/lang/reflect/Type;)V
    .registers 6
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    .line 36
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_19

    aget-object v2, p1, v1

    .line 37
    .local v2, "type":Ljava/lang/reflect/Type;
    iget-object v3, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .end local v2    # "type":Ljava/lang/reflect/Type;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 39
    :cond_19
    return-void
.end method

.method private blacklist resolveTypes(Ljava/util/List;)[Ljava/lang/reflect/Type;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 62
    .local p1, "unresolved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 63
    .local v0, "size":I
    if-nez v0, :cond_9

    .line 64
    sget-object v1, Llibcore/util/EmptyArray;->TYPE:[Ljava/lang/reflect/Type;

    return-object v1

    .line 66
    :cond_9
    new-array v1, v0, [Ljava/lang/reflect/Type;

    .line 67
    .local v1, "result":[Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_27

    .line 68
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    .line 69
    .local v3, "type":Ljava/lang/reflect/Type;
    instance-of v4, v3, Llibcore/reflect/ParameterizedTypeImpl;

    if-eqz v4, :cond_22

    .line 70
    move-object v4, v3

    check-cast v4, Llibcore/reflect/ParameterizedTypeImpl;

    invoke-virtual {v4}, Llibcore/reflect/ParameterizedTypeImpl;->getResolvedType()Ljava/lang/reflect/Type;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_24

    .line 72
    :cond_22
    aput-object v3, v1, v2

    .line 67
    .end local v3    # "type":Ljava/lang/reflect/Type;
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 75
    .end local v2    # "i":I
    :cond_27
    return-object v1
.end method


# virtual methods
.method blacklist add(Ljava/lang/reflect/Type;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 42
    if-eqz p1, :cond_8

    .line 45
    iget-object v0, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void

    .line 43
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getResolvedTypes()[Ljava/lang/reflect/Type;
    .registers 3

    .line 53
    iget-object v0, p0, Llibcore/reflect/ListOfTypes;->resolvedTypes:[Ljava/lang/reflect/Type;

    .line 54
    .local v0, "result":[Ljava/lang/reflect/Type;
    if-nez v0, :cond_c

    .line 55
    iget-object v1, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Llibcore/reflect/ListOfTypes;->resolveTypes(Ljava/util/List;)[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 56
    iput-object v0, p0, Llibcore/reflect/ListOfTypes;->resolvedTypes:[Ljava/lang/reflect/Type;

    .line 58
    :cond_c
    return-object v0
.end method

.method blacklist length()I
    .registers 2

    .line 49
    iget-object v0, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 81
    if-lez v1, :cond_15

    .line 82
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_15
    iget-object v2, p0, Llibcore/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 86
    .end local v1    # "i":I
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
