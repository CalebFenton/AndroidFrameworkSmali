.class public abstract Lcom/android/org/bouncycastle/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# static fields
.field private static blacklist LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 26
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/util/Strings$1;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/util/Strings$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    .line 41
    :catch_e
    :try_start_e
    const-string v0, "%n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_1a

    goto :goto_1e

    .line 45
    :catch_1a
    const-string v0, "\n"

    sput-object v0, Lcom/android/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    :goto_1e
    return-void
.end method

.method public static blacklist asCharArray([B)[C
    .registers 5

    .line 293
    array-length v0, p0

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_4
    if-eq v2, v0, :cond_10

    .line 297
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    return-object v1
.end method

.method public static blacklist fromByteArray([B)Ljava/lang/String;
    .registers 2

    .line 282
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->asCharArray([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static blacklist fromUTF8ByteArray([B)Ljava/lang/String;
    .registers 4

    .line 52
    array-length v0, p0

    new-array v0, v0, [C

    .line 53
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/util/encoders/UTF8;->transcodeToUTF16([B[C)I

    move-result p0

    if-ltz p0, :cond_10

    .line 58
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 56
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid UTF-8 input"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist lineSeparator()Ljava/lang/String;
    .registers 1

    .line 341
    sget-object v0, Lcom/android/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 6

    .line 305
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x1

    :goto_6
    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 311
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1d

    .line 314
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    .line 316
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 321
    :cond_1d
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v1, v2

    goto :goto_6

    .line 325
    :cond_22
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p1, p0, [Ljava/lang/String;

    :goto_28
    if-eq v2, p0, :cond_35

    .line 329
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_35
    return-object p1
.end method

.method public static blacklist toByteArray(Ljava/lang/String;)[B
    .registers 5

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_7
    if-eq v2, v0, :cond_13

    .line 224
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    .line 226
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    return-object v1
.end method

.method public static blacklist toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 187
    :goto_6
    array-length v3, v0

    if-eq v1, v3, :cond_1c

    .line 189
    aget-char v3, v0, v1

    const/16 v4, 0x41

    if-gt v4, v3, :cond_19

    const/16 v4, 0x5a

    if-lt v4, v3, :cond_19

    add-int/lit8 v3, v3, 0x20

    int-to-char v2, v3

    .line 193
    aput-char v2, v0, v1

    const/4 v2, 0x1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    if-eqz v2, :cond_23

    .line 199
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    :cond_23
    return-object p0
.end method

.method public static blacklist toUTF8ByteArray([CLjava/io/OutputStream;)V
    .registers 8

    const/4 v0, 0x0

    .line 99
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_85

    .line 101
    aget-char v1, p0, v0

    const/16 v2, 0x80

    if-ge v1, v2, :cond_e

    .line 105
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_81

    :cond_e
    const/16 v3, 0x800

    if-ge v1, v3, :cond_20

    shr-int/lit8 v3, v1, 0x6

    or-int/lit16 v3, v3, 0xc0

    .line 109
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    .line 110
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_81

    :cond_20
    const v3, 0xd800

    if-lt v1, v3, :cond_6c

    const v3, 0xdfff

    if-gt v1, v3, :cond_6c

    add-int/lit8 v0, v0, 0x1

    .line 117
    array-length v3, p0

    const-string v4, "invalid UTF-16 codepoint"

    if-ge v0, v3, :cond_66

    .line 122
    aget-char v3, p0, v0

    const v5, 0xdbff

    if-gt v1, v5, :cond_60

    and-int/lit16 v1, v1, 0x3ff

    shl-int/lit8 v1, v1, 0xa

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v1, v3

    const/high16 v3, 0x10000

    add-int/2addr v1, v3

    shr-int/lit8 v3, v1, 0x12

    or-int/lit16 v3, v3, 0xf0

    .line 131
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    .line 132
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    .line 133
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    .line 134
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_81

    .line 128
    :cond_60
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_66
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6c
    shr-int/lit8 v3, v1, 0xc

    or-int/lit16 v3, v3, 0xe0

    .line 138
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    .line 139
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    .line 140
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_81
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_85
    return-void
.end method

.method public static blacklist toUTF8ByteArray(Ljava/lang/String;)[B
    .registers 1

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toUTF8ByteArray([C)[B
    .registers 2

    .line 79
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    :try_start_5
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/util/Strings;->toUTF8ByteArray([CLjava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 90
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 87
    :catch_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot encode string to byte array!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 158
    :goto_6
    array-length v3, v0

    if-eq v1, v3, :cond_1c

    .line 160
    aget-char v3, v0, v1

    const/16 v4, 0x61

    if-gt v4, v3, :cond_19

    const/16 v4, 0x7a

    if-lt v4, v3, :cond_19

    add-int/lit8 v3, v3, -0x20

    int-to-char v2, v3

    .line 164
    aput-char v2, v0, v1

    const/4 v2, 0x1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    if-eqz v2, :cond_23

    .line 170
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    :cond_23
    return-object p0
.end method
