.class public Landroid/icu/impl/text/RbnfScannerProviderImpl;
.super Ljava/lang/Object;
.source "RbnfScannerProviderImpl.java"

# interfaces
.implements Landroid/icu/text/RbnfLenientScannerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist DEBUG:Z


# instance fields
.field private blacklist cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/RbnfLenientScanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    const-string v0, "rbnf"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    .line 43
    return-void
.end method


# virtual methods
.method protected blacklist createScanner(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/RbnfLenientScanner;
    .registers 7
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "extras"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    const/4 v0, 0x0

    .line 105
    .local v0, "collator":Landroid/icu/text/RuleBasedCollator;
    :try_start_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/Collator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    move-object v0, v1

    .line 106
    if-eqz p2, :cond_29

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->getRules()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "rules":Ljava/lang/String;
    new-instance v2, Landroid/icu/text/RuleBasedCollator;

    invoke-direct {v2, v1}, Landroid/icu/text/RuleBasedCollator;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 110
    .end local v1    # "rules":Ljava/lang/String;
    :cond_29
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/icu/text/RuleBasedCollator;->setDecomposition(I)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_2f

    .line 121
    goto :goto_3f

    .line 112
    :catch_2f
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/icu/impl/text/RbnfScannerProviderImpl;->DEBUG:Z

    if-eqz v2, :cond_3e

    .line 117
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "++++"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    :cond_3e
    const/4 v0, 0x0

    .line 123
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3f
    new-instance v1, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;-><init>(Landroid/icu/text/RuleBasedCollator;Landroid/icu/impl/text/RbnfScannerProviderImpl-IA;)V

    return-object v1
.end method

.method public blacklist get(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/RbnfLenientScanner;
    .registers 8
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "extras"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "result":Landroid/icu/text/RbnfLenientScanner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    monitor-enter v2

    .line 81
    :try_start_1f
    iget-object v3, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/RbnfLenientScanner;

    move-object v0, v3

    .line 82
    if-eqz v0, :cond_2c

    .line 83
    monitor-exit v2

    return-object v0

    .line 85
    :cond_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_3e

    .line 86
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/text/RbnfScannerProviderImpl;->createScanner(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/RbnfLenientScanner;

    move-result-object v3

    .line 87
    .end local v0    # "result":Landroid/icu/text/RbnfLenientScanner;
    .local v3, "result":Landroid/icu/text/RbnfLenientScanner;
    iget-object v4, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    monitor-enter v4

    .line 88
    :try_start_34
    iget-object v0, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v4

    .line 90
    return-object v3

    .line 89
    :catchall_3b
    move-exception v0

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3b

    throw v0

    .line 85
    .end local v3    # "result":Landroid/icu/text/RbnfLenientScanner;
    .restart local v0    # "result":Landroid/icu/text/RbnfLenientScanner;
    :catchall_3e
    move-exception v3

    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v3
.end method
