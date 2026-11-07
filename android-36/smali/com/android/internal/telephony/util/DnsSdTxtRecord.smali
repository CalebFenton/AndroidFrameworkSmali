.class public Lcom/android/internal/telephony/util/DnsSdTxtRecord;
.super Ljava/lang/Object;
.source "DnsSdTxtRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/util/DnsSdTxtRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mData:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmData(Lcom/android/internal/telephony/util/DnsSdTxtRecord;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 313
    new-instance v0, Lcom/android/internal/telephony/util/DnsSdTxtRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/DnsSdTxtRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/util/DnsSdTxtRecord;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_11

    .line 59
    iget-object p1, p1, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    if-eqz p1, :cond_11

    .line 60
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    :cond_11
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    return-void
.end method

.method private blacklist getKey(I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    if-ge v1, p1, :cond_12

    .line 197
    iget-object v3, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    array-length v4, v3

    if-ge v2, v4, :cond_12

    .line 198
    aget-byte v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 201
    :cond_12
    iget-object p1, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    array-length v1, p1

    if-ge v2, v1, :cond_35

    .line 202
    aget-byte p1, p1, v2

    :goto_19
    if-ge v0, p1, :cond_2b

    .line 206
    iget-object v1, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    add-int v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v1, v1, v3

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 208
    :cond_2b
    :goto_2b
    new-instance p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p1, p0, v2, v0}, Ljava/lang/String;-><init>([BII)V

    return-object p1

    :cond_35
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getValue(I)[B
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    if-ge v1, p1, :cond_12

    .line 222
    iget-object v3, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    array-length v4, v3

    if-ge v2, v4, :cond_12

    .line 223
    aget-byte v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 226
    :cond_12
    iget-object p1, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    array-length v1, p1

    if-ge v2, v1, :cond_36

    .line 227
    aget-byte p1, p1, v2

    move v1, v0

    :goto_1a
    if-ge v1, p1, :cond_36

    .line 231
    iget-object v3, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    add-int v4, v2, v1

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v3, v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_33

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    .line 232
    new-array p0, p1, [B

    add-int/lit8 v4, v4, 0x2

    .line 233
    invoke-static {v3, v4, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getValue(Ljava/lang/String;)[B
    .registers 4

    const/4 v0, 0x0

    .line 250
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 251
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12

    .line 252
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->getValue(I)[B

    move-result-object p0

    return-object p0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getValueAsString(I)Ljava/lang/String;
    .registers 2

    .line 242
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->getValue(I)[B

    move-result-object p0

    if-eqz p0, :cond_c

    .line 243
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist insert([B[BI)V
    .registers 12

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    .line 170
    array-length v2, p2

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    move v3, v1

    move v4, v3

    :goto_a
    const/4 v5, 0x1

    if-ge v3, p3, :cond_1b

    .line 174
    iget-object v6, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    array-length v7, v6

    if-ge v4, v7, :cond_1b

    .line 175
    aget-byte v6, v6, v4

    add-int/2addr v6, v5

    and-int/lit16 v5, v6, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 178
    :cond_1b
    array-length p3, p1

    add-int/2addr p3, v2

    if-eqz p2, :cond_21

    move v3, v5

    goto :goto_22

    :cond_21
    move v3, v1

    :goto_22
    add-int/2addr p3, v3

    .line 179
    array-length v3, v0

    add-int/2addr v3, p3

    add-int/2addr v3, v5

    .line 181
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    .line 182
    invoke-static {v0, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    array-length v5, v0

    sub-int/2addr v5, v4

    .line 184
    iget-object v6, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    sub-int/2addr v3, v5

    invoke-static {v0, v4, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    int-to-byte p3, p3

    aput-byte p3, v0, v4

    add-int/lit8 p3, v4, 0x1

    .line 186
    array-length v3, p1

    invoke-static {p1, v1, v0, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_51

    .line 188
    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    array-length v0, p1

    add-int/2addr p3, v0

    const/16 v0, 0x3d

    aput-byte v0, p0, p3

    .line 189
    array-length p1, p1

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x2

    invoke-static {p2, v1, p0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_51
    return-void
.end method


# virtual methods
.method public blacklist contains(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 152
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 153
    invoke-virtual {p1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    return v0
.end method

.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 289
    :cond_4
    instance-of v0, p1, Lcom/android/internal/telephony/util/DnsSdTxtRecord;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 293
    :cond_a
    check-cast p1, Lcom/android/internal/telephony/util/DnsSdTxtRecord;

    .line 294
    iget-object p1, p1, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->getValue(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_c

    .line 114
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getRawData()[B
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 299
    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public blacklist keyCount()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 143
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    array-length v3, v2

    if-ge v0, v3, :cond_11

    .line 144
    aget-byte v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v1
.end method

.method public blacklist remove(Ljava/lang/String;)I
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 121
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    array-length v4, v3

    if-ge v1, v4, :cond_5c

    .line 122
    aget-byte v3, v3, v1

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v3, :cond_54

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v3, :cond_25

    iget-object v4, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_54

    .line 125
    :cond_25
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 126
    invoke-virtual {p1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_54

    .line 127
    iget-object p1, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    .line 128
    array-length v4, p1

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    .line 129
    invoke-static {p1, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v1, v3

    add-int/lit8 v0, v0, 0x1

    .line 130
    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    array-length v4, p1

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v0, p0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v2

    :cond_54
    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5c
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 75
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 76
    array-length v1, p2

    goto :goto_b

    :cond_9
    const/4 p2, 0x0

    move v1, v0

    .line 83
    :goto_b
    :try_start_b
    const-string v2, "US-ASCII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_11} :catch_42

    .line 89
    :goto_11
    array-length v3, v2

    if-ge v0, v3, :cond_25

    .line 90
    aget-byte v3, v2, v0

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 91
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "= is not a valid character in key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_25
    array-length v0, v2

    add-int/2addr v0, v1

    const/16 v1, 0xff

    if-ge v0, v1, :cond_3a

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->remove(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_36

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->keyCount()I

    move-result p1

    .line 103
    :cond_36
    invoke-direct {p0, v2, p2, p1}, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->insert([B[BI)V

    return-void

    .line 96
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key and Value length cannot exceed 255 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :catch_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key should be US-ASCII"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist size()I
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    array-length p0, p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 269
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->getValueAsString(I)Ljava/lang/String;

    move-result-object v3

    .line 272
    const-string v4, "}"

    if-eqz v3, :cond_39

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_48

    .line 275
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_48
    if-nez v0, :cond_4c

    move-object v0, v2

    goto :goto_60

    .line 279
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_63
    if-eqz v0, :cond_66

    return-object v0

    .line 281
    :cond_66
    const-string p0, ""

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 309
    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
