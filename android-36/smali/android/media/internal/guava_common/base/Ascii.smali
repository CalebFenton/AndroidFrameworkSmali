.class public final Landroid/media/internal/guava_common/base/Ascii;
.super Ljava/lang/Object;
.source "Ascii.java"


# direct methods
.method public static blacklist isUpperCase(C)Z
    .registers 2

    .line 0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 409
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2f

    .line 411
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/media/internal/guava_common/base/Ascii;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 412
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_15
    if-ge v1, v0, :cond_27

    .line 414
    aget-char v2, p0, v1

    .line 415
    invoke-static {v2}, Landroid/media/internal/guava_common/base/Ascii;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_24

    xor-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    .line 416
    aput-char v2, p0, v1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 419
    :cond_27
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2f
    return-object p0
.end method
