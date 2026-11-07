.class public final Ljava/lang/Short;
.super Ljava/lang/Number;
.source "Short.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/constant/Constable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Short$ShortCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/lang/constant/Constable;"
    }
.end annotation


# static fields
.field public static final whitelist test-api BYTES:I = 0x2

.field public static final whitelist test-api MAX_VALUE:S = 0x7fffs

.field public static final whitelist test-api MIN_VALUE:S = -0x8000s

.field public static final whitelist test-api SIZE:I = 0x10

.field public static final whitelist test-api TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x684d37133460da52L


# instance fields
.field private final greylist-max-p value:S


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    const-string v0, "short"

    invoke-static {v0}, Ljava/lang/Class;->getPrimitiveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 383
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 384
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v0

    iput-short v0, p0, Ljava/lang/Short;->value:S

    .line 385
    return-void
.end method

.method public constructor whitelist test-api <init>(S)V
    .registers 2
    .param p1, "value"    # S
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 359
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 360
    iput-short p1, p0, Ljava/lang/Short;->value:S

    .line 361
    return-void
.end method

.method public static whitelist test-api compare(SS)I
    .registers 3
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 527
    sub-int v0, p0, p1

    return v0
.end method

.method public static whitelist test-api compareUnsigned(SS)I
    .registers 4
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 543
    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static whitelist test-api decode(Ljava/lang/String;)Ljava/lang/Short;
    .registers 5
    .param p0, "nm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 331
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 332
    .local v0, "i":I
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_16

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_16

    .line 335
    int-to-short v1, v0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .line 333
    :cond_16
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range from input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api hashCode(S)I
    .registers 1
    .param p0, "value"    # S

    .line 475
    return p0
.end method

.method public static whitelist test-api parseShort(Ljava/lang/String;)S
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 166
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v0

    return v0
.end method

.method public static whitelist test-api parseShort(Ljava/lang/String;I)S
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 140
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 141
    .local v0, "i":I
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_e

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_e

    .line 144
    int-to-short v1, v0

    return v1

    .line 142
    :cond_e
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value out of range. Value:\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" Radix:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api reverseBytes(S)S
    .registers 3
    .param p0, "i"    # S

    .line 572
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static whitelist test-api toString(S)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # S

    .line 95
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api toUnsignedInt(S)I
    .registers 2
    .param p0, "x"    # S

    .line 593
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static whitelist test-api toUnsignedLong(S)J
    .registers 5
    .param p0, "x"    # S

    .line 613
    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/Short;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 222
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;I)Ljava/lang/Short;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 196
    invoke-static {p0, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api valueOf(S)Ljava/lang/Short;
    .registers 5
    .param p0, "s"    # S

    .line 280
    const/16 v0, 0x80

    .line 281
    .local v0, "offset":I
    move v1, p0

    .line 282
    .local v1, "sAsInt":I
    const/16 v2, -0x80

    if-lt v1, v2, :cond_12

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_12

    .line 283
    sget-object v2, Ljava/lang/Short$ShortCache;->cache:[Ljava/lang/Short;

    add-int/lit16 v3, v1, 0x80

    aget-object v2, v2, v3

    return-object v2

    .line 285
    :cond_12
    new-instance v2, Ljava/lang/Short;

    invoke-direct {v2, p0}, Ljava/lang/Short;-><init>(S)V

    return-object v2
.end method


# virtual methods
.method public whitelist test-api byteValue()B
    .registers 2

    .line 393
    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-byte v0, v0

    return v0
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

    .line 64
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p0, p1}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/lang/Short;)I
    .registers 4
    .param p1, "anotherShort"    # Ljava/lang/Short;

    .line 509
    iget-short v0, p0, Ljava/lang/Short;->value:S

    iget-short v1, p1, Ljava/lang/Short;->value:S

    invoke-static {v0, v1}, Ljava/lang/Short;->compare(SS)I

    move-result v0

    return v0
.end method

.method public blacklist describeConstable()Ljava/util/Optional;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/constant/DynamicConstantDesc<",
            "Ljava/lang/Short;",
            ">;>;"
        }
    .end annotation

    .line 235
    sget-object v0, Ljava/lang/constant/ConstantDescs;->BSM_EXPLICIT_CAST:Ljava/lang/constant/DirectMethodHandleDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_short:Ljava/lang/constant/ClassDesc;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/constant/ConstantDesc;

    invoke-virtual {p0}, Ljava/lang/Short;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "_"

    invoke-static {v0, v3, v1, v2}, Ljava/lang/constant/DynamicConstantDesc;->ofNamed(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)Ljava/lang/constant/DynamicConstantDesc;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubleValue()D
    .registers 3

    .line 438
    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-double v0, v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 489
    instance-of v0, p1, Ljava/lang/Short;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 490
    iget-short v0, p0, Ljava/lang/Short;->value:S

    move-object v2, p1

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-ne v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 492
    :cond_12
    return v1
.end method

.method public whitelist test-api floatValue()F
    .registers 2

    .line 429
    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-float v0, v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 463
    iget-short v0, p0, Ljava/lang/Short;->value:S

    invoke-static {v0}, Ljava/lang/Short;->hashCode(S)I

    move-result v0

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 2

    .line 411
    iget-short v0, p0, Ljava/lang/Short;->value:S

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 3

    .line 420
    iget-short v0, p0, Ljava/lang/Short;->value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api shortValue()S
    .registers 2

    .line 402
    iget-short v0, p0, Ljava/lang/Short;->value:S

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 452
    iget-short v0, p0, Ljava/lang/Short;->value:S

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
