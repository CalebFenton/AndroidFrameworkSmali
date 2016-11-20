.class final Landroid/icu/impl/ICUResourceBundle$AvailEntry;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AvailEntry"
.end annotation


# instance fields
.field private volatile fullNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loader:Ljava/lang/ClassLoader;

.field private volatile locales:[Ljava/util/Locale;

.field private volatile nameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private volatile ulocales:[Landroid/icu/util/ULocale;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 820
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    #@5
    .line 821
    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    #@7
    .line 819
    return-void
.end method


# virtual methods
.method getFullLocaleNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 866
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 867
    monitor-enter p0

    #@5
    .line 868
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 869
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    #@b
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    #@d
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->-wrap1(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 873
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    #@16
    return-object v0

    #@17
    .line 867
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method getLocaleList()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 835
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 836
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Landroid/icu/util/ULocale;

    #@7
    .line 837
    monitor-enter p0

    #@8
    .line 838
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 839
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Landroid/icu/util/ULocale;

    #@e
    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleList([Landroid/icu/util/ULocale;)[Ljava/util/Locale;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    :cond_0
    monitor-exit p0

    #@15
    .line 843
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    #@17
    return-object v0

    #@18
    .line 837
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method

.method getLocaleNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 846
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 847
    monitor-enter p0

    #@5
    .line 848
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 849
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    #@b
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    #@d
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->-wrap2(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 853
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    #@16
    return-object v0

    #@17
    .line 847
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method getULocaleList()[Landroid/icu/util/ULocale;
    .locals 2

    #@0
    .prologue
    .line 825
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Landroid/icu/util/ULocale;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 826
    monitor-enter p0

    #@5
    .line 827
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Landroid/icu/util/ULocale;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 828
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    #@b
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    #@d
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->-wrap0(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Landroid/icu/util/ULocale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 832
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Landroid/icu/util/ULocale;

    #@16
    return-object v0

    #@17
    .line 826
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method
