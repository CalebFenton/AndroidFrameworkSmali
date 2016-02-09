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
.field private final cache:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 569
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@5
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@8
    .line 568
    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    #@a
    .line 567
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/RelativeDateTimeFormatter$Cache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/RelativeDateTimeFormatter$Cache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    .locals 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 572
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 573
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    #@6
    invoke-interface {v2, v0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    #@c
    .line 574
    .local v1, "result":Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    if-nez v1, :cond_0

    #@e
    .line 575
    new-instance v2, Landroid/icu/text/RelativeDateTimeFormatter$Loader;

    #@10
    invoke-direct {v2, p1}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;-><init>(Landroid/icu/util/ULocale;)V

    #@13
    invoke-virtual {v2}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->load()Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    #@16
    move-result-object v1

    #@17
    .line 576
    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    #@19
    invoke-interface {v2, v0, v1}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1c
    .line 578
    :cond_0
    return-object v1
.end method
