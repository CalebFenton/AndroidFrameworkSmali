.class public final Llibcore/reflect/TypeVariableImpl;
.super Ljava/lang/Object;
.source "TypeVariableImpl.java"

# interfaces
.implements Ljava/lang/reflect/TypeVariable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/lang/reflect/GenericDeclaration;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/TypeVariable<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private blacklist bounds:Llibcore/reflect/ListOfTypes;

.field private final blacklist declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

.field private blacklist formalVar:Llibcore/reflect/TypeVariableImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/reflect/TypeVariableImpl<",
            "TD;>;"
        }
    .end annotation
.end field

.field private blacklist genericDeclaration:Ljava/lang/reflect/GenericDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final blacklist name:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 67
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    .local p1, "genericDecl":Ljava/lang/reflect/GenericDeclaration;, "TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Llibcore/reflect/TypeVariableImpl;->name:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Llibcore/reflect/TypeVariableImpl;->declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

    .line 70
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;Llibcore/reflect/ListOfTypes;)V
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bounds"    # Llibcore/reflect/ListOfTypes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/String;",
            "Llibcore/reflect/ListOfTypes;",
            ")V"
        }
    .end annotation

    .line 55
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    .local p1, "genericDecl":Ljava/lang/reflect/GenericDeclaration;, "TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Llibcore/reflect/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    .line 57
    iput-object p2, p0, Llibcore/reflect/TypeVariableImpl;->name:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Llibcore/reflect/TypeVariableImpl;->bounds:Llibcore/reflect/ListOfTypes;

    .line 59
    iput-object p0, p0, Llibcore/reflect/TypeVariableImpl;->formalVar:Llibcore/reflect/TypeVariableImpl;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/reflect/TypeVariableImpl;->declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

    .line 61
    return-void
.end method

.method static blacklist findFormalVar(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;
    .registers 7
    .param p0, "layer"    # Ljava/lang/reflect/GenericDeclaration;
    .param p1, "name"    # Ljava/lang/String;

    .line 73
    invoke-interface {p0}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 74
    .local v0, "formalVars":[Ljava/lang/reflect/TypeVariable;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 75
    .local v3, "var":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 76
    return-object v3

    .line 74
    .end local v3    # "var":Ljava/lang/reflect/TypeVariable;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 80
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist nextLayer(Ljava/lang/reflect/GenericDeclaration;)Ljava/lang/reflect/GenericDeclaration;
    .registers 4
    .param p0, "decl"    # Ljava/lang/reflect/GenericDeclaration;

    .line 84
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1b

    .line 86
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 87
    .local v0, "cl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 88
    .local v1, "m":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_f

    move-object v2, v1

    goto :goto_13

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 89
    .end local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    .local v2, "decl":Ljava/lang/reflect/GenericDeclaration;
    :goto_13
    if-eqz v2, :cond_16

    .line 90
    return-object v2

    .line 92
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 93
    .end local v0    # "cl":Ljava/lang/Class;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "decl":Ljava/lang/reflect/GenericDeclaration;
    .restart local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    :cond_1b
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_27

    .line 94
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 95
    :cond_27
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_33

    .line 96
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 98
    :cond_33
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 36
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 37
    return v1

    .line 39
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 40
    .local v0, "that":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 41
    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    nop

    .line 40
    :goto_28
    return v1
.end method

.method public whitelist test-api getBounds()[Ljava/lang/reflect/Type;
    .registers 2

    .line 120
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->resolve()V

    .line 121
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->bounds:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v0}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public whitelist test-api getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 125
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->resolve()V

    .line 126
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    return-object v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 130
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 47
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method blacklist resolve()V
    .registers 5

    .line 103
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->formalVar:Llibcore/reflect/TypeVariableImpl;

    if-eqz v0, :cond_5

    .line 104
    return-void

    .line 106
    :cond_5
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

    .line 108
    .local v0, "curLayer":Ljava/lang/reflect/GenericDeclaration;
    :goto_7
    iget-object v1, p0, Llibcore/reflect/TypeVariableImpl;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/reflect/TypeVariableImpl;->findFormalVar(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    move-object v2, v1

    .local v2, "var":Ljava/lang/reflect/TypeVariable;
    if-nez v1, :cond_1f

    .line 109
    invoke-static {v0}, Llibcore/reflect/TypeVariableImpl;->nextLayer(Ljava/lang/reflect/GenericDeclaration;)Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_17

    goto :goto_7

    .line 111
    :cond_17
    new-instance v1, Ljava/lang/AssertionError;

    const-string v3, "illegal type variable reference"

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 114
    :cond_1f
    move-object v1, v2

    check-cast v1, Llibcore/reflect/TypeVariableImpl;

    iput-object v1, p0, Llibcore/reflect/TypeVariableImpl;->formalVar:Llibcore/reflect/TypeVariableImpl;

    .line 115
    iget-object v1, p0, Llibcore/reflect/TypeVariableImpl;->formalVar:Llibcore/reflect/TypeVariableImpl;

    iget-object v1, v1, Llibcore/reflect/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    iput-object v1, p0, Llibcore/reflect/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    .line 116
    iget-object v1, p0, Llibcore/reflect/TypeVariableImpl;->formalVar:Llibcore/reflect/TypeVariableImpl;

    iget-object v1, v1, Llibcore/reflect/TypeVariableImpl;->bounds:Llibcore/reflect/ListOfTypes;

    iput-object v1, p0, Llibcore/reflect/TypeVariableImpl;->bounds:Llibcore/reflect/ListOfTypes;

    .line 117
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 135
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->name:Ljava/lang/String;

    return-object v0
.end method
