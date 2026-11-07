.class Landroid/icu/text/RelativeDateTimeFormatter$Cache;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field private final greylist-max-o cache:Landroid/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Cache$1;

    invoke-direct {v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$Cache$1;-><init>(Landroid/icu/text/RelativeDateTimeFormatter$Cache;)V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$Cache;->cache:Landroid/icu/impl/CacheBase;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/RelativeDateTimeFormatter-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/RelativeDateTimeFormatter$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o get(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 1125
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1126
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter$Cache;->cache:Landroid/icu/impl/CacheBase;

    invoke-virtual {v1, v0, p1}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    return-object v1
.end method
