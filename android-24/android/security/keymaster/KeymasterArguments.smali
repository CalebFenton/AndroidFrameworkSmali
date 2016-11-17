.class public Landroid/security/keymaster/KeymasterArguments;
.super Ljava/lang/Object;
.source "KeymasterArguments.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keymaster/KeymasterArguments$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/security/keymaster/KeymasterArguments;",
            ">;"
        }
    .end annotation
.end field

.field public static final UINT32_MAX_VALUE:J = 0xffffffffL

.field private static final UINT32_RANGE:J = 0x100000000L

.field public static final UINT64_MAX_VALUE:Ljava/math/BigInteger;

.field private static final UINT64_RANGE:Ljava/math/BigInteger;


# instance fields
.field private mArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/security/keymaster/KeymasterArgument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 38
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Landroid/security/keymaster/KeymasterArguments;->UINT64_RANGE:Ljava/math/BigInteger;

    #@a
    .line 39
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->UINT64_RANGE:Ljava/math/BigInteger;

    #@c
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    #@e
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    #@14
    .line 43
    new-instance v0, Landroid/security/keymaster/KeymasterArguments$1;

    #@16
    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments$1;-><init>()V

    #@19
    sput-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    #@a
    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    sget-object v0, Landroid/security/keymaster/KeymasterArgument;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    #@b
    .line 60
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/security/keymaster/KeymasterArguments;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private addEnumTag(II)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    #@2
    new-instance v1, Landroid/security/keymaster/KeymasterIntArgument;

    #@4
    invoke-direct {v1, p1, p2}, Landroid/security/keymaster/KeymasterIntArgument;-><init>(II)V

    #@7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a
    .line 126
    return-void
.end method

.method private addLongTag(ILjava/math/BigInteger;)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 204
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    #@9
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@c
    move-result v0

    #@d
    if-lez v0, :cond_1

    #@f
    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Long tag value out of range: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 207
    :cond_1
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    #@2b
    new-instance v1, Landroid/security/keymaster/KeymasterLongArgument;

    #@2d
    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    #@30
    move-result-wide v2

    #@31
    invoke-direct {v1, p1, v2, v3}, Landroid/security/keymaster/KeymasterLongArgument;-><init>(IJ)V

    #@34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@37
    .line 202
    return-void
.end method

.method private getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;
    .locals 3
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 340
    iget-object v2, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "arg$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/security/keymaster/KeymasterArgument;

    #@12
    .line 341
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    iget v2, v0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    #@14
    if-ne v2, p1, :cond_0

    #@16
    .line 342
    return-object v0

    #@17
    .line 345
    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    :cond_1
    const/4 v2, 0x0

    #@18
    return-object v2
.end method

.method private getEnumTagValue(Landroid/security/keymaster/KeymasterArgument;)I
    .locals 1
    .param p1, "arg"    # Landroid/security/keymaster/KeymasterArgument;

    #@0
    .prologue
    .line 131
    check-cast p1, Landroid/security/keymaster/KeymasterIntArgument;

    #@2
    .end local p1    # "arg":Landroid/security/keymaster/KeymasterArgument;
    iget v0, p1, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    #@4
    return v0
.end method

.method private getLongTagValue(Landroid/security/keymaster/KeymasterArgument;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "arg"    # Landroid/security/keymaster/KeymasterArgument;

    #@0
    .prologue
    .line 213
    check-cast p1, Landroid/security/keymaster/KeymasterLongArgument;

    #@2
    .end local p1    # "arg":Landroid/security/keymaster/KeymasterArgument;
    iget-wide v0, p1, Landroid/security/keymaster/KeymasterLongArgument;->value:J

    #@4
    invoke-static {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static toUint64(J)Ljava/math/BigInteger;
    .locals 2
    .param p0, "value"    # J

    #@0
    .prologue
    .line 375
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-ltz v0, :cond_0

    #@6
    .line 376
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 378
    :cond_0
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@e
    move-result-object v0

    #@f
    sget-object v1, Landroid/security/keymaster/KeymasterArguments;->UINT64_RANGE:Ljava/math/BigInteger;

    #@11
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method


# virtual methods
.method public addBoolean(I)V
    .locals 3
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 223
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x70000000

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Not a boolean tag: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 226
    :cond_0
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    #@24
    new-instance v1, Landroid/security/keymaster/KeymasterBooleanArgument;

    #@26
    invoke-direct {v1, p1}, Landroid/security/keymaster/KeymasterBooleanArgument;-><init>(I)V

    #@29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    .line 222
    return-void
.end method

.method public addBytes(I[B)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "value"    # [B

    #@0
    .prologue
    .line 251
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@3
    move-result v0

    #@4
    const/high16 v1, -0x70000000

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Not a bytes tag: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 254
    :cond_0
    if-nez p2, :cond_1

    #@24
    .line 255
    new-instance v0, Ljava/lang/NullPointerException;

    #@26
    const-string/jumbo v1, "value == nulll"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 257
    :cond_1
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    #@2f
    new-instance v1, Landroid/security/keymaster/KeymasterBlobArgument;

    #@31
    invoke-direct {v1, p1, p2}, Landroid/security/keymaster/KeymasterBlobArgument;-><init>(I[B)V

    #@34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@37
    .line 250
    return-void
.end method

.method public addDate(ILjava/util/Date;)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/util/Date;

    #@0
    .prologue
    .line 284
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x60000000

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Not a date tag: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 287
    :cond_0
    if-nez p2, :cond_1

    #@24
    .line 288
    new-instance v0, Ljava/lang/NullPointerException;

    #@26
    const-string/jumbo v1, "value == nulll"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 292
    :cond_1
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    #@30
    move-result-wide v0

    #@31
    const-wide/16 v2, 0x0

    #@33
    cmp-long v0, v0, v2

    #@35
    if-gez v0, :cond_2

    #@37
    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@39
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v2, "Date tag value out of range: "

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0

    #@51
    .line 295
    :cond_2
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    #@53
    new-instance v1, Landroid/security/keymaster/KeymasterDateArgument;

    #@55
    invoke-direct {v1, p1, p2}, Landroid/security/keymaster/KeymasterDateArgument;-><init>(ILjava/util/Date;)V

    #@58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5b
    .line 283
    return-void
.end method

.method public addDateIfNotNull(ILjava/util/Date;)V
    .locals 3
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/util/Date;

    #@0
    .prologue
    .line 306
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x60000000

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Not a date tag: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 309
    :cond_0
    if-eqz p2, :cond_1

    #@24
    .line 310
    invoke-virtual {p0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    #@27
    .line 305
    :cond_1
    return-void
.end method

.method public addEnum(II)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 70
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@3
    move-result v0

    #@4
    .line 71
    .local v0, "tagType":I
    const/high16 v1, 0x10000000

    #@6
    if-eq v0, v1, :cond_0

    #@8
    const/high16 v1, 0x20000000

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Not an enum or repeating enum tag: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 74
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->addEnumTag(II)V

    #@29
    .line 69
    return-void
.end method

.method public varargs addEnums(I[I)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "values"    # [I

    #@0
    .prologue
    .line 83
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@3
    move-result v1

    #@4
    const/high16 v2, 0x20000000

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Not a repeating enum tag: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 86
    :cond_0
    const/4 v1, 0x0

    #@23
    array-length v2, p2

    #@24
    :goto_0
    if-ge v1, v2, :cond_1

    #@26
    aget v0, p2, v1

    #@28
    .line 87
    .local v0, "value":I
    invoke-direct {p0, p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnumTag(II)V

    #@2b
    .line 86
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 82
    .end local v0    # "value":I
    :cond_1
    return-void
.end method

.method public addUnsignedInt(IJ)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 141
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@3
    move-result v0

    #@4
    .line 142
    .local v0, "tagType":I
    const/high16 v1, 0x30000000

    #@6
    if-eq v0, v1, :cond_0

    #@8
    const/high16 v1, 0x40000000    # 2.0f

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 143
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Not an int or repeating int tag: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 146
    :cond_0
    const-wide/16 v2, 0x0

    #@28
    cmp-long v1, p2, v2

    #@2a
    if-ltz v1, :cond_1

    #@2c
    const-wide v2, 0xffffffffL

    #@31
    cmp-long v1, p2, v2

    #@33
    if-lez v1, :cond_2

    #@35
    .line 147
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@37
    new-instance v2, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v3, "Int tag value out of range: "

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v1

    #@4f
    .line 149
    :cond_2
    iget-object v1, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    #@51
    new-instance v2, Landroid/security/keymaster/KeymasterIntArgument;

    #@53
    long-to-int v3, p2

    #@54
    invoke-direct {v2, p1, v3}, Landroid/security/keymaster/KeymasterIntArgument;-><init>(II)V

    #@57
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5a
    .line 140
    return-void
.end method

.method public addUnsignedLong(ILjava/math/BigInteger;)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 177
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@3
    move-result v0

    #@4
    .line 178
    .local v0, "tagType":I
    const/high16 v1, 0x50000000

    #@6
    if-eq v0, v1, :cond_0

    #@8
    const/high16 v1, -0x60000000

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Not a long or repeating long tag: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 181
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->addLongTag(ILjava/math/BigInteger;)V

    #@29
    .line 176
    return-void
.end method

.method public containsTag(I)Z
    .locals 1
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 349
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 367
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBoolean(I)Z
    .locals 4
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 235
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@3
    move-result v1

    #@4
    const/high16 v2, 0x70000000

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Not a boolean tag: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 238
    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    #@25
    move-result-object v0

    #@26
    .line 239
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    if-nez v0, :cond_1

    #@28
    .line 240
    const/4 v1, 0x0

    #@29
    return v1

    #@2a
    .line 242
    :cond_1
    const/4 v1, 0x1

    #@2b
    return v1
.end method

.method public getBytes(I[B)[B
    .locals 4
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # [B

    #@0
    .prologue
    .line 267
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@3
    move-result v1

    #@4
    const/high16 v2, -0x70000000

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 268
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Not a bytes tag: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 270
    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    #@25
    move-result-object v0

    #@26
    .line 271
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    if-nez v0, :cond_1

    #@28
    .line 272
    return-object p2

    #@29
    .line 274
    :cond_1
    check-cast v0, Landroid/security/keymaster/KeymasterBlobArgument;

    #@2b
    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    iget-object v1, v0, Landroid/security/keymaster/KeymasterBlobArgument;->blob:[B

    #@2d
    return-object v1
.end method

.method public getDate(ILjava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # Ljava/util/Date;

    #@0
    .prologue
    .line 323
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@3
    move-result v2

    #@4
    const/high16 v3, 0x60000000

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 324
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Tag is not a date type: "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 326
    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    #@25
    move-result-object v0

    #@26
    .line 327
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    if-nez v0, :cond_1

    #@28
    .line 328
    return-object p2

    #@29
    .line 330
    :cond_1
    check-cast v0, Landroid/security/keymaster/KeymasterDateArgument;

    #@2b
    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    iget-object v1, v0, Landroid/security/keymaster/KeymasterDateArgument;->date:Ljava/util/Date;

    #@2d
    .line 333
    .local v1, "result":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@30
    move-result-wide v2

    #@31
    const-wide/16 v4, 0x0

    #@33
    cmp-long v2, v2, v4

    #@35
    if-gez v2, :cond_2

    #@37
    .line 334
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@39
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "Tag value too large. Tag: "

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@50
    throw v2

    #@51
    .line 336
    :cond_2
    return-object v1
.end method

.method public getEnum(II)I
    .locals 4
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 98
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@3
    move-result v1

    #@4
    const/high16 v2, 0x10000000

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 99
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Not an enum tag: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 101
    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    #@25
    move-result-object v0

    #@26
    .line 102
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    if-nez v0, :cond_1

    #@28
    .line 103
    return p2

    #@29
    .line 105
    :cond_1
    invoke-direct {p0, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnumTagValue(Landroid/security/keymaster/KeymasterArgument;)I

    #@2c
    move-result v1

    #@2d
    return v1
.end method

.method public getEnums(I)Ljava/util/List;
    .locals 6
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 114
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@3
    move-result v3

    #@4
    const/high16 v4, 0x20000000

    #@6
    if-eq v3, v4, :cond_0

    #@8
    .line 115
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "Not a repeating enum tag: "

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v3

    #@22
    .line 117
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@27
    .line 118
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    #@29
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v1

    #@2d
    .local v1, "arg$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_2

    #@33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Landroid/security/keymaster/KeymasterArgument;

    #@39
    .line 119
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    iget v3, v0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    #@3b
    if-ne v3, p1, :cond_1

    #@3d
    .line 120
    invoke-direct {p0, v0}, Landroid/security/keymaster/KeymasterArguments;->getEnumTagValue(Landroid/security/keymaster/KeymasterArgument;)I

    #@40
    move-result v3

    #@41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v3

    #@45
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@48
    goto :goto_0

    #@49
    .line 123
    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    :cond_2
    return-object v2
.end method

.method public getUnsignedInt(IJ)J
    .locals 6
    .param p1, "tag"    # I
    .param p2, "defaultValue"    # J

    #@0
    .prologue
    .line 159
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@3
    move-result v1

    #@4
    const/high16 v2, 0x30000000

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "Not an int tag: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 162
    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->getArgumentByTag(I)Landroid/security/keymaster/KeymasterArgument;

    #@25
    move-result-object v0

    #@26
    .line 163
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    if-nez v0, :cond_1

    #@28
    .line 164
    return-wide p2

    #@29
    .line 167
    :cond_1
    check-cast v0, Landroid/security/keymaster/KeymasterIntArgument;

    #@2b
    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    iget v1, v0, Landroid/security/keymaster/KeymasterIntArgument;->value:I

    #@2d
    int-to-long v2, v1

    #@2e
    const-wide v4, 0xffffffffL

    #@33
    and-long/2addr v2, v4

    #@34
    return-wide v2
.end method

.method public getUnsignedLongs(I)Ljava/util/List;
    .locals 6
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 190
    invoke-static {p1}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    #@3
    move-result v3

    #@4
    const/high16 v4, -0x60000000

    #@6
    if-eq v3, v4, :cond_0

    #@8
    .line 191
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "Tag is not a repeating long: "

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v3

    #@22
    .line 193
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@27
    .line 194
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    iget-object v3, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    #@29
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v1

    #@2d
    .local v1, "arg$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_2

    #@33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Landroid/security/keymaster/KeymasterArgument;

    #@39
    .line 195
    .local v0, "arg":Landroid/security/keymaster/KeymasterArgument;
    iget v3, v0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    #@3b
    if-ne v3, p1, :cond_1

    #@3d
    .line 196
    invoke-direct {p0, v0}, Landroid/security/keymaster/KeymasterArguments;->getLongTagValue(Landroid/security/keymaster/KeymasterArgument;)Ljava/math/BigInteger;

    #@40
    move-result-object v3

    #@41
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@44
    goto :goto_0

    #@45
    .line 199
    .end local v0    # "arg":Landroid/security/keymaster/KeymasterArgument;
    :cond_2
    return-object v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    #@2
    sget-object v1, Landroid/security/keymaster/KeymasterArgument;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    #@7
    .line 361
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Landroid/security/keymaster/KeymasterArguments;->mArguments:Ljava/util/List;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@5
    .line 357
    return-void
.end method
