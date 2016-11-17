.class public final Ljava/lang/Byte;
.super Ljava/lang/Number;
.source "Byte.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Byte$ByteCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x1

.field private static final DIGITS:[C

.field public static final MAX_VALUE:B = 0x7ft

.field public static final MIN_VALUE:B = -0x80t

.field public static final SIZE:I = 0x8

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final UPPER_CASE_DIGITS:[C

.field private static final serialVersionUID:J = -0x63b19f7b11af0ae4L


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x24

    #@2
    .line 63
    const-class v0, [B

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@a
    .line 484
    new-array v0, v1, [C

    #@c
    fill-array-data v0, :array_0

    #@f
    sput-object v0, Ljava/lang/Byte;->DIGITS:[C

    #@11
    .line 491
    new-array v0, v1, [C

    #@13
    fill-array-data v0, :array_1

    #@16
    sput-object v0, Ljava/lang/Byte;->UPPER_CASE_DIGITS:[C

    #@18
    .line 45
    return-void

    #@19
    .line 484
    nop

    #@1a
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    #@42
    .line 491
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>(B)V
    .locals 0
    .param p1, "value"    # B

    #@0
    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 299
    iput-byte p1, p0, Ljava/lang/Byte;->value:B

    #@5
    .line 298
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 316
    const/16 v0, 0xa

    #@5
    invoke-static {p1, v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    #@8
    move-result v0

    #@9
    iput-byte v0, p0, Ljava/lang/Byte;->value:B

    #@b
    .line 315
    return-void
.end method

.method public static compare(BB)I
    .locals 1
    .param p0, "x"    # B
    .param p1, "y"    # B

    #@0
    .prologue
    .line 452
    sub-int v0, p0, p1

    #@2
    return v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 4
    .param p0, "nm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@7
    move-result v0

    #@8
    .line 278
    .local v0, "i":I
    const/16 v1, -0x80

    #@a
    if-lt v0, v1, :cond_0

    #@c
    const/16 v1, 0x7f

    #@e
    if-le v0, v1, :cond_1

    #@10
    .line 279
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    #@12
    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Value "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, " out of range from input "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 279
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 281
    :cond_1
    int-to-byte v1, v0

    #@36
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@39
    move-result-object v1

    #@3a
    return-object v1
.end method

.method public static hashCode(B)I
    .locals 0
    .param p0, "value"    # B

    #@0
    .prologue
    .line 400
    return p0
.end method

.method public static parseByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    const/16 v0, 0xa

    #@2
    invoke-static {p0, v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static parseByte(Ljava/lang/String;I)B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    .line 150
    .local v0, "i":I
    const/16 v1, -0x80

    #@6
    if-lt v0, v1, :cond_0

    #@8
    const/16 v1, 0x7f

    #@a
    if-le v0, v1, :cond_1

    #@c
    .line 151
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    #@e
    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Value out of range. Value:\""

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, "\" Radix:"

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 151
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 153
    :cond_1
    int-to-byte v1, v0

    #@32
    return v1
.end method

.method public static toHexString(BZ)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # B
    .param p1, "upperCase"    # Z

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x0

    #@2
    .line 478
    if-eqz p1, :cond_0

    #@4
    sget-object v1, Ljava/lang/Byte;->UPPER_CASE_DIGITS:[C

    #@6
    .line 479
    .local v1, "digits":[C
    :goto_0
    new-array v0, v5, [C

    #@8
    .line 480
    .local v0, "buf":[C
    shr-int/lit8 v2, p0, 0x4

    #@a
    and-int/lit8 v2, v2, 0xf

    #@c
    aget-char v2, v1, v2

    #@e
    aput-char v2, v0, v4

    #@10
    .line 481
    and-int/lit8 v2, p0, 0xf

    #@12
    aget-char v2, v1, v2

    #@14
    const/4 v3, 0x1

    #@15
    aput-char v2, v0, v3

    #@17
    .line 482
    new-instance v2, Ljava/lang/String;

    #@19
    invoke-direct {v2, v4, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    #@1c
    return-object v2

    #@1d
    .line 478
    .end local v0    # "buf":[C
    .end local v1    # "digits":[C
    :cond_0
    sget-object v1, Ljava/lang/Byte;->DIGITS:[C

    #@1f
    .restart local v1    # "digits":[C
    goto :goto_0
.end method

.method public static toString(B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # B

    #@0
    .prologue
    .line 74
    const/16 v0, 0xa

    #@2
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static valueOf(B)Ljava/lang/Byte;
    .locals 3
    .param p0, "b"    # B

    #@0
    .prologue
    .line 102
    const/16 v0, 0x80

    #@2
    .line 103
    .local v0, "offset":I
    sget-object v1, Ljava/lang/Byte$ByteCache;->cache:[Ljava/lang/Byte;

    #@4
    add-int/lit16 v2, p0, 0x80

    #@6
    aget-object v1, v1, v2

    #@8
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 231
    const/16 v0, 0xa

    #@2
    invoke-static {p0, v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;I)Ljava/lang/Byte;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Byte;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    invoke-static {p0, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    #@0
    .prologue
    .line 324
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    #@2
    return v0
.end method

.method public compareTo(Ljava/lang/Byte;)I
    .locals 2
    .param p1, "anotherByte"    # Ljava/lang/Byte;

    #@0
    .prologue
    .line 434
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    #@2
    iget-byte v1, p1, Ljava/lang/Byte;->value:B

    #@4
    invoke-static {v0, v1}, Ljava/lang/Byte;->compare(BB)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "anotherByte"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 433
    check-cast p1, Ljava/lang/Byte;

    #@2
    .end local p1    # "anotherByte":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Byte;->compareTo(Ljava/lang/Byte;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 364
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    #@2
    int-to-double v0, v0

    #@3
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 414
    instance-of v1, p1, Ljava/lang/Byte;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 415
    iget-byte v1, p0, Ljava/lang/Byte;->value:B

    #@7
    check-cast p1, Ljava/lang/Byte;

    #@9
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    #@c
    move-result v2

    #@d
    if-ne v1, v2, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0

    #@11
    .line 417
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public floatValue()F
    .locals 1

    #@0
    .prologue
    .line 356
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    #@2
    int-to-float v0, v0

    #@3
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 388
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    #@2
    invoke-static {v0}, Ljava/lang/Byte;->hashCode(B)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public intValue()I
    .locals 1

    #@0
    .prologue
    .line 340
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    #@2
    return v0
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 348
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    #@2
    int-to-long v0, v0

    #@3
    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    #@0
    .prologue
    .line 332
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    #@2
    int-to-short v0, v0

    #@3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 378
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
