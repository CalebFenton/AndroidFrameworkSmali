.class public abstract Landroid/icu/text/PluralRules$Factory;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor greylist-max-o <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method

.method public static greylist-max-o getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    sget-object v0, Landroid/icu/impl/PluralRulesLoader;->loader:Landroid/icu/impl/PluralRulesLoader;

    return-object v0
.end method


# virtual methods
.method public final greylist-max-o forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/PluralRules$Factory;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object v0

    return-object v0
.end method

.method public abstract greylist-max-o forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist-max-o getAvailableULocales()[Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist-max-o getFunctionalEquivalent(Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist-max-o hasOverride(Landroid/icu/util/ULocale;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
