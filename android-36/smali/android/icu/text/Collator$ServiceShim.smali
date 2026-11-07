.class abstract Landroid/icu/text/Collator$ServiceShim;
.super Ljava/lang/Object;
.source "Collator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Collator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ServiceShim"
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract greylist-max-o getAvailableLocales()[Ljava/util/Locale;
.end method

.method abstract greylist-max-o getAvailableULocales()[Landroid/icu/util/ULocale;
.end method

.method abstract greylist-max-o getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
.end method

.method abstract greylist-max-o getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
.end method

.method abstract greylist-max-o registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
.end method

.method abstract greylist-max-o registerInstance(Landroid/icu/text/Collator;Landroid/icu/util/ULocale;)Ljava/lang/Object;
.end method

.method abstract greylist-max-o unregister(Ljava/lang/Object;)Z
.end method
