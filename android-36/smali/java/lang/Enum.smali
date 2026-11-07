.class public abstract Ljava/lang/Enum;
.super Ljava/lang/Object;
.source "Enum.java"

# interfaces
.implements Ljava/lang/constant/Constable;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Enum$EnumDesc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/constant/Constable;",
        "Ljava/lang/Comparable<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final blacklist sharedConstants:Ljava/lang/ClassValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ClassValue<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-r name:Ljava/lang/String;

.field private final greylist-max-r ordinal:I


# direct methods
.method public static synthetic blacklist $r8$lambda$D3O6ewRntr8ajC8Twv7qQqr9DYI(Ljava/lang/Enum;Ljava/lang/constant/ClassDesc;)Ljava/lang/Enum$EnumDesc;
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Enum;->lambda$describeConstable$0(Ljava/lang/constant/ClassDesc;)Ljava/lang/Enum$EnumDesc;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smenumValues(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Ljava/lang/Enum;->enumValues(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 317
    new-instance v0, Ljava/lang/Enum$1;

    invoke-direct {v0}, Ljava/lang/Enum$1;-><init>()V

    sput-object v0, Ljava/lang/Enum;->sharedConstants:Ljava/lang/ClassValue;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ordinal"    # I

    .line 141
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    .line 143
    iput p2, p0, Ljava/lang/Enum;->ordinal:I

    .line 144
    return-void
.end method

.method private static blacklist enumValues(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 304
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 307
    return-object v1

    .line 310
    :cond_8
    :try_start_8
    const-string v0, "values"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 311
    .local v0, "valueMethod":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_19} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_19} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_19} :catch_1a

    return-object v1

    .line 312
    .end local v0    # "valueMethod":Ljava/lang/reflect/Method;
    :catch_1a
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static greylist-max-r getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 332
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Ljava/lang/Enum;->sharedConstants:Ljava/lang/ClassValue;

    invoke-virtual {v0, p0}, Ljava/lang/ClassValue;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    return-object v0
.end method

.method private synthetic blacklist lambda$describeConstable$0(Ljava/lang/constant/ClassDesc;)Ljava/lang/Enum$EnumDesc;
    .registers 3
    .param p1, "c"    # Ljava/lang/constant/ClassDesc;

    .line 240
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    iget-object v0, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/lang/Enum$EnumDesc;->of(Ljava/lang/constant/ClassDesc;Ljava/lang/String;)Ljava/lang/Enum$EnumDesc;

    move-result-object v0

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 348
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "can\'t deserialize enum"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readObjectNoData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 353
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "can\'t deserialize enum"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 284
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "enumClass == null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    const-string v0, "name == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    invoke-static {p0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    .line 287
    .local v0, "values":[Ljava/lang/Enum;, "[TT;"
    if-eqz v0, :cond_4c

    .line 293
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_13
    if-ltz v1, :cond_25

    .line 294
    aget-object v2, v0, v1

    .line 295
    .local v2, "value":Ljava/lang/Enum;, "TT;"
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 296
    return-object v2

    .line 293
    .end local v2    # "value":Ljava/lang/Enum;, "TT;"
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 299
    .end local v1    # "i":I
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No enum constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 300
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_4c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not an enum type."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected final whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 187
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api compareTo(Ljava/lang/Enum;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 200
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    .local p1, "o":Ljava/lang/Enum;, "TE;"
    move-object v0, p1

    .line 201
    .local v0, "other":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    move-object v1, p0

    .line 202
    .local v1, "self":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1d

    .line 203
    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_17

    goto :goto_1d

    .line 204
    :cond_17
    new-instance v2, Ljava/lang/ClassCastException;

    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    throw v2

    .line 205
    :cond_1d
    :goto_1d
    iget v2, v1, Ljava/lang/Enum;->ordinal:I

    iget v3, v0, Ljava/lang/Enum;->ordinal:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 77
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public final blacklist describeConstable()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Enum$EnumDesc<",
            "TE;>;>;"
        }
    .end annotation

    .line 238
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Class;->describeConstable()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Ljava/lang/Enum$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljava/lang/Enum$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Enum;)V

    .line 240
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 238
    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 167
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method protected final whitelist test-api finalize()V
    .registers 1

    .line 340
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    return-void
.end method

.method public final whitelist test-api getDeclaringClass()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    .line 222
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 223
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 224
    .local v1, "zuper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Enum;

    if-ne v1, v2, :cond_e

    move-object v2, v0

    goto :goto_f

    :cond_e
    move-object v2, v1

    :goto_f
    return-object v2
.end method

.method public final whitelist test-api hashCode()I
    .registers 2

    .line 176
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 101
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    iget-object v0, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api ordinal()I
    .registers 2

    .line 127
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    iget v0, p0, Ljava/lang/Enum;->ordinal:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 155
    .local p0, "this":Ljava/lang/Enum;, "Ljava/lang/Enum<TE;>;"
    iget-object v0, p0, Ljava/lang/Enum;->name:Ljava/lang/String;

    return-object v0
.end method
