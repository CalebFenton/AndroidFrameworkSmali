.class public Lsun/invoke/util/BytecodeDescriptor;
.super Ljava/lang/Object;
.source "BytecodeDescriptor.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist parseMethod(Ljava/lang/String;IILjava/lang/ClassLoader;)Ljava/util/List;
    .registers 10
    .param p0, "bytecodeSignature"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 46
    if-nez p3, :cond_6

    .line 47
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 48
    :cond_6
    move-object v0, p0

    .line 49
    .local v0, "str":Ljava/lang/String;
    filled-new-array {p1}, [I

    move-result-object v1

    .line 50
    .local v1, "i":[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v2, "ptypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    const/4 v3, 0x0

    aget v4, v1, v3

    if-ge v4, p2, :cond_4d

    aget v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_4d

    .line 52
    aget v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v3

    .line 53
    :goto_25
    aget v4, v1, v3

    if-ge v4, p2, :cond_46

    aget v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x29

    if-eq v4, v5, :cond_46

    .line 54
    invoke-static {v0, v1, p2, p3}, Lsun/invoke/util/BytecodeDescriptor;->parseSig(Ljava/lang/String;[IILjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 55
    .local v4, "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_3d

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_42

    .line 56
    :cond_3d
    const-string v5, "bad argument type"

    invoke-static {v0, v5}, Lsun/invoke/util/BytecodeDescriptor;->parseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_42
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v4    # "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_25

    .line 59
    :cond_46
    aget v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v1, v3

    goto :goto_52

    .line 61
    :cond_4d
    const-string v4, "not a method type"

    invoke-static {v0, v4}, Lsun/invoke/util/BytecodeDescriptor;->parseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_52
    invoke-static {v0, v1, p2, p3}, Lsun/invoke/util/BytecodeDescriptor;->parseSig(Ljava/lang/String;[IILjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 64
    .local v4, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_5c

    aget v3, v1, v3

    if-eq v3, p2, :cond_61

    .line 65
    :cond_5c
    const-string v3, "bad return type"

    invoke-static {v0, v3}, Lsun/invoke/util/BytecodeDescriptor;->parseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_61
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-object v2
.end method

.method public static blacklist parseMethod(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/List;
    .registers 4
    .param p0, "bytecodeSignature"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lsun/invoke/util/BytecodeDescriptor;->parseMethod(Ljava/lang/String;IILjava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseSig(Ljava/lang/String;[IILjava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "i"    # [I
    .param p2, "end"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[II",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x0

    if-ne v1, p2, :cond_7

    return-object v2

    .line 76
    :cond_7
    aget v1, p1, v0

    add-int/lit8 v3, v1, 0x1

    aput v3, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 77
    .local v1, "c":C
    const/16 v3, 0x4c

    if-ne v1, v3, :cond_3c

    .line 78
    aget v3, p1, v0

    .local v3, "begc":I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 79
    .local v4, "endc":I
    if-gez v4, :cond_20

    return-object v2

    .line 80
    :cond_20
    add-int/lit8 v2, v4, 0x1

    aput v2, p1, v0

    .line 81
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "name":Ljava/lang/String;
    :try_start_30
    invoke-virtual {p3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_34
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_34} :catch_35

    return-object v2

    .line 84
    :catch_35
    move-exception v2

    .line 85
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/TypeNotPresentException;

    invoke-direct {v5, v0, v2}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 87
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v3    # "begc":I
    .end local v4    # "endc":I
    :cond_3c
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_4f

    .line 88
    invoke-static {p0, p1, p2, p3}, Lsun/invoke/util/BytecodeDescriptor;->parseSig(Ljava/lang/String;[IILjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 89
    .local v2, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_4e

    .line 90
    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 91
    :cond_4e
    return-object v2

    .line 93
    .end local v2    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4f
    invoke-static {v1}, Lsun/invoke/util/Wrapper;->forBasicType(C)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->primitiveType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist unparse(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 98
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lsun/invoke/util/BytecodeDescriptor;->unparseSig(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist unparse(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # Ljava/lang/Object;

    .line 108
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_c

    .line 109
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lsun/invoke/util/BytecodeDescriptor;->unparse(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_c
    instance-of v0, p0, Ljava/lang/invoke/MethodType;

    if-eqz v0, :cond_18

    .line 111
    move-object v0, p0

    check-cast v0, Ljava/lang/invoke/MethodType;

    invoke-static {v0}, Lsun/invoke/util/BytecodeDescriptor;->unparse(Ljava/lang/invoke/MethodType;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_18
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist unparse(Ljava/lang/invoke/MethodType;)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # Ljava/lang/invoke/MethodType;

    .line 104
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lsun/invoke/util/BytecodeDescriptor;->unparseMethod(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist unparseMethod(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 116
    .local p0, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ptypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 119
    .local v2, "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, v0}, Lsun/invoke/util/BytecodeDescriptor;->unparseSig(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .end local v2    # "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_e

    .line 120
    :cond_1e
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {p0, v0}, Lsun/invoke/util/BytecodeDescriptor;->unparseSig(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist unparseSig(Ljava/lang/Class;Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 126
    .local p0, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->forBasicType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar()C

    move-result v0

    .line 127
    .local v0, "c":C
    const/16 v1, 0x4c

    if-eq v0, v1, :cond_10

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 130
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 131
    .local v2, "lsemi":Z
    if-eqz v2, :cond_1b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    if-eqz v2, :cond_31

    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .end local v2    # "lsemi":Z
    :cond_31
    :goto_31
    return-void
.end method
