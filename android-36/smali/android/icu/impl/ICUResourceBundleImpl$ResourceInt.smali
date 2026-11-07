.class final Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;
.super Landroid/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceInt"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .registers 4
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundleImpl;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resource"    # I

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 96
    return-void
.end method


# virtual methods
.method public blacklist getInt()I
    .registers 2

    .line 88
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;->resource:I

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_INT(I)I

    move-result v0

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 84
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getUInt()I
    .registers 2

    .line 92
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;->resource:I

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_UINT(I)I

    move-result v0

    return v0
.end method
