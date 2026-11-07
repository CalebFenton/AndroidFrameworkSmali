.class final Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;
.super Landroid/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceString"
.end annotation


# instance fields
.field private blacklist value:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .registers 7
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundleImpl;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resource"    # I

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 113
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, p3}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_19

    .line 116
    invoke-static {}, Landroid/icu/impl/CacheValue;->futureInstancesWillBeStrong()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 117
    :cond_19
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    .line 119
    :cond_1b
    return-void
.end method


# virtual methods
.method public blacklist getString()Ljava/lang/String;
    .registers 3

    .line 106
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 107
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    return-object v0

    .line 109
    :cond_7
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->resource:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method
