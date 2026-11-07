.class Landroid/net/connectivity/org/chromium/base/LocaleUtils$ApisN;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApisN"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist prependToLocaleList(Ljava/lang/String;Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .registers 6
    .param p0, "languageTag"    # Ljava/lang/String;
    .param p1, "localeList"    # Landroid/os/LocaleList;

    .line 273
    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "languageList":Ljava/lang/String;
    const-string v1, "(^|,)%1$s$|%1$s,"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "pattern":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 281
    const-string v3, "%1$s,%2$s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {v2}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    return-object v2
.end method

.method static blacklist setConfigLocales(Landroid/content/Context;Landroid/content/res/Configuration;Ljava/lang/String;)V
    .registers 4
    .param p0, "base"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "language"    # Ljava/lang/String;

    .line 255
    nop

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 256
    invoke-static {p2, v0}, Landroid/net/connectivity/org/chromium/base/LocaleUtils$ApisN;->prependToLocaleList(Ljava/lang/String;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    move-result-object v0

    .line 258
    .local v0, "updatedLocales":Landroid/os/LocaleList;
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 259
    return-void
.end method

.method static blacklist setLocaleList(Landroid/content/res/Configuration;)V
    .registers 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 262
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 263
    return-void
.end method
