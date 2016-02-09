.class public final Llibcore/reflect/GenericSignatureParser;
.super Ljava/lang/Object;
.source "GenericSignatureParser.java"


# instance fields
.field buffer:[C

.field private eof:Z

.field public exceptionTypes:Llibcore/reflect/ListOfTypes;

.field public fieldType:Ljava/lang/reflect/Type;

.field public formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

.field genericDecl:Ljava/lang/reflect/GenericDeclaration;

.field identifier:Ljava/lang/String;

.field public interfaceTypes:Llibcore/reflect/ListOfTypes;

.field public loader:Ljava/lang/ClassLoader;

.field public parameterTypes:Llibcore/reflect/ListOfTypes;

.field pos:I

.field public returnType:Ljava/lang/reflect/Type;

.field public superclassType:Ljava/lang/reflect/Type;

.field symbol:C


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 101
    iput-object p1, p0, Llibcore/reflect/GenericSignatureParser;->loader:Ljava/lang/ClassLoader;

    #@5
    .line 100
    return-void
.end method

.method static isStopSymbol(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 478
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 486
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 484
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 478
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method expect(C)V
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 470
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 471
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@7
    .line 469
    return-void

    #@8
    .line 473
    :cond_0
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    #@a
    invoke-direct {v0}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    #@d
    throw v0
.end method

.method parseClassSignature()V
    .locals 2

    #@0
    .prologue
    .line 231
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseOptFormalTypeParameters()V

    #@3
    .line 234
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    #@9
    .line 236
    new-instance v0, Llibcore/reflect/ListOfTypes;

    #@b
    const/16 v1, 0x10

    #@d
    invoke-direct {v0, v1}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    #@10
    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    #@12
    .line 237
    :goto_0
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@14
    if-lez v0, :cond_0

    #@16
    .line 239
    iget-object v0, p0, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    #@18
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    #@1f
    goto :goto_0

    #@20
    .line 227
    :cond_0
    return-void
.end method

.method parseClassTypeSignature()Ljava/lang/reflect/Type;
    .locals 7

    #@0
    .prologue
    .line 305
    const/16 v4, 0x4c

    #@2
    invoke-virtual {p0, v4}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    #@5
    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 308
    .local v1, "qualIdent":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanIdentifier()V

    #@d
    .line 309
    :goto_0
    iget-char v4, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@f
    const/16 v5, 0x2f

    #@11
    if-ne v4, v5, :cond_0

    #@13
    .line 310
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@16
    .line 311
    iget-object v4, p0, Llibcore/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v5, "."

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 312
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanIdentifier()V

    #@25
    goto :goto_0

    #@26
    .line 315
    :cond_0
    iget-object v4, p0, Llibcore/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    #@28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 317
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseOptTypeArguments()Llibcore/reflect/ListOfTypes;

    #@2e
    move-result-object v3

    #@2f
    .line 319
    .local v3, "typeArgs":Llibcore/reflect/ListOfTypes;
    new-instance v0, Llibcore/reflect/ParameterizedTypeImpl;

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    iget-object v5, p0, Llibcore/reflect/GenericSignatureParser;->loader:Ljava/lang/ClassLoader;

    #@37
    const/4 v6, 0x0

    #@38
    invoke-direct {v0, v6, v4, v3, v5}, Llibcore/reflect/ParameterizedTypeImpl;-><init>(Llibcore/reflect/ParameterizedTypeImpl;Ljava/lang/String;Llibcore/reflect/ListOfTypes;Ljava/lang/ClassLoader;)V

    #@3b
    .line 320
    .local v0, "parentType":Llibcore/reflect/ParameterizedTypeImpl;
    move-object v2, v0

    #@3c
    .line 322
    .local v2, "type":Llibcore/reflect/ParameterizedTypeImpl;
    :goto_1
    iget-char v4, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@3e
    const/16 v5, 0x2e

    #@40
    if-ne v4, v5, :cond_1

    #@42
    .line 324
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@45
    .line 325
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanIdentifier()V

    #@48
    .line 326
    const-string/jumbo v4, "$"

    #@4b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    iget-object v5, p0, Llibcore/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 327
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseOptTypeArguments()Llibcore/reflect/ListOfTypes;

    #@57
    move-result-object v3

    #@58
    .line 328
    new-instance v2, Llibcore/reflect/ParameterizedTypeImpl;

    #@5a
    .end local v2    # "type":Llibcore/reflect/ParameterizedTypeImpl;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    .line 329
    iget-object v5, p0, Llibcore/reflect/GenericSignatureParser;->loader:Ljava/lang/ClassLoader;

    #@60
    .line 328
    invoke-direct {v2, v0, v4, v3, v5}, Llibcore/reflect/ParameterizedTypeImpl;-><init>(Llibcore/reflect/ParameterizedTypeImpl;Ljava/lang/String;Llibcore/reflect/ListOfTypes;Ljava/lang/ClassLoader;)V

    #@63
    .restart local v2    # "type":Llibcore/reflect/ParameterizedTypeImpl;
    goto :goto_1

    #@64
    .line 332
    :cond_1
    const/16 v4, 0x3b

    #@66
    invoke-virtual {p0, v4}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    #@69
    .line 334
    return-object v2
.end method

.method parseFieldTypeSignature()Ljava/lang/reflect/Type;
    .locals 2

    #@0
    .prologue
    .line 287
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 297
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    #@7
    invoke-direct {v0}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    #@a
    throw v0

    #@b
    .line 289
    :sswitch_0
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 292
    :sswitch_1
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@13
    .line 293
    new-instance v0, Llibcore/reflect/GenericArrayTypeImpl;

    #@15
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseTypeSignature()Ljava/lang/reflect/Type;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Llibcore/reflect/GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    #@1c
    return-object v0

    #@1d
    .line 295
    :sswitch_2
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseTypeVariableSignature()Llibcore/reflect/TypeVariableImpl;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 287
    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_0
        0x54 -> :sswitch_2
        0x5b -> :sswitch_1
    .end sparse-switch
.end method

.method public parseForClass(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .locals 3
    .param p1, "genericDecl"    # Ljava/lang/reflect/GenericDeclaration;
    .param p2, "signature"    # Ljava/lang/String;

    #@0
    .prologue
    .line 124
    invoke-virtual {p0, p1, p2}, Llibcore/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    #@3
    .line 125
    iget-boolean v2, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    #@5
    if-nez v2, :cond_0

    #@7
    .line 126
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseClassSignature()V

    #@a
    .line 123
    :goto_0
    return-void

    #@b
    .line 128
    :cond_0
    instance-of v2, p1, Ljava/lang/Class;

    #@d
    if-eqz v2, :cond_2

    #@f
    move-object v0, p1

    #@10
    .line 129
    check-cast v0, Ljava/lang/Class;

    #@12
    .line 130
    .local v0, "c":Ljava/lang/Class;
    sget-object v2, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;

    #@14
    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    #@16
    .line 131
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    #@1c
    .line 132
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@1f
    move-result-object v1

    #@20
    .line 133
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v1

    #@21
    if-nez v2, :cond_1

    #@23
    .line 134
    sget-object v2, Llibcore/reflect/ListOfTypes;->EMPTY:Llibcore/reflect/ListOfTypes;

    #@25
    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    #@27
    goto :goto_0

    #@28
    .line 136
    :cond_1
    new-instance v2, Llibcore/reflect/ListOfTypes;

    #@2a
    invoke-direct {v2, v1}, Llibcore/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    #@2d
    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    #@2f
    goto :goto_0

    #@30
    .line 139
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    sget-object v2, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;

    #@32
    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    #@34
    .line 140
    const-class v2, Ljava/lang/Object;

    #@36
    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->superclassType:Ljava/lang/reflect/Type;

    #@38
    .line 141
    sget-object v2, Llibcore/reflect/ListOfTypes;->EMPTY:Llibcore/reflect/ListOfTypes;

    #@3a
    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->interfaceTypes:Llibcore/reflect/ListOfTypes;

    #@3c
    goto :goto_0
.end method

.method public parseForConstructor(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 4
    .param p1, "genericDecl"    # Ljava/lang/reflect/GenericDeclaration;
    .param p2, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/GenericDeclaration;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 186
    .local p3, "rawExceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Llibcore/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    #@3
    .line 187
    iget-boolean v3, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    #@5
    if-nez v3, :cond_0

    #@7
    .line 188
    invoke-virtual {p0, p3}, Llibcore/reflect/GenericSignatureParser;->parseMethodTypeSignature([Ljava/lang/Class;)V

    #@a
    .line 185
    :goto_0
    return-void

    #@b
    :cond_0
    move-object v0, p1

    #@c
    .line 190
    check-cast v0, Ljava/lang/reflect/Constructor;

    #@e
    .line 191
    .local v0, "c":Ljava/lang/reflect/Constructor;
    sget-object v3, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;

    #@10
    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    #@12
    .line 192
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@15
    move-result-object v2

    #@16
    .line 193
    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v2

    #@17
    if-nez v3, :cond_1

    #@19
    .line 194
    sget-object v3, Llibcore/reflect/ListOfTypes;->EMPTY:Llibcore/reflect/ListOfTypes;

    #@1b
    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    #@1d
    .line 198
    :goto_1
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    #@20
    move-result-object v1

    #@21
    .line 199
    .local v1, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v1

    #@22
    if-nez v3, :cond_2

    #@24
    .line 200
    sget-object v3, Llibcore/reflect/ListOfTypes;->EMPTY:Llibcore/reflect/ListOfTypes;

    #@26
    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    #@28
    goto :goto_0

    #@29
    .line 196
    .end local v1    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    new-instance v3, Llibcore/reflect/ListOfTypes;

    #@2b
    invoke-direct {v3, v2}, Llibcore/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    #@2e
    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    #@30
    goto :goto_1

    #@31
    .line 202
    .restart local v1    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    new-instance v3, Llibcore/reflect/ListOfTypes;

    #@33
    invoke-direct {v3, v1}, Llibcore/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    #@36
    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    #@38
    goto :goto_0
.end method

.method public parseForField(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .locals 1
    .param p1, "genericDecl"    # Ljava/lang/reflect/GenericDeclaration;
    .param p2, "signature"    # Ljava/lang/String;

    #@0
    .prologue
    .line 216
    invoke-virtual {p0, p1, p2}, Llibcore/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    #@3
    .line 217
    iget-boolean v0, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 218
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->fieldType:Ljava/lang/reflect/Type;

    #@d
    .line 215
    :cond_0
    return-void
.end method

.method public parseForMethod(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 4
    .param p1, "genericDecl"    # Ljava/lang/reflect/GenericDeclaration;
    .param p2, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/GenericDeclaration;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 155
    .local p3, "rawExceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Llibcore/reflect/GenericSignatureParser;->setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    #@3
    .line 156
    iget-boolean v3, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    #@5
    if-nez v3, :cond_0

    #@7
    .line 157
    invoke-virtual {p0, p3}, Llibcore/reflect/GenericSignatureParser;->parseMethodTypeSignature([Ljava/lang/Class;)V

    #@a
    .line 154
    :goto_0
    return-void

    #@b
    :cond_0
    move-object v1, p1

    #@c
    .line 159
    check-cast v1, Ljava/lang/reflect/Method;

    #@e
    .line 160
    .local v1, "m":Ljava/lang/reflect/Method;
    sget-object v3, Llibcore/util/EmptyArray;->TYPE_VARIABLE:[Ljava/lang/reflect/TypeVariable;

    #@10
    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    #@12
    .line 161
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@15
    move-result-object v2

    #@16
    .line 162
    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v2

    #@17
    if-nez v3, :cond_1

    #@19
    .line 163
    sget-object v3, Llibcore/reflect/ListOfTypes;->EMPTY:Llibcore/reflect/ListOfTypes;

    #@1b
    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    #@1d
    .line 167
    :goto_1
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    #@20
    move-result-object v0

    #@21
    .line 168
    .local v0, "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v0

    #@22
    if-nez v3, :cond_2

    #@24
    .line 169
    sget-object v3, Llibcore/reflect/ListOfTypes;->EMPTY:Llibcore/reflect/ListOfTypes;

    #@26
    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    #@28
    .line 173
    :goto_2
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@2b
    move-result-object v3

    #@2c
    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    #@2e
    goto :goto_0

    #@2f
    .line 165
    .end local v0    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    new-instance v3, Llibcore/reflect/ListOfTypes;

    #@31
    invoke-direct {v3, v2}, Llibcore/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    #@34
    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    #@36
    goto :goto_1

    #@37
    .line 171
    .restart local v0    # "exceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    new-instance v3, Llibcore/reflect/ListOfTypes;

    #@39
    invoke-direct {v3, v0}, Llibcore/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    #@3c
    iput-object v3, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    #@3e
    goto :goto_2
.end method

.method parseFormalTypeParameter()Llibcore/reflect/TypeVariableImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llibcore/reflect/TypeVariableImpl",
            "<",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x3a

    #@2
    .line 263
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanIdentifier()V

    #@5
    .line 264
    iget-object v2, p0, Llibcore/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    #@7
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 266
    .local v1, "name":Ljava/lang/String;
    new-instance v0, Llibcore/reflect/ListOfTypes;

    #@d
    const/16 v2, 0x8

    #@f
    invoke-direct {v0, v2}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    #@12
    .line 269
    .local v0, "bounds":Llibcore/reflect/ListOfTypes;
    invoke-virtual {p0, v4}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    #@15
    .line 270
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@17
    const/16 v3, 0x4c

    #@19
    if-eq v2, v3, :cond_0

    #@1b
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@1d
    const/16 v3, 0x5b

    #@1f
    if-ne v2, v3, :cond_2

    #@21
    .line 271
    :cond_0
    :goto_0
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v0, v2}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    #@28
    .line 274
    :cond_1
    :goto_1
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@2a
    if-ne v2, v4, :cond_3

    #@2c
    .line 276
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@2f
    .line 277
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v0, v2}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    #@36
    goto :goto_1

    #@37
    .line 270
    :cond_2
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@39
    const/16 v3, 0x54

    #@3b
    if-ne v2, v3, :cond_1

    #@3d
    goto :goto_0

    #@3e
    .line 280
    :cond_3
    new-instance v2, Llibcore/reflect/TypeVariableImpl;

    #@40
    iget-object v3, p0, Llibcore/reflect/GenericSignatureParser;->genericDecl:Ljava/lang/reflect/GenericDeclaration;

    #@42
    invoke-direct {v2, v3, v1, v0}, Llibcore/reflect/TypeVariableImpl;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;Llibcore/reflect/ListOfTypes;)V

    #@45
    return-object v2
.end method

.method parseMethodTypeSignature([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "rawExceptionTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v4, 0x5e

    #@2
    const/16 v3, 0x29

    #@4
    const/4 v2, 0x0

    #@5
    .line 413
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseOptFormalTypeParameters()V

    #@8
    .line 415
    new-instance v0, Llibcore/reflect/ListOfTypes;

    #@a
    const/16 v1, 0x10

    #@c
    invoke-direct {v0, v1}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    #@f
    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    #@11
    .line 416
    const/16 v0, 0x28

    #@13
    invoke-virtual {p0, v0}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    #@16
    .line 417
    :goto_0
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@18
    if-eq v0, v3, :cond_0

    #@1a
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@1c
    if-lez v0, :cond_0

    #@1e
    .line 418
    iget-object v0, p0, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    #@20
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseTypeSignature()Ljava/lang/reflect/Type;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    #@27
    goto :goto_0

    #@28
    .line 420
    :cond_0
    invoke-virtual {p0, v3}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    #@2b
    .line 422
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseReturnType()Ljava/lang/reflect/Type;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    #@31
    .line 424
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@33
    if-ne v0, v4, :cond_3

    #@35
    .line 425
    new-instance v0, Llibcore/reflect/ListOfTypes;

    #@37
    const/16 v1, 0x8

    #@39
    invoke-direct {v0, v1}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    #@3c
    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    #@3e
    .line 427
    :cond_1
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@41
    .line 431
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@43
    const/16 v1, 0x54

    #@45
    if-ne v0, v1, :cond_2

    #@47
    .line 432
    iget-object v0, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    #@49
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseTypeVariableSignature()Llibcore/reflect/TypeVariableImpl;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    #@50
    .line 436
    :goto_1
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@52
    if-eq v0, v4, :cond_1

    #@54
    .line 409
    :goto_2
    return-void

    #@55
    .line 434
    :cond_2
    iget-object v0, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    #@57
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseClassTypeSignature()Ljava/lang/reflect/Type;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    #@5e
    goto :goto_1

    #@5f
    .line 437
    :cond_3
    if-eqz p1, :cond_4

    #@61
    .line 438
    new-instance v0, Llibcore/reflect/ListOfTypes;

    #@63
    invoke-direct {v0, p1}, Llibcore/reflect/ListOfTypes;-><init>([Ljava/lang/reflect/Type;)V

    #@66
    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    #@68
    goto :goto_2

    #@69
    .line 440
    :cond_4
    new-instance v0, Llibcore/reflect/ListOfTypes;

    #@6b
    invoke-direct {v0, v2}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    #@6e
    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    #@70
    goto :goto_2
.end method

.method parseOptFormalTypeParameters()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x3e

    #@2
    .line 247
    new-instance v0, Llibcore/reflect/ListOfVariables;

    #@4
    invoke-direct {v0}, Llibcore/reflect/ListOfVariables;-><init>()V

    #@7
    .line 249
    .local v0, "typeParams":Llibcore/reflect/ListOfVariables;
    iget-char v1, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@9
    const/16 v2, 0x3c

    #@b
    if-ne v1, v2, :cond_1

    #@d
    .line 250
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@10
    .line 251
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFormalTypeParameter()Llibcore/reflect/TypeVariableImpl;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfVariables;->add(Ljava/lang/reflect/TypeVariable;)V

    #@17
    .line 252
    :goto_0
    iget-char v1, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@19
    if-eq v1, v3, :cond_0

    #@1b
    iget-char v1, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@1d
    if-lez v1, :cond_0

    #@1f
    .line 253
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFormalTypeParameter()Llibcore/reflect/TypeVariableImpl;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfVariables;->add(Ljava/lang/reflect/TypeVariable;)V

    #@26
    goto :goto_0

    #@27
    .line 255
    :cond_0
    invoke-virtual {p0, v3}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    #@2a
    .line 257
    :cond_1
    invoke-virtual {v0}, Llibcore/reflect/ListOfVariables;->getArray()[Ljava/lang/reflect/TypeVariable;

    #@2d
    move-result-object v1

    #@2e
    iput-object v1, p0, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    #@30
    .line 243
    return-void
.end method

.method parseOptTypeArguments()Llibcore/reflect/ListOfTypes;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x3e

    #@2
    .line 340
    new-instance v0, Llibcore/reflect/ListOfTypes;

    #@4
    const/16 v1, 0x8

    #@6
    invoke-direct {v0, v1}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    #@9
    .line 341
    .local v0, "typeArgs":Llibcore/reflect/ListOfTypes;
    iget-char v1, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@b
    const/16 v2, 0x3c

    #@d
    if-ne v1, v2, :cond_1

    #@f
    .line 342
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@12
    .line 344
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseTypeArgument()Ljava/lang/reflect/Type;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    #@19
    .line 345
    :goto_0
    iget-char v1, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@1b
    if-eq v1, v3, :cond_0

    #@1d
    iget-char v1, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@1f
    if-lez v1, :cond_0

    #@21
    .line 346
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseTypeArgument()Ljava/lang/reflect/Type;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    #@28
    goto :goto_0

    #@29
    .line 348
    :cond_0
    invoke-virtual {p0, v3}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    #@2c
    .line 350
    :cond_1
    return-object v0
.end method

.method parseReturnType()Ljava/lang/reflect/Type;
    .locals 2

    #@0
    .prologue
    .line 446
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@2
    const/16 v1, 0x56

    #@4
    if-eq v0, v1, :cond_0

    #@6
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseTypeSignature()Ljava/lang/reflect/Type;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 447
    :cond_0
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@e
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@10
    return-object v0
.end method

.method parseTypeArgument()Ljava/lang/reflect/Type;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 355
    new-instance v0, Llibcore/reflect/ListOfTypes;

    #@3
    invoke-direct {v0, v2}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    #@6
    .line 356
    .local v0, "extendsBound":Llibcore/reflect/ListOfTypes;
    new-instance v1, Llibcore/reflect/ListOfTypes;

    #@8
    invoke-direct {v1, v2}, Llibcore/reflect/ListOfTypes;-><init>(I)V

    #@b
    .line 357
    .local v1, "superBound":Llibcore/reflect/ListOfTypes;
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@d
    const/16 v3, 0x2a

    #@f
    if-ne v2, v3, :cond_0

    #@11
    .line 358
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@14
    .line 359
    const-class v2, Ljava/lang/Object;

    #@16
    invoke-virtual {v0, v2}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    #@19
    .line 360
    new-instance v2, Llibcore/reflect/WildcardTypeImpl;

    #@1b
    invoke-direct {v2, v0, v1}, Llibcore/reflect/WildcardTypeImpl;-><init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;)V

    #@1e
    return-object v2

    #@1f
    .line 362
    :cond_0
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@21
    const/16 v3, 0x2b

    #@23
    if-ne v2, v3, :cond_1

    #@25
    .line 363
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@28
    .line 364
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v0, v2}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    #@2f
    .line 365
    new-instance v2, Llibcore/reflect/WildcardTypeImpl;

    #@31
    invoke-direct {v2, v0, v1}, Llibcore/reflect/WildcardTypeImpl;-><init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;)V

    #@34
    return-object v2

    #@35
    .line 367
    :cond_1
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@37
    const/16 v3, 0x2d

    #@39
    if-ne v2, v3, :cond_2

    #@3b
    .line 368
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@3e
    .line 369
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    #@45
    .line 370
    const-class v2, Ljava/lang/Object;

    #@47
    invoke-virtual {v0, v2}, Llibcore/reflect/ListOfTypes;->add(Ljava/lang/reflect/Type;)V

    #@4a
    .line 371
    new-instance v2, Llibcore/reflect/WildcardTypeImpl;

    #@4c
    invoke-direct {v2, v0, v1}, Llibcore/reflect/WildcardTypeImpl;-><init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;)V

    #@4f
    return-object v2

    #@50
    .line 374
    :cond_2
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    #@53
    move-result-object v2

    #@54
    return-object v2
.end method

.method parseTypeSignature()Ljava/lang/reflect/Type;
    .locals 1

    #@0
    .prologue
    .line 389
    iget-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 400
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->parseFieldTypeSignature()Ljava/lang/reflect/Type;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 390
    :sswitch_0
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@d
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@f
    return-object v0

    #@10
    .line 391
    :sswitch_1
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@13
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@15
    return-object v0

    #@16
    .line 392
    :sswitch_2
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@19
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@1b
    return-object v0

    #@1c
    .line 393
    :sswitch_3
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@1f
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@21
    return-object v0

    #@22
    .line 394
    :sswitch_4
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@25
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@27
    return-object v0

    #@28
    .line 395
    :sswitch_5
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@2b
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@2d
    return-object v0

    #@2e
    .line 396
    :sswitch_6
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@31
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@33
    return-object v0

    #@34
    .line 397
    :sswitch_7
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@37
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@39
    return-object v0

    #@3a
    .line 389
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
        0x44 -> :sswitch_2
        0x46 -> :sswitch_3
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x53 -> :sswitch_6
        0x5a -> :sswitch_7
    .end sparse-switch
.end method

.method parseTypeVariableSignature()Llibcore/reflect/TypeVariableImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llibcore/reflect/TypeVariableImpl",
            "<",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 380
    const/16 v0, 0x54

    #@2
    invoke-virtual {p0, v0}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    #@5
    .line 381
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanIdentifier()V

    #@8
    .line 382
    const/16 v0, 0x3b

    #@a
    invoke-virtual {p0, v0}, Llibcore/reflect/GenericSignatureParser;->expect(C)V

    #@d
    .line 385
    new-instance v0, Llibcore/reflect/TypeVariableImpl;

    #@f
    iget-object v1, p0, Llibcore/reflect/GenericSignatureParser;->genericDecl:Ljava/lang/reflect/GenericDeclaration;

    #@11
    iget-object v2, p0, Llibcore/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    #@13
    invoke-direct {v0, v1, v2}, Llibcore/reflect/TypeVariableImpl;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    #@16
    return-object v0
.end method

.method scanIdentifier()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 492
    iget-boolean v2, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    #@4
    if-nez v2, :cond_5

    #@6
    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    const/16 v2, 0x20

    #@a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d
    .line 494
    .local v1, "identBuf":Ljava/lang/StringBuilder;
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@f
    invoke-static {v2}, Llibcore/reflect/GenericSignatureParser;->isStopSymbol(C)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_4

    #@15
    .line 495
    iget-char v2, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 497
    :cond_0
    iget-object v2, p0, Llibcore/reflect/GenericSignatureParser;->buffer:[C

    #@1c
    iget v3, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    #@1e
    aget-char v0, v2, v3

    #@20
    .line 498
    .local v0, "ch":C
    const/16 v2, 0x61

    #@22
    if-lt v0, v2, :cond_2

    #@24
    const/16 v2, 0x7a

    #@26
    if-gt v0, v2, :cond_2

    #@28
    .line 500
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    .line 501
    iget v2, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    #@2d
    add-int/lit8 v2, v2, 0x1

    #@2f
    iput v2, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    #@31
    .line 507
    iget v2, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    #@33
    iget-object v3, p0, Llibcore/reflect/GenericSignatureParser;->buffer:[C

    #@35
    array-length v3, v3

    #@36
    if-ne v2, v3, :cond_0

    #@38
    .line 508
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    #@3e
    .line 509
    iput-char v4, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@40
    .line 510
    iput-boolean v5, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    #@42
    .line 491
    return-void

    #@43
    .line 498
    :cond_2
    const/16 v2, 0x41

    #@45
    if-lt v0, v2, :cond_3

    #@47
    const/16 v2, 0x5a

    #@49
    if-le v0, v2, :cond_1

    #@4b
    .line 499
    :cond_3
    invoke-static {v0}, Llibcore/reflect/GenericSignatureParser;->isStopSymbol(C)Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_1

    #@51
    .line 503
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    iput-object v2, p0, Llibcore/reflect/GenericSignatureParser;->identifier:Ljava/lang/String;

    #@57
    .line 504
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@5a
    .line 505
    return-void

    #@5b
    .line 513
    .end local v0    # "ch":C
    :cond_4
    iput-char v4, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@5d
    .line 514
    iput-boolean v5, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    #@5f
    .line 515
    new-instance v2, Ljava/lang/reflect/GenericSignatureFormatError;

    #@61
    invoke-direct {v2}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    #@64
    throw v2

    #@65
    .line 518
    .end local v1    # "identBuf":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v2, Ljava/lang/reflect/GenericSignatureFormatError;

    #@67
    invoke-direct {v2}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    #@6a
    throw v2
.end method

.method scanSymbol()V
    .locals 2

    #@0
    .prologue
    .line 456
    iget-boolean v0, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 457
    iget v0, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    #@6
    iget-object v1, p0, Llibcore/reflect/GenericSignatureParser;->buffer:[C

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 458
    iget-object v0, p0, Llibcore/reflect/GenericSignatureParser;->buffer:[C

    #@d
    iget v1, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    #@f
    aget-char v0, v0, v1

    #@11
    iput-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@13
    .line 459
    iget v0, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    iput v0, p0, Llibcore/reflect/GenericSignatureParser;->pos:I

    #@19
    .line 455
    :goto_0
    return-void

    #@1a
    .line 461
    :cond_0
    const/4 v0, 0x0

    #@1b
    iput-char v0, p0, Llibcore/reflect/GenericSignatureParser;->symbol:C

    #@1d
    .line 462
    const/4 v0, 0x1

    #@1e
    iput-boolean v0, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    #@20
    goto :goto_0

    #@21
    .line 465
    :cond_1
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    #@23
    invoke-direct {v0}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>()V

    #@26
    throw v0
.end method

.method setInput(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V
    .locals 1
    .param p1, "genericDecl"    # Ljava/lang/reflect/GenericDeclaration;
    .param p2, "input"    # Ljava/lang/String;

    #@0
    .prologue
    .line 105
    if-eqz p2, :cond_0

    #@2
    .line 106
    iput-object p1, p0, Llibcore/reflect/GenericSignatureParser;->genericDecl:Ljava/lang/reflect/GenericDeclaration;

    #@4
    .line 107
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Llibcore/reflect/GenericSignatureParser;->buffer:[C

    #@a
    .line 108
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    #@d
    .line 109
    invoke-virtual {p0}, Llibcore/reflect/GenericSignatureParser;->scanSymbol()V

    #@10
    .line 104
    :goto_0
    return-void

    #@11
    .line 112
    :cond_0
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Llibcore/reflect/GenericSignatureParser;->eof:Z

    #@14
    goto :goto_0
.end method
