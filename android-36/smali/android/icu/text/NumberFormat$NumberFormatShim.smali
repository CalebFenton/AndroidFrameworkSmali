.class abstract Landroid/icu/text/NumberFormat$NumberFormatShim;
.super Ljava/lang/Object;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NumberFormatShim"
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract greylist-max-o createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
.end method

.method abstract greylist-max-o getAvailableLocales()[Ljava/util/Locale;
.end method

.method abstract greylist-max-o getAvailableULocales()[Landroid/icu/util/ULocale;
.end method

.method abstract greylist-max-o registerFactory(Landroid/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
.end method

.method abstract greylist-max-o unregister(Ljava/lang/Object;)Z
.end method
