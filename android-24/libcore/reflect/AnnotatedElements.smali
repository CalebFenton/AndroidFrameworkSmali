.class public final Llibcore/reflect/AnnotatedElements;
.super Ljava/lang/Object;
.source "AnnotatedElements.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 215
    new-instance v0, Ljava/lang/AssertionError;

    #@5
    const-string/jumbo v1, "Instances of AnnotatedElements not allowed"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v0
.end method

.method public static getAnnotationsByType(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 3
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 198
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 199
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "annotationClass"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 203
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    #@e
    move-result-object v0

    #@f
    .line 204
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;, "[TT;"
    if-nez v0, :cond_1

    #@11
    .line 205
    new-instance v1, Ljava/lang/AssertionError;

    #@13
    const-string/jumbo v2, "annotations must not be null"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@19
    throw v1

    #@1a
    .line 211
    :cond_1
    return-object v0
.end method

.method public static getDeclaredAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 42
    if-nez p1, :cond_0

    #@3
    .line 43
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "annotationClass"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 46
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    #@f
    move-result-object v0

    #@10
    .line 49
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_1

    #@12
    .line 50
    return-object v3

    #@13
    .line 55
    :cond_1
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@15
    if-ge v1, v2, :cond_3

    #@17
    .line 56
    aget-object v2, v0, v1

    #@19
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_2

    #@1f
    .line 57
    aget-object v2, v0, v1

    #@21
    return-object v2

    #@22
    .line 55
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 63
    :cond_3
    return-object v3
.end method

.method public static getDeclaredAnnotationsByType(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 6
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 74
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 75
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v5, "annotationClass"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 78
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    #@e
    move-result-object v0

    #@f
    .line 81
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    new-instance v3, Ljava/util/ArrayList;

    #@11
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@14
    .line 84
    .local v3, "unfoldedAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-static {p1}, Llibcore/reflect/AnnotatedElements;->getRepeatableAnnotationContainerClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    #@17
    move-result-object v2

    #@18
    .line 86
    .local v2, "repeatableAnnotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    array-length v4, v0

    #@1a
    if-ge v1, v4, :cond_3

    #@1c
    .line 87
    aget-object v4, v0, v1

    #@1e
    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_2

    #@24
    .line 89
    aget-object v4, v0, v1

    #@26
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    .line 86
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 90
    :cond_2
    if-eqz v2, :cond_1

    #@2e
    .line 91
    aget-object v4, v0, v1

    #@30
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@33
    move-result v4

    #@34
    .line 90
    if-eqz v4, :cond_1

    #@36
    .line 93
    aget-object v4, v0, v1

    #@38
    invoke-static {v4, p1, v3}, Llibcore/reflect/AnnotatedElements;->insertAnnotationValues(Ljava/lang/annotation/Annotation;Ljava/lang/Class;Ljava/util/ArrayList;)V

    #@3b
    goto :goto_1

    #@3c
    .line 97
    :cond_3
    const/4 v4, 0x0

    #@3d
    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@40
    move-result-object v4

    #@41
    check-cast v4, [Ljava/lang/annotation/Annotation;

    #@43
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@46
    move-result-object v4

    #@47
    check-cast v4, [Ljava/lang/annotation/Annotation;

    #@49
    return-object v4
.end method

.method private static getRepeatableAnnotationContainerClassFor(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 181
    const-class v2, Ljava/lang/annotation/Repeatable;

    #@3
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/annotation/Repeatable;

    #@9
    .line 182
    .local v0, "repeatableAnnotation":Ljava/lang/annotation/Repeatable;
    if-nez v0, :cond_0

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    invoke-interface {v0}, Ljava/lang/annotation/Repeatable;->value()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    goto :goto_0
.end method

.method private static insertAnnotationValues(Ljava/lang/annotation/Annotation;Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 10
    .param p0, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "unfoldedAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v7, 0x0

    #@1
    .line 120
    invoke-static {p1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@4
    move-result-object v7

    #@5
    check-cast v7, [Ljava/lang/annotation/Annotation;

    #@7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v0

    #@b
    .line 124
    .local v0, "annotationArrayClass":Ljava/lang/Class;, "Ljava/lang/Class<[TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v7

    #@f
    const-string/jumbo v8, "value"

    #@12
    const/4 v9, 0x0

    #@13
    new-array v9, v9, [Ljava/lang/Class;

    #@15
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result-object v6

    #@19
    .line 135
    .local v6, "valuesMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    #@20
    move-result v7

    #@21
    if-nez v7, :cond_0

    #@23
    .line 136
    new-instance v7, Ljava/lang/AssertionError;

    #@25
    new-instance v8, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v9, "annotation container = "

    #@2d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v8

    #@35
    .line 137
    const-string/jumbo v9, "annotation element class = "

    #@38
    .line 136
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    .line 137
    const-string/jumbo v9, "; value() doesn\'t return array"

    #@43
    .line 136
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v8

    #@47
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v8

    #@4b
    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@4e
    throw v7

    #@4f
    .line 130
    .end local v6    # "valuesMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    #@50
    .line 131
    .local v3, "e":Ljava/lang/SecurityException;
    new-instance v7, Ljava/lang/annotation/IncompleteAnnotationException;

    #@52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@55
    move-result-object v8

    #@56
    const-string/jumbo v9, "value"

    #@59
    invoke-direct {v7, v8, v9}, Ljava/lang/annotation/IncompleteAnnotationException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@5c
    throw v7

    #@5d
    .line 127
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    #@5e
    .line 128
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/AssertionError;

    #@60
    new-instance v8, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v9, "annotation container = "

    #@68
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v8

    #@6c
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v8

    #@70
    .line 129
    const-string/jumbo v9, "annotation element class = "

    #@73
    .line 128
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v8

    #@77
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v8

    #@7b
    .line 129
    const-string/jumbo v9, "; missing value() method"

    #@7e
    .line 128
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v8

    #@82
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v8

    #@86
    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@89
    throw v7

    #@8a
    .line 141
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v6    # "valuesMethod":Ljava/lang/reflect/Method;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@8d
    move-result-object v7

    #@8e
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@91
    move-result-object v7

    #@92
    invoke-virtual {p1, v7}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v7

    #@96
    if-nez v7, :cond_1

    #@98
    .line 142
    new-instance v7, Ljava/lang/AssertionError;

    #@9a
    new-instance v8, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v9, "annotation container = "

    #@a2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v8

    #@a6
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v8

    #@aa
    .line 143
    const-string/jumbo v9, "annotation element class = "

    #@ad
    .line 142
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v8

    #@b1
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v8

    #@b5
    .line 143
    const-string/jumbo v9, "; value() returns incorrect type"

    #@b8
    .line 142
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v8

    #@bc
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v8

    #@c0
    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c3
    throw v7

    #@c4
    .line 149
    :cond_1
    const/4 v7, 0x0

    #@c5
    :try_start_1
    new-array v7, v7, [Ljava/lang/Object;

    #@c7
    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@ca
    move-result-object v5

    #@cb
    check-cast v5, [Ljava/lang/annotation/Annotation;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    #@cd
    .line 154
    .local v5, "nestedAnnotations":[Ljava/lang/annotation/Annotation;, "[TT;"
    const/4 v4, 0x0

    #@ce
    .local v4, "i":I
    :goto_0
    array-length v7, v5

    #@cf
    if-ge v4, v7, :cond_2

    #@d1
    .line 155
    aget-object v7, v5, v4

    #@d3
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d6
    .line 154
    add-int/lit8 v4, v4, 0x1

    #@d8
    goto :goto_0

    #@d9
    .line 150
    .end local v4    # "i":I
    .end local v5    # "nestedAnnotations":[Ljava/lang/annotation/Annotation;, "[TT;"
    :catch_2
    move-exception v2

    #@da
    .line 151
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v7, Ljava/lang/AssertionError;

    #@dc
    invoke-direct {v7, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@df
    throw v7

    #@e0
    .line 109
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v4    # "i":I
    .restart local v5    # "nestedAnnotations":[Ljava/lang/annotation/Annotation;, "[TT;"
    :cond_2
    return-void
.end method
