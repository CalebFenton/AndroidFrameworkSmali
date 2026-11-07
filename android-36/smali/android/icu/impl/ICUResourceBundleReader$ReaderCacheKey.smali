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
.field final greylist-max-o baseName:Ljava/lang/String;

.field final greylist-max-o localeID:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "localeID"    # Ljava/lang/String;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const-string v0, ""

    if-nez p1, :cond_9

    move-object v1, v0

    goto :goto_a

    :cond_9
    move-object v1, p1

    :goto_a
    iput-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    .line 159
    if-nez p2, :cond_f

    goto :goto_10

    :cond_f
    move-object v0, p2

    :goto_10
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    .line 160
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 164
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 165
    return v0

    .line 167
    :cond_4
    instance-of v1, p1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 168
    return v2

    .line 170
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;

    .line 171
    .local v1, "info":Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 171
    :goto_23
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 177
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->baseName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleReader$ReaderCacheKey;->localeID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
