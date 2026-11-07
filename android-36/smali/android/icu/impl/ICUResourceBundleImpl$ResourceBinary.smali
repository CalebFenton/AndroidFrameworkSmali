.class final Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;
.super Landroid/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceBinary"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .registers 4
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundleImpl;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resource"    # I

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 79
    return-void
.end method


# virtual methods
.method public blacklist getBinary()Ljava/nio/ByteBuffer;
    .registers 3

    .line 71
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;->resource:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getBinary(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBinary([B)[B
    .registers 4
    .param p1, "ba"    # [B

    .line 75
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceBinary;->resource:I

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getBinary(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 67
    const/4 v0, 0x1

    return v0
.end method
