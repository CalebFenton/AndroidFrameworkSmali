.class public final Landroid/graphics/fonts/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontFamily$Builder;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FontFamily"


# instance fields
.field private final blacklist mNativePtr:J


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 3
    .param p1, "ptr"    # J

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-wide p1, p0, Landroid/graphics/fonts/FontFamily;->mNativePtr:J

    .line 326
    return-void
.end method

.method private static native blacklist nGetFont(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetFontSize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLangTags(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetVariant(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public whitelist getFont(I)Landroid/graphics/fonts/Font;
    .registers 5
    .param p1, "index"    # I

    .line 352
    if-ltz p1, :cond_14

    invoke-virtual {p0}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result v0

    if-le v0, p1, :cond_14

    .line 355
    new-instance v0, Landroid/graphics/fonts/Font;

    iget-wide v1, p0, Landroid/graphics/fonts/FontFamily;->mNativePtr:J

    invoke-static {v1, v2, p1}, Landroid/graphics/fonts/FontFamily;->nGetFont(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/fonts/Font;-><init>(J)V

    return-object v0

    .line 353
    :cond_14
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public blacklist getLangTags()Ljava/lang/String;
    .registers 3

    .line 334
    iget-wide v0, p0, Landroid/graphics/fonts/FontFamily;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/fonts/FontFamily;->nGetLangTags(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNativePtr()J
    .registers 3

    .line 369
    iget-wide v0, p0, Landroid/graphics/fonts/FontFamily;->mNativePtr:J

    return-wide v0
.end method

.method public whitelist getSize()I
    .registers 3

    .line 364
    iget-wide v0, p0, Landroid/graphics/fonts/FontFamily;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/fonts/FontFamily;->nGetFontSize(J)I

    move-result v0

    return v0
.end method

.method public blacklist getVariant()I
    .registers 3

    .line 342
    iget-wide v0, p0, Landroid/graphics/fonts/FontFamily;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/fonts/FontFamily;->nGetVariant(J)I

    move-result v0

    return v0
.end method
