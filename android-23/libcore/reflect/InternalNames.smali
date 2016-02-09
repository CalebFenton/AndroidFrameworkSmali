.class public final Llibcore/reflect/InternalNames;
.super Ljava/lang/Object;
.source "InternalNames.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "internalName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 29
    const-string/jumbo v4, "["

    #@4
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 30
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-static {p0, v4}, Llibcore/reflect/InternalNames;->getClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    .line 31
    .local v0, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    #@13
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a
    move-result-object v4

    #@1b
    return-object v4

    #@1c
    .line 32
    .end local v0    # "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-string/jumbo v4, "Z"

    #@1f
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_1

    #@25
    .line 33
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@27
    return-object v4

    #@28
    .line 34
    :cond_1
    const-string/jumbo v4, "B"

    #@2b
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_2

    #@31
    .line 35
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@33
    return-object v4

    #@34
    .line 36
    :cond_2
    const-string/jumbo v4, "S"

    #@37
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_3

    #@3d
    .line 37
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@3f
    return-object v4

    #@40
    .line 38
    :cond_3
    const-string/jumbo v4, "I"

    #@43
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v4

    #@47
    if-eqz v4, :cond_4

    #@49
    .line 39
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@4b
    return-object v4

    #@4c
    .line 40
    :cond_4
    const-string/jumbo v4, "J"

    #@4f
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v4

    #@53
    if-eqz v4, :cond_5

    #@55
    .line 41
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@57
    return-object v4

    #@58
    .line 42
    :cond_5
    const-string/jumbo v4, "F"

    #@5b
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v4

    #@5f
    if-eqz v4, :cond_6

    #@61
    .line 43
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@63
    return-object v4

    #@64
    .line 44
    :cond_6
    const-string/jumbo v4, "D"

    #@67
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v4

    #@6b
    if-eqz v4, :cond_7

    #@6d
    .line 45
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@6f
    return-object v4

    #@70
    .line 46
    :cond_7
    const-string/jumbo v4, "C"

    #@73
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v4

    #@77
    if-eqz v4, :cond_8

    #@79
    .line 47
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@7b
    return-object v4

    #@7c
    .line 48
    :cond_8
    const-string/jumbo v4, "V"

    #@7f
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v4

    #@83
    if-eqz v4, :cond_9

    #@85
    .line 49
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@87
    return-object v4

    #@88
    .line 51
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8b
    move-result v4

    #@8c
    add-int/lit8 v4, v4, -0x1

    #@8e
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@91
    move-result-object v4

    #@92
    const/16 v5, 0x2f

    #@94
    const/16 v6, 0x2e

    #@96
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    .line 53
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@9d
    move-result-object v4

    #@9e
    return-object v4

    #@9f
    .line 54
    :catch_0
    move-exception v1

    #@a0
    .line 55
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    #@a2
    invoke-direct {v2, v3}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    #@a5
    .line 56
    .local v2, "error":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v2, v1}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@a8
    .line 57
    throw v2
.end method

.method public static getInternalName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 63
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const/16 v1, 0x5b

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@14
    move-result-object v1

    #@15
    invoke-static {v1}, Llibcore/reflect/InternalNames;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 65
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@24
    if-ne p0, v0, :cond_1

    #@26
    .line 66
    const-string/jumbo v0, "Z"

    #@29
    return-object v0

    #@2a
    .line 67
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@2c
    if-ne p0, v0, :cond_2

    #@2e
    .line 68
    const-string/jumbo v0, "B"

    #@31
    return-object v0

    #@32
    .line 69
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@34
    if-ne p0, v0, :cond_3

    #@36
    .line 70
    const-string/jumbo v0, "S"

    #@39
    return-object v0

    #@3a
    .line 71
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@3c
    if-ne p0, v0, :cond_4

    #@3e
    .line 72
    const-string/jumbo v0, "I"

    #@41
    return-object v0

    #@42
    .line 73
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@44
    if-ne p0, v0, :cond_5

    #@46
    .line 74
    const-string/jumbo v0, "J"

    #@49
    return-object v0

    #@4a
    .line 75
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@4c
    if-ne p0, v0, :cond_6

    #@4e
    .line 76
    const-string/jumbo v0, "F"

    #@51
    return-object v0

    #@52
    .line 77
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@54
    if-ne p0, v0, :cond_7

    #@56
    .line 78
    const-string/jumbo v0, "D"

    #@59
    return-object v0

    #@5a
    .line 79
    :cond_7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@5c
    if-ne p0, v0, :cond_8

    #@5e
    .line 80
    const-string/jumbo v0, "C"

    #@61
    return-object v0

    #@62
    .line 81
    :cond_8
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@64
    if-ne p0, v0, :cond_9

    #@66
    .line 82
    const-string/jumbo v0, "V"

    #@69
    return-object v0

    #@6a
    .line 84
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const/16 v1, 0x4c

    #@71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    const/16 v2, 0x2e

    #@7b
    const/16 v3, 0x2f

    #@7d
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    const/16 v1, 0x3b

    #@87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v0

    #@8f
    return-object v0
.end method
