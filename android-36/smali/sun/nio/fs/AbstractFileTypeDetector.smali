.class public abstract Lsun/nio/fs/AbstractFileTypeDetector;
.super Ljava/nio/file/spi/FileTypeDetector;
.source "AbstractFileTypeDetector.java"


# static fields
.field private static final blacklist TSPECIALS:Ljava/lang/String; = "()<>@,;:/[]?=\\\""


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/nio/file/spi/FileTypeDetector;-><init>()V

    .line 42
    return-void
.end method

.method private static blacklist isTokenChar(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 95
    const/16 v0, 0x20

    if-le p0, v0, :cond_12

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_12

    const-string v0, "()<>@,;:/[]?=\\\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static blacklist isValidToken(Ljava/lang/String;)Z
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 103
    .local v0, "len":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 104
    return v1

    .line 105
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_19

    .line 106
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lsun/nio/fs/AbstractFileTypeDetector;->isTokenChar(C)Z

    move-result v3

    if-nez v3, :cond_16

    .line 107
    return v1

    .line 105
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 109
    .end local v2    # "i":I
    :cond_19
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist parse(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "s"    # Ljava/lang/String;

    .line 67
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 68
    .local v1, "slash":I
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 69
    .local v2, "semicolon":I
    const/4 v3, 0x0

    if-gez v1, :cond_10

    .line 70
    return-object v3

    .line 71
    :cond_10
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "type":Ljava/lang/String;
    invoke-static {v4}, Lsun/nio/fs/AbstractFileTypeDetector;->isValidToken(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 73
    return-object v3

    .line 74
    :cond_26
    if-gez v2, :cond_2f

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_35

    .line 75
    :cond_2f
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_35
    nop

    .line 76
    .local v5, "subtype":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-static {v5}, Lsun/nio/fs/AbstractFileTypeDetector;->isValidToken(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 78
    return-object v3

    .line 79
    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 80
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract blacklist implProbeContentType(Ljava/nio/file/Path;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 4
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    if-eqz p1, :cond_f

    .line 52
    invoke-virtual {p0, p1}, Lsun/nio/fs/AbstractFileTypeDetector;->implProbeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-static {v0}, Lsun/nio/fs/AbstractFileTypeDetector;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    .line 51
    .end local v0    # "result":Ljava/lang/String;
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'file\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
