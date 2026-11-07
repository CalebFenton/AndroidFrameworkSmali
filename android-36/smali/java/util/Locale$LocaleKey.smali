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
.field private final greylist-max-o base:Lsun/util/locale/BaseLocale;

.field private final greylist-max-o exts:Lsun/util/locale/LocaleExtensions;

.field private final greylist-max-o hash:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbase(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/BaseLocale;
    .registers 1

    iget-object p0, p0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetexts(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/LocaleExtensions;
    .registers 1

    iget-object p0, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V
    .registers 5
    .param p1, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p2, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iput-object p1, p0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    .line 1052
    iput-object p2, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    .line 1055
    iget-object v0, p0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->hashCode()I

    move-result v0

    .line 1056
    .local v0, "h":I
    iget-object v1, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    if-eqz v1, :cond_18

    .line 1057
    iget-object v1, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1059
    :cond_18
    iput v0, p0, Ljava/util/Locale$LocaleKey;->hash:I

    .line 1060
    return-void
.end method

.method synthetic constructor blacklist <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/util/Locale$LocaleKey;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1064
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1065
    return v0

    .line 1067
    :cond_4
    instance-of v1, p1, Ljava/util/Locale$LocaleKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    move-object v1, p1

    check-cast v1, Ljava/util/Locale$LocaleKey;

    .line 1070
    .local v1, "other":Ljava/util/Locale$LocaleKey;
    iget v3, p0, Ljava/util/Locale$LocaleKey;->hash:I

    iget v4, v1, Ljava/util/Locale$LocaleKey;->hash:I

    if-ne v3, v4, :cond_31

    iget-object v3, p0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    iget-object v4, v1, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3, v4}, Lsun/util/locale/BaseLocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_31

    .line 1073
    :cond_1d
    iget-object v3, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    if-nez v3, :cond_28

    .line 1074
    iget-object v3, v1, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    if-nez v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0

    .line 1076
    :cond_28
    iget-object v0, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    iget-object v2, v1, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0, v2}, Lsun/util/locale/LocaleExtensions;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1071
    :cond_31
    :goto_31
    return v2

    .line 1068
    .end local v1    # "other":Ljava/util/Locale$LocaleKey;
    :cond_32
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1081
    iget v0, p0, Ljava/util/Locale$LocaleKey;->hash:I

    return v0
.end method
