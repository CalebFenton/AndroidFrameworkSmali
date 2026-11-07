.class public Lcom/android/internal/telephony/util/BitUtils;
.super Ljava/lang/Object;
.source "BitUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/util/BitUtils$NameOf;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLcom/android/internal/telephony/util/BitUtils$NameOf;Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_22

    const-wide/16 v4, 0x1

    and-long/2addr v4, p1

    cmp-long v2, v4, v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    if-eqz v0, :cond_16

    .line 101
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_16
    move v0, v3

    .line 105
    :goto_17
    invoke-interface {p3, v1}, Lcom/android/internal/telephony/util/BitUtils$NameOf;->nameOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    ushr-long/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
    return-void
.end method

.method public static blacklist describeDifferences(JJLcom/android/internal/telephony/util/BitUtils$NameOf;)Ljava/lang/String;
    .registers 10

    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    and-long/2addr p0, v0

    and-long/2addr p2, v0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v1, v2, p0

    if-eqz v1, :cond_1d

    .line 131
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {v0, p0, p1, p4, v1}, Lcom/android/internal/telephony/util/BitUtils;->appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLcom/android/internal/telephony/util/BitUtils$NameOf;Ljava/lang/String;)V

    :cond_1d
    cmp-long p0, v2, p2

    if-eqz p0, :cond_29

    .line 135
    const-string p0, "+"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {v0, p2, p3, p4, p0}, Lcom/android/internal/telephony/util/BitUtils;->appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLcom/android/internal/telephony/util/BitUtils$NameOf;Ljava/lang/String;)V

    .line 138
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs blacklist packBitList([I)J
    .registers 3

    .line 52
    invoke-static {p0}, Lcom/android/internal/telephony/util/BitUtils;->packBits([I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist packBits([I)J
    .registers 8

    .line 66
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_10

    aget v4, p0, v3

    const-wide/16 v5, 0x1

    shl-long v4, v5, v4

    or-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_10
    return-wide v1
.end method

.method public static blacklist unpackBits(J)[I
    .registers 9

    .line 30
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 31
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-eqz v3, :cond_20

    const-wide/16 v3, 0x1

    and-long v5, p0, v3

    cmp-long v3, v5, v3

    if-nez v3, :cond_1b

    add-int/lit8 v3, v1, 0x1

    .line 35
    aput v2, v0, v1

    move v1, v3

    :cond_1b
    const/4 v3, 0x1

    ushr-long/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_20
    return-object v0
.end method
