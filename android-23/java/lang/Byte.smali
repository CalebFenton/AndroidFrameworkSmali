.class public final Ljava/lang/Byte;
.super Ljava/lang/Number;
.source "Byte.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
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

.field private static final VALUES:[Ljava/lang/Byte;

.field private static final serialVersionUID:J = -0x63b19f7b11af0ae4L


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 58
    const-class v1, [B

    #@2
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    .line 57
    sput-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@8
    .line 305
    const/16 v1, 0x100

    #@a
    new-array v1, v1, [Ljava/lang/Byte;

    #@c
    sput-object v1, Ljava/lang/Byte;->VALUES:[Ljava/lang/Byte;

    #@e
    .line 308
    const/16 v0, -0x80

    #@10
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x80

    #@12
    if-ge v0, v1, :cond_0

    #@14
    .line 309
    sget-object v1, Ljava/lang/Byte;->VALUES:[Ljava/lang/Byte;

    #@16
    add-int/lit16 v2, v0, 0x80

    #@18
    new-instance v3, Ljava/lang/Byte;

    #@1a
    int-to-byte v4, v0

    #@1b
    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    #@1e
    aput-object v3, v1, v2

    #@20
    .line 308
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 26
    :cond_0
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0
    .param p1, "value"    # B

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 69
    iput-byte p1, p0, Ljava/lang/Byte;->value:B

    #@5
    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/Byte;-><init>(B)V

    #@7
    .line 81
    return-void
.end method

.method public static compare(BB)I
    .locals 1
    .param p0, "lhs"    # B
    .param p1, "rhs"    # B

    #@0
    .prologue
    .line 118
    if-le p0, p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    if-ge p0, p1, :cond_1

    #@6
    const/4 v0, -0x1

    #@7
    goto :goto_0

    #@8
    :cond_1
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@7
    move-result v0

    #@8
    .line 135
    .local v0, "intValue":I
    int-to-byte v1, v0

    #@9
    .line 136
    .local v1, "result":B
    if-ne v1, v0, :cond_0

    #@b
    .line 137
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@e
    move-result-object v2

    #@f
    return-object v2

    #@10
    .line 139
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "Value out of range for byte: \""

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    const-string/jumbo v4, "\""

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@30
    throw v2
.end method

.method public static parseByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    const/16 v0, 0xa

    #@2
    invoke-static {p0, v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static parseByte(Ljava/lang/String;I)B
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 213
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    .line 214
    .local v0, "intValue":I
    int-to-byte v1, v0

    #@5
    .line 215
    .local v1, "result":B
    if-ne v1, v0, :cond_0

    #@7
    .line 216
    return v1

    #@8
    .line 218
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Value out of range for byte: \""

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, "\""

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2
.end method

.method public static toHexString(BZ)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # B
    .param p1, "upperCase"    # Z

    #@0
    .prologue
    .line 236
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->byteToHexString(BZ)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static toString(B)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # B

    #@0
    .prologue
    .line 248
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static valueOf(B)Ljava/lang/Byte;
    .locals 2
    .param p0, "b"    # B

    #@0
    .prologue
    .line 299
    sget-object v0, Ljava/lang/Byte;->VALUES:[Ljava/lang/Byte;

    #@2
    add-int/lit16 v1, p0, 0x80

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 263
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Byte;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 283
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
    .line 92
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    #@2
    return v0
.end method

.method public compareTo(Ljava/lang/Byte;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Byte;

    #@0
    .prologue
    .line 109
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
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 108
    check-cast p1, Ljava/lang/Byte;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
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
    .line 144
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    #@2
    int-to-double v0, v0

    #@3
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "RC_REF_COMPARISON"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 160
    if-eq p1, p0, :cond_0

    #@4
    instance-of v2, p1, Ljava/lang/Byte;

    #@6
    if-eqz v2, :cond_1

    #@8
    check-cast p1, Ljava/lang/Byte;

    #@a
    .end local p1    # "object":Ljava/lang/Object;
    iget-byte v2, p1, Ljava/lang/Byte;->value:B

    #@c
    iget-byte v3, p0, Ljava/lang/Byte;->value:B

    #@e
    if-ne v2, v3, :cond_1

    #@10
    :cond_0
    :goto_0
    return v0

    #@11
    :cond_1
    move v0, v1

    #@12
    goto :goto_0
.end method

.method public floatValue()F
    .locals 1

    #@0
    .prologue
    .line 165
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
    .line 170
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    #@2
    return v0
.end method

.method public intValue()I
    .locals 1

    #@0
    .prologue
    .line 175
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    #@2
    return v0
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 180
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
    .line 223
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
    .line 228
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
