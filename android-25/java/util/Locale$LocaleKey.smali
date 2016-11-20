.class final Ljava/util/Locale$LocaleKey;
.super Ljava/lang/Object;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocaleKey"
.end annotation


# instance fields
.field private final base:Lsun/util/locale/BaseLocale;

.field private final exts:Lsun/util/locale/LocaleExtensions;

.field private final hash:I


# direct methods
.method static synthetic -get0(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/BaseLocale;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/LocaleExtensions;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    #@2
    return-object v0
.end method

.method private constructor <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V
    .locals 2
    .param p1, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p2, "extensions"    # Lsun/util/locale/LocaleExtensions;

    #@0
    .prologue
    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 770
    iput-object p1, p0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    #@5
    .line 771
    iput-object p2, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    #@7
    .line 774
    iget-object v1, p0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    #@9
    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->hashCode()I

    #@c
    move-result v0

    #@d
    .line 775
    .local v0, "h":I
    iget-object v1, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 776
    iget-object v1, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    #@13
    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->hashCode()I

    #@16
    move-result v1

    #@17
    xor-int/2addr v0, v1

    #@18
    .line 778
    :cond_0
    iput v0, p0, Ljava/util/Locale$LocaleKey;->hash:I

    #@1a
    .line 769
    return-void
.end method

.method synthetic constructor <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale$LocaleKey;)V
    .locals 0
    .param p1, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p2, "extensions"    # Lsun/util/locale/LocaleExtensions;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/Locale$LocaleKey;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 783
    if-ne p0, p1, :cond_0

    #@4
    .line 784
    return v1

    #@5
    .line 786
    :cond_0
    instance-of v3, p1, Ljava/util/Locale$LocaleKey;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 787
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 789
    check-cast v0, Ljava/util/Locale$LocaleKey;

    #@d
    .line 790
    .local v0, "other":Ljava/util/Locale$LocaleKey;
    iget v3, p0, Ljava/util/Locale$LocaleKey;->hash:I

    #@f
    iget v4, v0, Ljava/util/Locale$LocaleKey;->hash:I

    #@11
    if-ne v3, v4, :cond_2

    #@13
    iget-object v3, p0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    #@15
    iget-object v4, v0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    #@17
    invoke-virtual {v3, v4}, Lsun/util/locale/BaseLocale;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_2

    #@1d
    .line 793
    iget-object v3, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    #@1f
    if-nez v3, :cond_4

    #@21
    .line 794
    iget-object v3, v0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    #@23
    if-nez v3, :cond_3

    #@25
    :goto_0
    return v1

    #@26
    .line 791
    :cond_2
    return v2

    #@27
    :cond_3
    move v1, v2

    #@28
    .line 794
    goto :goto_0

    #@29
    .line 796
    :cond_4
    iget-object v1, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    #@2b
    iget-object v2, v0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    #@2d
    invoke-virtual {v1, v2}, Lsun/util/locale/LocaleExtensions;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    return v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 801
    iget v0, p0, Ljava/util/Locale$LocaleKey;->hash:I

    #@2
    return v0
.end method
