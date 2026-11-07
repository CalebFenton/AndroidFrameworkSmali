.class public final Ljava/lang/reflect/Field;
.super Ljava/lang/reflect/AccessibleObject;
.source "Field.java"

# interfaces
.implements Ljava/lang/reflect/Member;


# instance fields
.field private greylist accessFlags:I

.field private blacklist artFieldIndex:I

.field private greylist-max-o declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private greylist-max-o offset:I

.field private greylist-max-o type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    .line 69
    return-void
.end method

.method private native greylist-max-o getAnnotationNative(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getNameInternal()Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o getSignatureAnnotation()[Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o isAnnotationPresentNative(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 214
    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    instance-of v1, p1, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2c

    .line 215
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 216
    .local v1, "other":Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2a

    .line 217
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_2a

    .line 218
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    nop

    .line 216
    :goto_2b
    return v0

    .line 220
    .end local v1    # "other":Ljava/lang/reflect/Field;
    :cond_2c
    return v0
.end method

.method public native whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public whitelist test-api getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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

    .line 905
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    invoke-direct {p0, p1}, Ljava/lang/reflect/Field;->getAnnotationNative(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
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

    .line 921
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Llibcore/reflect/AnnotatedElements;->getDirectOrIndirectAnnotationsByType(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public native greylist-max-o getArtField()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native whitelist test-api getBoolean(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public native whitelist test-api getByte(Ljava/lang/Object;)B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public native whitelist test-api getChar(Ljava/lang/Object;)C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public native whitelist test-api getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist test-api getDeclaringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public native whitelist test-api getDouble(Ljava/lang/Object;)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public native whitelist test-api getFloat(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public whitelist test-api getGenericType()Ljava/lang/reflect/Type;
    .registers 5

    .line 179
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "signatureAttribute":Ljava/lang/String;
    iget-object v1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 181
    .local v1, "cl":Ljava/lang/ClassLoader;
    new-instance v2, Llibcore/reflect/GenericSignatureParser;

    invoke-direct {v2, v1}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 182
    .local v2, "parser":Llibcore/reflect/GenericSignatureParser;
    iget-object v3, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Llibcore/reflect/GenericSignatureParser;->parseForField(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 183
    iget-object v3, v2, Llibcore/reflect/GenericSignatureParser;->fieldType:Ljava/lang/reflect/Type;

    .line 184
    .local v3, "genericType":Ljava/lang/reflect/Type;
    if-nez v3, :cond_1c

    .line 185
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 187
    :cond_1c
    return-object v3
.end method

.method public native whitelist test-api getInt(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public native whitelist test-api getLong(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public whitelist test-api getModifiers()I
    .registers 3

    .line 114
    iget v0, p0, Ljava/lang/reflect/Field;->accessFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 4

    .line 85
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isProxy()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 87
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_36

    .line 91
    iget v0, p0, Ljava/lang/reflect/Field;->artFieldIndex:I

    packed-switch v0, :pswitch_data_58

    .line 94
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index for proxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/reflect/Field;->artFieldIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 93
    :pswitch_30
    const-string v0, "throws"

    return-object v0

    .line 92
    :pswitch_33
    const-string v0, "interfaces"

    return-object v0

    .line 88
    :cond_36
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid modifiers for proxy field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 98
    :cond_53
    invoke-direct {p0}, Ljava/lang/reflect/Field;->getNameInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_33
        :pswitch_30
    .end packed-switch
.end method

.method public greylist getOffset()I
    .registers 2

    .line 950
    iget v0, p0, Ljava/lang/reflect/Field;->offset:I

    return v0
.end method

.method public native whitelist test-api getShort(Ljava/lang/Object;)S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method greylist-max-o getSignatureAttribute()Ljava/lang/String;
    .registers 6

    .line 192
    invoke-direct {p0}, Ljava/lang/reflect/Field;->getSignatureAnnotation()[Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "annotation":[Ljava/lang/String;
    if-nez v0, :cond_8

    .line 194
    const/4 v1, 0x0

    return-object v1

    .line 196
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v1, "result":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_19

    aget-object v4, v0, v3

    .line 198
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 200
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 229
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 927
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz p1, :cond_7

    .line 930
    invoke-direct {p0, p1}, Ljava/lang/reflect/Field;->isAnnotationPresentNative(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 928
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isEnumConstant()Z
    .registers 2

    .line 126
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api isSynthetic()Z
    .registers 2

    .line 138
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isSynthetic(I)Z

    move-result v0

    return v0
.end method

.method public native whitelist test-api set(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public native whitelist test-api setBoolean(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public native whitelist test-api setByte(Ljava/lang/Object;B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public native whitelist test-api setChar(Ljava/lang/Object;C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public native whitelist test-api setDouble(Ljava/lang/Object;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public native whitelist test-api setFloat(Ljava/lang/Object;F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public native whitelist test-api setInt(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public native whitelist test-api setLong(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public native whitelist test-api setShort(Ljava/lang/Object;S)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method public whitelist test-api toGenericString()Ljava/lang/String;
    .registers 7

    .line 282
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 283
    .local v0, "mod":I
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 284
    .local v1, "fieldType":Ljava/lang/reflect/Type;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    if-nez v0, :cond_14

    const-string v4, ""

    goto :goto_29

    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 285
    invoke-interface {v1}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 287
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 254
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 255
    .local v0, "mod":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    if-nez v0, :cond_10

    const-string v3, ""

    goto :goto_25

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 256
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 257
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    return-object v1
.end method
