.class public final Landroid/net/sntp/Timestamp64;
.super Ljava/lang/Object;
.source "Timestamp64.java"


# static fields
.field static final blacklist MAX_SECONDS_IN_ERA:J = 0xffffffffL

.field static final blacklist NANOS_PER_SECOND:I = 0x3b9aca00

.field static final blacklist OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field static final blacklist SECONDS_IN_ERA:J = 0x100000000L

.field static final blacklist SUB_MILLIS_BITS_TO_RANDOMIZE:I = 0x16

.field public static final blacklist ZERO:Landroid/net/sntp/Timestamp64;


# instance fields
.field private final blacklist mEraSeconds:J

.field private final blacklist mFractionBits:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 41
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/sntp/Timestamp64;->fromComponents(JI)Landroid/net/sntp/Timestamp64;

    move-result-object v0

    sput-object v0, Landroid/net/sntp/Timestamp64;->ZERO:Landroid/net/sntp/Timestamp64;

    return-void
.end method

.method private constructor blacklist <init>(JI)V
    .registers 7
    .param p1, "eraSeconds"    # J
    .param p3, "fractionBits"    # I

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_17

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_17

    .line 102
    iput-wide p1, p0, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    .line 103
    iput p3, p0, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    .line 104
    return-void

    .line 99
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameters. seconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fraction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist fractionBitsToNanos(I)I
    .registers 6
    .param p0, "fractionBits"    # I

    .line 148
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 149
    .local v0, "fractionBitsLong":J
    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v2, v0

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    return v2
.end method

.method public static blacklist fromComponents(JI)Landroid/net/sntp/Timestamp64;
    .registers 4
    .param p0, "eraSeconds"    # J
    .param p2, "fractionBits"    # I

    .line 54
    new-instance v0, Landroid/net/sntp/Timestamp64;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/sntp/Timestamp64;-><init>(JI)V

    return-object v0
.end method

.method public static blacklist fromInstant(Ljava/time/Instant;)Landroid/net/sntp/Timestamp64;
    .registers 8
    .param p0, "instant"    # Ljava/time/Instant;

    .line 82
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    const-wide v2, 0x83aa7e80L

    add-long/2addr v0, v2

    .line 83
    .local v0, "ntpEraSeconds":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide v3, 0x100000000L

    if-gez v2, :cond_19

    .line 84
    neg-long v5, v0

    rem-long/2addr v5, v3

    sub-long v0, v3, v5

    .line 86
    :cond_19
    rem-long/2addr v0, v3

    .line 88
    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result v2

    int-to-long v2, v2

    .line 89
    .local v2, "nanos":J
    invoke-static {v2, v3}, Landroid/net/sntp/Timestamp64;->nanosToFractionBits(J)I

    move-result v4

    .line 91
    .local v4, "fractionBits":I
    new-instance v5, Landroid/net/sntp/Timestamp64;

    invoke-direct {v5, v0, v1, v4}, Landroid/net/sntp/Timestamp64;-><init>(JI)V

    return-object v5
.end method

.method public static blacklist fromString(Ljava/lang/String;)Landroid/net/sntp/Timestamp64;
    .registers 11
    .param p0, "string"    # Ljava/lang/String;

    .line 59
    const/16 v0, 0x11

    .line 60
    .local v0, "requiredLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_58

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_58

    .line 63
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "eraSecondsString":Ljava/lang/String;
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "fractionString":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    .line 69
    .local v4, "eraSeconds":J
    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    .line 70
    .local v6, "fractionBitsAsLong":J
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-ltz v3, :cond_3f

    const-wide v8, 0xffffffffL

    cmp-long v3, v6, v8

    if-gtz v3, :cond_3f

    .line 73
    new-instance v3, Landroid/net/sntp/Timestamp64;

    long-to-int v8, v6

    invoke-direct {v3, v4, v5, v8}, Landroid/net/sntp/Timestamp64;-><init>(JI)V

    return-object v3

    .line 71
    :cond_3f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid fractionBits:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    .end local v1    # "eraSecondsString":Ljava/lang/String;
    .end local v2    # "fractionString":Ljava/lang/String;
    .end local v4    # "eraSeconds":J
    .end local v6    # "fractionBitsAsLong":J
    :cond_58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist nanosToFractionBits(J)I
    .registers 6
    .param p0, "nanos"    # J

    .line 153
    const-wide/32 v0, 0x3b9aca00

    cmp-long v2, p0, v0

    if-gtz v2, :cond_e

    .line 156
    const/16 v2, 0x20

    shl-long v2, p0, v2

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0

    .line 154
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist randomizeLowestBits(Ljava/util/Random;II)I
    .registers 8
    .param p0, "random"    # Ljava/util/Random;
    .param p1, "value"    # I
    .param p2, "bitsToRandomize"    # I

    .line 177
    const/4 v0, 0x1

    if-lt p2, v0, :cond_14

    const/16 v0, 0x20

    if-ge p2, v0, :cond_14

    .line 182
    const/4 v0, -0x1

    shl-int/2addr v0, p2

    .line 183
    .local v0, "upperBitMask":I
    not-int v1, v0

    .line 185
    .local v1, "lowerBitMask":I
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 186
    .local v2, "randomValue":I
    and-int v3, p1, v0

    and-int v4, v2, v1

    or-int/2addr v3, v4

    return v3

    .line 179
    .end local v0    # "upperBitMask":I
    .end local v1    # "lowerBitMask":I
    .end local v2    # "randomValue":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 132
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 133
    return v0

    .line 135
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_26

    .line 138
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/sntp/Timestamp64;

    .line 139
    .local v2, "that":Landroid/net/sntp/Timestamp64;
    iget-wide v3, p0, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    iget-wide v5, v2, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    iget v3, p0, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    iget v4, v2, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    if-ne v3, v4, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0

    .line 136
    .end local v2    # "that":Landroid/net/sntp/Timestamp64;
    :cond_26
    :goto_26
    return v1
.end method

.method public blacklist getEraSeconds()J
    .registers 3

    .line 108
    iget-wide v0, p0, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    return-wide v0
.end method

.method public blacklist getFractionBits()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 144
    iget-wide v0, p0, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist randomizeSubMillis(Ljava/util/Random;)Landroid/net/sntp/Timestamp64;
    .registers 6
    .param p1, "random"    # Ljava/util/Random;

    .line 166
    iget v0, p0, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    .line 167
    const/16 v1, 0x16

    invoke-static {p1, v0, v1}, Landroid/net/sntp/Timestamp64;->randomizeLowestBits(Ljava/util/Random;II)I

    move-result v0

    .line 168
    .local v0, "randomizedFractionBits":I
    new-instance v1, Landroid/net/sntp/Timestamp64;

    iget-wide v2, p0, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    invoke-direct {v1, v2, v3, v0}, Landroid/net/sntp/Timestamp64;-><init>(JI)V

    return-object v1
.end method

.method public blacklist toInstant(I)Ljava/time/Instant;
    .registers 8
    .param p1, "ntpEra"    # I

    .line 123
    iget-wide v0, p0, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    .line 124
    .local v0, "secondsSinceEpoch":J
    int-to-long v2, p1

    const-wide v4, 0x100000000L

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 126
    iget v2, p0, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    invoke-static {v2}, Landroid/net/sntp/Timestamp64;->fractionBitsToNanos(I)I

    move-result v2

    .line 127
    .local v2, "nanos":I
    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 118
    iget-wide v0, p0, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%08x.%08x"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
