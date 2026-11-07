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


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private volatile greylist-max-o fullNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o loader:Ljava/lang/ClassLoader;

.field private volatile greylist-max-o locales:[Ljava/util/Locale;

.field private volatile greylist-max-o nameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o prefix:Ljava/lang/String;

.field private volatile blacklist ulocales:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/icu/util/ULocale$AvailableType;",
            "[",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 885
    const-class v0, Landroid/icu/impl/ICUResourceBundle;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    .line 895
    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    .line 896
    return-void
.end method


# virtual methods
.method greylist-max-o getFullLocaleNameSet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 942
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    if-nez v0, :cond_18

    .line 943
    monitor-enter p0

    .line 944
    :try_start_5
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    if-nez v0, :cond_13

    .line 945
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->-$$Nest$smcreateFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    .line 947
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 949
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    return-object v0
.end method

.method blacklist getLocaleList(Landroid/icu/util/ULocale$AvailableType;)[Ljava/util/Locale;
    .registers 3
    .param p1, "type"    # Landroid/icu/util/ULocale$AvailableType;

    .line 911
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    if-nez v0, :cond_1f

    .line 912
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList(Landroid/icu/util/ULocale$AvailableType;)[Landroid/icu/util/ULocale;

    .line 913
    monitor-enter p0

    .line 914
    :try_start_8
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    if-nez v0, :cond_1a

    .line 915
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleList([Landroid/icu/util/ULocale;)[Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    .line 917
    :cond_1a
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v0

    .line 919
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    return-object v0
.end method

.method greylist-max-o getLocaleNameSet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 922
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    if-nez v0, :cond_18

    .line 923
    monitor-enter p0

    .line 924
    :try_start_5
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    if-nez v0, :cond_13

    .line 925
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->-$$Nest$smcreateLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    .line 927
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 929
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    return-object v0
.end method

.method blacklist getULocaleList(Landroid/icu/util/ULocale$AvailableType;)[Landroid/icu/util/ULocale;
    .registers 4
    .param p1, "type"    # Landroid/icu/util/ULocale$AvailableType;

    .line 900
    nop

    .line 901
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:Ljava/util/EnumMap;

    if-nez v0, :cond_19

    .line 902
    monitor-enter p0

    .line 903
    :try_start_6
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:Ljava/util/EnumMap;

    if-nez v0, :cond_14

    .line 904
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->-$$Nest$smcreateULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/EnumMap;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:Ljava/util/EnumMap;

    .line 906
    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v0

    .line 908
    :cond_19
    :goto_19
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/ULocale;

    return-object v0
.end method
