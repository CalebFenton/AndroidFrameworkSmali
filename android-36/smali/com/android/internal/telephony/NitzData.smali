.class public final Lcom/android/internal/telephony/NitzData;
.super Ljava/lang/Object;
.source "NitzData.java"


# static fields
.field private static final blacklist NITZ_SPLIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final blacklist mCurrentTimeMillis:J

.field private final blacklist mDstOffset:Ljava/lang/Integer;

.field private final blacklist mEmulatorHostTimeZone:Ljava/util/TimeZone;

.field private final blacklist mOriginalString:Ljava/lang/String;

.field private final blacklist mZoneOffset:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const-string v0, "[/:,+-]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/NitzData;->NITZ_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/Integer;JLjava/util/TimeZone;)V
    .registers 7

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_10

    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/NitzData;->mOriginalString:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    .line 63
    iput-object p3, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    .line 64
    iput-wide p4, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    .line 65
    iput-object p6, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    return-void

    .line 59
    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "originalString==null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist createForTests(ILjava/lang/Integer;JLjava/util/TimeZone;)Lcom/android/internal/telephony/NitzData;
    .registers 12

    .line 147
    new-instance v0, Lcom/android/internal/telephony/NitzData;

    const-string v1, "Test data"

    move v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/NitzData;-><init>(Ljava/lang/String;ILjava/lang/Integer;JLjava/util/TimeZone;)V

    return-object v0
.end method

.method public static blacklist parse(Ljava/lang/String;)Lcom/android/internal/telephony/NitzData;
    .registers 13

    const/4 v1, 0x0

    .line 76
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/NitzData;->NITZ_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 78
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_a7

    const/16 v5, 0x63

    if-gt v3, v5, :cond_a7

    add-int/lit16 v6, v3, 0x7d0

    .line 99
    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v3, 0x2

    .line 100
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v3, 0x3

    .line 101
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v3, 0x4

    .line 102
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v3, 0x5

    .line 103
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 109
    invoke-static/range {v6 .. v11}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v3

    sget-object v5, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 110
    invoke-virtual {v3, v5}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v3

    .line 111
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v9

    const/16 v3, 0x2d

    .line 114
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_51

    move v2, v4

    :cond_51
    const/4 v3, 0x6

    .line 115
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v2, :cond_5b

    goto :goto_5c

    :cond_5b
    move v4, v5

    :goto_5c
    mul-int/2addr v4, v3

    const v2, 0xdbba0

    mul-int v7, v4, v2

    .line 122
    array-length v2, v0

    const/16 v3, 0x8

    if-lt v2, v3, :cond_76

    const/4 v2, 0x7

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_77

    :catch_73
    move-exception v0

    move-object v6, p0

    goto :goto_b0

    :cond_76
    move-object v2, v1

    :goto_77
    if-eqz v2, :cond_87

    .line 125
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v4, 0x36ee80

    mul-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v8, v2

    goto :goto_88

    :cond_87
    move-object v8, v1

    .line 133
    :goto_88
    array-length v2, v0

    const/16 v4, 0x9

    if-lt v2, v4, :cond_9d

    .line 134
    aget-object v0, v0, v3

    const/16 v2, 0x21

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    move-object v11, v0

    goto :goto_9e

    :cond_9d
    move-object v11, v1

    .line 137
    :goto_9e
    new-instance v5, Lcom/android/internal/telephony/NitzData;
    :try_end_a0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_a0} :catch_73

    move-object v6, p0

    :try_start_a1
    invoke-direct/range {v5 .. v11}, Lcom/android/internal/telephony/NitzData;-><init>(Ljava/lang/String;ILjava/lang/Integer;JLjava/util/TimeZone;)V

    return-object v5

    :catch_a5
    move-exception v0

    goto :goto_b0

    :cond_a7
    move-object v6, p0

    .line 90
    new-instance p0, Ljava/time/DateTimeException;

    const-string v0, "Invalid NITZ year == 0"

    invoke-direct {p0, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_b0
    .catch Ljava/lang/RuntimeException; {:try_start_a1 .. :try_end_b0} :catch_a5

    .line 139
    :goto_b0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NITZ: Parsing NITZ time "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ex="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SST"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_41

    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/internal/telephony/NitzData;

    if-eq v2, v1, :cond_10

    goto :goto_41

    .line 225
    :cond_10
    check-cast p1, Lcom/android/internal/telephony/NitzData;

    .line 227
    iget v1, p0, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    iget v2, p1, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    if-eq v1, v2, :cond_19

    return v0

    .line 230
    :cond_19
    iget-wide v1, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_22

    return v0

    .line 233
    :cond_22
    iget-object v1, p0, Lcom/android/internal/telephony/NitzData;->mOriginalString:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/telephony/NitzData;->mOriginalString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v0

    .line 236
    :cond_2d
    iget-object v1, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v0

    .line 239
    :cond_38
    iget-object p0, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    iget-object p1, p1, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_41
    :goto_41
    return v0
.end method

.method public blacklist getCurrentTimeInMillis()J
    .registers 3

    .line 156
    iget-wide v0, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    return-wide v0
.end method

.method public blacklist getDstAdjustmentMillis()Ljava/lang/Integer;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    return-object p0
.end method

.method public blacklist getEmulatorHostTimeZone()Ljava/util/TimeZone;
    .registers 1

    .line 213
    iget-object p0, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    return-object p0
.end method

.method public blacklist getLocalOffsetMillis()I
    .registers 1

    .line 168
    iget p0, p0, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/NitzData;->mOriginalString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 245
    iget v1, p0, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 246
    iget-object v1, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 247
    iget-wide v3, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 248
    iget-object p0, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2c
    add-int/2addr v0, v2

    return v0
.end method

.method public blacklist isDst()Z
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NitzData{mOriginalString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzData;->mOriginalString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDstOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEmulatorHostTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
