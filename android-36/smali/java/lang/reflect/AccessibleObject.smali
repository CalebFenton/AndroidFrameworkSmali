.class public Ljava/lang/reflect/AccessibleObject;
.super Ljava/lang/Object;
.source "AccessibleObject.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# instance fields
.field greylist override:Z


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    .registers 4
    .param p0, "array"    # [Ljava/lang/reflect/AccessibleObject;
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 99
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible0(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method private static greylist-max-o setAccessible0(Ljava/lang/reflect/AccessibleObject;Z)V
    .registers 6
    .param p0, "obj"    # Ljava/lang/reflect/AccessibleObject;
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 140
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    if-ne p1, v0, :cond_33

    .line 141
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 148
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 149
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Class;

    if-eq v1, v2, :cond_2b

    .line 152
    const-class v2, Ljava/lang/reflect/Method;

    if-eq v1, v2, :cond_23

    .line 155
    const-class v2, Ljava/lang/reflect/Field;

    if-eq v1, v2, :cond_1b

    goto :goto_33

    .line 156
    :cond_1b
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Can not make a java.lang.reflect.Field constructor accessible"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_23
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Can not make a java.lang.reflect.Method constructor accessible"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_2b
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Can not make a java.lang.Class constructor accessible"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_33
    :goto_33
    iput-boolean p1, p0, Ljava/lang/reflect/AccessibleObject;->override:Z

    .line 162
    return-void
.end method


# virtual methods
.method public whitelist test-api getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 201
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "All subclasses should override this method"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist test-api getAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 2

    .line 227
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 220
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "All subclasses should override this method"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist test-api getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 239
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 3

    .line 258
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "All subclasses should override this method"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist test-api getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 251
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isAccessible()Z
    .registers 2

    .line 170
    iget-boolean v0, p0, Ljava/lang/reflect/AccessibleObject;->override:Z

    return v0
.end method

.method public whitelist test-api isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 211
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-super {p0, p1}, Ljava/lang/reflect/AnnotatedElement;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setAccessible(Z)V
    .registers 2
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 132
    invoke-static {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible0(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 133
    return-void
.end method
