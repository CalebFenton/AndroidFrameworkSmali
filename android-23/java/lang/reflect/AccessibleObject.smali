.class public Ljava/lang/reflect/AccessibleObject;
.super Ljava/lang/Object;
.source "AccessibleObject.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# instance fields
.field private flag:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    #@6
    .line 54
    return-void
.end method

.method public static setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    .locals 3
    .param p0, "objects"    # [Ljava/lang/reflect/AccessibleObject;
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 82
    const/4 v1, 0x0

    #@1
    array-length v2, p0

    #@2
    :goto_0
    if-ge v1, v2, :cond_0

    #@4
    aget-object v0, p0, v1

    #@6
    .line 83
    .local v0, "object":Ljava/lang/reflect/AccessibleObject;
    iput-boolean p1, v0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    #@8
    .line 82
    add-int/lit8 v1, v1, 0x1

    #@a
    goto :goto_0

    #@b
    .line 81
    .end local v0    # "object":Ljava/lang/reflect/AccessibleObject;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
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
    .line 101
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    #@0
    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public isAccessible()Z
    .locals 1

    #@0
    .prologue
    .line 66
    iget-boolean v0, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    #@2
    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 88
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setAccessible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 74
    iput-boolean p1, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    #@2
    .line 73
    return-void
.end method
