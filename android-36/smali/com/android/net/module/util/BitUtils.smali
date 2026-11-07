.class public Lcom/android/net/module/util/BitUtils;
.super Ljava/lang/Object;
.source "BitUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/BitUtils$NameOf;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLcom/android/net/module/util/BitUtils$NameOf;Ljava/lang/String;)V
    .registers 11
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bitMask"    # J
    .param p3, "nameFetcher"    # Lcom/android/net/module/util/BitUtils$NameOf;
    .param p4, "separator"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "bitPos":I
    const/4 v1, 0x0

    .line 98
    .local v1, "firstElementAdded":Z
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_22

    .line 99
    const-wide/16 v4, 0x1

    and-long/2addr v4, p1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1d

    .line 100
    if-eqz v1, :cond_15

    .line 101
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 103
    :cond_15
    const/4 v1, 0x1

    .line 105
    :goto_16
    invoke-interface {p3, v0}, Lcom/android/net/module/util/BitUtils$NameOf;->nameOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_1d
    const/4 v2, 0x1

    ushr-long/2addr p1, v2

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 110
    :cond_22
    return-void
.end method

.method public static blacklist describeDifferences(JJLcom/android/net/module/util/BitUtils$NameOf;)Ljava/lang/String;
    .registers 15
    .param p0, "oldVal"    # J
    .param p2, "newVal"    # J
    .param p4, "nameFetcher"    # Lcom/android/net/module/util/BitUtils$NameOf;

    .line 123
    xor-long v0, p0, p2

    .line 124
    .local v0, "changed":J
    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_a

    const/4 v2, 0x0

    return-object v2

    .line 127
    :cond_a
    and-long v4, p0, v0

    .line 128
    .local v4, "removed":J
    and-long v6, p2, v0

    .line 129
    .local v6, "added":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v8, "sb":Ljava/lang/StringBuilder;
    cmp-long v9, v2, v4

    if-eqz v9, :cond_1f

    .line 131
    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {v8, v4, v5, p4, v9}, Lcom/android/net/module/util/BitUtils;->appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLcom/android/net/module/util/BitUtils$NameOf;Ljava/lang/String;)V

    .line 134
    :cond_1f
    cmp-long v2, v2, v6

    if-eqz v2, :cond_2b

    .line 135
    const-string v2, "+"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {v8, v6, v7, p4, v2}, Lcom/android/net/module/util/BitUtils;->appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLcom/android/net/module/util/BitUtils$NameOf;Ljava/lang/String;)V

    .line 138
    :cond_2b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs blacklist packBitList([I)J
    .registers 3
    .param p0, "bits"    # [I

    .line 52
    invoke-static {p0}, Lcom/android/net/module/util/BitUtils;->packBits([I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist packBits([I)J
    .registers 8
    .param p0, "bits"    # [I

    .line 65
    const-wide/16 v0, 0x0

    .line 66
    .local v0, "packed":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_f

    aget v4, p0, v3

    .line 67
    .local v4, "b":I
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    .line 66
    .end local v4    # "b":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 69
    :cond_f
    return-wide v0
.end method

.method public static blacklist unpackBits(J)[I
    .registers 10
    .param p0, "val"    # J

    .line 30
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 31
    .local v0, "size":I
    new-array v1, v0, [I

    .line 32
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 33
    .local v2, "index":I
    const/4 v3, 0x0

    .line 34
    .local v3, "bitPos":I
    :goto_8
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-eqz v4, :cond_20

    .line 35
    const-wide/16 v4, 0x1

    and-long v6, p0, v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_1b

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "index":I
    .local v4, "index":I
    aput v3, v1, v2

    move v2, v4

    .line 36
    .end local v4    # "index":I
    .restart local v2    # "index":I
    :cond_1b
    const/4 v4, 0x1

    ushr-long/2addr p0, v4

    .line 37
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 39
    :cond_20
    return-object v1
.end method
