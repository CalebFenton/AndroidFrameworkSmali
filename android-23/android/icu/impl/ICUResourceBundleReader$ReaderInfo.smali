.class Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReaderInfo"
.end annotation


# instance fields
.field final baseName:Ljava/lang/String;

.field final loader:Ljava/lang/ClassLoader;

.field final localeID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "localeID"    # Ljava/lang/String;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 301
    if-nez p1, :cond_0

    #@5
    const-string/jumbo p1, ""

    #@8
    .end local p1    # "baseName":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->baseName:Ljava/lang/String;

    #@a
    .line 302
    if-nez p2, :cond_1

    #@c
    const-string/jumbo p2, ""

    #@f
    .end local p2    # "localeID":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->localeID:Ljava/lang/String;

    #@11
    .line 303
    iput-object p3, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->loader:Ljava/lang/ClassLoader;

    #@13
    .line 300
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 307
    if-ne p0, p1, :cond_0

    #@3
    .line 308
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 310
    :cond_0
    instance-of v2, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 311
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 313
    check-cast v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;

    #@d
    .line 314
    .local v0, "info":Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->baseName:Ljava/lang/String;

    #@f
    iget-object v3, v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->baseName:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 315
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->localeID:Ljava/lang/String;

    #@19
    iget-object v3, v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->localeID:Ljava/lang/String;

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    .line 314
    if-eqz v2, :cond_2

    #@21
    .line 316
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->loader:Ljava/lang/ClassLoader;

    #@23
    iget-object v2, v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->loader:Ljava/lang/ClassLoader;

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    .line 314
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 320
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->baseName:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->localeID:Ljava/lang/String;

    #@8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v1

    #@c
    xor-int/2addr v0, v1

    #@d
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderInfo;->loader:Ljava/lang/ClassLoader;

    #@f
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->hashCode()I

    #@12
    move-result v1

    #@13
    xor-int/2addr v0, v1

    #@14
    return v0
.end method
