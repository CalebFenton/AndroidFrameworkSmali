.class public Ljava/lang/reflect/AccessibleObject;
.super Ljava/lang/Object;
.source "AccessibleObject.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# instance fields
.field override:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    .locals 2
    .param p0, "array"    # [Ljava/lang/reflect/AccessibleObject;
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 89
    aget-object v1, p0, v0

    #@6
    invoke-static {v1, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible0(Ljava/lang/reflect/AccessibleObject;Z)V

    #@9
    .line 88
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 87
    :cond_0
    return-void
.end method

.method private static setAccessible0(Ljava/lang/reflect/AccessibleObject;Z)V
    .locals 4
    .param p0, "obj"    # Ljava/lang/reflect/AccessibleObject;
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    instance-of v2, p0, Ljava/lang/reflect/Constructor;

    #@2
    if-eqz v2, :cond_2

    #@4
    if-eqz p1, :cond_2

    #@6
    move-object v0, p0

    #@7
    .line 127
    check-cast v0, Ljava/lang/reflect/Constructor;

    #@9
    .line 128
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    #@c
    move-result-object v1

    #@d
    .line 129
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Class;

    #@f
    if-ne v1, v2, :cond_0

    #@11
    .line 130
    new-instance v2, Ljava/lang/SecurityException;

    #@13
    const-string/jumbo v3, "Can not make a java.lang.Class constructor accessible"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 132
    :cond_0
    const-class v2, Ljava/lang/reflect/Method;

    #@1c
    if-ne v1, v2, :cond_1

    #@1e
    .line 133
    new-instance v2, Ljava/lang/SecurityException;

    #@20
    const-string/jumbo v3, "Can not make a java.lang.reflect.Method constructor accessible"

    #@23
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 135
    :cond_1
    const-class v2, Ljava/lang/reflect/Field;

    #@29
    if-ne v1, v2, :cond_2

    #@2b
    .line 136
    new-instance v2, Ljava/lang/SecurityException;

    #@2d
    const-string/jumbo v3, "Can not make a java.lang.reflect.Field constructor accessible"

    #@30
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 140
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    iput-boolean p1, p0, Ljava/lang/reflect/AccessibleObject;->override:Z

    #@36
    .line 124
    return-void
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 173
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/AssertionError;

    #@2
    const-string/jumbo v1, "All subclasses should override this method"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@8
    throw v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    #@0
    .prologue
    .line 180
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    #@0
    .prologue
    .line 187
    new-instance v0, Ljava/lang/AssertionError;

    #@2
    const-string/jumbo v1, "All subclasses should override this method"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@8
    throw v0
.end method

.method public isAccessible()Z
    .locals 1

    #@0
    .prologue
    .line 149
    iget-boolean v0, p0, Ljava/lang/reflect/AccessibleObject;->override:Z

    #@2
    return v0
.end method

.method public setAccessible(Z)V
    .locals 0
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    invoke-static {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible0(Ljava/lang/reflect/AccessibleObject;Z)V

    #@3
    .line 118
    return-void
.end method
