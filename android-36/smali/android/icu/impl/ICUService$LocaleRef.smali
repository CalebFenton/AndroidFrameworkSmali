.class Landroid/icu/impl/ICUService$LocaleRef;
.super Ljava/lang/Object;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleRef"
.end annotation


# instance fields
.field private blacklist com:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist dnCache:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist locale:Landroid/icu/util/ULocale;


# direct methods
.method constructor blacklist <init>(Ljava/util/SortedMap;Landroid/icu/util/ULocale;Ljava/util/Comparator;)V
    .registers 4
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 743
    .local p1, "dnCache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "com":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput-object p2, p0, Landroid/icu/impl/ICUService$LocaleRef;->locale:Landroid/icu/util/ULocale;

    .line 745
    iput-object p3, p0, Landroid/icu/impl/ICUService$LocaleRef;->com:Ljava/util/Comparator;

    .line 746
    iput-object p1, p0, Landroid/icu/impl/ICUService$LocaleRef;->dnCache:Ljava/util/SortedMap;

    .line 747
    return-void
.end method


# virtual methods
.method blacklist get(Landroid/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;
    .registers 5
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 751
    .local p2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    iget-object v0, p0, Landroid/icu/impl/ICUService$LocaleRef;->dnCache:Ljava/util/SortedMap;

    .line 752
    .local v0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1d

    iget-object v1, p0, Landroid/icu/impl/ICUService$LocaleRef;->locale:Landroid/icu/util/ULocale;

    .line 753
    invoke-virtual {v1, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/icu/impl/ICUService$LocaleRef;->com:Ljava/util/Comparator;

    if-eq v1, p2, :cond_1c

    iget-object v1, p0, Landroid/icu/impl/ICUService$LocaleRef;->com:Ljava/util/Comparator;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/icu/impl/ICUService$LocaleRef;->com:Ljava/util/Comparator;

    .line 754
    invoke-interface {v1, p2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 756
    :cond_1c
    return-object v0

    .line 758
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method
