.class public Lsun/reflect/annotation/AnnotationType;
.super Ljava/lang/Object;
.source "AnnotationType.java"


# instance fields
.field private inherited:Z

.field private final memberDefaults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final memberTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final members:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private retention:Ljava/lang/annotation/RetentionPolicy;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v6, 0x0

    #@1
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 48
    new-instance v7, Ljava/util/HashMap;

    #@6
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v7, p0, Lsun/reflect/annotation/AnnotationType;->memberTypes:Ljava/util/Map;

    #@b
    .line 54
    new-instance v7, Ljava/util/HashMap;

    #@d
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@10
    .line 53
    iput-object v7, p0, Lsun/reflect/annotation/AnnotationType;->memberDefaults:Ljava/util/Map;

    #@12
    .line 60
    new-instance v7, Ljava/util/HashMap;

    #@14
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@17
    iput-object v7, p0, Lsun/reflect/annotation/AnnotationType;->members:Ljava/util/Map;

    #@19
    .line 65
    sget-object v7, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    #@1b
    iput-object v7, p0, Lsun/reflect/annotation/AnnotationType;->retention:Ljava/lang/annotation/RetentionPolicy;

    #@1d
    .line 70
    iput-boolean v6, p0, Lsun/reflect/annotation/AnnotationType;->inherited:Z

    #@1f
    .line 96
    invoke-virtual {p1}, Ljava/lang/Class;->isAnnotation()Z

    #@22
    move-result v7

    #@23
    if-nez v7, :cond_0

    #@25
    .line 97
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v7, "Not an annotation type"

    #@2a
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v6

    #@2e
    .line 100
    :cond_0
    new-instance v7, Lsun/reflect/annotation/AnnotationType$1;

    #@30
    invoke-direct {v7, p0, p1}, Lsun/reflect/annotation/AnnotationType$1;-><init>(Lsun/reflect/annotation/AnnotationType;Ljava/lang/Class;)V

    #@33
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    check-cast v2, [Ljava/lang/reflect/Method;

    #@39
    .line 108
    .local v2, "methods":[Ljava/lang/reflect/Method;
    array-length v7, v2

    #@3a
    :goto_0
    if-ge v6, v7, :cond_3

    #@3c
    aget-object v1, v2, v6

    #@3e
    .line 109
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@41
    move-result-object v8

    #@42
    array-length v8, v8

    #@43
    if-eqz v8, :cond_1

    #@45
    .line 110
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@47
    new-instance v7, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    const-string/jumbo v8, " has params"

    #@53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v6

    #@5f
    .line 111
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    .line 112
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@66
    move-result-object v5

    #@67
    .line 113
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, p0, Lsun/reflect/annotation/AnnotationType;->memberTypes:Ljava/util/Map;

    #@69
    invoke-static {v5}, Lsun/reflect/annotation/AnnotationType;->invocationHandlerReturnType(Ljava/lang/Class;)Ljava/lang/Class;

    #@6c
    move-result-object v9

    #@6d
    invoke-interface {v8, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    .line 114
    iget-object v8, p0, Lsun/reflect/annotation/AnnotationType;->members:Ljava/util/Map;

    #@72
    invoke-interface {v8, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 116
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    #@78
    move-result-object v0

    #@79
    .line 117
    .local v0, "defaultValue":Ljava/lang/Object;
    if-eqz v0, :cond_2

    #@7b
    .line 118
    iget-object v8, p0, Lsun/reflect/annotation/AnnotationType;->memberDefaults:Ljava/util/Map;

    #@7d
    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@80
    .line 120
    :cond_2
    iget-object v8, p0, Lsun/reflect/annotation/AnnotationType;->members:Ljava/util/Map;

    #@82
    invoke-interface {v8, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@85
    .line 108
    add-int/lit8 v6, v6, 0x1

    #@87
    goto :goto_0

    #@88
    .line 123
    .end local v0    # "defaultValue":Ljava/lang/Object;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {p1, p0}, Ljava/lang/Class;->setAnnotationType(Lsun/reflect/annotation/AnnotationType;)V

    #@8b
    .line 127
    const-class v6, Ljava/lang/annotation/Retention;

    #@8d
    if-eq p1, v6, :cond_4

    #@8f
    .line 128
    const-class v6, Ljava/lang/annotation/Inherited;

    #@91
    if-eq p1, v6, :cond_4

    #@93
    .line 129
    const-class v6, Ljava/lang/annotation/Retention;

    #@95
    invoke-virtual {p1, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@98
    move-result-object v4

    #@99
    check-cast v4, Ljava/lang/annotation/Retention;

    #@9b
    .line 130
    .local v4, "ret":Ljava/lang/annotation/Retention;
    if-nez v4, :cond_5

    #@9d
    sget-object v6, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    #@9f
    :goto_1
    iput-object v6, p0, Lsun/reflect/annotation/AnnotationType;->retention:Ljava/lang/annotation/RetentionPolicy;

    #@a1
    .line 131
    const-class v6, Ljava/lang/annotation/Inherited;

    #@a3
    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@a6
    move-result v6

    #@a7
    iput-boolean v6, p0, Lsun/reflect/annotation/AnnotationType;->inherited:Z

    #@a9
    .line 95
    .end local v4    # "ret":Ljava/lang/annotation/Retention;
    :cond_4
    return-void

    #@aa
    .line 130
    .restart local v4    # "ret":Ljava/lang/annotation/Retention;
    :cond_5
    invoke-interface {v4}, Ljava/lang/annotation/Retention;->value()Ljava/lang/annotation/RetentionPolicy;

    #@ad
    move-result-object v6

    #@ae
    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Ljava/lang/Class;)Lsun/reflect/annotation/AnnotationType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lsun/reflect/annotation/AnnotationType;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v2, Lsun/reflect/annotation/AnnotationType;

    #@2
    monitor-enter v2

    #@3
    .line 81
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotationType()Lsun/reflect/annotation/AnnotationType;

    #@6
    move-result-object v0

    #@7
    .line 82
    .local v0, "result":Lsun/reflect/annotation/AnnotationType;
    if-nez v0, :cond_0

    #@9
    .line 83
    new-instance v0, Lsun/reflect/annotation/AnnotationType;

    #@b
    .end local v0    # "result":Lsun/reflect/annotation/AnnotationType;
    invoke-direct {v0, p0}, Lsun/reflect/annotation/AnnotationType;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .restart local v0    # "result":Lsun/reflect/annotation/AnnotationType;
    :cond_0
    monitor-exit v2

    #@f
    .line 85
    return-object v0

    #@10
    .end local v0    # "result":Lsun/reflect/annotation/AnnotationType;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method public static invocationHandlerReturnType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 143
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    .line 144
    const-class v0, Ljava/lang/Byte;

    #@6
    return-object v0

    #@7
    .line 145
    :cond_0
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@9
    if-ne p0, v0, :cond_1

    #@b
    .line 146
    const-class v0, Ljava/lang/Character;

    #@d
    return-object v0

    #@e
    .line 147
    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@10
    if-ne p0, v0, :cond_2

    #@12
    .line 148
    const-class v0, Ljava/lang/Double;

    #@14
    return-object v0

    #@15
    .line 149
    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@17
    if-ne p0, v0, :cond_3

    #@19
    .line 150
    const-class v0, Ljava/lang/Float;

    #@1b
    return-object v0

    #@1c
    .line 151
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1e
    if-ne p0, v0, :cond_4

    #@20
    .line 152
    const-class v0, Ljava/lang/Integer;

    #@22
    return-object v0

    #@23
    .line 153
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@25
    if-ne p0, v0, :cond_5

    #@27
    .line 154
    const-class v0, Ljava/lang/Long;

    #@29
    return-object v0

    #@2a
    .line 155
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@2c
    if-ne p0, v0, :cond_6

    #@2e
    .line 156
    const-class v0, Ljava/lang/Short;

    #@30
    return-object v0

    #@31
    .line 157
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@33
    if-ne p0, v0, :cond_7

    #@35
    .line 158
    const-class v0, Ljava/lang/Boolean;

    #@37
    return-object v0

    #@38
    .line 161
    :cond_7
    return-object p0
.end method


# virtual methods
.method public isInherited()Z
    .locals 1

    #@0
    .prologue
    .line 199
    iget-boolean v0, p0, Lsun/reflect/annotation/AnnotationType;->inherited:Z

    #@2
    return v0
.end method

.method public memberDefaults()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationType;->memberDefaults:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public memberTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationType;->memberTypes:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public members()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationType;->members:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public retention()Ljava/lang/annotation/RetentionPolicy;
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lsun/reflect/annotation/AnnotationType;->retention:Ljava/lang/annotation/RetentionPolicy;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v1, "Annotation Type:\n"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    .line 207
    .local v0, "s":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "   Member types: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Lsun/reflect/annotation/AnnotationType;->memberTypes:Ljava/util/Map;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, "\n"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "   Member defaults: "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    iget-object v2, p0, Lsun/reflect/annotation/AnnotationType;->memberDefaults:Ljava/util/Map;

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    const-string/jumbo v2, "\n"

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@48
    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v2, "   Retention policy: "

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    iget-object v2, p0, Lsun/reflect/annotation/AnnotationType;->retention:Ljava/lang/annotation/RetentionPolicy;

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    const-string/jumbo v2, "\n"

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@68
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v2, "   Inherited: "

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    iget-boolean v2, p0, Lsun/reflect/annotation/AnnotationType;->inherited:Z

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@81
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@84
    move-result-object v1

    #@85
    return-object v1
.end method
