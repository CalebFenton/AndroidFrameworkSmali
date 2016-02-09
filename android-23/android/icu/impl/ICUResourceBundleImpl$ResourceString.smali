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
.field private resource:I

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 3
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundleImpl;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resource"    # I

    #@0
    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;)V

    #@3
    .line 100
    iput p3, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->resource:I

    #@5
    .line 101
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@7
    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@9
    invoke-virtual {v1, p3}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 103
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    const/16 v2, 0xc

    #@13
    if-ge v1, v2, :cond_0

    #@15
    .line 104
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    #@17
    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 94
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 96
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@9
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@b
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceString;->resource:I

    #@d
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    return v0
.end method
