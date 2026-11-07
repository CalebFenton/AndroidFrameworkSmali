.class public Landroid/content/integrity/IntegrityUtils;
.super Ljava/lang/Object;
.source "IntegrityUtils.java"


# static fields
.field private static final blacklist HEX_CHARS:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/content/integrity/IntegrityUtils;->HEX_CHARS:[C

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist decToHex(I)C
    .registers 4
    .param p0, "dec"    # I

    .line 77
    if-ltz p0, :cond_c

    sget-object v0, Landroid/content/integrity/IntegrityUtils;->HEX_CHARS:[C

    array-length v0, v0

    if-ge p0, v0, :cond_c

    .line 78
    sget-object v0, Landroid/content/integrity/IntegrityUtils;->HEX_CHARS:[C

    aget-char v0, v0, p0

    return v0

    .line 81
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dec value to be converted to hex digit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getBytesFromHexDigest(Ljava/lang/String;)[B
    .registers 8
    .param p0, "hexDigest"    # Ljava/lang/String;

    .line 37
    nop

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    .line 37
    const-string v3, "Invalid hex encoding %s: must have even length"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 42
    .local v0, "rawBytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    array-length v3, v0

    if-ge v2, v3, :cond_40

    .line 43
    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 44
    .local v3, "upperNibble":I
    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 45
    .local v4, "lowerNibble":I
    invoke-static {v3}, Landroid/content/integrity/IntegrityUtils;->hexToDec(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    invoke-static {v4}, Landroid/content/integrity/IntegrityUtils;->hexToDec(I)I

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 42
    .end local v3    # "upperNibble":I
    .end local v4    # "lowerNibble":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 47
    .end local v2    # "i":I
    :cond_40
    return-object v0
.end method

.method public static blacklist getHexDigest([B)Ljava/lang/String;
    .registers 7
    .param p0, "rawBytes"    # [B

    .line 52
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 54
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_28

    .line 55
    aget-byte v2, p0, v1

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 56
    .local v2, "upperNibble":I
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    .line 57
    .local v3, "lowerNibble":I
    mul-int/lit8 v4, v1, 0x2

    invoke-static {v2}, Landroid/content/integrity/IntegrityUtils;->decToHex(I)C

    move-result v5

    aput-char v5, v0, v4

    .line 58
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3}, Landroid/content/integrity/IntegrityUtils;->decToHex(I)C

    move-result v5

    aput-char v5, v0, v4

    .line 54
    .end local v2    # "upperNibble":I
    .end local v3    # "lowerNibble":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 60
    .end local v1    # "i":I
    :cond_28
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private static blacklist hexToDec(I)I
    .registers 4
    .param p0, "hexChar"    # I

    .line 64
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 65
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 67
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 68
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 70
    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    .line 71
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 73
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
