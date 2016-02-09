.class public final Ljava/lang/Short;
.super Ljava/lang/Number;
.source "Short.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:S = 0x7fffs

.field public static final MIN_VALUE:S = -0x8000s

.field public static final SIZE:I = 0x10

.field private static final SMALL_VALUES:[Ljava/lang/Short;

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x684d37133460da52L


# instance fields
.field private final value:S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    .line 60
    const-class v1, [S

    #@2
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    .line 59
    sput-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@8
    .line 313
    const/16 v1, 0x100

    #@a
    new-array v1, v1, [Ljava/lang/Short;

    #@c
    sput-object v1, Ljava/lang/Short;->SMALL_VALUES:[Ljava/lang/Short;

    #@e
    .line 316
    const/16 v0, -0x80

    #@10
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x80

    #@12
    if-ge v0, v1, :cond_0

    #@14
    .line 317
    sget-object v1, Ljava/lang/Short;->SMALL_VALUES:[Ljava/lang/Short;

    #@16
    add-int/lit16 v2, v0, 0x80

    #@18
    new-instance v3, Ljava/lang/Short;

    #@1a
    int-to-short v4, v0

    #@1b
    invoke-direct {v3, v4}, Ljava/lang/Short;-><init>(S)V

    #@1e
    aput-object v3, v1, v2

    #@20
    .line 316
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 27
    :cond_0
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
    .line 74
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/Short;-><init>(S)V

    #@7
    .line 73
    return-void
.end method

.method public constructor <init>(S)V
    .locals 0
    .param p1, "value"    # S

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 84
    iput-short p1, p0, Ljava/lang/Short;->value:S

    #@5
    .line 83
    return-void
.end method

.method public static compare(SS)I
    .locals 1
    .param p0, "lhs"    # S
    .param p1, "rhs"    # S

    #@0
    .prologue
    .line 117
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

.method public static decode(Ljava/lang/String;)Ljava/lang/Short;
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
    int-to-short v1, v0

    #@9
    .line 136
    .local v1, "result":S
    if-ne v1, v0, :cond_0

    #@b
    .line 137
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

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
    const-string/jumbo v4, "Value out of range for short: \""

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

.method public static parseShort(Ljava/lang/String;)S
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    const/16 v0, 0xa

    #@2
    invoke-static {p0, v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static parseShort(Ljava/lang/String;I)S
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
    .line 212
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    .line 213
    .local v0, "intValue":I
    int-to-short v1, v0

    #@5
    .line 214
    .local v1, "result":S
    if-ne v1, v0, :cond_0

    #@7
    .line 215
    return v1

    #@8
    .line 217
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Value out of range for short: \""

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

.method public static reverseBytes(S)S
    .locals 2
    .param p0, "s"    # S

    #@0
    .prologue
    .line 291
    shl-int/lit8 v0, p0, 0x8

    #@2
    ushr-int/lit8 v1, p0, 0x8

    #@4
    and-int/lit16 v1, v1, 0xff

    #@6
    or-int/2addr v0, v1

    #@7
    int-to-short v0, v0

    #@8
    return v0
.end method

.method public static toString(S)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # S

    #@0
    .prologue
    .line 244
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Short;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Short;
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
    .line 279
    invoke-static {p0, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static valueOf(S)Ljava/lang/Short;
    .locals 2
    .param p0, "s"    # S

    #@0
    .prologue
    .line 307
    const/16 v0, -0x80

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x80

    #@6
    if-lt p0, v0, :cond_1

    #@8
    :cond_0
    new-instance v0, Ljava/lang/Short;

    #@a
    invoke-direct {v0, p0}, Ljava/lang/Short;-><init>(S)V

    #@d
    :goto_0
    return-object v0

    #@e
    :cond_1
    sget-object v0, Ljava/lang/Short;->SMALL_VALUES:[Ljava/lang/Short;

    #@10
    add-int/lit16 v1, p0, 0x80

    #@12
    aget-object v0, v0, v1

    #@14
    goto :goto_0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    #@0
    .prologue
    .line 89
    iget-short v0, p0, Ljava/lang/Short;->value:S

    #@2
    int-to-byte v0, v0

    #@3
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 107
    check-cast p1, Ljava/lang/Short;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Short;->compareTo(Ljava/lang/Short;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/lang/Short;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Short;

    #@0
    .prologue
    .line 108
    iget-short v0, p0, Ljava/lang/Short;->value:S

    #@2
    iget-short v1, p1, Ljava/lang/Short;->value:S

    #@4
    invoke-static {v0, v1}, Ljava/lang/Short;->compare(SS)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 144
    iget-short v0, p0, Ljava/lang/Short;->value:S

    #@2
    int-to-double v0, v0

    #@3
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 159
    instance-of v1, p1, Ljava/lang/Short;

    #@3
    if-eqz v1, :cond_0

    #@5
    check-cast p1, Ljava/lang/Short;

    #@7
    .end local p1    # "object":Ljava/lang/Object;
    iget-short v1, p1, Ljava/lang/Short;->value:S

    #@9
    iget-short v2, p0, Ljava/lang/Short;->value:S

    #@b
    if-ne v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 1

    #@0
    .prologue
    .line 164
    iget-short v0, p0, Ljava/lang/Short;->value:S

    #@2
    int-to-float v0, v0

    #@3
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 169
    iget-short v0, p0, Ljava/lang/Short;->value:S

    #@2
    return v0
.end method

.method public intValue()I
    .locals 1

    #@0
    .prologue
    .line 174
    iget-short v0, p0, Ljava/lang/Short;->value:S

    #@2
    return v0
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 179
    iget-short v0, p0, Ljava/lang/Short;->value:S

    #@2
    int-to-long v0, v0

    #@3
    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    #@0
    .prologue
    .line 227
    iget-short v0, p0, Ljava/lang/Short;->value:S

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 232
    iget-short v0, p0, Ljava/lang/Short;->value:S

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
