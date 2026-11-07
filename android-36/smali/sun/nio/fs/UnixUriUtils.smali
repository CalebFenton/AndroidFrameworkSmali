.class Lsun/nio/fs/UnixUriUtils;
.super Ljava/lang/Object;
.source "UnixUriUtils.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist H_ALPHA:J

.field private static final blacklist H_ALPHANUM:J

.field private static final blacklist H_DIGIT:J

.field private static final blacklist H_LOWALPHA:J

.field private static final blacklist H_MARK:J

.field private static final blacklist H_PATH:J

.field private static final blacklist H_PCHAR:J

.field private static final blacklist H_UNRESERVED:J

.field private static final blacklist H_UPALPHA:J

.field private static final blacklist L_ALPHA:J

.field private static final blacklist L_ALPHANUM:J

.field private static final blacklist L_DIGIT:J

.field private static final blacklist L_LOWALPHA:J

.field private static final blacklist L_MARK:J

.field private static final blacklist L_PATH:J

.field private static final blacklist L_PCHAR:J

.field private static final blacklist L_UNRESERVED:J

.field private static final blacklist L_UPALPHA:J

.field private static final blacklist hexDigits:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 38
    nop

    .line 202
    const/16 v0, 0x30

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lsun/nio/fs/UnixUriUtils;->lowMask(CC)J

    move-result-wide v0

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_DIGIT:J

    .line 209
    const/16 v0, 0x5a

    const/16 v1, 0x41

    invoke-static {v1, v0}, Lsun/nio/fs/UnixUriUtils;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_UPALPHA:J

    .line 215
    const/16 v0, 0x61

    const/16 v1, 0x7a

    invoke-static {v0, v1}, Lsun/nio/fs/UnixUriUtils;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_LOWALPHA:J

    .line 219
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->H_LOWALPHA:J

    sget-wide v2, Lsun/nio/fs/UnixUriUtils;->H_UPALPHA:J

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_ALPHA:J

    .line 222
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->L_DIGIT:J

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_ALPHANUM:J

    .line 223
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->H_ALPHA:J

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_ALPHANUM:J

    .line 227
    const-string v0, "-_.!~*\'()"

    invoke-static {v0}, Lsun/nio/fs/UnixUriUtils;->lowMask(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lsun/nio/fs/UnixUriUtils;->L_MARK:J

    .line 228
    invoke-static {v0}, Lsun/nio/fs/UnixUriUtils;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_MARK:J

    .line 231
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->L_ALPHANUM:J

    sget-wide v2, Lsun/nio/fs/UnixUriUtils;->L_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_UNRESERVED:J

    .line 232
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->H_ALPHANUM:J

    sget-wide v2, Lsun/nio/fs/UnixUriUtils;->H_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_UNRESERVED:J

    .line 236
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->L_UNRESERVED:J

    .line 237
    const-string v2, ":@&=+$,"

    invoke-static {v2}, Lsun/nio/fs/UnixUriUtils;->lowMask(Ljava/lang/String;)J

    move-result-wide v3

    or-long/2addr v0, v3

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_PCHAR:J

    .line 238
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->H_UNRESERVED:J

    .line 239
    invoke-static {v2}, Lsun/nio/fs/UnixUriUtils;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_PCHAR:J

    .line 242
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->L_PCHAR:J

    const-string v2, ";/"

    invoke-static {v2}, Lsun/nio/fs/UnixUriUtils;->lowMask(Ljava/lang/String;)J

    move-result-wide v3

    or-long/2addr v0, v3

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->L_PATH:J

    .line 243
    sget-wide v0, Lsun/nio/fs/UnixUriUtils;->H_PCHAR:J

    invoke-static {v2}, Lsun/nio/fs/UnixUriUtils;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Lsun/nio/fs/UnixUriUtils;->H_PATH:J

    .line 245
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_80

    sput-object v0, Lsun/nio/fs/UnixUriUtils;->hexDigits:[C

    return-void

    :array_80
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
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist decode(C)I
    .registers 2
    .param p0, "c"    # C

    .line 191
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 192
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 193
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 194
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 195
    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    .line 196
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 197
    :cond_25
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static blacklist fromUri(Lsun/nio/fs/UnixFileSystem;Ljava/net/URI;)Ljava/nio/file/Path;
    .registers 14
    .param p0, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .param p1, "uri"    # Ljava/net/URI;

    .line 45
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 47
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_cc

    .line 49
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_c4

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 52
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_bc

    .line 54
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b4

    .line 56
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ac

    .line 60
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file:///"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 61
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    return-object v1

    .line 64
    :cond_42
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "p":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 66
    .local v2, "len":I
    if-eqz v2, :cond_a4

    .line 70
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    const/4 v3, 0x1

    if-le v2, v3, :cond_59

    .line 71
    add-int/lit8 v2, v2, -0x1

    .line 72
    :cond_59
    new-array v3, v2, [B

    .line 73
    .local v3, "result":[B
    const/4 v4, 0x0

    .line 74
    .local v4, "rlen":I
    const/4 v5, 0x0

    .line 75
    .local v5, "pos":I
    :goto_5d
    if-ge v5, v2, :cond_97

    .line 76
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 78
    .local v5, "c":C
    const/16 v7, 0x25

    if-ne v5, v7, :cond_8e

    .line 79
    nop

    .line 80
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .local v7, "pos":I
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 81
    .local v6, "c1":C
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 82
    .local v7, "c2":C
    invoke-static {v6}, Lsun/nio/fs/UnixUriUtils;->decode(C)I

    move-result v9

    shl-int/lit8 v9, v9, 0x4

    invoke-static {v7}, Lsun/nio/fs/UnixUriUtils;->decode(C)I

    move-result v10

    or-int/2addr v9, v10

    int-to-byte v9, v9

    .line 83
    .local v9, "b":B
    if-eqz v9, :cond_86

    .line 85
    .end local v6    # "c1":C
    .end local v7    # "c2":C
    move v6, v8

    goto :goto_90

    .line 84
    .restart local v6    # "c1":C
    .restart local v7    # "c2":C
    :cond_86
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Nul character not allowed"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 86
    .end local v7    # "c2":C
    .end local v8    # "pos":I
    .end local v9    # "b":B
    .local v6, "pos":I
    :cond_8e
    nop

    .line 87
    int-to-byte v9, v5

    .line 89
    .restart local v9    # "b":B
    :goto_90
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "rlen":I
    .local v7, "rlen":I
    aput-byte v9, v3, v4

    .line 90
    .end local v5    # "c":C
    .end local v9    # "b":B
    move v5, v6

    move v4, v7

    goto :goto_5d

    .line 91
    .end local v6    # "pos":I
    .end local v7    # "rlen":I
    .restart local v4    # "rlen":I
    .local v5, "pos":I
    :cond_97
    array-length v6, v3

    if-eq v4, v6, :cond_9e

    .line 92
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 94
    :cond_9e
    new-instance v6, Lsun/nio/fs/UnixPath;

    invoke-direct {v6, p0, v3}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v6

    .line 67
    .end local v3    # "result":[B
    .end local v4    # "rlen":I
    .end local v5    # "pos":I
    :cond_a4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "URI path component is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    .end local v1    # "p":Ljava/lang/String;
    .end local v2    # "len":I
    :cond_ac
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI has a query component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_b4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI has a fragment component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_bc
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI has an authority component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_c4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URI scheme is not \"file\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_cc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI is not hierarchical"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_d4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI is not absolute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist highMask(CC)J
    .registers 9
    .param p0, "first"    # C
    .param p1, "last"    # C

    .line 172
    const-wide/16 v0, 0x0

    .line 173
    .local v0, "m":J
    const/16 v2, 0x7f

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x40

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v4

    .line 174
    .local v3, "f":I
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v2, v4

    .line 175
    .local v2, "l":I
    move v4, v3

    .local v4, "i":I
    :goto_19
    if-gt v4, v2, :cond_22

    .line 176
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 177
    .end local v4    # "i":I
    :cond_22
    return-wide v0
.end method

.method private static blacklist highMask(Ljava/lang/String;)J
    .registers 9
    .param p0, "chars"    # Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 149
    .local v0, "n":I
    const-wide/16 v1, 0x0

    .line 150
    .local v1, "m":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_1f

    .line 151
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 152
    .local v4, "c":C
    const/16 v5, 0x40

    if-lt v4, v5, :cond_1c

    const/16 v5, 0x80

    if-ge v4, v5, :cond_1c

    .line 153
    add-int/lit8 v5, v4, -0x40

    const-wide/16 v6, 0x1

    shl-long v5, v6, v5

    or-long/2addr v1, v5

    .line 150
    .end local v4    # "c":C
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 155
    .end local v3    # "i":I
    :cond_1f
    return-wide v1
.end method

.method private static blacklist lowMask(CC)J
    .registers 9
    .param p0, "first"    # C
    .param p1, "last"    # C

    .line 161
    const-wide/16 v0, 0x0

    .line 162
    .local v0, "m":J
    const/16 v2, 0x3f

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 163
    .local v3, "f":I
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 164
    .local v2, "l":I
    move v4, v3

    .local v4, "i":I
    :goto_16
    if-gt v4, v2, :cond_1f

    .line 165
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 166
    .end local v4    # "i":I
    :cond_1f
    return-wide v0
.end method

.method private static blacklist lowMask(Ljava/lang/String;)J
    .registers 8
    .param p0, "chars"    # Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 137
    .local v0, "n":I
    const-wide/16 v1, 0x0

    .line 138
    .local v1, "m":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_18

    .line 139
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 140
    .local v4, "c":C
    const/16 v5, 0x40

    if-ge v4, v5, :cond_15

    .line 141
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v1, v5

    .line 138
    .end local v4    # "c":C
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 143
    .end local v3    # "i":I
    :cond_18
    return-wide v1
.end method

.method private static blacklist match(CJJ)Z
    .registers 12
    .param p0, "c"    # C
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .line 182
    const/16 v0, 0x40

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    if-ge p0, v0, :cond_13

    .line 183
    shl-long/2addr v4, p0

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v6

    :goto_12
    return v1

    .line 184
    :cond_13
    const/16 v0, 0x80

    if-ge p0, v0, :cond_22

    .line 185
    add-int/lit8 v0, p0, -0x40

    shl-long/2addr v4, v0

    and-long/2addr v4, p3

    cmp-long v0, v4, v2

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    move v1, v6

    :goto_21
    return v1

    .line 186
    :cond_22
    return v6
.end method

.method static blacklist toUri(Lsun/nio/fs/UnixPath;)Ljava/net/URI;
    .registers 9
    .param p0, "up"    # Lsun/nio/fs/UnixPath;

    .line 101
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->toAbsolutePath()Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v0

    .line 102
    .local v0, "path":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:///"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "sb":Ljava/lang/StringBuilder;
    nop

    .line 104
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_11
    array-length v3, v0

    if-ge v2, v3, :cond_43

    .line 105
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 106
    .local v3, "c":C
    sget-wide v4, Lsun/nio/fs/UnixUriUtils;->L_PATH:J

    sget-wide v6, Lsun/nio/fs/UnixUriUtils;->H_PATH:J

    invoke-static {v3, v4, v5, v6, v7}, Lsun/nio/fs/UnixUriUtils;->match(CJJ)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 109
    :cond_27
    const/16 v4, 0x25

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    sget-object v4, Lsun/nio/fs/UnixUriUtils;->hexDigits:[C

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    sget-object v4, Lsun/nio/fs/UnixUriUtils;->hexDigits:[C

    and-int/lit8 v5, v3, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .end local v3    # "c":C
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 116
    .end local v2    # "i":I
    :cond_43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_60

    .line 118
    :try_start_51
    invoke-static {p0, v3}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 119
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_5e
    .catch Lsun/nio/fs/UnixException; {:try_start_51 .. :try_end_5e} :catch_5f

    .line 122
    :cond_5e
    goto :goto_60

    .line 120
    :catch_5f
    move-exception v2

    .line 126
    :cond_60
    :goto_60
    :try_start_60
    new-instance v2, Ljava/net/URI;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/net/URISyntaxException; {:try_start_60 .. :try_end_69} :catch_6a

    return-object v2

    .line 127
    :catch_6a
    move-exception v2

    .line 128
    .local v2, "x":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
