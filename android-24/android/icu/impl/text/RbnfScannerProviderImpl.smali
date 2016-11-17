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
.field private static final DEBUG:Z


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/RbnfLenientScanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    const-string/jumbo v0, "rbnf"

    #@3
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    sput-boolean v0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->DEBUG:Z

    #@9
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    #@a
    .line 39
    return-void
.end method


# virtual methods
.method protected createScanner(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/RbnfLenientScanner;
    .locals 8
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "extras"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 97
    const/4 v1, 0x0

    #@2
    .line 103
    .local v1, "collator":Landroid/icu/text/RuleBasedCollator;
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    #@5
    move-result-object v5

    #@6
    invoke-static {v5}, Landroid/icu/text/Collator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    #@9
    move-result-object v5

    #@a
    move-object v0, v5

    #@b
    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    #@d
    move-object v1, v0

    #@e
    .line 104
    .local v1, "collator":Landroid/icu/text/RuleBasedCollator;
    if-eqz p2, :cond_0

    #@10
    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v1}, Landroid/icu/text/RuleBasedCollator;->getRules()Ljava/lang/String;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 106
    .local v4, "rules":Ljava/lang/String;
    new-instance v2, Landroid/icu/text/RuleBasedCollator;

    #@27
    invoke-direct {v2, v4}, Landroid/icu/text/RuleBasedCollator;-><init>(Ljava/lang/String;)V

    #@2a
    .end local v1    # "collator":Landroid/icu/text/RuleBasedCollator;
    .local v2, "collator":Landroid/icu/text/RuleBasedCollator;
    move-object v1, v2

    #@2b
    .line 108
    .end local v2    # "collator":Landroid/icu/text/RuleBasedCollator;
    .end local v4    # "rules":Ljava/lang/String;
    .restart local v1    # "collator":Landroid/icu/text/RuleBasedCollator;
    :cond_0
    const/16 v5, 0x11

    #@2d
    invoke-virtual {v1, v5}, Landroid/icu/text/RuleBasedCollator;->setDecomposition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 121
    .end local v1    # "collator":Landroid/icu/text/RuleBasedCollator;
    :goto_0
    new-instance v5, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;

    #@32
    invoke-direct {v5, v1, v7}, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;-><init>(Landroid/icu/text/RuleBasedCollator;Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;)V

    #@35
    return-object v5

    #@36
    .line 110
    :catch_0
    move-exception v3

    #@37
    .line 114
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v5, Landroid/icu/impl/text/RbnfScannerProviderImpl;->DEBUG:Z

    #@39
    if-eqz v5, :cond_1

    #@3b
    .line 115
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    #@3e
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@40
    const-string/jumbo v6, "++++"

    #@43
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@46
    .line 117
    :cond_1
    const/4 v1, 0x0

    #@47
    .local v1, "collator":Landroid/icu/text/RuleBasedCollator;
    goto :goto_0
.end method

.method public get(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/RbnfLenientScanner;
    .locals 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "extras"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 76
    const/4 v1, 0x0

    #@1
    .line 77
    .local v1, "result":Landroid/icu/text/RbnfLenientScanner;
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, "/"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 78
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    #@1f
    monitor-enter v3

    #@20
    .line 79
    :try_start_0
    iget-object v2, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    #@22
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    .end local v1    # "result":Landroid/icu/text/RbnfLenientScanner;
    check-cast v1, Landroid/icu/text/RbnfLenientScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 80
    .local v1, "result":Landroid/icu/text/RbnfLenientScanner;
    if-eqz v1, :cond_0

    #@2a
    monitor-exit v3

    #@2b
    .line 81
    return-object v1

    #@2c
    :cond_0
    monitor-exit v3

    #@2d
    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/text/RbnfScannerProviderImpl;->createScanner(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/RbnfLenientScanner;

    #@30
    move-result-object v1

    #@31
    .line 85
    iget-object v3, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    #@33
    monitor-enter v3

    #@34
    .line 86
    :try_start_1
    iget-object v2, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    #@36
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@39
    monitor-exit v3

    #@3a
    .line 88
    return-object v1

    #@3b
    .line 78
    .end local v1    # "result":Landroid/icu/text/RbnfLenientScanner;
    :catchall_0
    move-exception v2

    #@3c
    monitor-exit v3

    #@3d
    throw v2

    #@3e
    .line 85
    .restart local v1    # "result":Landroid/icu/text/RbnfLenientScanner;
    :catchall_1
    move-exception v2

    #@3f
    monitor-exit v3

    #@40
    throw v2
.end method
