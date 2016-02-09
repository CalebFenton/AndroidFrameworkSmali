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
.field public static final HANGUL_BASE:I = 0xac00

.field public static final HANGUL_COUNT:I = 0x2ba4

.field public static final HANGUL_END:I = 0xd7a3

.field public static final HANGUL_LIMIT:I = 0xd7a4

.field public static final JAMO_L_BASE:I = 0x1100

.field public static final JAMO_L_COUNT:I = 0x13

.field public static final JAMO_L_END:I = 0x1112

.field public static final JAMO_L_LIMIT:I = 0x1113

.field public static final JAMO_T_BASE:I = 0x11a7

.field public static final JAMO_T_COUNT:I = 0x1c

.field public static final JAMO_T_END:I = 0x11c2

.field public static final JAMO_VT_COUNT:I = 0x24c

.field public static final JAMO_V_BASE:I = 0x1161

.field public static final JAMO_V_COUNT:I = 0x15

.field public static final JAMO_V_END:I = 0x1175

.field public static final JAMO_V_LIMIT:I = 0x1176


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decompose(ILjava/lang/Appendable;)I
    .locals 3
    .param p0, "c"    # I
    .param p1, "buffer"    # Ljava/lang/Appendable;

    #@0
    .prologue
    .line 65
    const v2, 0xac00

    #@3
    sub-int/2addr p0, v2

    #@4
    .line 66
    :try_start_0
    rem-int/lit8 v0, p0, 0x1c

    #@6
    .line 67
    .local v0, "c2":I
    div-int/lit8 p0, p0, 0x1c

    #@8
    .line 68
    div-int/lit8 v2, p0, 0x15

    #@a
    add-int/lit16 v2, v2, 0x1100

    #@c
    int-to-char v2, v2

    #@d
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@10
    .line 69
    rem-int/lit8 v2, p0, 0x15

    #@12
    add-int/lit16 v2, v2, 0x1161

    #@14
    int-to-char v2, v2

    #@15
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@18
    .line 70
    if-nez v0, :cond_0

    #@1a
    .line 71
    const/4 v2, 0x2

    #@1b
    return v2

    #@1c
    .line 73
    :cond_0
    add-int/lit16 v2, v0, 0x11a7

    #@1e
    int-to-char v2, v2

    #@1f
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 74
    const/4 v2, 0x3

    #@23
    return v2

    #@24
    .line 76
    .end local v0    # "c2":I
    :catch_0
    move-exception v1

    #@25
    .line 78
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/icu/util/ICUUncheckedIOException;

    #@27
    invoke-direct {v2, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@2a
    throw v2
.end method

.method public static getRawDecomposition(ILjava/lang/Appendable;)V
    .locals 4
    .param p0, "c"    # I
    .param p1, "buffer"    # Ljava/lang/Appendable;

    #@0
    .prologue
    .line 88
    move v2, p0

    #@1
    .line 89
    .local v2, "orig":I
    const v3, 0xac00

    #@4
    sub-int/2addr p0, v3

    #@5
    .line 90
    :try_start_0
    rem-int/lit8 v0, p0, 0x1c

    #@7
    .line 91
    .local v0, "c2":I
    if-nez v0, :cond_0

    #@9
    .line 92
    div-int/lit8 p0, p0, 0x1c

    #@b
    .line 93
    div-int/lit8 v3, p0, 0x15

    #@d
    add-int/lit16 v3, v3, 0x1100

    #@f
    int-to-char v3, v3

    #@10
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@13
    .line 94
    rem-int/lit8 v3, p0, 0x15

    #@15
    add-int/lit16 v3, v3, 0x1161

    #@17
    int-to-char v3, v3

    #@18
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@1b
    .line 86
    :goto_0
    return-void

    #@1c
    .line 96
    :cond_0
    sub-int v3, v2, v0

    #@1e
    int-to-char v3, v3

    #@1f
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    #@22
    .line 97
    add-int/lit16 v3, v0, 0x11a7

    #@24
    int-to-char v3, v3

    #@25
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    goto :goto_0

    #@29
    .line 99
    .end local v0    # "c2":I
    :catch_0
    move-exception v1

    #@2a
    .line 101
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Landroid/icu/util/ICUUncheckedIOException;

    #@2c
    invoke-direct {v3, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@2f
    throw v3
.end method

.method public static isHangul(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 46
    const v1, 0xac00

    #@4
    if-gt v1, p0, :cond_0

    #@6
    const v1, 0xd7a4

    #@9
    if-ge p0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static isHangulWithoutJamoT(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 49
    const v1, 0xac00

    #@4
    sub-int v1, p0, v1

    #@6
    int-to-char p0, v1

    #@7
    .line 50
    const/16 v1, 0x2ba4

    #@9
    if-ge p0, v1, :cond_0

    #@b
    rem-int/lit8 v1, p0, 0x1c

    #@d
    if-nez v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method public static isJamoL(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 53
    const/16 v1, 0x1100

    #@3
    if-gt v1, p0, :cond_0

    #@5
    const/16 v1, 0x1113

    #@7
    if-ge p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public static isJamoV(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 56
    const/16 v1, 0x1161

    #@3
    if-gt v1, p0, :cond_0

    #@5
    const/16 v1, 0x1176

    #@7
    if-ge p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method
