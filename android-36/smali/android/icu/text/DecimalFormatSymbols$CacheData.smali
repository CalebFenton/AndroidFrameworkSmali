.class Landroid/icu/text/DecimalFormatSymbols$CacheData;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DecimalFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheData"
.end annotation


# instance fields
.field final greylist-max-o digits:[Ljava/lang/String;

.field final greylist-max-o numberElements:[Ljava/lang/String;

.field final greylist-max-o validLocale:Landroid/icu/util/ULocale;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/icu/util/ULocale;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "digits"    # [Ljava/lang/String;
    .param p3, "numberElements"    # [Ljava/lang/String;

    .line 1983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1984
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols$CacheData;->validLocale:Landroid/icu/util/ULocale;

    .line 1985
    iput-object p2, p0, Landroid/icu/text/DecimalFormatSymbols$CacheData;->digits:[Ljava/lang/String;

    .line 1986
    iput-object p3, p0, Landroid/icu/text/DecimalFormatSymbols$CacheData;->numberElements:[Ljava/lang/String;

    .line 1987
    return-void
.end method
