.class public final Llibcore/reflect/AnnotatedElements;
.super Ljava/lang/Object;
.source "AnnotatedElements.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method public static blacklist getDirectOrIndirectAnnotationsByType(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .registers 7
    .param p0, "element"    # Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 44
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_42

    .line 48
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 51
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v1, "unfoldedAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    nop

    .line 54
    invoke-static {p1}, Llibcore/reflect/AnnotatedElements;->getRepeatableAnnotationContainerClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 56
    .local v2, "repeatableAnnotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    array-length v4, v0

    if-ge v3, v4, :cond_34

    .line 57
    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 59
    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 60
    :cond_22
    if-eqz v2, :cond_31

    aget-object v4, v0, v3

    .line 61
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 63
    aget-object v4, v0, v3

    invoke-static {v4, p1, v1}, Llibcore/reflect/AnnotatedElements;->insertAnnotationValues(Ljava/lang/annotation/Annotation;Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 56
    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 67
    .end local v3    # "i":I
    :cond_34
    const/4 v3, 0x0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/annotation/Annotation;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/annotation/Annotation;

    return-object v3

    .line 45
    .end local v0    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v1    # "unfoldedAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v2    # "repeatableAnnotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationClass"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getRepeatableAnnotationContainerClassFor(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 151
    .local p0, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/annotation/Repeatable;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Repeatable;

    .line 152
    .local v0, "repeatableAnnotation":Ljava/lang/annotation/Repeatable;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-interface {v0}, Ljava/lang/annotation/Repeatable;->value()Ljava/lang/Class;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method private static blacklist insertAnnotationValues(Ljava/lang/annotation/Annotation;Ljava/lang/Class;Ljava/util/ArrayList;)V
    .registers 10
    .param p0, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 89
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "unfoldedAnnotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const-string v0, "value"

    const-string v1, "annotation element class = "

    const-string v2, "annotation container = "

    .line 90
    const/4 v3, 0x0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/annotation/Annotation;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 94
    .local v4, "annotationArrayClass":Ljava/lang/Class;, "Ljava/lang/Class<[TT;>;"
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_1b} :catch_a6
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_1b} :catch_9b

    .line 102
    .local v0, "valuesMethod":Ljava/lang/reflect/Method;
    nop

    .line 105
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 111
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 119
    :try_start_34
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/annotation/Annotation;
    :try_end_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_3c} :catch_4a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_34 .. :try_end_3c} :catch_4a

    .line 122
    .local v1, "nestedAnnotations":[Ljava/lang/annotation/Annotation;, "[TT;"
    nop

    .line 124
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3e
    array-length v3, v1

    if-ge v2, v3, :cond_49

    .line 125
    aget-object v3, v1, v2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 127
    .end local v2    # "i":I
    :cond_49
    return-void

    .line 120
    .end local v1    # "nestedAnnotations":[Ljava/lang/annotation/Annotation;, "[TT;"
    :catch_4a
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 112
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_51
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; value() returns incorrect type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 106
    :cond_76
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; value() doesn\'t return array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 100
    .end local v0    # "valuesMethod":Ljava/lang/reflect/Method;
    :catch_9b
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/annotation/IncompleteAnnotationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/annotation/IncompleteAnnotationException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v2

    .line 97
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_a6
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; missing value() method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
