.class public Landroid/graphics/PorterDuffXfermode;
.super Landroid/graphics/Xfermode;
.source "PorterDuffXfermode.java"


# static fields
.field static final blacklist DEFAULT:I


# instance fields
.field blacklist porterDuffMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iget v0, v0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    sput v0, Landroid/graphics/PorterDuffXfermode;->DEFAULT:I

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    .line 34
    sget v0, Landroid/graphics/PorterDuffXfermode;->DEFAULT:I

    iput v0, p0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    .line 35
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 36
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    .line 34
    sget v0, Landroid/graphics/PorterDuffXfermode;->DEFAULT:I

    iput v0, p0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    .line 37
    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    iput v0, p0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    .line 38
    return-void
.end method
