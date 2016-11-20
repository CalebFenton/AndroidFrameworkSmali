.class public Ljava/lang/reflect/Modifier;
.super Ljava/lang/Object;
.source "Modifier.java"


# static fields
.field public static final ABSTRACT:I = 0x400

.field static final ANNOTATION:I = 0x2000

.field static final BRIDGE:I = 0x40

.field private static final CLASS_MODIFIERS:I = 0xc1f

.field public static final CONSTRUCTOR:I = 0x10000

.field private static final CONSTRUCTOR_MODIFIERS:I = 0x7

.field public static final DEFAULT:I = 0x400000

.field static final ENUM:I = 0x4000

.field private static final FIELD_MODIFIERS:I = 0xdf

.field public static final FINAL:I = 0x10

.field public static final INTERFACE:I = 0x200

.field private static final INTERFACE_MODIFIERS:I = 0xc0f

.field private static final METHOD_MODIFIERS:I = 0xd3f

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
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static classModifiers()I
    .locals 1

    #@0
    .prologue
    .line 410
    const/16 v0, 0xc1f

    #@2
    return v0
.end method

.method public static constructorModifiers()I
    .locals 1

    #@0
    .prologue
    .line 436
    const/4 v0, 0x7

    #@1
    return v0
.end method

.method public static fieldModifiers()I
    .locals 1

    #@0
    .prologue
    .line 463
    const/16 v0, 0xdf

    #@2
    return v0
.end method

.method public static interfaceModifiers()I
    .locals 1

    #@0
    .prologue
    .line 423
    const/16 v0, 0xc0f

    #@2
    return v0
.end method

.method public static isAbstract(I)Z
    .locals 2
    .param p0, "mod"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 183
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
    .line 135
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
    .param p0, "mod"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 103
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
    .param p0, "mod"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 171
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
    .param p0, "mod"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 159
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
    .param p0, "mod"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 67
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
    .param p0, "mod"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 79
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
    .param p0, "mod"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 55
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
    .param p0, "mod"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 91
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
    .param p0, "mod"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 195
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
    .param p0, "mod"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 115
    and-int/lit8 v1, p0, 0x20

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method static isSynthetic(I)Z
    .locals 2
    .param p0, "mod"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 343
    and-int/lit16 v1, p0, 0x1000

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
    .param p0, "mod"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 147
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
    .param p0, "mod"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 127
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
    .line 449
    const/16 v0, 0xd3f

    #@2
    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 5
    .param p0, "mod"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 230
    new-instance v1, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 233
    .local v1, "sb":Ljava/lang/StringBuffer;
    and-int/lit8 v2, p0, 0x1

    #@8
    if-eqz v2, :cond_0

    #@a
    const-string/jumbo v2, "public "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    .line 234
    :cond_0
    and-int/lit8 v2, p0, 0x4

    #@12
    if-eqz v2, :cond_1

    #@14
    const-string/jumbo v2, "protected "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    .line 235
    :cond_1
    and-int/lit8 v2, p0, 0x2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    const-string/jumbo v2, "private "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    .line 238
    :cond_2
    and-int/lit16 v2, p0, 0x400

    #@26
    if-eqz v2, :cond_3

    #@28
    const-string/jumbo v2, "abstract "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    .line 239
    :cond_3
    and-int/lit8 v2, p0, 0x8

    #@30
    if-eqz v2, :cond_4

    #@32
    const-string/jumbo v2, "static "

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@38
    .line 240
    :cond_4
    and-int/lit8 v2, p0, 0x10

    #@3a
    if-eqz v2, :cond_5

    #@3c
    const-string/jumbo v2, "final "

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    .line 241
    :cond_5
    and-int/lit16 v2, p0, 0x80

    #@44
    if-eqz v2, :cond_6

    #@46
    const-string/jumbo v2, "transient "

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4c
    .line 242
    :cond_6
    and-int/lit8 v2, p0, 0x40

    #@4e
    if-eqz v2, :cond_7

    #@50
    const-string/jumbo v2, "volatile "

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@56
    .line 243
    :cond_7
    and-int/lit8 v2, p0, 0x20

    #@58
    if-eqz v2, :cond_8

    #@5a
    const-string/jumbo v2, "synchronized "

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@60
    .line 244
    :cond_8
    and-int/lit16 v2, p0, 0x100

    #@62
    if-eqz v2, :cond_9

    #@64
    const-string/jumbo v2, "native "

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6a
    .line 245
    :cond_9
    and-int/lit16 v2, p0, 0x800

    #@6c
    if-eqz v2, :cond_a

    #@6e
    const-string/jumbo v2, "strictfp "

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@74
    .line 246
    :cond_a
    and-int/lit16 v2, p0, 0x200

    #@76
    if-eqz v2, :cond_b

    #@78
    const-string/jumbo v2, "interface "

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7e
    .line 248
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    #@81
    move-result v0

    #@82
    .local v0, "len":I
    if-lez v0, :cond_c

    #@84
    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    add-int/lit8 v3, v0, -0x1

    #@8a
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8d
    move-result-object v2

    #@8e
    return-object v2

    #@8f
    .line 250
    :cond_c
    const-string/jumbo v2, ""

    #@92
    return-object v2
.end method
