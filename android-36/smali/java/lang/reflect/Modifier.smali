.class public Ljava/lang/reflect/Modifier;
.super Ljava/lang/Object;
.source "Modifier.java"


# static fields
.field public static final whitelist test-api ABSTRACT:I = 0x400

.field static final greylist-max-o ACCESS_MODIFIERS:I = 0x7

.field static final greylist-max-o ANNOTATION:I = 0x2000

.field static final greylist-max-o BRIDGE:I = 0x40

.field private static final greylist-max-o CLASS_MODIFIERS:I = 0xc1f

.field public static final greylist-max-o CONSTRUCTOR:I = 0x10000

.field private static final greylist-max-o CONSTRUCTOR_MODIFIERS:I = 0x7

.field public static final greylist-max-o DEFAULT:I = 0x400000

.field static final greylist-max-o ENUM:I = 0x4000

.field private static final greylist-max-o FIELD_MODIFIERS:I = 0xdf

.field public static final whitelist test-api FINAL:I = 0x10

.field public static final whitelist test-api INTERFACE:I = 0x200

.field private static final greylist-max-o INTERFACE_MODIFIERS:I = 0xc0f

.field public static final blacklist INTRINSIC:I = -0x80000000

.field static final greylist-max-o MANDATED:I = 0x8000

.field private static final greylist-max-o METHOD_MODIFIERS:I = 0xd3f

.field public static final whitelist test-api NATIVE:I = 0x100

.field private static final greylist-max-o PARAMETER_MODIFIERS:I = 0x10

.field public static final whitelist test-api PRIVATE:I = 0x2

.field public static final whitelist test-api PROTECTED:I = 0x4

.field public static final whitelist test-api PUBLIC:I = 0x1

.field public static final whitelist test-api STATIC:I = 0x8

.field public static final whitelist test-api STRICT:I = 0x800

.field public static final whitelist test-api SYNCHRONIZED:I = 0x20

.field public static final greylist-max-o SYNTHETIC:I = 0x1000

.field public static final whitelist test-api TRANSIENT:I = 0x80

.field static final greylist-max-o VARARGS:I = 0x80

.field public static final whitelist test-api VOLATILE:I = 0x40


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api classModifiers()I
    .registers 1

    .line 467
    const/16 v0, 0xc1f

    return v0
.end method

.method public static whitelist test-api constructorModifiers()I
    .registers 1

    .line 493
    const/4 v0, 0x7

    return v0
.end method

.method public static whitelist test-api fieldModifiers()I
    .registers 1

    .line 519
    const/16 v0, 0xdf

    return v0
.end method

.method public static whitelist test-api interfaceModifiers()I
    .registers 1

    .line 480
    const/16 v0, 0xc0f

    return v0
.end method

.method public static whitelist test-api isAbstract(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 198
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static greylist-max-o isConstructor(I)Z
    .registers 2
    .param p0, "modifiers"    # I

    .line 150
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static whitelist test-api isFinal(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 117
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist test-api isInterface(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 186
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static greylist-max-o isMandated(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 361
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static whitelist test-api isNative(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 174
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist test-api isPrivate(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 81
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist test-api isProtected(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 93
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist test-api isPublic(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 69
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist test-api isStatic(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 105
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist test-api isStrict(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 210
    and-int/lit16 v0, p0, 0x800

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist test-api isSynchronized(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 129
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static greylist-max-o isSynthetic(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 357
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist test-api isTransient(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 162
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist test-api isVolatile(I)Z
    .registers 2
    .param p0, "mod"    # I

    .line 141
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static whitelist test-api methodModifiers()I
    .registers 1

    .line 506
    const/16 v0, 0xd3f

    return v0
.end method

.method public static whitelist test-api parameterModifiers()I
    .registers 1

    .line 532
    const/16 v0, 0x10

    return v0
.end method

.method public static whitelist test-api toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "mod"    # I

    .line 245
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 247
    .local v0, "sj":Ljava/util/StringJoiner;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    const-string v1, "public"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 248
    :cond_10
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_19

    const-string v1, "protected"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 249
    :cond_19
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_22

    const-string v1, "private"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 252
    :cond_22
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_2b

    const-string v1, "abstract"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 253
    :cond_2b
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_34

    const-string v1, "static"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 254
    :cond_34
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_3d

    const-string v1, "final"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 255
    :cond_3d
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_46

    const-string v1, "transient"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 256
    :cond_46
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_4f

    const-string v1, "volatile"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 257
    :cond_4f
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_58

    const-string v1, "synchronized"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 258
    :cond_58
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_61

    const-string v1, "native"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 259
    :cond_61
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_6a

    const-string v1, "strictfp"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 260
    :cond_6a
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_73

    const-string v1, "interface"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 262
    :cond_73
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
