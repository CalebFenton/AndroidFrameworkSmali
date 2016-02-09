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
.field private com:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final locale:Landroid/icu/util/ULocale;

.field private ref:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Landroid/icu/util/ULocale;Ljava/util/Comparator;)V
    .locals 1
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 753
    .local p1, "dnCache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "com":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 754
    iput-object p2, p0, Landroid/icu/impl/ICUService$LocaleRef;->locale:Landroid/icu/util/ULocale;

    #@5
    .line 755
    iput-object p3, p0, Landroid/icu/impl/ICUService$LocaleRef;->com:Ljava/util/Comparator;

    #@7
    .line 756
    new-instance v0, Ljava/lang/ref/SoftReference;

    #@9
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@c
    iput-object v0, p0, Landroid/icu/impl/ICUService$LocaleRef;->ref:Ljava/lang/ref/SoftReference;

    #@e
    .line 753
    return-void
.end method


# virtual methods
.method get(Landroid/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;
    .locals 3
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    #@1
    .line 761
    iget-object v1, p0, Landroid/icu/impl/ICUService$LocaleRef;->ref:Ljava/lang/ref/SoftReference;

    #@3
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/util/SortedMap;

    #@9
    .line 762
    .local v0, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    #@b
    .line 763
    iget-object v1, p0, Landroid/icu/impl/ICUService$LocaleRef;->locale:Landroid/icu/util/ULocale;

    #@d
    invoke-virtual {v1, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    .line 762
    if-eqz v1, :cond_1

    #@13
    .line 764
    iget-object v1, p0, Landroid/icu/impl/ICUService$LocaleRef;->com:Ljava/util/Comparator;

    #@15
    if-eq v1, p2, :cond_0

    #@17
    iget-object v1, p0, Landroid/icu/impl/ICUService$LocaleRef;->com:Ljava/util/Comparator;

    #@19
    if-eqz v1, :cond_1

    #@1b
    iget-object v1, p0, Landroid/icu/impl/ICUService$LocaleRef;->com:Ljava/util/Comparator;

    #@1d
    invoke-interface {v1, p2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    .line 762
    if-eqz v1, :cond_1

    #@23
    .line 766
    :cond_0
    return-object v0

    #@24
    .line 768
    :cond_1
    return-object v2
.end method
