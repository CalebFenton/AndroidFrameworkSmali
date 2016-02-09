.class public Ljava/lang/reflect/Modifier;
.super Ljava/lang/Object;
.source "Modifier.java"


# static fields
.field public static final ABSTRACT:I = 0x400

.field static final ANNOTATION:I = 0x2000

.field static final BRIDGE:I = 0x40

.field public static final CONSTRUCTOR:I = 0x10000

.field static final ENUM:I = 0x4000

.field public static final FINAL:I = 0x10

.field public static final INTERFACE:I = 0x200

.field public static final MIRANDA:I = 0x200000

.field public static final NATIVE:I = 0x100

.field public static final PRIVATE:I = 0x2

.field public static final PROTECTED:I = 0x4

.field public static final PUBLIC:I = 0x1

.field public static final STATIC:I = 0x8

.field public static final STRICT:I = 0x800

.field public static final SYNCHRONIZED:I = 0x20

.field public static final SYNTHETIC:I = 0x1000

.field public static final TRANSIENT:I = 0x80

.field static final VARARGS:I = 0x80

.field public static final VOLATILE:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static classModifiers()I
    .locals 1

    #@0
    .prologue
    .line 129
    const/16 v0, 0xc1f

    #@2
    return v0
.end method

.method public static constructorModifiers()I
    .locals 1

    #@0
    .prologue
    .line 137
    const/4 v0, 0x7

    #@1
    return v0
.end method

.method public static fieldModifiers()I
    .locals 1

    #@0
    .prologue
    .line 145
    const/16 v0, 0xdf

    #@2
    return v0
.end method

.method static getDeclarationFieldModifiers(I)Ljava/lang/String;
    .locals 1
    .param p0, "modifiers"    # I

    #@0
    .prologue
    .line 311
    invoke-static {}, Ljava/lang/reflect/Modifier;->fieldModifiers()I

    #@3
    move-result v0

    #@4
    and-int/2addr v0, p0

    #@5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method static getDeclarationMethodModifiers(I)Ljava/lang/String;
    .locals 1
    .param p0, "modifiers"    # I

    #@0
    .prologue
    .line 320
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 321
    invoke-static {}, Ljava/lang/reflect/Modifier;->constructorModifiers()I

    #@9
    move-result v0

    #@a
    .line 319
    :goto_0
    and-int/2addr v0, p0

    #@b
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 322
    :cond_0
    invoke-static {}, Ljava/lang/reflect/Modifier;->methodModifiers()I

    #@13
    move-result v0

    #@14
    goto :goto_0
.end method

.method public static interfaceModifiers()I
    .locals 1

    #@0
    .prologue
    .line 153
    const/16 v0, 0xc0f

    #@2
    return v0
.end method

.method public static isAbstract(I)Z
    .locals 2
    .param p0, "modifiers"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 168
    and-int/lit16 v1, p0, 0x400

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static isConstructor(I)Z
    .locals 2
    .param p0, "modifiers"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 253
    const/high16 v1, 0x10000

    #@3
    and-int/2addr v1, p0

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public static isFinal(I)Z
    .locals 2
    .param p0, "modifiers"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 175
    and-int/lit8 v1, p0, 0x10

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static isInterface(I)Z
    .locals 2
    .param p0, "modifiers"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 182
    and-int/lit16 v1, p0, 0x200

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static isNative(I)Z
    .locals 2
    .param p0, "modifiers"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 189
    and-int/lit16 v1, p0, 0x100

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static isPrivate(I)Z
    .locals 2
    .param p0, "modifiers"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 196
    and-int/lit8 v1, p0, 0x2

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static isProtected(I)Z
    .locals 2
    .param p0, "modifiers"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 203
    and-int/lit8 v1, p0, 0x4

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static isPublic(I)Z
    .locals 2
    .param p0, "modifiers"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 210
    and-int/lit8 v1, p0, 0x1

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static isStatic(I)Z
    .locals 2
    .param p0, "modifiers"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 217
    and-int/lit8 v1, p0, 0x8

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static isStrict(I)Z
    .locals 2
    .param p0, "modifiers"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 224
    and-int/lit16 v1, p0, 0x800

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static isSynchronized(I)Z
    .locals 2
    .param p0, "modifiers"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 231
    and-int/lit8 v1, p0, 0x20

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static isTransient(I)Z
    .locals 2
    .param p0, "modifiers"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 238
    and-int/lit16 v1, p0, 0x80

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static isVolatile(I)Z
    .locals 2
    .param p0, "modifiers"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 245
    and-int/lit8 v1, p0, 0x40

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static methodModifiers()I
    .locals 1

    #@0
    .prologue
    .line 161
    const/16 v0, 0xd3f

    #@2
    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "modifiers"    # I

    #@0
    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 263
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 264
    const-string/jumbo v1, "public "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 266
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 267
    const-string/jumbo v1, "protected "

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 269
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 270
    const-string/jumbo v1, "private "

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 272
    :cond_2
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_3

    #@2f
    .line 273
    const-string/jumbo v1, "abstract "

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 275
    :cond_3
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_4

    #@3b
    .line 276
    const-string/jumbo v1, "static "

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 278
    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_5

    #@47
    .line 279
    const-string/jumbo v1, "final "

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 281
    :cond_5
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_6

    #@53
    .line 282
    const-string/jumbo v1, "transient "

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 284
    :cond_6
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    #@5c
    move-result v1

    #@5d
    if-eqz v1, :cond_7

    #@5f
    .line 285
    const-string/jumbo v1, "volatile "

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    .line 287
    :cond_7
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isSynchronized(I)Z

    #@68
    move-result v1

    #@69
    if-eqz v1, :cond_8

    #@6b
    .line 288
    const-string/jumbo v1, "synchronized "

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    .line 290
    :cond_8
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    #@74
    move-result v1

    #@75
    if-eqz v1, :cond_9

    #@77
    .line 291
    const-string/jumbo v1, "native "

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 293
    :cond_9
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStrict(I)Z

    #@80
    move-result v1

    #@81
    if-eqz v1, :cond_a

    #@83
    .line 294
    const-string/jumbo v1, "strictfp "

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    .line 296
    :cond_a
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_b

    #@8f
    .line 297
    const-string/jumbo v1, "interface "

    #@92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    .line 299
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@98
    move-result v1

    #@99
    if-nez v1, :cond_c

    #@9b
    .line 300
    const-string/jumbo v1, ""

    #@9e
    return-object v1

    #@9f
    .line 302
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@a2
    move-result v1

    #@a3
    add-int/lit8 v1, v1, -0x1

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@a8
    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v1

    #@ac
    return-object v1
.end method
