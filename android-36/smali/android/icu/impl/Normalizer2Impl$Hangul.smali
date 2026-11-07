.class public final Landroid/icu/impl/Normalizer2Impl$Hangul;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hangul"
.end annotation


# static fields
.field public static final blacklist HANGUL_BASE:I = 0xac00

.field public static final blacklist HANGUL_COUNT:I = 0x2ba4

.field public static final blacklist HANGUL_END:I = 0xd7a3

.field public static final blacklist HANGUL_LIMIT:I = 0xd7a4

.field public static final blacklist JAMO_L_BASE:I = 0x1100

.field public static final blacklist JAMO_L_COUNT:I = 0x13

.field public static final blacklist JAMO_L_END:I = 0x1112

.field public static final blacklist JAMO_L_LIMIT:I = 0x1113

.field public static final blacklist JAMO_T_BASE:I = 0x11a7

.field public static final blacklist JAMO_T_COUNT:I = 0x1c

.field public static final blacklist JAMO_T_END:I = 0x11c2

.field public static final blacklist JAMO_VT_COUNT:I = 0x24c

.field public static final blacklist JAMO_V_BASE:I = 0x1161

.field public static final blacklist JAMO_V_COUNT:I = 0x15

.field public static final blacklist JAMO_V_END:I = 0x1175

.field public static final blacklist JAMO_V_LIMIT:I = 0x1176


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist decompose(ILjava/lang/Appendable;)I
    .registers 4
    .param p0, "c"    # I
    .param p1, "buffer"    # Ljava/lang/Appendable;

    .line 88
    const v0, 0xac00

    sub-int/2addr p0, v0

    .line 89
    :try_start_4
    rem-int/lit8 v0, p0, 0x1c

    .line 90
    .local v0, "c2":I
    div-int/lit8 v1, p0, 0x1c

    move p0, v1

    .line 91
    div-int/lit8 v1, p0, 0x15

    add-int/lit16 v1, v1, 0x1100

    int-to-char v1, v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 92
    rem-int/lit8 v1, p0, 0x15

    add-int/lit16 v1, v1, 0x1161

    int-to-char v1, v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 93
    if-nez v0, :cond_1d

    .line 94
    const/4 v1, 0x2

    return v1

    .line 96
    :cond_1d
    add-int/lit16 v1, v0, 0x11a7

    int-to-char v1, v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_23} :catch_25

    .line 97
    const/4 v1, 0x3

    return v1

    .line 99
    .end local v0    # "c2":I
    :catch_25
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist getRawDecomposition(ILjava/lang/Appendable;)V
    .registers 5
    .param p0, "c"    # I
    .param p1, "buffer"    # Ljava/lang/Appendable;

    .line 111
    move v0, p0

    .line 112
    .local v0, "orig":I
    const v1, 0xac00

    sub-int/2addr p0, v1

    .line 113
    :try_start_5
    rem-int/lit8 v1, p0, 0x1c

    .line 114
    .local v1, "c2":I
    if-nez v1, :cond_1d

    .line 115
    div-int/lit8 v2, p0, 0x1c

    move p0, v2

    .line 116
    div-int/lit8 v2, p0, 0x15

    add-int/lit16 v2, v2, 0x1100

    int-to-char v2, v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 117
    rem-int/lit8 v2, p0, 0x15

    add-int/lit16 v2, v2, 0x1161

    int-to-char v2, v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_29

    .line 119
    :cond_1d
    sub-int v2, v0, v1

    int-to-char v2, v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 120
    add-int/lit16 v2, v1, 0x11a7

    int-to-char v2, v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_29} :catch_2b

    .line 125
    .end local v0    # "orig":I
    .end local v1    # "c2":I
    :goto_29
    nop

    .line 126
    return-void

    .line 122
    :catch_2b
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist isHangul(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 61
    const v0, 0xac00

    if-gt v0, p0, :cond_c

    const v0, 0xd7a4

    if-ge p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static blacklist isHangulLV(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 64
    const v0, 0xac00

    sub-int/2addr p0, v0

    .line 65
    if-ltz p0, :cond_10

    const/16 v0, 0x2ba4

    if-ge p0, v0, :cond_10

    rem-int/lit8 v0, p0, 0x1c

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static blacklist isJamo(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 78
    const/16 v0, 0x1100

    if-gt v0, p0, :cond_1a

    const/16 v0, 0x11c2

    if-gt p0, v0, :cond_1a

    const/16 v0, 0x1112

    if-le p0, v0, :cond_18

    const/16 v0, 0x1161

    if-gt v0, p0, :cond_14

    const/16 v0, 0x1175

    if-le p0, v0, :cond_18

    :cond_14
    const/16 v0, 0x11a7

    if-ge v0, p0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static blacklist isJamoL(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 68
    const/16 v0, 0x1100

    if-gt v0, p0, :cond_a

    const/16 v0, 0x1113

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist isJamoT(I)Z
    .registers 3
    .param p0, "c"    # I

    .line 74
    add-int/lit16 v0, p0, -0x11a7

    .line 75
    .local v0, "t":I
    if-lez v0, :cond_a

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public static blacklist isJamoV(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 71
    const/16 v0, 0x1161

    if-gt v0, p0, :cond_a

    const/16 v0, 0x1176

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
