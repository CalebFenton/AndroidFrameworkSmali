.class public Landroid/security/keymaster/KeymasterArguments;
.super Ljava/lang/Object;
.source "KeymasterArguments.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-r CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/KeymasterArguments;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o UINT32_MAX_VALUE:J = 0xffffffffL

.field private static final greylist-max-o UINT32_RANGE:J = 0x100000000L

.field public static final greylist-max-o UINT64_MAX_VALUE:Ljava/math/BigInteger;

.field private static final greylist-max-o UINT64_RANGE:Ljava/math/BigInteger;


# instance fields
.field private greylist-max-o mArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/security/keymaster/KeymasterArgument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 40
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/security/keymaster/KeymasterArguments;->UINT64_RANGE:Ljava/math/BigInteger;

    .line 41
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->UINT64_RANGE:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    .line 46
    new-instance v0, Landroid/security/keymaster/KeymasterArguments$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    .line 62
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Landroid/security/keymaster/KeymasterArgument;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/keymaster/KeymasterArguments-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-o addEnumTag(II)V
    .registers 5
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .line 132
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    new-instance v1, Landroid/security/keymaster/KeymasterIntArgument;

    invoke-direct {v1, p1, p2}, Landroid/security/keymaster/KeymasterIntArgument;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method private greylist-max-o addLongTag(ILjava/math/BigInteger;)V
    .registers 7
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/math/BigInteger;

    .line 211
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1e

    .line 214
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    new-instance v1, Landroid/security/keymaster/KeymasterLongArgument;

    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Landroid/security/keymaster/KeymasterLongArgument;-><init>(IJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    return-void

    .line 212
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Long tag value out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;
    .registers 5
    .param p1, "tag"    # I

    .line 347
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/keymaster/KeymasterArgument;

    .line 348
    .local v1, "arg":Landroid/security/keymaster/KeymasterArgument;
    iget v2, v1, Landroid/security/keymaster/KeymasterArgument;->tag:I

    if-ne v2, p1, :cond_17

    .line 349
    return-object v1

    .line 351
    .end local v1    # "arg":Landroid/security/keymaster/KeymasterArgument;
    :cond_17
    goto :goto_6

    .line 352
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getEnumTagValue(Landroid/security/keymaster/KeymasterArgument;)I
    .registers 3
    .param p1, "arg"    # Landroid/security/keymaster/KeymasterArgument;

    .line 136
    move-object v0, p1

    check-cast v0, Landroid/security/keymaster/KeymasterIntArgument;

    iget v0, v0, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    return v0
.end method

.method private greylist-max-o getLongTagValue(Landroid/security/keymaster/KeymasterArgument;)Ljava/math/BigInteger;
    .registers 4
    .param p1, "arg"    # Landroid/security/keymaster/KeymasterArgument;

    .line 220
    move-object v0, p1

    check-cast v0, Landroid/security/keymaster/KeymasterLongArgument;

    iget-wide v0, v0, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    invoke-static {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o toUint64(J)Ljava/math/BigInteger;
    .registers 4
    .param p0, "value"    # J

    .line 383
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_b

    .line 384
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 386
    :cond_b
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Landroid/security/keymaster/KeymasterArguments;->UINT64_RANGE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o addBoolean(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 230
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x70000000

    if-ne v0, v1, :cond_13

    .line 233
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    new-instance v1, Landroid/security/keymaster/KeymasterBooleanArgument;

    invoke-direct {v1, p1}, Landroid/security/keymaster/KeymasterBooleanArgument;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-void

    .line 231
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a boolean tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o addBytes(I[B)V
    .registers 6
    .param p1, "tag"    # I
    .param p2, "value"    # [B

    .line 258
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, -0x70000000

    if-ne v0, v1, :cond_1e

    .line 261
    if-eqz p2, :cond_15

    .line 264
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    new-instance v1, Landroid/security/keymaster/KeymasterBlobArgument;

    invoke-direct {v1, p1, p2}, Landroid/security/keymaster/KeymasterBlobArgument;-><init>(I[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    return-void

    .line 262
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value == nulll"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a bytes tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o addDate(ILjava/util/Date;)V
    .registers 7
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/util/Date;

    .line 291
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x60000000

    if-ne v0, v1, :cond_41

    .line 294
    if-eqz p2, :cond_38

    .line 299
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1f

    .line 302
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    new-instance v1, Landroid/security/keymaster/KeymasterDateArgument;

    invoke-direct {v1, p1, p2}, Landroid/security/keymaster/KeymasterDateArgument;-><init>(ILjava/util/Date;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    return-void

    .line 300
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date tag value out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value == nulll"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a date tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o addDateIfNotNull(ILjava/util/Date;)V
    .registers 6
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/util/Date;

    .line 313
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x60000000

    if-ne v0, v1, :cond_e

    .line 316
    if-eqz p2, :cond_d

    .line 317
    invoke-virtual {p0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    .line 319
    :cond_d
    return-void

    .line 314
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a date tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r addEnum(II)V
    .registers 7
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .line 75
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    .line 76
    .local v0, "tagType":I
    const/high16 v1, 0x10000000

    if-eq v0, v1, :cond_26

    const/high16 v1, 0x20000000

    if-ne v0, v1, :cond_d

    goto :goto_26

    .line 77
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an enum or repeating enum tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_26
    :goto_26
    invoke-direct {p0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->addEnumTag(II)V

    .line 80
    return-void
.end method

.method public varargs blacklist addEnums(I[I)V
    .registers 6
    .param p1, "tag"    # I
    .param p2, "values"    # [I

    .line 88
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x20000000

    if-ne v0, v1, :cond_15

    .line 91
    array-length v0, p2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_14

    aget v2, p2, v1

    .line 92
    .local v2, "value":I
    invoke-direct {p0, p1, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnumTag(II)V

    .line 91
    .end local v2    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 94
    :cond_14
    return-void

    .line 89
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a repeating enum tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r addUnsignedInt(IJ)V
    .registers 8
    .param p1, "tag"    # I
    .param p2, "value"    # J

    .line 147
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    .line 148
    .local v0, "tagType":I
    const/high16 v1, 0x30000000

    if-eq v0, v1, :cond_26

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_d

    goto :goto_26

    .line 149
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an int or repeating int tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_26
    :goto_26
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_41

    const-wide v1, 0xffffffffL

    cmp-long v1, p2, v1

    if-gtz v1, :cond_41

    .line 155
    iget-object v1, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    new-instance v2, Landroid/security/keymaster/KeymasterIntArgument;

    long-to-int v3, p2

    invoke-direct {v2, p1, v3}, Landroid/security/keymaster/KeymasterIntArgument;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-void

    .line 153
    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Int tag value out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-r addUnsignedLong(ILjava/math/BigInteger;)V
    .registers 7
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/math/BigInteger;

    .line 184
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    .line 185
    .local v0, "tagType":I
    const/high16 v1, 0x50000000

    if-eq v0, v1, :cond_26

    const/high16 v1, -0x60000000

    if-ne v0, v1, :cond_d

    goto :goto_26

    .line 186
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a long or repeating long tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_26
    :goto_26
    invoke-direct {p0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->addLongTag(ILjava/math/BigInteger;)V

    .line 189
    return-void
.end method

.method public greylist-max-o containsTag(I)Z
    .registers 3
    .param p1, "tag"    # I

    .line 356
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getBoolean(I)Z
    .registers 5
    .param p1, "tag"    # I

    .line 242
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x70000000

    if-ne v0, v1, :cond_12

    .line 245
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    move-result-object v0

    .line 246
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    if-nez v0, :cond_10

    .line 247
    const/4 v1, 0x0

    return v1

    .line 249
    :cond_10
    const/4 v1, 0x1

    return v1

    .line 243
    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a boolean tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getBytes(I[B)[B
    .registers 6
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # [B

    .line 274
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, -0x70000000

    if-ne v0, v1, :cond_15

    .line 277
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    move-result-object v0

    .line 278
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    if-nez v0, :cond_f

    .line 279
    return-object p2

    .line 281
    :cond_f
    move-object v1, v0

    check-cast v1, Landroid/security/keymaster/KeymasterBlobArgument;

    iget-object v1, v1, Landroid/security/keymaster/KeymasterBlobArgument;->blob:[B

    return-object v1

    .line 275
    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a bytes tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getDate(ILjava/util/Date;)Ljava/util/Date;
    .registers 9
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # Ljava/util/Date;

    .line 330
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x60000000

    if-ne v0, v1, :cond_38

    .line 333
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    move-result-object v0

    .line 334
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    if-nez v0, :cond_f

    .line 335
    return-object p2

    .line 337
    :cond_f
    move-object v1, v0

    check-cast v1, Landroid/security/keymaster/KeymasterDateArgument;

    iget-object v1, v1, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    .line 340
    .local v1, "result":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1f

    .line 343
    return-object v1

    .line 341
    :cond_1f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag value too large. Tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    .end local v1    # "result":Ljava/util/Date;
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag is not a date type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getEnum(II)I
    .registers 6
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # I

    .line 103
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x10000000

    if-ne v0, v1, :cond_14

    .line 106
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    move-result-object v0

    .line 107
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    if-nez v0, :cond_f

    .line 108
    return p2

    .line 110
    :cond_f
    invoke-direct {p0, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnumTagValue(Landroid/security/keymaster/KeymasterArgument;)I

    move-result v1

    return v1

    .line 104
    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an enum tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getEnums(I)Ljava/util/List;
    .registers 6
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x20000000

    if-ne v0, v1, :cond_30

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterArgument;

    .line 124
    .local v2, "arg":Landroid/security/keymaster/KeymasterArgument;
    iget v3, v2, Landroid/security/keymaster/KeymasterArgument;->tag:I

    if-ne v3, p1, :cond_2e

    .line 125
    invoke-direct {p0, v2}, Landroid/security/keymaster/KeymasterArguments;->getEnumTagValue(Landroid/security/keymaster/KeymasterArgument;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v2    # "arg":Landroid/security/keymaster/KeymasterArgument;
    :cond_2e
    goto :goto_13

    .line 128
    :cond_2f
    return-object v0

    .line 120
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a repeating enum tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getUnsignedInt(IJ)J
    .registers 9
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # J

    .line 165
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x30000000

    if-ne v0, v1, :cond_1c

    .line 168
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    move-result-object v0

    .line 169
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    if-nez v0, :cond_f

    .line 170
    return-wide p2

    .line 173
    :cond_f
    move-object v1, v0

    check-cast v1, Landroid/security/keymaster/KeymasterIntArgument;

    iget v1, v1, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    return-wide v1

    .line 166
    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an int tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getUnsignedLongs(I)Ljava/util/List;
    .registers 6
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .line 197
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, -0x60000000

    if-ne v0, v1, :cond_2c

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    iget-object v1, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterArgument;

    .line 202
    .local v2, "arg":Landroid/security/keymaster/KeymasterArgument;
    iget v3, v2, Landroid/security/keymaster/KeymasterArgument;->tag:I

    if-ne v3, p1, :cond_2a

    .line 203
    invoke-direct {p0, v2}, Landroid/security/keymaster/KeymasterArguments;->getLongTagValue(Landroid/security/keymaster/KeymasterArgument;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v2    # "arg":Landroid/security/keymaster/KeymasterArgument;
    :cond_2a
    goto :goto_13

    .line 206
    :cond_2b
    return-object v0

    .line 198
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag is not a repeating long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 370
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    sget-object v1, Landroid/security/keymaster/KeymasterArgument;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 371
    return-void
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 360
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 365
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 366
    return-void
.end method
