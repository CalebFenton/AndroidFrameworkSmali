.class final Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;
.super Landroid/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceIntVector"
.end annotation


# instance fields
.field private resource:I


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0
    .param p1, "container"    # Landroid/icu/impl/ICUResourceBundleImpl;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resource"    # I

    #@0
    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;)V

    #@3
    .line 118
    iput p3, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->resource:I

    #@5
    .line 116
    return-void
.end method


# virtual methods
.method public getIntVector()[I
    .locals 2

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    #@2
    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    #@4
    iget v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->resource:I

    #@6
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getIntVector(I)[I

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 111
    const/16 v0, 0xe

    #@2
    return v0
.end method
