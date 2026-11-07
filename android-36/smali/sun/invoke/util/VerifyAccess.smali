.class public Lsun/invoke/util/VerifyAccess;
.super Ljava/lang/Object;
.source "VerifyAccess.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist ALLOW_NESTMATE_ACCESS:Z = false

.field private static final blacklist ALL_ACCESS_MODES:I = 0x7

.field private static final blacklist PACKAGE_ALLOWED:I = 0x8

.field private static final blacklist PACKAGE_ONLY:I = 0x0

.field private static final blacklist PROTECTED_OR_PACKAGE_ALLOWED:I = 0xc


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 36
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getOutermostEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 334
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 335
    .local v0, "pkgmem":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p0

    .local v1, "enc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_b

    .line 336
    move-object v0, v1

    goto :goto_2

    .line 337
    .end local v1    # "enc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    return-object v0
.end method

.method public static blacklist isClassAccessible(Ljava/lang/Class;Ljava/lang/Class;I)Z
    .registers 6
    .param p2, "allowedModes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I)Z"
        }
    .end annotation

    .line 172
    .local p0, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "lookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 180
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    .line 181
    return v2

    .line 182
    :cond_10
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_1b

    .line 183
    invoke-static {p1, p0}, Lsun/invoke/util/VerifyAccess;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 184
    return v2

    .line 185
    :cond_1b
    return v0
.end method

.method public static blacklist isMemberAccessible(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Class;I)Z
    .registers 8
    .param p2, "mods"    # I
    .param p4, "allowedModes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/Class<",
            "*>;I)Z"
        }
    .end annotation

    .line 90
    .local p0, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "defc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "lookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p4, :cond_4

    return v0

    .line 91
    :cond_4
    nop

    .line 94
    invoke-static {p0, p3, p4}, Lsun/invoke/util/VerifyAccess;->isClassAccessible(Ljava/lang/Class;Ljava/lang/Class;I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 95
    return v0

    .line 98
    :cond_c
    const/4 v1, 0x1

    if-ne p1, p3, :cond_14

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_14

    .line 100
    return v1

    .line 101
    :cond_14
    and-int/lit8 v2, p2, 0x7

    packed-switch v2, :pswitch_data_70

    .line 131
    :pswitch_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad modifiers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :pswitch_36
    nop

    .line 106
    and-int/lit8 v2, p4, 0xc

    if-eqz v2, :cond_42

    .line 107
    invoke-static {p1, p3}, Lsun/invoke/util/VerifyAccess;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 108
    return v1

    .line 109
    :cond_42
    and-int/lit8 v2, p4, 0x4

    if-nez v2, :cond_47

    .line 110
    return v0

    .line 114
    :cond_47
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_52

    .line 115
    invoke-static {p0, p3}, Lsun/invoke/util/VerifyAccess;->isRelatedClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 116
    return v0

    .line 117
    :cond_52
    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_5d

    .line 118
    invoke-static {p3, p1}, Lsun/invoke/util/VerifyAccess;->isSubClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 119
    return v1

    .line 120
    :cond_5d
    return v0

    .line 127
    :pswitch_5e
    return v0

    .line 103
    :pswitch_5f
    return v1

    .line 122
    :pswitch_60
    nop

    .line 123
    and-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_6d

    .line 124
    invoke-static {p1, p3}, Lsun/invoke/util/VerifyAccess;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6d

    move v0, v1

    goto :goto_6e

    :cond_6d
    nop

    .line 123
    :goto_6e
    return v0

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_19
        :pswitch_36
    .end packed-switch
.end method

.method static blacklist isRelatedClass(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 136
    .local p0, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "lookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq p0, p1, :cond_11

    .line 137
    invoke-static {p0, p1}, Lsun/invoke/util/VerifyAccess;->isSubClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 138
    invoke-static {p1, p0}, Lsun/invoke/util/VerifyAccess;->isSubClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 136
    :goto_12
    return v0
.end method

.method public static blacklist isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 284
    .local p0, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "class2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_43

    .line 288
    const/4 v0, 0x1

    if-ne p0, p1, :cond_10

    .line 289
    return v0

    .line 290
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1c

    .line 291
    return v3

    .line 292
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "name1":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "name2":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 294
    .local v5, "dot":I
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-eq v5, v4, :cond_31

    .line 295
    return v3

    .line 296
    :cond_31
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_32
    if-ge v4, v5, :cond_42

    .line 297
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_3f

    .line 298
    return v3

    .line 296
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 300
    .end local v4    # "i":I
    :cond_42
    return v0

    .line 285
    .end local v1    # "name1":Ljava/lang/String;
    .end local v2    # "name2":Ljava/lang/String;
    .end local v5    # "dot":I
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist isSamePackageMember(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 324
    .local p0, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "class2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 325
    return v0

    .line 326
    :cond_4
    invoke-static {p0, p1}, Lsun/invoke/util/VerifyAccess;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 327
    return v2

    .line 328
    :cond_c
    invoke-static {p0}, Lsun/invoke/util/VerifyAccess;->getOutermostEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1}, Lsun/invoke/util/VerifyAccess;->getOutermostEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_17

    .line 329
    return v2

    .line 330
    :cond_17
    return v0
.end method

.method static blacklist isSubClass(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 142
    .local p0, "lookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "defc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 143
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 142
    :goto_f
    return v0
.end method
