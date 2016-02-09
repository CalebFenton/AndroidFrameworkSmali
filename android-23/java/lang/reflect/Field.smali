.class public final Ljava/lang/reflect/Field;
.super Ljava/lang/reflect/AccessibleObject;
.source "Field.java"

# interfaces
.implements Ljava/lang/reflect/Member;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/reflect/Field$1;
    }
.end annotation


# static fields
.field public static final ORDER_BY_NAME_AND_DECLARING_CLASS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessFlags:I

.field private declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private dexFieldIndex:I

.field private offset:I

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 55
    new-instance v0, Ljava/lang/reflect/Field$1;

    #@2
    invoke-direct {v0}, Ljava/lang/reflect/Field$1;-><init>()V

    #@5
    .line 54
    sput-object v0, Ljava/lang/reflect/Field;->ORDER_BY_NAME_AND_DECLARING_CLASS:Ljava/util/Comparator;

    #@7
    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    #@3
    return-void
.end method

.method private getSignature()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 240
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Llibcore/reflect/Types;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 176
    instance-of v2, p1, Ljava/lang/reflect/Field;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 177
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 181
    check-cast v0, Ljava/lang/reflect/Field;

    #@9
    .line 182
    .local v0, "field":Ljava/lang/reflect/Field;
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    #@b
    iget-object v3, v0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    #@d
    if-ne v2, v3, :cond_1

    #@f
    iget v2, p0, Ljava/lang/reflect/Field;->offset:I

    #@11
    iget v3, v0, Ljava/lang/reflect/Field;->offset:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    const/4 v1, 0x1

    #@16
    :cond_1
    return v1
.end method

.method public native get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    #@0
    .prologue
    .line 249
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_0

    #@2
    .line 250
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "annotationType == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 252
    :cond_0
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public native getBoolean(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native getByte(Ljava/lang/Object;)B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native getChar(Ljava/lang/Object;)C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    #@0
    .prologue
    .line 244
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getDeclaredAnnotations(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    .line 245
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/annotation/Annotation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    #@a
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, [Ljava/lang/annotation/Annotation;

    #@10
    return-object v1
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public getDexFieldIndex()I
    .locals 1

    #@0
    .prologue
    .line 150
    iget v0, p0, Ljava/lang/reflect/Field;->dexFieldIndex:I

    #@2
    return v0
.end method

.method public native getDouble(Ljava/lang/Object;)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native getFloat(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 5

    #@0
    .prologue
    .line 221
    invoke-static {p0}, Llibcore/reflect/AnnotationAccess;->getSignature(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 222
    .local v4, "signatureAttribute":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    .line 223
    .local v1, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@b
    move-result-object v0

    #@c
    .line 224
    .local v0, "cl":Ljava/lang/ClassLoader;
    new-instance v3, Llibcore/reflect/GenericSignatureParser;

    #@e
    invoke-direct {v3, v0}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    #@11
    .line 225
    .local v3, "parser":Llibcore/reflect/GenericSignatureParser;
    invoke-virtual {v3, v1, v4}, Llibcore/reflect/GenericSignatureParser;->parseForField(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    #@14
    .line 226
    iget-object v2, v3, Llibcore/reflect/GenericSignatureParser;->fieldType:Ljava/lang/reflect/Type;

    #@16
    .line 227
    .local v2, "genericType":Ljava/lang/reflect/Type;
    if-nez v2, :cond_0

    #@18
    .line 228
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@1b
    move-result-object v2

    #@1c
    .line 230
    :cond_0
    return-object v2
.end method

.method public native getInt(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native getLong(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public getModifiers()I
    .locals 2

    #@0
    .prologue
    .line 91
    iget v0, p0, Ljava/lang/reflect/Field;->accessFlags:I

    #@2
    const v1, 0xffff

    #@5
    and-int/2addr v0, v1

    #@6
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 119
    iget v2, p0, Ljava/lang/reflect/Field;->dexFieldIndex:I

    #@2
    const/4 v3, -0x1

    #@3
    if-ne v2, v3, :cond_1

    #@5
    .line 121
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    #@7
    invoke-virtual {v2}, Ljava/lang/Class;->isProxy()Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 122
    new-instance v2, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v2

    #@13
    .line 124
    :cond_0
    const-string/jumbo v2, "throws"

    #@16
    return-object v2

    #@17
    .line 126
    :cond_1
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    #@19
    invoke-virtual {v2}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    #@1c
    move-result-object v0

    #@1d
    .line 127
    .local v0, "dex":Lcom/android/dex/Dex;
    iget v2, p0, Ljava/lang/reflect/Field;->dexFieldIndex:I

    #@1f
    invoke-virtual {v0, v2}, Lcom/android/dex/Dex;->nameIndexFromFieldIndex(I)I

    #@22
    move-result v1

    #@23
    .line 128
    .local v1, "nameIndex":I
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    #@25
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDexCacheString(Lcom/android/dex/Dex;I)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method

.method public getOffset()I
    .locals 1

    #@0
    .prologue
    .line 159
    iget v0, p0, Ljava/lang/reflect/Field;->offset:I

    #@2
    return v0
.end method

.method public native getShort(Ljava/lang/Object;)S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 168
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v0

    #@c
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@13
    move-result v1

    #@14
    xor-int/2addr v0, v1

    #@15
    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 2
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
    .line 256
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-nez p1, :cond_0

    #@2
    .line 257
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "annotationType == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 259
    :cond_0
    invoke-static {p0, p1}, Llibcore/reflect/AnnotationAccess;->isDeclaredAnnotationPresent(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public isEnumConstant()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 101
    iget v1, p0, Ljava/lang/reflect/Field;->accessFlags:I

    #@3
    and-int/lit16 v1, v1, 0x4000

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isSynthetic()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 110
    iget v1, p0, Ljava/lang/reflect/Field;->accessFlags:I

    #@3
    and-int/lit16 v1, v1, 0x1000

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public native set(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setBoolean(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setByte(Ljava/lang/Object;B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setChar(Ljava/lang/Object;C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setDouble(Ljava/lang/Object;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setFloat(Ljava/lang/Object;F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setInt(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setLong(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setShort(Ljava/lang/Object;S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public toGenericString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x20

    #@2
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    const/16 v2, 0x50

    #@6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 195
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    #@c
    move-result v2

    #@d
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->getDeclarationFieldModifiers(I)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 197
    .local v0, "modifiers":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 201
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Llibcore/reflect/Types;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    #@25
    .line 202
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 204
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    const/16 v3, 0x2e

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    .line 792
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    #@7
    move-result v1

    #@8
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->getDeclarationFieldModifiers(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 791
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    .line 793
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 794
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 796
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Llibcore/reflect/Types;->appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    #@1f
    .line 797
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    .line 798
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 799
    const/16 v1, 0x2e

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    .line 800
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 801
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    return-object v1
.end method
