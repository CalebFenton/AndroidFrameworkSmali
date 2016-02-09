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
        "Ljava/lang/reflect/TypeVariable",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private bounds:Llibcore/reflect/ListOfTypes;

.field private final declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

.field private formalVar:Llibcore/reflect/TypeVariableImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/reflect/TypeVariableImpl",
            "<TD;>;"
        }
    .end annotation
.end field

.field private genericDeclaration:Ljava/lang/reflect/GenericDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 67
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    .local p1, "genericDecl":Ljava/lang/reflect/GenericDeclaration;, "TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    iput-object p2, p0, Llibcore/reflect/TypeVariableImpl;->name:Ljava/lang/String;

    #@5
    .line 69
    iput-object p1, p0, Llibcore/reflect/TypeVariableImpl;->declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

    #@7
    .line 67
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;Llibcore/reflect/ListOfTypes;)V
    .locals 1
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

    #@0
    .prologue
    .line 55
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    .local p1, "genericDecl":Ljava/lang/reflect/GenericDeclaration;, "TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Llibcore/reflect/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    #@5
    .line 57
    iput-object p2, p0, Llibcore/reflect/TypeVariableImpl;->name:Ljava/lang/String;

    #@7
    .line 58
    iput-object p3, p0, Llibcore/reflect/TypeVariableImpl;->bounds:Llibcore/reflect/ListOfTypes;

    #@9
    .line 59
    iput-object p0, p0, Llibcore/reflect/TypeVariableImpl;->formalVar:Llibcore/reflect/TypeVariableImpl;

    #@b
    .line 60
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Llibcore/reflect/TypeVariableImpl;->declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

    #@e
    .line 55
    return-void
.end method

.method static findFormalVar(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;
    .locals 5
    .param p0, "layer"    # Ljava/lang/reflect/GenericDeclaration;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    invoke-interface {p0}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    #@3
    move-result-object v0

    #@4
    .line 74
    .local v0, "formalVars":[Ljava/lang/reflect/TypeVariable;
    const/4 v2, 0x0

    #@5
    array-length v3, v0

    #@6
    :goto_0
    if-ge v2, v3, :cond_1

    #@8
    aget-object v1, v0, v2

    #@a
    .line 75
    .local v1, "var":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 76
    return-object v1

    #@15
    .line 74
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@17
    goto :goto_0

    #@18
    .line 80
    .end local v1    # "var":Ljava/lang/reflect/TypeVariable;
    :cond_1
    const/4 v2, 0x0

    #@19
    return-object v2
.end method

.method private static nextLayer(Ljava/lang/reflect/GenericDeclaration;)Ljava/lang/reflect/GenericDeclaration;
    .locals 2
    .param p0, "decl"    # Ljava/lang/reflect/GenericDeclaration;

    #@0
    .prologue
    .line 84
    instance-of v1, p0, Ljava/lang/Class;

    #@2
    if-eqz v1, :cond_1

    #@4
    move-object v0, p0

    #@5
    .line 86
    check-cast v0, Ljava/lang/Class;

    #@7
    .line 87
    .local v0, "cl":Ljava/lang/Class;
    invoke-static {v0}, Llibcore/reflect/AnnotationAccess;->getEnclosingMethodOrConstructor(Ljava/lang/Class;)Ljava/lang/reflect/AccessibleObject;

    #@a
    move-result-object p0

    #@b
    .end local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    check-cast p0, Ljava/lang/reflect/GenericDeclaration;

    #@d
    .line 88
    .restart local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    if-eqz p0, :cond_0

    #@f
    .line 89
    return-object p0

    #@10
    .line 91
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 92
    .end local v0    # "cl":Ljava/lang/Class;
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/Method;

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 93
    check-cast p0, Ljava/lang/reflect/Method;

    #@1b
    .end local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    #@1e
    move-result-object v1

    #@1f
    return-object v1

    #@20
    .line 94
    .restart local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    :cond_2
    instance-of v1, p0, Ljava/lang/reflect/Constructor;

    #@22
    if-eqz v1, :cond_3

    #@24
    .line 95
    check-cast p0, Ljava/lang/reflect/Constructor;

    #@26
    .end local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    #@29
    move-result-object v1

    #@2a
    return-object v1

    #@2b
    .line 97
    .restart local p0    # "decl":Ljava/lang/reflect/GenericDeclaration;
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    #@2d
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@30
    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    const/4 v1, 0x0

    #@1
    .line 36
    instance-of v2, p1, Ljava/lang/reflect/TypeVariable;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 37
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 39
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    #@9
    .line 40
    .local v0, "that":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->getName()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 41
    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    #@1a
    move-result-object v1

    #@1b
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    .line 40
    :cond_1
    return v1
.end method

.method public getBounds()[Ljava/lang/reflect/Type;
    .locals 1

    #@0
    .prologue
    .line 119
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->resolve()V

    #@3
    .line 120
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->bounds:Llibcore/reflect/ListOfTypes;

    #@5
    invoke-virtual {v0}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [Ljava/lang/reflect/Type;

    #@f
    return-object v0
.end method

.method public getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    #@0
    .prologue
    .line 124
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->resolve()V

    #@3
    .line 125
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    #@5
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 129
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 47
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    mul-int/lit8 v0, v0, 0x1f

    #@a
    invoke-virtual {p0}, Llibcore/reflect/TypeVariableImpl;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@11
    move-result v1

    #@12
    add-int/2addr v0, v1

    #@13
    return v0
.end method

.method resolve()V
    .locals 4

    #@0
    .prologue
    .line 102
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    iget-object v2, p0, Llibcore/reflect/TypeVariableImpl;->formalVar:Llibcore/reflect/TypeVariableImpl;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 103
    return-void

    #@5
    .line 105
    :cond_0
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->declOfVarUser:Ljava/lang/reflect/GenericDeclaration;

    #@7
    .line 107
    .local v0, "curLayer":Ljava/lang/reflect/GenericDeclaration;
    :cond_1
    iget-object v2, p0, Llibcore/reflect/TypeVariableImpl;->name:Ljava/lang/String;

    #@9
    invoke-static {v0, v2}, Llibcore/reflect/TypeVariableImpl;->findFormalVar(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;

    #@c
    move-result-object v1

    #@d
    .local v1, "var":Ljava/lang/reflect/TypeVariable;
    if-nez v1, :cond_2

    #@f
    .line 108
    invoke-static {v0}, Llibcore/reflect/TypeVariableImpl;->nextLayer(Ljava/lang/reflect/GenericDeclaration;)Ljava/lang/reflect/GenericDeclaration;

    #@12
    move-result-object v0

    #@13
    .line 109
    if-nez v0, :cond_1

    #@15
    .line 110
    new-instance v2, Ljava/lang/AssertionError;

    #@17
    const-string/jumbo v3, "illegal type variable reference"

    #@1a
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1d
    throw v2

    #@1e
    .line 113
    :cond_2
    check-cast v1, Llibcore/reflect/TypeVariableImpl;

    #@20
    .end local v1    # "var":Ljava/lang/reflect/TypeVariable;
    iput-object v1, p0, Llibcore/reflect/TypeVariableImpl;->formalVar:Llibcore/reflect/TypeVariableImpl;

    #@22
    .line 114
    iget-object v2, p0, Llibcore/reflect/TypeVariableImpl;->formalVar:Llibcore/reflect/TypeVariableImpl;

    #@24
    iget-object v2, v2, Llibcore/reflect/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    #@26
    iput-object v2, p0, Llibcore/reflect/TypeVariableImpl;->genericDeclaration:Ljava/lang/reflect/GenericDeclaration;

    #@28
    .line 115
    iget-object v2, p0, Llibcore/reflect/TypeVariableImpl;->formalVar:Llibcore/reflect/TypeVariableImpl;

    #@2a
    iget-object v2, v2, Llibcore/reflect/TypeVariableImpl;->bounds:Llibcore/reflect/ListOfTypes;

    #@2c
    iput-object v2, p0, Llibcore/reflect/TypeVariableImpl;->bounds:Llibcore/reflect/ListOfTypes;

    #@2e
    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 134
    .local p0, "this":Llibcore/reflect/TypeVariableImpl;, "Llibcore/reflect/TypeVariableImpl<TD;>;"
    iget-object v0, p0, Llibcore/reflect/TypeVariableImpl;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
