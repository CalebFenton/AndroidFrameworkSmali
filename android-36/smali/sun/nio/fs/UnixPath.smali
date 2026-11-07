.class Lsun/nio/fs/UnixPath;
.super Lsun/nio/fs/AbstractPath;
.source "UnixPath.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist encoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist fs:Lsun/nio/fs/UnixFileSystem;

.field private blacklist hash:I

.field private volatile blacklist offsets:[I

.field private final blacklist path:[B

.field private volatile blacklist stringValue:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    nop

    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lsun/nio/fs/UnixPath;->encoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixFileSystem;Ljava/lang/String;)V
    .registers 4
    .param p1, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .param p2, "input"    # Ljava/lang/String;

    .line 71
    invoke-static {p2}, Lsun/nio/fs/UnixPath;->normalizeAndCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lsun/nio/fs/UnixPath;->encode(Lsun/nio/fs/UnixFileSystem;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    .line 72
    return-void
.end method

.method constructor blacklist <init>(Lsun/nio/fs/UnixFileSystem;[B)V
    .registers 3
    .param p1, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .param p2, "path"    # [B

    .line 64
    invoke-direct {p0}, Lsun/nio/fs/AbstractPath;-><init>()V

    .line 65
    iput-object p1, p0, Lsun/nio/fs/UnixPath;->fs:Lsun/nio/fs/UnixFileSystem;

    .line 66
    iput-object p2, p0, Lsun/nio/fs/UnixPath;->path:[B

    .line 67
    return-void
.end method

.method private static blacklist checkNotNul(Ljava/lang/String;C)V
    .registers 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "c"    # C

    .line 92
    if-eqz p1, :cond_3

    .line 94
    return-void

    .line 93
    :cond_3
    new-instance v0, Ljava/nio/file/InvalidPathException;

    const-string v1, "Nul character not allowed"

    invoke-direct {v0, p0, v1}, Ljava/nio/file/InvalidPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist emptyPath()Lsun/nio/fs/UnixPath;
    .registers 4

    .line 254
    new-instance v0, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v0
.end method

.method private static blacklist encode(Lsun/nio/fs/UnixFileSystem;Ljava/lang/String;)[B
    .registers 12
    .param p0, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .param p1, "input"    # Ljava/lang/String;

    .line 120
    sget-object v0, Lsun/nio/fs/UnixPath;->encoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 121
    .local v0, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/nio/charset/CharsetEncoder;>;"
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/CharsetEncoder;

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 122
    .local v1, "ce":Ljava/nio/charset/CharsetEncoder;
    :goto_12
    if-nez v1, :cond_32

    .line 123
    invoke-static {}, Lsun/nio/fs/Util;->jnuEncoding()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 124
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 125
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 126
    sget-object v2, Lsun/nio/fs/UnixPath;->encoder:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 129
    :cond_32
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/nio/fs/UnixFileSystem;->normalizeNativePath([C)[C

    move-result-object v2

    .line 132
    .local v2, "ca":[C
    array-length v3, v2

    int-to-double v3, v3

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    new-array v3, v3, [B

    .line 135
    .local v3, "ba":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 136
    .local v4, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v2}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v5

    .line 137
    .local v5, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 138
    const/4 v6, 0x1

    invoke-virtual {v1, v5, v4, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v7

    .line 140
    .local v7, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v7}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v8

    if-nez v8, :cond_5d

    .line 141
    const/4 v6, 0x1

    .local v6, "error":Z
    goto :goto_66

    .line 143
    .end local v6    # "error":Z
    :cond_5d
    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v7

    .line 144
    invoke-virtual {v7}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v8

    xor-int/2addr v6, v8

    .line 146
    .restart local v6    # "error":Z
    :goto_66
    if-nez v6, :cond_74

    .line 152
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 153
    .local v8, "len":I
    array-length v9, v3

    if-eq v8, v9, :cond_73

    .line 154
    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 156
    :cond_73
    return-object v3

    .line 147
    .end local v8    # "len":I
    :cond_74
    new-instance v8, Ljava/nio/file/InvalidPathException;

    const-string v9, "Malformed input or input contains unmappable characters"

    invoke-direct {v8, p1, v9}, Ljava/nio/file/InvalidPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8
.end method

.method private blacklist initOffsets()V
    .registers 8

    .line 206
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    if-nez v0, :cond_66

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "count":I
    const/4 v1, 0x0

    .line 212
    .local v1, "index":I
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v2

    const/16 v3, 0x2f

    if-eqz v2, :cond_10

    .line 214
    const/4 v0, 0x1

    goto :goto_31

    .line 216
    :cond_10
    :goto_10
    iget-object v2, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v2, v2

    if-ge v1, v2, :cond_31

    .line 217
    iget-object v2, p0, Lsun/nio/fs/UnixPath;->path:[B

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    aget-byte v1, v2, v1

    .line 218
    .local v1, "c":B
    if-eq v1, v3, :cond_2f

    .line 219
    add-int/lit8 v0, v0, 0x1

    .line 220
    :goto_1f
    iget-object v2, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v2, v2

    if-ge v4, v2, :cond_2d

    iget-object v2, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v2, v2, v4

    if-eq v2, v3, :cond_2d

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 223
    .end local v1    # "c":B
    :cond_2d
    move v1, v4

    goto :goto_30

    .line 218
    .restart local v1    # "c":B
    :cond_2f
    move v1, v4

    .line 223
    .end local v4    # "index":I
    .local v1, "index":I
    :goto_30
    goto :goto_10

    .line 227
    :cond_31
    :goto_31
    new-array v2, v0, [I

    .line 228
    .local v2, "result":[I
    const/4 v0, 0x0

    .line 229
    const/4 v1, 0x0

    .line 230
    :goto_35
    iget-object v4, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v4, v4

    if-ge v1, v4, :cond_5a

    .line 231
    iget-object v4, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v4, v4, v1

    .line 232
    .local v4, "c":B
    if-ne v4, v3, :cond_43

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 235
    :cond_43
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "count":I
    .local v5, "count":I
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "index":I
    .local v6, "index":I
    aput v1, v2, v0

    .line 236
    :goto_49
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v0, v0

    if-ge v6, v0, :cond_57

    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v0, v0, v6

    if-eq v0, v3, :cond_57

    .line 237
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    .line 239
    .end local v4    # "c":B
    :cond_57
    move v0, v5

    move v1, v6

    .end local v5    # "count":I
    .end local v6    # "index":I
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    :goto_59
    goto :goto_35

    .line 240
    :cond_5a
    monitor-enter p0

    .line 241
    :try_start_5b
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    if-nez v3, :cond_61

    .line 242
    iput-object v2, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    .line 243
    :cond_61
    monitor-exit p0

    goto :goto_66

    :catchall_63
    move-exception v3

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_63

    throw v3

    .line 245
    .end local v0    # "count":I
    .end local v1    # "index":I
    .end local v2    # "result":[I
    :cond_66
    :goto_66
    return-void
.end method

.method private static blacklist normalize(Ljava/lang/String;II)Ljava/lang/String;
    .registers 9
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "len"    # I
    .param p2, "off"    # I

    .line 97
    if-nez p1, :cond_3

    .line 98
    return-object p0

    .line 99
    :cond_3
    move v0, p1

    .line 100
    .local v0, "n":I
    :goto_4
    const/16 v1, 0x2f

    if-lez v0, :cond_13

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_13

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 101
    :cond_13
    if-nez v0, :cond_18

    .line 102
    const-string v1, "/"

    return-object v1

    .line 103
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 104
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-lez p2, :cond_2b

    .line 105
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_2b
    const/4 v3, 0x0

    .line 107
    .local v3, "prevChar":C
    move v4, p2

    .local v4, "i":I
    :goto_2d
    if-ge v4, v0, :cond_42

    .line 108
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 109
    .local v5, "c":C
    if-ne v5, v1, :cond_38

    if-ne v3, v1, :cond_38

    .line 110
    goto :goto_3f

    .line 111
    :cond_38
    invoke-static {p0, v5}, Lsun/nio/fs/UnixPath;->checkNotNul(Ljava/lang/String;C)V

    .line 112
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    move v3, v5

    .line 107
    .end local v5    # "c":C
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 115
    .end local v4    # "i":I
    :cond_42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static blacklist normalizeAndCheck(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 78
    .local v0, "n":I
    const/4 v1, 0x0

    .line 79
    .local v1, "prevChar":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    const/16 v3, 0x2f

    if-ge v2, v0, :cond_20

    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 81
    .local v4, "c":C
    if-ne v4, v3, :cond_19

    if-ne v1, v3, :cond_19

    .line 82
    add-int/lit8 v3, v2, -0x1

    invoke-static {p0, v0, v3}, Lsun/nio/fs/UnixPath;->normalize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 83
    :cond_19
    invoke-static {p0, v4}, Lsun/nio/fs/UnixPath;->checkNotNul(Ljava/lang/String;C)V

    .line 84
    move v1, v4

    .line 79
    .end local v4    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 86
    .end local v2    # "i":I
    :cond_20
    if-ne v1, v3, :cond_29

    .line 87
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, v0, v2}, Lsun/nio/fs/UnixPath;->normalize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 88
    :cond_29
    return-object p0
.end method

.method private static blacklist resolve([B[B)[B
    .registers 8
    .param p0, "base"    # [B
    .param p1, "child"    # [B

    .line 375
    array-length v0, p0

    .line 376
    .local v0, "baseLength":I
    array-length v1, p1

    .line 377
    .local v1, "childLength":I
    if-nez v1, :cond_5

    .line 378
    return-object p0

    .line 379
    :cond_5
    if-eqz v0, :cond_31

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_f

    goto :goto_31

    .line 382
    :cond_f
    const/4 v3, 0x1

    if-ne v0, v3, :cond_20

    aget-byte v5, p0, v2

    if-ne v5, v4, :cond_20

    .line 383
    add-int/lit8 v5, v1, 0x1

    new-array v5, v5, [B

    .line 384
    .local v5, "result":[B
    aput-byte v4, v5, v2

    .line 385
    invoke-static {p1, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_30

    .line 387
    .end local v5    # "result":[B
    :cond_20
    add-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v1

    new-array v5, v3, [B

    .line 388
    .restart local v5    # "result":[B
    invoke-static {p0, v2, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    array-length v3, p0

    aput-byte v4, v5, v3

    .line 390
    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    :goto_30
    return-object v5

    .line 380
    .end local v5    # "result":[B
    :cond_31
    :goto_31
    return-object p1
.end method

.method static blacklist toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;
    .registers 2
    .param p0, "obj"    # Ljava/nio/file/Path;

    .line 197
    if-eqz p0, :cond_10

    .line 199
    instance-of v0, p0, Lsun/nio/fs/UnixPath;

    if-eqz v0, :cond_a

    .line 201
    move-object v0, p0

    check-cast v0, Lsun/nio/fs/UnixPath;

    return-object v0

    .line 200
    :cond_a
    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v0

    .line 198
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method blacklist asByteArray()[B
    .registers 2

    .line 161
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    return-object v0
.end method

.method blacklist checkDelete()V
    .registers 3

    .line 805
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 806
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_d

    .line 807
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 808
    :cond_d
    return-void
.end method

.method blacklist checkRead()V
    .registers 3

    .line 793
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 794
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_d

    .line 795
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 796
    :cond_d
    return-void
.end method

.method blacklist checkWrite()V
    .registers 3

    .line 799
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 800
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_d

    .line 801
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 802
    :cond_d
    return-void
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixPath;->compareTo(Ljava/nio/file/Path;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/nio/file/Path;)I
    .registers 11
    .param p1, "other"    # Ljava/nio/file/Path;

    .line 717
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v0, v0

    .line 718
    .local v0, "len1":I
    move-object v1, p1

    check-cast v1, Lsun/nio/fs/UnixPath;

    iget-object v1, v1, Lsun/nio/fs/UnixPath;->path:[B

    array-length v1, v1

    .line 720
    .local v1, "len2":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 721
    .local v2, "n":I
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    .line 722
    .local v3, "v1":[B
    move-object v4, p1

    check-cast v4, Lsun/nio/fs/UnixPath;

    iget-object v4, v4, Lsun/nio/fs/UnixPath;->path:[B

    .line 724
    .local v4, "v2":[B
    const/4 v5, 0x0

    .line 725
    .local v5, "k":I
    :goto_15
    if-ge v5, v2, :cond_28

    .line 726
    aget-byte v6, v3, v5

    and-int/lit16 v6, v6, 0xff

    .line 727
    .local v6, "c1":I
    aget-byte v7, v4, v5

    and-int/lit16 v7, v7, 0xff

    .line 728
    .local v7, "c2":I
    if-eq v6, v7, :cond_24

    .line 729
    sub-int v8, v6, v7

    return v8

    .line 731
    :cond_24
    nop

    .end local v6    # "c1":I
    .end local v7    # "c2":I
    add-int/lit8 v5, v5, 0x1

    .line 732
    goto :goto_15

    .line 733
    :cond_28
    sub-int v6, v0, v1

    return v6
.end method

.method public whitelist test-api endsWith(Ljava/nio/file/Path;)Z
    .registers 14
    .param p1, "other"    # Ljava/nio/file/Path;

    .line 660
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lsun/nio/fs/UnixPath;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 661
    return v1

    .line 662
    :cond_a
    move-object v0, p1

    check-cast v0, Lsun/nio/fs/UnixPath;

    .line 664
    .local v0, "that":Lsun/nio/fs/UnixPath;
    iget-object v2, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v2, v2

    .line 665
    .local v2, "thisLen":I
    iget-object v3, v0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v3, v3

    .line 668
    .local v3, "thatLen":I
    if-le v3, v2, :cond_16

    .line 669
    return v1

    .line 672
    :cond_16
    if-lez v2, :cond_1b

    if-nez v3, :cond_1b

    .line 673
    return v1

    .line 676
    :cond_1b
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_28

    .line 677
    return v1

    .line 679
    :cond_28
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v4

    .line 680
    .local v4, "thisOffsetCount":I
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v5

    .line 683
    .local v5, "thatOffsetCount":I
    if-le v5, v4, :cond_33

    .line 684
    return v1

    .line 687
    :cond_33
    const/4 v6, 0x1

    if-ne v5, v4, :cond_4c

    .line 688
    if-nez v4, :cond_39

    .line 689
    return v6

    .line 690
    :cond_39
    move v7, v2

    .line 691
    .local v7, "expectedLen":I
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v8

    if-eqz v8, :cond_48

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v8

    if-nez v8, :cond_48

    .line 692
    add-int/lit8 v7, v7, -0x1

    .line 693
    :cond_48
    if-eq v3, v7, :cond_4b

    .line 694
    return v1

    .line 695
    .end local v7    # "expectedLen":I
    :cond_4b
    goto :goto_53

    .line 697
    :cond_4c
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 698
    return v1

    .line 703
    :cond_53
    :goto_53
    iget-object v7, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    sub-int v8, v4, v5

    aget v7, v7, v8

    .line 704
    .local v7, "thisPos":I
    iget-object v8, v0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v8, v8, v1

    .line 705
    .local v8, "thatPos":I
    sub-int v9, v3, v8

    sub-int v10, v2, v7

    if-eq v9, v10, :cond_64

    .line 706
    return v1

    .line 707
    :cond_64
    :goto_64
    if-ge v8, v3, :cond_78

    .line 708
    iget-object v9, p0, Lsun/nio/fs/UnixPath;->path:[B

    add-int/lit8 v10, v7, 0x1

    .end local v7    # "thisPos":I
    .local v10, "thisPos":I
    aget-byte v7, v9, v7

    iget-object v9, v0, Lsun/nio/fs/UnixPath;->path:[B

    add-int/lit8 v11, v8, 0x1

    .end local v8    # "thatPos":I
    .local v11, "thatPos":I
    aget-byte v8, v9, v8

    if-eq v7, v8, :cond_75

    .line 709
    return v1

    .line 708
    :cond_75
    move v7, v10

    move v8, v11

    goto :goto_64

    .line 712
    .end local v10    # "thisPos":I
    .end local v11    # "thatPos":I
    .restart local v7    # "thisPos":I
    .restart local v8    # "thatPos":I
    :cond_78
    return v6
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "ob"    # Ljava/lang/Object;

    .line 738
    const/4 v0, 0x0

    if-eqz p1, :cond_12

    instance-of v1, p1, Lsun/nio/fs/UnixPath;

    if-eqz v1, :cond_12

    .line 739
    move-object v1, p1

    check-cast v1, Ljava/nio/file/Path;

    invoke-virtual {p0, v1}, Lsun/nio/fs/UnixPath;->compareTo(Ljava/nio/file/Path;)I

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    .line 741
    :cond_12
    return v0
.end method

.method blacklist getByteArrayForSysCalls()[B
    .registers 4

    .line 168
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileSystem;->needToResolveAgainstDefaultDirectory()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 169
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileSystem;->defaultDirectory()[B

    move-result-object v0

    iget-object v1, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v0, v1}, Lsun/nio/fs/UnixPath;->resolve([B[B)[B

    move-result-object v0

    return-object v0

    .line 171
    :cond_19
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 172
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    return-object v0

    .line 175
    :cond_22
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x2e

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 176
    .local v0, "here":[B
    return-object v0
.end method

.method public bridge synthetic whitelist test-api getFileName()Ljava/nio/file/Path;
    .registers 2

    .line 43
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileName()Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFileName()Lsun/nio/fs/UnixPath;
    .registers 7

    .line 273
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->initOffsets()V

    .line 275
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v0, v0

    .line 278
    .local v0, "count":I
    if-nez v0, :cond_a

    .line 279
    const/4 v1, 0x0

    return-object v1

    .line 282
    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    iget-object v2, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v2, v2

    if-lez v2, :cond_1c

    iget-object v2, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v2, v2, v1

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1c

    .line 283
    return-object p0

    .line 285
    :cond_1c
    iget-object v2, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    .line 286
    .local v2, "lastOffset":I
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    .line 287
    .local v3, "len":I
    new-array v4, v3, [B

    .line 288
    .local v4, "result":[B
    iget-object v5, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v5, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    new-instance v1, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v1
.end method

.method public bridge synthetic whitelist test-api getFileSystem()Ljava/nio/file/FileSystem;
    .registers 2

    .line 43
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFileSystem()Lsun/nio/fs/UnixFileSystem;
    .registers 2

    .line 259
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->fs:Lsun/nio/fs/UnixFileSystem;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getName(I)Ljava/nio/file/Path;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixPath;->getName(I)Lsun/nio/fs/UnixPath;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getName(I)Lsun/nio/fs/UnixPath;
    .registers 7
    .param p1, "index"    # I

    .line 319
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->initOffsets()V

    .line 320
    if-ltz p1, :cond_3b

    .line 322
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v0, v0

    if-ge p1, v0, :cond_35

    .line 325
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v0, v0, p1

    .line 327
    .local v0, "begin":I
    iget-object v1, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1a

    .line 328
    iget-object v1, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    .local v1, "len":I
    goto :goto_23

    .line 330
    .end local v1    # "len":I
    :cond_1a
    iget-object v1, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 334
    .restart local v1    # "len":I
    :goto_23
    new-array v2, v1, [B

    .line 335
    .local v2, "result":[B
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    new-instance v3, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v3

    .line 323
    .end local v0    # "begin":I
    .end local v1    # "len":I
    .end local v2    # "result":[B
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 321
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getNameCount()I
    .registers 2

    .line 313
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->initOffsets()V

    .line 314
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic whitelist test-api getParent()Ljava/nio/file/Path;
    .registers 2

    .line 43
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getParent()Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getParent()Lsun/nio/fs/UnixPath;
    .registers 6

    .line 294
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->initOffsets()V

    .line 296
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v0, v0

    .line 297
    .local v0, "count":I
    if-nez v0, :cond_a

    .line 299
    const/4 v1, 0x0

    return-object v1

    .line 301
    :cond_a
    iget-object v1, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 302
    .local v1, "len":I
    if-gtz v1, :cond_19

    .line 304
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getRoot()Lsun/nio/fs/UnixPath;

    move-result-object v2

    return-object v2

    .line 306
    :cond_19
    new-array v2, v1, [B

    .line 307
    .local v2, "result":[B
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    new-instance v3, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v3
.end method

.method blacklist getPathForExceptionMessage()Ljava/lang/String;
    .registers 2

    .line 183
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getPathForPermissionCheck()Ljava/lang/String;
    .registers 2

    .line 188
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileSystem;->needToResolveAgainstDefaultDirectory()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 189
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getByteArrayForSysCalls()[B

    move-result-object v0

    invoke-static {v0}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :cond_13
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getRoot()Ljava/nio/file/Path;
    .registers 2

    .line 43
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getRoot()Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRoot()Lsun/nio/fs/UnixPath;
    .registers 3

    .line 264
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v0, v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_17

    .line 265
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileSystem;->rootDirectory()Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0

    .line 267
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 747
    iget v0, p0, Lsun/nio/fs/UnixPath;->hash:I

    .line 748
    .local v0, "h":I
    if-nez v0, :cond_19

    .line 749
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 750
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    add-int v0, v2, v3

    .line 749
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 752
    .end local v1    # "i":I
    :cond_17
    iput v0, p0, Lsun/nio/fs/UnixPath;->hash:I

    .line 754
    :cond_19
    return v0
.end method

.method public whitelist test-api isAbsolute()Z
    .registers 4

    .line 370
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_f

    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v0, v0, v1

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method blacklist isEmpty()Z
    .registers 2

    .line 249
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api normalize()Ljava/nio/file/Path;
    .registers 16

    .line 484
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v0

    .line 485
    .local v0, "count":I
    if-eqz v0, :cond_fc

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_fc

    .line 488
    :cond_e
    new-array v1, v0, [Z

    .line 489
    .local v1, "ignore":[Z
    new-array v2, v0, [I

    .line 490
    .local v2, "size":[I
    move v3, v0

    .line 491
    .local v3, "remaining":I
    const/4 v4, 0x0

    .line 492
    .local v4, "hasDotDot":Z
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v5

    .line 498
    .local v5, "isAbsolute":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_19
    const/16 v7, 0x2e

    const/4 v8, 0x1

    if-ge v6, v0, :cond_50

    .line 499
    iget-object v9, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v9, v9, v6

    .line 501
    .local v9, "begin":I
    iget-object v10, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v10, v10

    sub-int/2addr v10, v8

    if-ne v6, v10, :cond_2d

    .line 502
    iget-object v10, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v10, v10

    sub-int/2addr v10, v9

    .local v10, "len":I
    goto :goto_35

    .line 504
    .end local v10    # "len":I
    :cond_2d
    iget-object v10, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    add-int/lit8 v11, v6, 0x1

    aget v10, v10, v11

    sub-int/2addr v10, v9

    sub-int/2addr v10, v8

    .line 506
    .restart local v10    # "len":I
    :goto_35
    aput v10, v2, v6

    .line 508
    iget-object v11, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v11, v11, v9

    if-ne v11, v7, :cond_4d

    .line 509
    if-ne v10, v8, :cond_44

    .line 510
    aput-boolean v8, v1, v6

    .line 511
    add-int/lit8 v3, v3, -0x1

    goto :goto_4d

    .line 514
    :cond_44
    iget-object v8, p0, Lsun/nio/fs/UnixPath;->path:[B

    add-int/lit8 v11, v9, 0x1

    aget-byte v8, v8, v11

    if-ne v8, v7, :cond_4d

    .line 515
    const/4 v4, 0x1

    .line 498
    .end local v9    # "begin":I
    .end local v10    # "len":I
    :cond_4d
    :goto_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 521
    .end local v6    # "i":I
    :cond_50
    if-eqz v4, :cond_9d

    .line 524
    :cond_52
    move v6, v3

    .line 525
    .local v6, "prevRemaining":I
    const/4 v9, -0x1

    .line 526
    .local v9, "prevName":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_55
    if-ge v10, v0, :cond_9b

    .line 527
    aget-boolean v11, v1, v10

    if-eqz v11, :cond_5c

    .line 528
    goto :goto_98

    .line 531
    :cond_5c
    aget v11, v2, v10

    const/4 v12, 0x2

    if-eq v11, v12, :cond_63

    .line 532
    move v9, v10

    .line 533
    goto :goto_98

    .line 536
    :cond_63
    iget-object v11, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v11, v11, v10

    .line 537
    .local v11, "begin":I
    iget-object v12, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v12, v12, v11

    if-ne v12, v7, :cond_96

    iget-object v12, p0, Lsun/nio/fs/UnixPath;->path:[B

    add-int/lit8 v13, v11, 0x1

    aget-byte v12, v12, v13

    if-eq v12, v7, :cond_76

    goto :goto_96

    .line 543
    :cond_76
    if-ltz v9, :cond_80

    .line 546
    aput-boolean v8, v1, v9

    .line 547
    aput-boolean v8, v1, v10

    .line 548
    add-int/lit8 v3, v3, -0x2

    .line 549
    const/4 v9, -0x1

    goto :goto_98

    .line 552
    :cond_80
    if-eqz v5, :cond_98

    .line 553
    const/4 v12, 0x0

    .line 554
    .local v12, "hasPrevious":Z
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_84
    if-ge v13, v10, :cond_8f

    .line 555
    aget-boolean v14, v1, v13

    if-nez v14, :cond_8c

    .line 556
    const/4 v12, 0x1

    .line 557
    goto :goto_8f

    .line 554
    :cond_8c
    add-int/lit8 v13, v13, 0x1

    goto :goto_84

    .line 560
    .end local v13    # "j":I
    :cond_8f
    :goto_8f
    if-nez v12, :cond_98

    .line 562
    aput-boolean v8, v1, v10

    .line 563
    add-int/lit8 v3, v3, -0x1

    goto :goto_98

    .line 538
    .end local v12    # "hasPrevious":Z
    :cond_96
    :goto_96
    move v9, v10

    .line 539
    nop

    .line 526
    .end local v11    # "begin":I
    :cond_98
    :goto_98
    add-int/lit8 v10, v10, 0x1

    goto :goto_55

    .line 568
    .end local v9    # "prevName":I
    .end local v10    # "i":I
    :cond_9b
    if-gt v6, v3, :cond_52

    .line 572
    .end local v6    # "prevRemaining":I
    :cond_9d
    if-ne v3, v0, :cond_a0

    .line 573
    return-object p0

    .line 576
    :cond_a0
    if-nez v3, :cond_b2

    .line 577
    if-eqz v5, :cond_ad

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v6

    invoke-virtual {v6}, Lsun/nio/fs/UnixFileSystem;->rootDirectory()Lsun/nio/fs/UnixPath;

    move-result-object v6

    goto :goto_b1

    :cond_ad
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->emptyPath()Lsun/nio/fs/UnixPath;

    move-result-object v6

    :goto_b1
    return-object v6

    .line 581
    :cond_b2
    add-int/lit8 v6, v3, -0x1

    .line 582
    .local v6, "len":I
    if-eqz v5, :cond_b8

    .line 583
    add-int/lit8 v6, v6, 0x1

    .line 585
    :cond_b8
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_b9
    if-ge v7, v0, :cond_c5

    .line 586
    aget-boolean v8, v1, v7

    if-nez v8, :cond_c2

    .line 587
    aget v8, v2, v7

    add-int/2addr v6, v8

    .line 585
    :cond_c2
    add-int/lit8 v7, v7, 0x1

    goto :goto_b9

    .line 589
    .end local v7    # "i":I
    :cond_c5
    new-array v7, v6, [B

    .line 592
    .local v7, "result":[B
    const/4 v8, 0x0

    .line 593
    .local v8, "pos":I
    const/16 v9, 0x2f

    if-eqz v5, :cond_d1

    .line 594
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "pos":I
    .local v10, "pos":I
    aput-byte v9, v7, v8

    move v8, v10

    .line 595
    .end local v10    # "pos":I
    .restart local v8    # "pos":I
    :cond_d1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_d2
    if-ge v10, v0, :cond_f2

    .line 596
    aget-boolean v11, v1, v10

    if-nez v11, :cond_ef

    .line 597
    iget-object v11, p0, Lsun/nio/fs/UnixPath;->path:[B

    iget-object v12, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v12, v12, v10

    aget v13, v2, v10

    invoke-static {v11, v12, v7, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    aget v11, v2, v10

    add-int/2addr v8, v11

    .line 599
    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_ef

    .line 600
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "pos":I
    .local v11, "pos":I
    aput-byte v9, v7, v8

    move v8, v11

    .line 595
    .end local v11    # "pos":I
    .restart local v8    # "pos":I
    :cond_ef
    add-int/lit8 v10, v10, 0x1

    goto :goto_d2

    .line 604
    .end local v10    # "i":I
    :cond_f2
    new-instance v9, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v10

    invoke-direct {v9, v10, v7}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v9

    .line 486
    .end local v1    # "ignore":[Z
    .end local v2    # "size":[I
    .end local v3    # "remaining":I
    .end local v4    # "hasDotDot":Z
    .end local v5    # "isAbsolute":Z
    .end local v6    # "len":I
    .end local v7    # "result":[B
    .end local v8    # "pos":I
    :cond_fc
    :goto_fc
    return-object p0
.end method

.method blacklist openForAttributeAccess(Z)I
    .registers 8
    .param p1, "followLinks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 770
    sget v0, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    .line 771
    .local v0, "flags":I
    if-nez p1, :cond_14

    .line 772
    sget v1, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    if-eqz v1, :cond_c

    .line 774
    sget v1, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    or-int/2addr v0, v1

    goto :goto_14

    .line 773
    :cond_c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "NOFOLLOW_LINKS is not supported on this platform"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 777
    :cond_14
    :goto_14
    const/4 v1, 0x0

    :try_start_15
    invoke-static {p0, v0, v1}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I

    move-result v1
    :try_end_19
    .catch Lsun/nio/fs/UnixException; {:try_start_15 .. :try_end_19} :catch_1a

    return v1

    .line 778
    :catch_1a
    move-exception v1

    .line 780
    .local v1, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixFileSystem;->isSolaris()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->errno()I

    move-result v2

    sget v3, Lsun/nio/fs/UnixConstants;->EINVAL:I

    if-ne v2, v3, :cond_32

    .line 781
    sget v2, Lsun/nio/fs/UnixConstants;->ELOOP:I

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->setError(I)V

    .line 783
    :cond_32
    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->errno()I

    move-result v2

    sget v3, Lsun/nio/fs/UnixConstants;->ELOOP:I

    if-eq v2, v3, :cond_3f

    .line 787
    invoke-virtual {v1, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 788
    const/4 v2, -0x1

    return v2

    .line 784
    :cond_3f
    new-instance v2, Ljava/nio/file/FileSystemException;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 785
    invoke-virtual {v1}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or unable to access attributes of symbolic link"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public varargs whitelist test-api register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .registers 5
    .param p1, "watcher"    # Ljava/nio/file/WatchService;
    .param p3, "modifiers"    # [Ljava/nio/file/WatchEvent$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchService;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 892
    .local p2, "events":[Ljava/nio/file/WatchEvent$Kind;, "[Ljava/nio/file/WatchEvent$Kind<*>;"
    if-eqz p1, :cond_17

    .line 894
    instance-of v0, p1, Lsun/nio/fs/AbstractWatchService;

    if-eqz v0, :cond_11

    .line 896
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 897
    move-object v0, p1

    check-cast v0, Lsun/nio/fs/AbstractWatchService;

    invoke-virtual {v0, p0, p2, p3}, Lsun/nio/fs/AbstractWatchService;->register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object v0

    return-object v0

    .line 895
    :cond_11
    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v0

    .line 893
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixPath;->relativize(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object p1

    return-object p1
.end method

.method public blacklist relativize(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;
    .registers 18
    .param p1, "obj"    # Ljava/nio/file/Path;

    .line 410
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 411
    .local v1, "other":Lsun/nio/fs/UnixPath;
    invoke-virtual {v1, v0}, Lsun/nio/fs/UnixPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 412
    invoke-direct {v0}, Lsun/nio/fs/UnixPath;->emptyPath()Lsun/nio/fs/UnixPath;

    move-result-object v2

    return-object v2

    .line 415
    :cond_11
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v2

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v3

    if-ne v2, v3, :cond_b9

    .line 419
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 420
    return-object v1

    .line 422
    :cond_22
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v2

    .line 423
    .local v2, "bn":I
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v3

    .line 426
    .local v3, "cn":I
    if-le v2, v3, :cond_2e

    move v4, v3

    goto :goto_2f

    :cond_2e
    move v4, v2

    .line 427
    .local v4, "n":I
    :goto_2f
    const/4 v5, 0x0

    .line 428
    .local v5, "i":I
    :goto_30
    if-ge v5, v4, :cond_44

    .line 429
    invoke-virtual {v0, v5}, Lsun/nio/fs/UnixPath;->getName(I)Lsun/nio/fs/UnixPath;

    move-result-object v6

    invoke-virtual {v1, v5}, Lsun/nio/fs/UnixPath;->getName(I)Lsun/nio/fs/UnixPath;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/nio/fs/UnixPath;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    .line 430
    goto :goto_44

    .line 431
    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 434
    :cond_44
    :goto_44
    sub-int v6, v2, v5

    .line 435
    .local v6, "dotdots":I
    const/16 v7, 0x2f

    const/16 v8, 0x2e

    const/4 v9, 0x1

    if-ge v5, v3, :cond_95

    .line 437
    invoke-virtual {v1, v5, v3}, Lsun/nio/fs/UnixPath;->subpath(II)Lsun/nio/fs/UnixPath;

    move-result-object v10

    .line 438
    .local v10, "remainder":Lsun/nio/fs/UnixPath;
    if-nez v6, :cond_54

    .line 439
    return-object v10

    .line 442
    :cond_54
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v11

    .line 447
    .local v11, "isOtherEmpty":Z
    mul-int/lit8 v12, v6, 0x3

    iget-object v13, v10, Lsun/nio/fs/UnixPath;->path:[B

    array-length v13, v13

    add-int/2addr v12, v13

    .line 448
    .local v12, "len":I
    if-eqz v11, :cond_63

    .line 449
    nop

    .line 450
    add-int/lit8 v12, v12, -0x1

    .line 452
    :cond_63
    new-array v13, v12, [B

    .line 453
    .local v13, "result":[B
    const/4 v14, 0x0

    .line 454
    .local v14, "pos":I
    :goto_66
    if-lez v6, :cond_82

    .line 455
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "pos":I
    .local v15, "pos":I
    aput-byte v8, v13, v14

    .line 456
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "pos":I
    .restart local v14    # "pos":I
    aput-byte v8, v13, v15

    .line 457
    if-eqz v11, :cond_7a

    .line 458
    if-le v6, v9, :cond_7f

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "pos":I
    .restart local v15    # "pos":I
    aput-byte v7, v13, v14

    move v14, v15

    goto :goto_7f

    .line 460
    .end local v15    # "pos":I
    .restart local v14    # "pos":I
    :cond_7a
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "pos":I
    .restart local v15    # "pos":I
    aput-byte v7, v13, v14

    move v14, v15

    .line 462
    .end local v15    # "pos":I
    .restart local v14    # "pos":I
    :cond_7f
    :goto_7f
    add-int/lit8 v6, v6, -0x1

    goto :goto_66

    .line 464
    :cond_82
    iget-object v7, v10, Lsun/nio/fs/UnixPath;->path:[B

    iget-object v8, v10, Lsun/nio/fs/UnixPath;->path:[B

    array-length v8, v8

    const/4 v9, 0x0

    invoke-static {v7, v9, v13, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    new-instance v7, Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v8

    invoke-direct {v7, v8, v13}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v7

    .line 468
    .end local v10    # "remainder":Lsun/nio/fs/UnixPath;
    .end local v11    # "isOtherEmpty":Z
    .end local v12    # "len":I
    .end local v13    # "result":[B
    .end local v14    # "pos":I
    :cond_95
    mul-int/lit8 v10, v6, 0x3

    sub-int/2addr v10, v9

    new-array v10, v10, [B

    .line 469
    .local v10, "result":[B
    const/4 v11, 0x0

    .line 470
    .local v11, "pos":I
    :goto_9b
    if-lez v6, :cond_af

    .line 471
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "pos":I
    .local v12, "pos":I
    aput-byte v8, v10, v11

    .line 472
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "pos":I
    .restart local v11    # "pos":I
    aput-byte v8, v10, v12

    .line 474
    if-le v6, v9, :cond_ac

    .line 475
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "pos":I
    .restart local v12    # "pos":I
    aput-byte v7, v10, v11

    move v11, v12

    .line 476
    .end local v12    # "pos":I
    .restart local v11    # "pos":I
    :cond_ac
    add-int/lit8 v6, v6, -0x1

    goto :goto_9b

    .line 478
    :cond_af
    new-instance v7, Lsun/nio/fs/UnixPath;

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v8

    invoke-direct {v7, v8, v10}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v7

    .line 416
    .end local v2    # "bn":I
    .end local v3    # "cn":I
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v6    # "dotdots":I
    .end local v10    # "result":[B
    .end local v11    # "pos":I
    :cond_b9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'other\' is different type of Path"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic whitelist test-api resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object p1

    return-object p1
.end method

.method public blacklist resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;
    .registers 6
    .param p1, "obj"    # Ljava/nio/file/Path;

    .line 397
    invoke-static {p1}, Lsun/nio/fs/UnixPath;->toUnixPath(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    iget-object v0, v0, Lsun/nio/fs/UnixPath;->path:[B

    .line 398
    .local v0, "other":[B
    array-length v1, v0

    if-lez v1, :cond_14

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_14

    .line 399
    move-object v1, p1

    check-cast v1, Lsun/nio/fs/UnixPath;

    return-object v1

    .line 400
    :cond_14
    iget-object v1, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v1, v0}, Lsun/nio/fs/UnixPath;->resolve([B[B)[B

    move-result-object v1

    .line 401
    .local v1, "result":[B
    new-instance v2, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v2
.end method

.method blacklist resolve([B)Lsun/nio/fs/UnixPath;
    .registers 4
    .param p1, "other"    # [B

    .line 405
    new-instance v0, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api startsWith(Ljava/nio/file/Path;)Z
    .registers 11
    .param p1, "other"    # Ljava/nio/file/Path;

    .line 609
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lsun/nio/fs/UnixPath;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 610
    return v1

    .line 611
    :cond_a
    move-object v0, p1

    check-cast v0, Lsun/nio/fs/UnixPath;

    .line 614
    .local v0, "that":Lsun/nio/fs/UnixPath;
    iget-object v2, v0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v2, v2

    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v3, v3

    if-le v2, v3, :cond_16

    .line 615
    return v1

    .line 617
    :cond_16
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v2

    .line 618
    .local v2, "thisOffsetCount":I
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v3

    .line 621
    .local v3, "thatOffsetCount":I
    const/4 v4, 0x1

    if-nez v3, :cond_2d

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 622
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    return v1

    .line 626
    :cond_2d
    if-le v3, v2, :cond_30

    .line 627
    return v1

    .line 630
    :cond_30
    if-ne v3, v2, :cond_3b

    iget-object v5, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v5, v5

    iget-object v6, v0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v6, v6

    if-eq v5, v6, :cond_3b

    .line 632
    return v1

    .line 636
    :cond_3b
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3c
    if-ge v5, v3, :cond_58

    .line 637
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 638
    .local v6, "o1":Ljava/lang/Integer;
    iget-object v7, v0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v7, v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 639
    .local v7, "o2":Ljava/lang/Integer;
    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_55

    .line 640
    return v1

    .line 636
    .end local v6    # "o1":Ljava/lang/Integer;
    .end local v7    # "o2":Ljava/lang/Integer;
    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 644
    .end local v5    # "i":I
    :cond_58
    const/4 v5, 0x0

    .line 645
    .restart local v5    # "i":I
    :goto_59
    iget-object v6, v0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v6, v6

    if-ge v5, v6, :cond_6c

    .line 646
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v6, v6, v5

    iget-object v7, v0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v7, v7, v5

    if-eq v6, v7, :cond_69

    .line 647
    return v1

    .line 648
    :cond_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 652
    :cond_6c
    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v6, v6

    if-ge v5, v6, :cond_7a

    iget-object v6, p0, Lsun/nio/fs/UnixPath;->path:[B

    aget-byte v6, v6, v5

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_7a

    .line 653
    return v1

    .line 655
    :cond_7a
    return v4
.end method

.method public bridge synthetic whitelist test-api subpath(II)Ljava/nio/file/Path;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lsun/nio/fs/UnixPath;->subpath(II)Lsun/nio/fs/UnixPath;

    move-result-object p1

    return-object p1
.end method

.method public blacklist subpath(II)Lsun/nio/fs/UnixPath;
    .registers 8
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 341
    invoke-direct {p0}, Lsun/nio/fs/UnixPath;->initOffsets()V

    .line 343
    if-ltz p1, :cond_4a

    .line 345
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v0, v0

    if-ge p1, v0, :cond_44

    .line 347
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v0, v0

    if-gt p2, v0, :cond_3e

    .line 349
    if-ge p1, p2, :cond_38

    .line 354
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v0, v0, p1

    .line 356
    .local v0, "begin":I
    iget-object v1, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    array-length v1, v1

    if-ne p2, v1, :cond_1f

    .line 357
    iget-object v1, p0, Lsun/nio/fs/UnixPath;->path:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    .local v1, "len":I
    goto :goto_26

    .line 359
    .end local v1    # "len":I
    :cond_1f
    iget-object v1, p0, Lsun/nio/fs/UnixPath;->offsets:[I

    aget v1, v1, p2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 363
    .restart local v1    # "len":I
    :goto_26
    new-array v2, v1, [B

    .line 364
    .local v2, "result":[B
    iget-object v3, p0, Lsun/nio/fs/UnixPath;->path:[B

    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    new-instance v3, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    return-object v3

    .line 350
    .end local v0    # "begin":I
    .end local v1    # "len":I
    .end local v2    # "result":[B
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 348
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 346
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 344
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api toAbsolutePath()Ljava/nio/file/Path;
    .registers 2

    .line 43
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->toAbsolutePath()Lsun/nio/fs/UnixPath;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toAbsolutePath()Lsun/nio/fs/UnixPath;
    .registers 6

    .line 812
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 813
    return-object p0

    .line 817
    :cond_7
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 818
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_12

    .line 819
    const-string v1, "user.dir"

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPropertyAccess(Ljava/lang/String;)V

    .line 821
    :cond_12
    new-instance v1, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v2

    .line 822
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixFileSystem;->defaultDirectory()[B

    move-result-object v3

    iget-object v4, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v3, v4}, Lsun/nio/fs/UnixPath;->resolve([B[B)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    .line 821
    return-object v1
.end method

.method public varargs whitelist test-api toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .registers 11
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 827
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 829
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->toAbsolutePath()Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 832
    .local v0, "absolute":Lsun/nio/fs/UnixPath;
    invoke-static {p1}, Lsun/nio/fs/Util;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 834
    :try_start_d
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->realpath(Lsun/nio/fs/UnixPath;)[B

    move-result-object v1

    .line 835
    .local v1, "rp":[B
    new-instance v2, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V
    :try_end_1a
    .catch Lsun/nio/fs/UnixException; {:try_start_d .. :try_end_1a} :catch_1b

    return-object v2

    .line 836
    .end local v1    # "rp":[B
    :catch_1b
    move-exception v1

    .line 837
    .local v1, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v1, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 843
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :cond_1f
    iget-object v1, p0, Lsun/nio/fs/UnixPath;->fs:Lsun/nio/fs/UnixFileSystem;

    invoke-virtual {v1}, Lsun/nio/fs/UnixFileSystem;->rootDirectory()Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 844
    .local v1, "result":Lsun/nio/fs/UnixPath;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->getNameCount()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_81

    .line 845
    invoke-virtual {v0, v2}, Lsun/nio/fs/UnixPath;->getName(I)Lsun/nio/fs/UnixPath;

    move-result-object v3

    .line 848
    .local v3, "element":Lsun/nio/fs/UnixPath;
    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v5

    array-length v5, v5

    const/16 v6, 0x2e

    const/4 v7, 0x1

    if-ne v5, v7, :cond_44

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v5

    aget-byte v5, v5, v4

    if-ne v5, v6, :cond_44

    .line 849
    goto :goto_7e

    .line 852
    :cond_44
    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v5

    array-length v5, v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_7a

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v5

    aget-byte v5, v5, v4

    if-ne v5, v6, :cond_7a

    .line 853
    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v5

    aget-byte v5, v5, v7

    if-ne v5, v6, :cond_7a

    .line 855
    const/4 v5, 0x0

    .line 857
    .local v5, "attrs":Lsun/nio/fs/UnixFileAttributes;
    :try_start_5d
    invoke-static {v1, v4}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v4
    :try_end_61
    .catch Lsun/nio/fs/UnixException; {:try_start_5d .. :try_end_61} :catch_63

    move-object v5, v4

    .line 860
    goto :goto_67

    .line 858
    :catch_63
    move-exception v4

    .line 859
    .local v4, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v4, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 861
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :goto_67
    invoke-virtual {v5}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v4

    if-nez v4, :cond_7a

    .line 862
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->getParent()Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 863
    if-nez v1, :cond_7e

    .line 864
    iget-object v4, p0, Lsun/nio/fs/UnixPath;->fs:Lsun/nio/fs/UnixFileSystem;

    invoke-virtual {v4}, Lsun/nio/fs/UnixFileSystem;->rootDirectory()Lsun/nio/fs/UnixPath;

    move-result-object v1

    goto :goto_7e

    .line 869
    .end local v5    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :cond_7a
    invoke-virtual {v1, v3}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 844
    .end local v3    # "element":Lsun/nio/fs/UnixPath;
    :cond_7e
    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 874
    .end local v2    # "i":I
    :cond_81
    :try_start_81
    invoke-static {v1, v4}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_84
    .catch Lsun/nio/fs/UnixException; {:try_start_81 .. :try_end_84} :catch_85

    .line 877
    goto :goto_89

    .line 875
    :catch_85
    move-exception v2

    .line 876
    .local v2, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v2, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 878
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    :goto_89
    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 760
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->stringValue:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 761
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->fs:Lsun/nio/fs/UnixFileSystem;

    iget-object v1, p0, Lsun/nio/fs/UnixPath;->path:[B

    invoke-static {v1}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixFileSystem;->normalizeJavaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixPath;->stringValue:Ljava/lang/String;

    .line 763
    :cond_12
    iget-object v0, p0, Lsun/nio/fs/UnixPath;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toUri()Ljava/net/URI;
    .registers 2

    .line 883
    invoke-static {p0}, Lsun/nio/fs/UnixUriUtils;->toUri(Lsun/nio/fs/UnixPath;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
