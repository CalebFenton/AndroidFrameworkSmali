.class public Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
.super Ljava/lang/Object;
.source "CronetEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/CronetEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;
    }
.end annotation


# static fields
.field public static final blacklist HTTP_CACHE_DISABLED:I = 0x0

.field public static final blacklist HTTP_CACHE_DISK:I = 0x3

.field public static final blacklist HTTP_CACHE_DISK_NO_HTTP:I = 0x2

.field public static final blacklist HTTP_CACHE_IN_MEMORY:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "CronetEngine.Builder"


# instance fields
.field protected final blacklist mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

.field private final blacklist mExperimentalOptionsPatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator$JsonPatch;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mParsedExperimentalOptions:Lorg/json/JSONObject;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 148
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->createBuilderDelegate(Landroid/content/Context;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;-><init>(Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;)V

    .line 149
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;)V
    .registers 3
    .param p1, "builderDelegate"    # Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mExperimentalOptionsPatches:Ljava/util/List;

    .line 160
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 161
    return-void
.end method

.method static blacklist compareVersions(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .line 666
    if-eqz p0, :cond_5e

    if-eqz p1, :cond_5e

    .line 669
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "s1segments":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "s2segments":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_56

    array-length v3, v0

    if-ge v2, v3, :cond_56

    .line 673
    :try_start_15
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 674
    .local v3, "s1segment":I
    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 675
    .local v4, "s2segment":I
    if-eq v3, v4, :cond_2a

    .line 676
    sub-int v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->signum(I)I

    move-result v5
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_29} :catch_2e

    return v5

    .line 686
    .end local v3    # "s1segment":I
    .end local v4    # "s2segment":I
    :cond_2a
    nop

    .line 671
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 678
    :catch_2e
    move-exception v3

    .line 679
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to convert version segments into integers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " & "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 688
    .end local v2    # "i":I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_56
    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    move-result v2

    return v2

    .line 667
    .end local v0    # "s2segments":[Ljava/lang/String;
    .end local v1    # "s1segments":[Ljava/lang/String;
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input values cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist createBuilderDelegate(Landroid/content/Context;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .line 551
    const-string v0, "CronetEngine.Builder"

    .line 552
    const-string v1, "CronetEngine#createBuilderDelegate"

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v1

    .line 553
    .local v1, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 554
    .local v2, "startUptimeMillis":J
    new-instance v4, Ljava/util/ArrayList;

    .line 558
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->getAllProviderInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 555
    invoke-static {p0, v4}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->getEnabledCronetProviders(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 559
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;

    .line 560
    .local v4, "providerInfo":Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;
    iget-object v6, v4, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;->logSource:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    invoke-static {p0, v6}, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;->createLogger(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    move-result-object v6

    .line 561
    .local v6, "logger":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;
    new-instance v7, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;

    invoke-direct {v7}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;-><init>()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_a4

    .line 563
    .local v7, "logInfo":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;
    :try_start_2b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v7, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->creationSuccessful:Ljava/lang/Boolean;

    .line 564
    sget-object v5, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->API:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    iput-object v5, v7, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->author:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    .line 565
    iget-object v5, v4, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;->logSource:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    iput-object v5, v7, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->source:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 566
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    iput v5, v7, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->uid:I

    .line 567
    new-instance v5, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    .line 568
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/ApiVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;-><init>(Ljava/lang/String;)V

    iput-object v5, v7, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->apiVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    .line 569
    const/4 v5, 0x3

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 570
    const-string v5, "Using \'%s\' provider for creating CronetEngine.Builder."

    iget-object v8, v4, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;->provider:Landroid/net/connectivity/org/chromium/net/CronetProvider;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 572
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 570
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_60
    iget-object v0, v4, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;->provider:Landroid/net/connectivity/org/chromium/net/CronetProvider;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->createBuilder()Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    move-result-object v0

    iget-object v0, v0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 577
    .local v0, "builderDelegate":Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->getImplCronetVersion(Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;)Ljava/lang/String;

    move-result-object v5

    .line 578
    .local v5, "implCronetVersion":Ljava/lang/String;
    if-eqz v5, :cond_75

    .line 579
    new-instance v8, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    invoke-direct {v8, v5}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->implVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    .line 581
    :cond_75
    nop

    .line 582
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->getLogCronetInitializationRef()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->cronetInitializationRef:J

    .line 583
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v7, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->creationSuccessful:Ljava/lang/Boolean;
    :try_end_83
    .catchall {:try_start_2b .. :try_end_83} :catchall_96

    .line 584
    nop

    .line 586
    nop

    .line 587
    :try_start_85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    long-to-int v8, v8

    iput v8, v7, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->engineBuilderCreatedLatencyMillis:I

    .line 588
    invoke-virtual {v6, v7}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;->logCronetEngineBuilderInitializedInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;)V
    :try_end_90
    .catchall {:try_start_85 .. :try_end_90} :catchall_a4

    .line 590
    if-eqz v1, :cond_95

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 584
    :cond_95
    return-object v0

    .line 586
    .end local v0    # "builderDelegate":Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .end local v5    # "implCronetVersion":Ljava/lang/String;
    :catchall_96
    move-exception v0

    .line 587
    :try_start_97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    long-to-int v5, v8

    iput v5, v7, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->engineBuilderCreatedLatencyMillis:I

    .line 588
    invoke-virtual {v6, v7}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;->logCronetEngineBuilderInitializedInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;)V

    .line 589
    nop

    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .end local p0    # "context":Landroid/content/Context;
    throw v0
    :try_end_a4
    .catchall {:try_start_97 .. :try_end_a4} :catchall_a4

    .line 551
    .end local v2    # "startUptimeMillis":J
    .end local v4    # "providerInfo":Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;
    .end local v6    # "logger":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;
    .end local v7    # "logInfo":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "context":Landroid/content/Context;
    :catchall_a4
    move-exception v0

    if-eqz v1, :cond_af

    :try_start_a7
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab

    goto :goto_af

    :catchall_ab
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_af
    :goto_af
    throw v0
.end method

.method static blacklist getEnabledCronetProviders(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 607
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 614
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 615
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;

    .line 616
    .local v1, "providerInfo":Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;
    iget-object v2, v1, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;->provider:Landroid/net/connectivity/org/chromium/net/CronetProvider;

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/CronetProvider;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_21

    .line 617
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 619
    .end local v1    # "providerInfo":Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;
    :cond_21
    goto :goto_a

    .line 622
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;>;"
    :cond_22
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 629
    new-instance v0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$1;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$1;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 649
    return-object p1

    .line 623
    :cond_31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All available Cronet providers are disabled. A provider should be enabled before it can be used."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to find any Cronet provider. Have you included all necessary jars?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getImplApiLevel(Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;)I
    .registers 4
    .param p0, "builderDelegate"    # Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 729
    :try_start_0
    const-string v0, "getApiLevel"

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->getImplVersionMethod(Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 730
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_a

    const/4 v1, -0x1

    goto :goto_18

    :cond_a
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_18
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_18} :catch_19

    :goto_18
    return v1

    .line 731
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_19
    move-exception v0

    .line 732
    .local v0, "exception":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to retrieve Cronet impl API level"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist getImplCronetVersion(Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;)Ljava/lang/String;
    .registers 4
    .param p0, "builderDelegate"    # Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 747
    :try_start_0
    const-string v0, "getCronetVersion"

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->getImplVersionMethod(Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 748
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    :goto_9
    goto :goto_14

    :cond_a
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_13} :catch_15

    goto :goto_9

    :goto_14
    return-object v1

    .line 749
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_15
    move-exception v0

    .line 750
    .local v0, "exception":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to retrieve Cronet impl version"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist getImplVersionMethod(Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 4
    .param p0, "builderDelegate"    # Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .param p1, "method"    # Ljava/lang/String;

    .line 707
    nop

    .line 708
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.net.connectivity.org.chromium.net.impl.ImplVersion"

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 711
    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_16} :catch_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_16} :catch_17

    .line 707
    return-object v0

    .line 712
    :catch_17
    move-exception v0

    .line 713
    .local v0, "exception":Ljava/lang/ReflectiveOperationException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getMaximumApiLevel()I
    .registers 2

    .line 692
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/ApiVersion;->getMaximumAvailableApiLevel()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setConnectionMigrationOptions$2(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;Lorg/json/JSONObject;)V
    .registers 2
    .param p0, "connectionMigrationOptions"    # Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;
    .param p1, "experimentalOptions"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 495
    invoke-static {p1, p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator;->connectionMigrationOptionsToJson(Lorg/json/JSONObject;Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;)V

    return-void
.end method

.method static synthetic blacklist lambda$setDnsOptions$1(Landroid/net/connectivity/org/chromium/net/DnsOptions;Lorg/json/JSONObject;)V
    .registers 2
    .param p0, "dnsOptions"    # Landroid/net/connectivity/org/chromium/net/DnsOptions;
    .param p1, "experimentalOptions"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 461
    invoke-static {p1, p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator;->dnsOptionsToJson(Lorg/json/JSONObject;Landroid/net/connectivity/org/chromium/net/DnsOptions;)V

    return-void
.end method

.method static synthetic blacklist lambda$setQuicOptions$0(Landroid/net/connectivity/org/chromium/net/QuicOptions;Lorg/json/JSONObject;)V
    .registers 2
    .param p0, "quicOptions"    # Landroid/net/connectivity/org/chromium/net/QuicOptions;
    .param p1, "experimentalOptions"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 429
    invoke-static {p1, p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator;->quicOptionsToJson(Lorg/json/JSONObject;Landroid/net/connectivity/org/chromium/net/QuicOptions;)V

    return-void
.end method

.method private blacklist maybeSetExperimentalOptions()V
    .registers 4

    .line 525
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mParsedExperimentalOptions:Lorg/json/JSONObject;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mExperimentalOptionsPatches:Ljava/util/List;

    .line 526
    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator;->applyJsonPatches(Lorg/json/JSONObject;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    .line 528
    .local v0, "experimentalOptions":Lorg/json/JSONObject;
    if-eqz v0, :cond_13

    .line 529
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->setExperimentalOptions(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 531
    :cond_13
    return-void
.end method


# virtual methods
.method public blacklist addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p3, "includeSubdomains"    # Z
    .param p4, "expirationDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "[B>;Z",
            "Ljava/util/Date;",
            ")",
            "Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;"
        }
    .end annotation

    .line 354
    .local p2, "pinsSha256":Ljava/util/Set;, "Ljava/util/Set<[B>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 356
    return-object p0
.end method

.method public blacklist addQuicHint(Ljava/lang/String;II)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "alternatePort"    # I

    .line 311
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->addQuicHint(Ljava/lang/String;II)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 312
    return-object p0
.end method

.method public blacklist build()Landroid/net/connectivity/org/chromium/net/CronetEngine;
    .registers 2

    .line 539
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->buildExperimental()Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist buildExperimental()Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;
    .registers 4

    .line 508
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->getImplApiLevel(Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;)I

    move-result v0

    .line 509
    .local v0, "implLevel":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2f

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->getMaximumApiLevel()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The implementation version is lower than the API version. Calls to methods added in API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and newer will likely have no effect."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CronetEngine.Builder"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_2f
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->maybeSetExperimentalOptions()V

    .line 520
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->build()Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    move-result-object v1

    return-object v1
.end method

.method public blacklist enableBrotli(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 256
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->enableBrotli(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 257
    return-object p0
.end method

.method public blacklist enableHttp2(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 234
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->enableHttp2(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 235
    return-object p0
.end method

.method public blacklist enableHttpCache(IJ)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 5
    .param p1, "cacheMode"    # I
    .param p2, "maxSize"    # J

    .line 295
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->enableHttpCache(IJ)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 296
    return-object p0
.end method

.method public blacklist enableNetworkQualityEstimator(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 404
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->enableNetworkQualityEstimator(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 405
    return-object p0
.end method

.method public blacklist enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 373
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 374
    return-object p0
.end method

.method public blacklist enableQuic(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 222
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->enableQuic(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 223
    return-object p0
.end method

.method public blacklist enableSdch(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    return-object p0
.end method

.method public blacklist getDefaultUserAgent()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setConnectionMigrationOptions(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 3
    .param p1, "connectionMigrationOptionsBuilder"    # Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;

    .line 504
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions$Builder;->build()Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->setConnectionMigrationOptions(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setConnectionMigrationOptions(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 4
    .param p1, "connectionMigrationOptions"    # Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;

    .line 485
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 486
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->getSupportedConfigOptions()Ljava/util/Set;

    move-result-object v0

    .line 487
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 488
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->setConnectionMigrationOptions(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 489
    return-object p0

    .line 493
    :cond_17
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mExperimentalOptionsPatches:Ljava/util/List;

    new-instance v1, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    return-object p0
.end method

.method public blacklist setDnsOptions(Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 3
    .param p1, "dnsOptions"    # Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;

    .line 469
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/DnsOptions$Builder;->build()Landroid/net/connectivity/org/chromium/net/DnsOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->setDnsOptions(Landroid/net/connectivity/org/chromium/net/DnsOptions;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setDnsOptions(Landroid/net/connectivity/org/chromium/net/DnsOptions;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 4
    .param p1, "dnsOptions"    # Landroid/net/connectivity/org/chromium/net/DnsOptions;

    .line 451
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 452
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->getSupportedConfigOptions()Ljava/util/Set;

    move-result-object v0

    .line 453
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 454
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->setDnsOptions(Landroid/net/connectivity/org/chromium/net/DnsOptions;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 455
    return-object p0

    .line 459
    :cond_17
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mExperimentalOptionsPatches:Ljava/util/List;

    new-instance v1, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/net/DnsOptions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    return-object p0
.end method

.method public blacklist setLibraryLoader(Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 3
    .param p1, "loader"    # Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;

    .line 209
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->setLibraryLoader(Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 210
    return-object p0
.end method

.method public blacklist setQuicOptions(Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 3
    .param p1, "quicOptionsBuilder"    # Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;

    .line 437
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/QuicOptions$Builder;->build()Landroid/net/connectivity/org/chromium/net/QuicOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->setQuicOptions(Landroid/net/connectivity/org/chromium/net/QuicOptions;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setQuicOptions(Landroid/net/connectivity/org/chromium/net/QuicOptions;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 4
    .param p1, "quicOptions"    # Landroid/net/connectivity/org/chromium/net/QuicOptions;

    .line 419
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 420
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->getSupportedConfigOptions()Ljava/util/Set;

    move-result-object v0

    .line 421
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 422
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->setQuicOptions(Landroid/net/connectivity/org/chromium/net/QuicOptions;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 423
    return-object p0

    .line 427
    :cond_17
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mExperimentalOptionsPatches:Ljava/util/List;

    new-instance v1, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$$ExternalSyntheticLambda2;-><init>(Landroid/net/connectivity/org/chromium/net/QuicOptions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    return-object p0
.end method

.method public blacklist setStoragePath(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->setStoragePath(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 198
    return-object p0
.end method

.method public blacklist setThreadPriority(I)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 3
    .param p1, "priority"    # I

    .line 388
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->setThreadPriority(I)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 389
    return-object p0
.end method

.method public blacklist setUserAgent(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 3
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;->setUserAgent(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 183
    return-object p0
.end method
