.class Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReaderCacheKey"
.end annotation


# instance fields
.field final baseName:Ljava/lang/String;

.field final localeID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "localeID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 156
    if-nez p1, :cond_0

    #@5
    const-string/jumbo p1, ""

    #@8
    .end local p1    # "baseName":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    #@a
    .line 157
    if-nez p2, :cond_1

    #@c
    const-string/jumbo p2, ""

    #@f
    .end local p2    # "localeID":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    #@11
    .line 155
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
    .line 161
    if-ne p0, p1, :cond_0

    #@3
    .line 162
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 164
    :cond_0
    instance-of v2, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 165
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 167
    check-cast v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;

    #@d
    .line 168
    .local v0, "info":Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    #@f
    iget-object v3, v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 169
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    #@19
    iget-object v2, v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    .line 168
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    #@8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v1

    #@c
    xor-int/2addr v0, v1

    #@d
    return v0
.end method
