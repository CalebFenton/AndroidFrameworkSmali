.class public Lcom/android/server/firewall/IntentFirewall;
.super Ljava/lang/Object;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/IntentFirewall$Rule;,
        Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;,
        Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;,
        Lcom/android/server/firewall/IntentFirewall$FirewallHandler;,
        Lcom/android/server/firewall/IntentFirewall$RuleObserver;,
        Lcom/android/server/firewall/IntentFirewall$AMSInterface;
    }
.end annotation


# static fields
.field private static final LOG_PACKAGES_MAX_LENGTH:I = 0x96

.field private static final LOG_PACKAGES_SUFFICIENT_LENGTH:I = 0x7d

.field private static final RULES_DIR:Ljava/io/File;

.field static final TAG:Ljava/lang/String; = "IntentFirewall"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_BROADCAST:Ljava/lang/String; = "broadcast"

.field private static final TAG_RULES:Ljava/lang/String; = "rules"

.field private static final TAG_SERVICE:Ljava/lang/String; = "service"

.field private static final TYPE_ACTIVITY:I = 0x0

.field private static final TYPE_BROADCAST:I = 0x1

.field private static final TYPE_SERVICE:I = 0x2

.field private static final factoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/firewall/FilterFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field private final mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

.field private mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

.field final mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

.field private final mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

.field private mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V
    .locals 0
    .param p1, "rulesDir"    # Ljava/io/File;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 55
    new-instance v3, Ljava/io/File;

    #@2
    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    #@5
    move-result-object v4

    #@6
    const-string/jumbo v5, "ifw"

    #@9
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    sput-object v3, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    #@e
    .line 80
    const/16 v3, 0x12

    #@10
    new-array v0, v3, [Lcom/android/server/firewall/FilterFactory;

    #@12
    .line 81
    sget-object v3, Lcom/android/server/firewall/AndFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    #@14
    const/4 v4, 0x0

    #@15
    aput-object v3, v0, v4

    #@17
    .line 82
    sget-object v3, Lcom/android/server/firewall/OrFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    #@19
    const/4 v4, 0x1

    #@1a
    aput-object v3, v0, v4

    #@1c
    .line 83
    sget-object v3, Lcom/android/server/firewall/NotFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    #@1e
    const/4 v4, 0x2

    #@1f
    aput-object v3, v0, v4

    #@21
    .line 85
    sget-object v3, Lcom/android/server/firewall/StringFilter;->ACTION:Lcom/android/server/firewall/FilterFactory;

    #@23
    const/4 v4, 0x3

    #@24
    aput-object v3, v0, v4

    #@26
    .line 86
    sget-object v3, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@28
    const/4 v4, 0x4

    #@29
    aput-object v3, v0, v4

    #@2b
    .line 87
    sget-object v3, Lcom/android/server/firewall/StringFilter;->COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@2d
    const/4 v4, 0x5

    #@2e
    aput-object v3, v0, v4

    #@30
    .line 88
    sget-object v3, Lcom/android/server/firewall/StringFilter;->COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@32
    const/4 v4, 0x6

    #@33
    aput-object v3, v0, v4

    #@35
    .line 89
    sget-object v3, Lcom/android/server/firewall/StringFilter;->DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@37
    const/4 v4, 0x7

    #@38
    aput-object v3, v0, v4

    #@3a
    .line 90
    sget-object v3, Lcom/android/server/firewall/StringFilter;->HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@3c
    const/16 v4, 0x8

    #@3e
    aput-object v3, v0, v4

    #@40
    .line 91
    sget-object v3, Lcom/android/server/firewall/StringFilter;->MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@42
    const/16 v4, 0x9

    #@44
    aput-object v3, v0, v4

    #@46
    .line 92
    sget-object v3, Lcom/android/server/firewall/StringFilter;->SCHEME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@48
    const/16 v4, 0xa

    #@4a
    aput-object v3, v0, v4

    #@4c
    .line 93
    sget-object v3, Lcom/android/server/firewall/StringFilter;->PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@4e
    const/16 v4, 0xb

    #@50
    aput-object v3, v0, v4

    #@52
    .line 94
    sget-object v3, Lcom/android/server/firewall/StringFilter;->SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@54
    const/16 v4, 0xc

    #@56
    aput-object v3, v0, v4

    #@58
    .line 96
    sget-object v3, Lcom/android/server/firewall/CategoryFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    #@5a
    const/16 v4, 0xd

    #@5c
    aput-object v3, v0, v4

    #@5e
    .line 97
    sget-object v3, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    #@60
    const/16 v4, 0xe

    #@62
    aput-object v3, v0, v4

    #@64
    .line 98
    sget-object v3, Lcom/android/server/firewall/SenderPackageFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    #@66
    const/16 v4, 0xf

    #@68
    aput-object v3, v0, v4

    #@6a
    .line 99
    sget-object v3, Lcom/android/server/firewall/SenderPermissionFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    #@6c
    const/16 v4, 0x10

    #@6e
    aput-object v3, v0, v4

    #@70
    .line 100
    sget-object v3, Lcom/android/server/firewall/PortFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    #@72
    const/16 v4, 0x11

    #@74
    aput-object v3, v0, v4

    #@76
    .line 104
    .local v0, "factories":[Lcom/android/server/firewall/FilterFactory;
    new-instance v3, Ljava/util/HashMap;

    #@78
    array-length v4, v0

    #@79
    mul-int/lit8 v4, v4, 0x4

    #@7b
    div-int/lit8 v4, v4, 0x3

    #@7d
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    #@80
    sput-object v3, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    #@82
    .line 105
    const/4 v2, 0x0

    #@83
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    #@84
    if-ge v2, v3, :cond_0

    #@86
    .line 106
    aget-object v1, v0, v2

    #@88
    .line 107
    .local v1, "factory":Lcom/android/server/firewall/FilterFactory;
    sget-object v3, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    #@8a
    invoke-virtual {v1}, Lcom/android/server/firewall/FilterFactory;->getTagName()Ljava/lang/String;

    #@8d
    move-result-object v4

    #@8e
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@91
    .line 105
    add-int/lit8 v2, v2, 0x1

    #@93
    goto :goto_0

    #@94
    .line 51
    .end local v1    # "factory":Lcom/android/server/firewall/FilterFactory;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$AMSInterface;Landroid/os/Handler;)V
    .locals 3
    .param p1, "ams"    # Lcom/android/server/firewall/IntentFirewall$AMSInterface;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 75
    new-instance v1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    #@6
    invoke-direct {v1, v2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V

    #@9
    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    #@b
    .line 76
    new-instance v1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    #@d
    invoke-direct {v1, v2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V

    #@10
    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    #@12
    .line 77
    new-instance v1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    #@14
    invoke-direct {v1, v2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V

    #@17
    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    #@19
    .line 112
    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    #@1b
    .line 113
    new-instance v1, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    #@1d
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, p0, v2}, Lcom/android/server/firewall/IntentFirewall$FirewallHandler;-><init>(Lcom/android/server/firewall/IntentFirewall;Landroid/os/Looper;)V

    #@24
    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mHandler:Lcom/android/server/firewall/IntentFirewall$FirewallHandler;

    #@26
    .line 114
    invoke-static {}, Lcom/android/server/firewall/IntentFirewall;->getRulesDir()Ljava/io/File;

    #@29
    move-result-object v0

    #@2a
    .line 115
    .local v0, "rulesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@2d
    .line 117
    invoke-direct {p0, v0}, Lcom/android/server/firewall/IntentFirewall;->readRulesDir(Ljava/io/File;)V

    #@30
    .line 119
    new-instance v1, Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    #@32
    invoke-direct {v1, p0, v0}, Lcom/android/server/firewall/IntentFirewall$RuleObserver;-><init>(Lcom/android/server/firewall/IntentFirewall;Ljava/io/File;)V

    #@35
    iput-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    #@37
    .line 120
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mObserver:Lcom/android/server/firewall/IntentFirewall$RuleObserver;

    #@39
    invoke-virtual {v1}, Lcom/android/server/firewall/IntentFirewall$RuleObserver;->startWatching()V

    #@3c
    .line 111
    return-void
.end method

.method public static getRulesDir()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 254
    sget-object v0, Lcom/android/server/firewall/IntentFirewall;->RULES_DIR:Ljava/io/File;

    #@2
    return-object v0
.end method

.method private static joinPackages([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 226
    const/4 v0, 0x1

    #@2
    .line 227
    .local v0, "first":Z
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 228
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    array-length v4, p0

    #@9
    if-ge v1, v4, :cond_3

    #@b
    .line 229
    aget-object v2, p0, v1

    #@d
    .line 233
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@10
    move-result v4

    #@11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@14
    move-result v5

    #@15
    add-int/2addr v4, v5

    #@16
    add-int/lit8 v4, v4, 0x1

    #@18
    const/16 v5, 0x96

    #@1a
    if-ge v4, v5, :cond_2

    #@1c
    .line 234
    if-nez v0, :cond_1

    #@1e
    .line 235
    const/16 v4, 0x2c

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    .line 239
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 228
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 237
    :cond_1
    const/4 v0, 0x0

    #@2a
    goto :goto_1

    #@2b
    .line 240
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@2e
    move-result v4

    #@2f
    const/16 v5, 0x7d

    #@31
    if-lt v4, v5, :cond_0

    #@33
    .line 241
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    return-object v4

    #@38
    .line 244
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@3b
    move-result v4

    #@3c
    if-nez v4, :cond_4

    #@3e
    array-length v4, p0

    #@3f
    if-lez v4, :cond_4

    #@41
    .line 245
    aget-object v2, p0, v6

    #@43
    .line 248
    .restart local v2    # "pkg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@4b
    move-result v5

    #@4c
    add-int/lit16 v5, v5, -0x96

    #@4e
    add-int/lit8 v5, v5, 0x1

    #@50
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    const/16 v5, 0x2d

    #@5a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v4

    #@62
    return-object v4

    #@63
    .line 250
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    #@64
    return-object v4
.end method

.method private static logIntent(ILandroid/content/Intent;ILjava/lang/String;)V
    .locals 13
    .param p0, "intentType"    # I
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerUid"    # I
    .param p3, "resolvedType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3
    move-result-object v10

    #@4
    .line 188
    .local v10, "cn":Landroid/content/ComponentName;
    const/4 v1, 0x0

    #@5
    .line 189
    .local v1, "shortComponent":Ljava/lang/String;
    if-eqz v10, :cond_0

    #@7
    .line 190
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 193
    .end local v1    # "shortComponent":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    #@c
    .line 194
    .local v4, "callerPackages":Ljava/lang/String;
    const/4 v3, 0x0

    #@d
    .line 195
    .local v3, "callerPackageCount":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@10
    move-result-object v12

    #@11
    .line 196
    .local v12, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v12, :cond_1

    #@13
    .line 198
    :try_start_0
    invoke-interface {v12, p2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@16
    move-result-object v9

    #@17
    .line 199
    .local v9, "callerPackagesArray":[Ljava/lang/String;
    if-eqz v9, :cond_1

    #@19
    .line 200
    array-length v3, v9

    #@1a
    .line 201
    invoke-static {v9}, Lcom/android/server/firewall/IntentFirewall;->joinPackages([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v4

    #@1e
    .line 209
    .end local v4    # "callerPackages":Ljava/lang/String;
    .end local v9    # "callerPackagesArray":[Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    .line 210
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    #@29
    move-result v8

    #@2a
    move v0, p0

    #@2b
    move v2, p2

    #@2c
    move-object/from16 v6, p3

    #@2e
    .line 208
    invoke-static/range {v0 .. v8}, Lcom/android/server/EventLogTags;->writeIfwIntentMatched(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@31
    .line 185
    return-void

    #@32
    .line 203
    .restart local v4    # "callerPackages":Ljava/lang/String;
    :catch_0
    move-exception v11

    #@33
    .line 204
    .local v11, "ex":Landroid/os/RemoteException;
    const-string/jumbo v0, "IntentFirewall"

    #@36
    const-string/jumbo v2, "Remote exception while retrieving packages"

    #@39
    invoke-static {v0, v2, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    goto :goto_0
.end method

.method static parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 385
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 387
    .local v0, "elementName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/firewall/IntentFirewall;->factoryMap:Ljava/util/HashMap;

    #@6
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/server/firewall/FilterFactory;

    #@c
    .line 389
    .local v1, "factory":Lcom/android/server/firewall/FilterFactory;
    if-nez v1, :cond_0

    #@e
    .line 390
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Unknown element in filter list: "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 392
    :cond_0
    invoke-virtual {v1, p0}, Lcom/android/server/firewall/FilterFactory;->newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    #@2b
    move-result-object v2

    #@2c
    return-object v2
.end method

.method private readRules(Ljava/io/File;[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V
    .locals 20
    .param p1, "rulesFile"    # Ljava/io/File;
    .param p2, "resolvers"    # [Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    #@0
    .prologue
    .line 302
    new-instance v14, Ljava/util/ArrayList;

    #@2
    const/16 v16, 0x3

    #@4
    move/from16 v0, v16

    #@6
    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 303
    .local v14, "rulesByType":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;>;"
    const/4 v6, 0x0

    #@a
    .local v6, "i":I
    :goto_0
    const/16 v16, 0x3

    #@c
    move/from16 v0, v16

    #@e
    if-ge v6, v0, :cond_0

    #@10
    .line 304
    new-instance v16, Ljava/util/ArrayList;

    #@12
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@15
    move-object/from16 v0, v16

    #@17
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1a
    .line 303
    add-int/lit8 v6, v6, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 309
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    #@1f
    move-object/from16 v0, p1

    #@21
    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    #@24
    .line 316
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@27
    move-result-object v8

    #@28
    .line 318
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v16, 0x0

    #@2a
    move-object/from16 v0, v16

    #@2c
    invoke-interface {v8, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@2f
    .line 320
    const-string/jumbo v16, "rules"

    #@32
    move-object/from16 v0, v16

    #@34
    invoke-static {v8, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@37
    .line 322
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3a
    move-result v7

    #@3b
    .line 323
    .local v7, "outerDepth":I
    :cond_1
    :goto_1
    invoke-static {v8, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@3e
    move-result v16

    #@3f
    if-eqz v16, :cond_5

    #@41
    .line 324
    const/4 v12, -0x1

    #@42
    .line 326
    .local v12, "ruleType":I
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@45
    move-result-object v15

    #@46
    .line 327
    .local v15, "tagName":Ljava/lang/String;
    const-string/jumbo v16, "activity"

    #@49
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v16

    #@4d
    if-eqz v16, :cond_3

    #@4f
    .line 328
    const/4 v12, 0x0

    #@50
    .line 335
    :cond_2
    :goto_2
    const/16 v16, -0x1

    #@52
    move/from16 v0, v16

    #@54
    if-eq v12, v0, :cond_1

    #@56
    .line 336
    new-instance v10, Lcom/android/server/firewall/IntentFirewall$Rule;

    #@58
    const/16 v16, 0x0

    #@5a
    move-object/from16 v0, v16

    #@5c
    invoke-direct {v10, v0}, Lcom/android/server/firewall/IntentFirewall$Rule;-><init>(Lcom/android/server/firewall/IntentFirewall$Rule;)V

    #@5f
    .line 338
    .local v10, "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@62
    move-result-object v13

    #@63
    check-cast v13, Ljava/util/List;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@65
    .line 343
    .local v13, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    :try_start_2
    invoke-virtual {v10, v8}, Lcom/android/server/firewall/IntentFirewall$Rule;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@68
    .line 349
    :try_start_3
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6b
    goto :goto_1

    #@6c
    .line 352
    .end local v7    # "outerDepth":I
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    .end local v12    # "ruleType":I
    .end local v13    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    .end local v15    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@6d
    .line 355
    .local v4, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string/jumbo v16, "IntentFirewall"

    #@70
    new-instance v17, Ljava/lang/StringBuilder;

    #@72
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v18, "Error reading intent firewall rules from "

    #@78
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v17

    #@7c
    move-object/from16 v0, v17

    #@7e
    move-object/from16 v1, p1

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v17

    #@84
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v17

    #@88
    move-object/from16 v0, v16

    #@8a
    move-object/from16 v1, v17

    #@8c
    invoke-static {v0, v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8f
    .line 362
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    #@92
    .line 356
    :goto_3
    return-void

    #@93
    .line 310
    .end local v4    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    #@94
    .line 312
    .local v2, "ex":Ljava/io/FileNotFoundException;
    return-void

    #@95
    .line 329
    .end local v2    # "ex":Ljava/io/FileNotFoundException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "outerDepth":I
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "ruleType":I
    .restart local v15    # "tagName":Ljava/lang/String;
    :cond_3
    :try_start_6
    const-string/jumbo v16, "broadcast"

    #@98
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v16

    #@9c
    if-eqz v16, :cond_4

    #@9e
    .line 330
    const/4 v12, 0x1

    #@9f
    goto :goto_2

    #@a0
    .line 331
    :cond_4
    const-string/jumbo v16, "service"

    #@a3
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v16

    #@a7
    if-eqz v16, :cond_2

    #@a9
    .line 332
    const/4 v12, 0x2

    #@aa
    goto :goto_2

    #@ab
    .line 344
    .restart local v10    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    .restart local v13    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    :catch_2
    move-exception v4

    #@ac
    .line 345
    .restart local v4    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v16, "IntentFirewall"

    #@af
    new-instance v17, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v18, "Error reading an intent firewall rule from "

    #@b7
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v17

    #@bb
    move-object/from16 v0, v17

    #@bd
    move-object/from16 v1, p1

    #@bf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v17

    #@c3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v17

    #@c7
    move-object/from16 v0, v16

    #@c9
    move-object/from16 v1, v17

    #@cb
    invoke-static {v0, v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@ce
    goto/16 :goto_1

    #@d0
    .line 357
    .end local v4    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7    # "outerDepth":I
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    .end local v12    # "ruleType":I
    .end local v13    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    .end local v15    # "tagName":Ljava/lang/String;
    :catch_3
    move-exception v3

    #@d1
    .line 358
    .local v3, "ex":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v16, "IntentFirewall"

    #@d4
    new-instance v17, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v18, "Error reading intent firewall rules from "

    #@dc
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v17

    #@e0
    move-object/from16 v0, v17

    #@e2
    move-object/from16 v1, p1

    #@e4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v17

    #@e8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v17

    #@ec
    move-object/from16 v0, v16

    #@ee
    move-object/from16 v1, v17

    #@f0
    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@f3
    .line 362
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    #@f6
    .line 359
    :goto_4
    return-void

    #@f7
    .line 362
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v7    # "outerDepth":I
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    #@fa
    .line 368
    :goto_5
    const/4 v12, 0x0

    #@fb
    .restart local v12    # "ruleType":I
    :goto_6
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@fe
    move-result v16

    #@ff
    move/from16 v0, v16

    #@101
    if-ge v12, v0, :cond_9

    #@103
    .line 369
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@106
    move-result-object v13

    #@107
    check-cast v13, Ljava/util/List;

    #@109
    .line 370
    .restart local v13    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    aget-object v9, p2, v12

    #@10b
    .line 372
    .local v9, "resolver":Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    const/4 v11, 0x0

    #@10c
    .local v11, "ruleIndex":I
    :goto_7
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@10f
    move-result v16

    #@110
    move/from16 v0, v16

    #@112
    if-ge v11, v0, :cond_8

    #@114
    .line 373
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@117
    move-result-object v10

    #@118
    check-cast v10, Lcom/android/server/firewall/IntentFirewall$Rule;

    #@11a
    .line 374
    .restart local v10    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    const/4 v6, 0x0

    #@11b
    :goto_8
    invoke-virtual {v10}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilterCount()I

    #@11e
    move-result v16

    #@11f
    move/from16 v0, v16

    #@121
    if-ge v6, v0, :cond_6

    #@123
    .line 375
    invoke-virtual {v10, v6}, Lcom/android/server/firewall/IntentFirewall$Rule;->getIntentFilter(I)Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    #@126
    move-result-object v16

    #@127
    move-object/from16 v0, v16

    #@129
    invoke-virtual {v9, v0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    #@12c
    .line 374
    add-int/lit8 v6, v6, 0x1

    #@12e
    goto :goto_8

    #@12f
    .line 363
    .end local v9    # "resolver":Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    .end local v10    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    .end local v11    # "ruleIndex":I
    .end local v12    # "ruleType":I
    .end local v13    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    :catch_4
    move-exception v3

    #@130
    .line 364
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string/jumbo v16, "IntentFirewall"

    #@133
    new-instance v17, Ljava/lang/StringBuilder;

    #@135
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    const-string/jumbo v18, "Error while closing "

    #@13b
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v17

    #@13f
    move-object/from16 v0, v17

    #@141
    move-object/from16 v1, p1

    #@143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v17

    #@147
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14a
    move-result-object v17

    #@14b
    move-object/from16 v0, v16

    #@14d
    move-object/from16 v1, v17

    #@14f
    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@152
    goto :goto_5

    #@153
    .line 363
    .end local v7    # "outerDepth":I
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v3

    #@154
    .line 364
    const-string/jumbo v16, "IntentFirewall"

    #@157
    new-instance v17, Ljava/lang/StringBuilder;

    #@159
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@15c
    const-string/jumbo v18, "Error while closing "

    #@15f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v17

    #@163
    move-object/from16 v0, v17

    #@165
    move-object/from16 v1, p1

    #@167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v17

    #@16b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16e
    move-result-object v17

    #@16f
    move-object/from16 v0, v16

    #@171
    move-object/from16 v1, v17

    #@173
    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@176
    goto :goto_4

    #@177
    .line 363
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v4    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v3

    #@178
    .line 364
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string/jumbo v16, "IntentFirewall"

    #@17b
    new-instance v17, Ljava/lang/StringBuilder;

    #@17d
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@180
    const-string/jumbo v18, "Error while closing "

    #@183
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v17

    #@187
    move-object/from16 v0, v17

    #@189
    move-object/from16 v1, p1

    #@18b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v17

    #@18f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@192
    move-result-object v17

    #@193
    move-object/from16 v0, v16

    #@195
    move-object/from16 v1, v17

    #@197
    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19a
    goto/16 :goto_3

    #@19c
    .line 360
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v4    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v16

    #@19d
    .line 362
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    #@1a0
    .line 360
    :goto_9
    throw v16

    #@1a1
    .line 363
    :catch_7
    move-exception v3

    #@1a2
    .line 364
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string/jumbo v17, "IntentFirewall"

    #@1a5
    new-instance v18, Ljava/lang/StringBuilder;

    #@1a7
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1aa
    const-string/jumbo v19, "Error while closing "

    #@1ad
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v18

    #@1b1
    move-object/from16 v0, v18

    #@1b3
    move-object/from16 v1, p1

    #@1b5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v18

    #@1b9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bc
    move-result-object v18

    #@1bd
    move-object/from16 v0, v17

    #@1bf
    move-object/from16 v1, v18

    #@1c1
    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c4
    goto :goto_9

    #@1c5
    .line 377
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v7    # "outerDepth":I
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "resolver":Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    .restart local v10    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    .restart local v11    # "ruleIndex":I
    .restart local v12    # "ruleType":I
    .restart local v13    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    :cond_6
    const/4 v6, 0x0

    #@1c6
    :goto_a
    invoke-virtual {v10}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentFilterCount()I

    #@1c9
    move-result v16

    #@1ca
    move/from16 v0, v16

    #@1cc
    if-ge v6, v0, :cond_7

    #@1ce
    .line 378
    invoke-virtual {v10, v6}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentFilter(I)Landroid/content/ComponentName;

    #@1d1
    move-result-object v16

    #@1d2
    move-object/from16 v0, v16

    #@1d4
    invoke-virtual {v9, v0, v10}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->addComponentFilter(Landroid/content/ComponentName;Lcom/android/server/firewall/IntentFirewall$Rule;)V

    #@1d7
    .line 377
    add-int/lit8 v6, v6, 0x1

    #@1d9
    goto :goto_a

    #@1da
    .line 372
    :cond_7
    add-int/lit8 v11, v11, 0x1

    #@1dc
    goto/16 :goto_7

    #@1de
    .line 368
    .end local v10    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    #@1e0
    goto/16 :goto_6

    #@1e2
    .line 298
    .end local v9    # "resolver":Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    .end local v11    # "ruleIndex":I
    .end local v13    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    :cond_9
    return-void
.end method

.method private readRulesDir(Ljava/io/File;)V
    .locals 10
    .param p1, "rulesDir"    # Ljava/io/File;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v9, 0x2

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 268
    const/4 v4, 0x3

    #@5
    new-array v3, v4, [Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    #@7
    .line 269
    .local v3, "resolvers":[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    array-length v4, v3

    #@9
    if-ge v2, v4, :cond_0

    #@b
    .line 270
    new-instance v4, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    #@d
    invoke-direct {v4, v5}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V

    #@10
    aput-object v4, v3, v2

    #@12
    .line 269
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 273
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@18
    move-result-object v1

    #@19
    .line 274
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    #@1b
    .line 275
    const/4 v2, 0x0

    #@1c
    :goto_1
    array-length v4, v1

    #@1d
    if-ge v2, v4, :cond_2

    #@1f
    .line 276
    aget-object v0, v1, v2

    #@21
    .line 278
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    const-string/jumbo v5, ".xml"

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_1

    #@2e
    .line 279
    invoke-direct {p0, v0, v3}, Lcom/android/server/firewall/IntentFirewall;->readRules(Ljava/io/File;[Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;)V

    #@31
    .line 275
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_1

    #@34
    .line 284
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    const-string/jumbo v4, "IntentFirewall"

    #@37
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v6, "Read new rules (A:"

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    aget-object v6, v3, v7

    #@45
    invoke-virtual {v6}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->filterSet()Ljava/util/Set;

    #@48
    move-result-object v6

    #@49
    invoke-interface {v6}, Ljava/util/Set;->size()I

    #@4c
    move-result v6

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    .line 285
    const-string/jumbo v6, " B:"

    #@54
    .line 284
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    .line 285
    aget-object v6, v3, v8

    #@5a
    invoke-virtual {v6}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->filterSet()Ljava/util/Set;

    #@5d
    move-result-object v6

    #@5e
    invoke-interface {v6}, Ljava/util/Set;->size()I

    #@61
    move-result v6

    #@62
    .line 284
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    .line 286
    const-string/jumbo v6, " S:"

    #@69
    .line 284
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    .line 286
    aget-object v6, v3, v9

    #@6f
    invoke-virtual {v6}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->filterSet()Ljava/util/Set;

    #@72
    move-result-object v6

    #@73
    invoke-interface {v6}, Ljava/util/Set;->size()I

    #@76
    move-result v6

    #@77
    .line 284
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v5

    #@7b
    .line 286
    const-string/jumbo v6, ")"

    #@7e
    .line 284
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v5

    #@82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v5

    #@86
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    .line 288
    iget-object v4, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    #@8b
    invoke-interface {v4}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->getAMSLock()Ljava/lang/Object;

    #@8e
    move-result-object v5

    #@8f
    monitor-enter v5

    #@90
    .line 289
    const/4 v4, 0x0

    #@91
    :try_start_0
    aget-object v4, v3, v4

    #@93
    iput-object v4, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    #@95
    .line 290
    const/4 v4, 0x1

    #@96
    aget-object v4, v3, v4

    #@98
    iput-object v4, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    #@9a
    .line 291
    const/4 v4, 0x2

    #@9b
    aget-object v4, v3, v4

    #@9d
    iput-object v4, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9f
    monitor-exit v5

    #@a0
    .line 267
    return-void

    #@a1
    .line 288
    :catchall_0
    move-exception v4

    #@a2
    monitor-exit v5

    #@a3
    throw v4
.end method


# virtual methods
.method public checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "receivingUid"    # I

    #@0
    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mBroadcastResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    #@2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@5
    move-result-object v2

    #@6
    const/4 v3, 0x1

    #@7
    move-object v0, p0

    #@8
    move-object v4, p1

    #@9
    move v5, p2

    #@a
    move v6, p3

    #@b
    move-object v7, p4

    #@c
    move v8, p5

    #@d
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method checkComponentPermission(Ljava/lang/String;IIIZ)Z
    .locals 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "owningUid"    # I
    .param p5, "exported"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 598
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/firewall/IntentFirewall$AMSInterface;

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    invoke-interface/range {v0 .. v5}, Lcom/android/server/firewall/IntentFirewall$AMSInterface;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    move v0, v6

    #@11
    goto :goto_0
.end method

.method public checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z
    .locals 16
    .param p1, "resolver"    # Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
    .param p2, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p3, "intentType"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "callerUid"    # I
    .param p6, "callerPid"    # I
    .param p7, "resolvedType"    # Ljava/lang/String;
    .param p8, "receivingUid"    # I

    #@0
    .prologue
    .line 148
    const/4 v15, 0x0

    #@1
    .line 149
    .local v15, "log":Z
    const/4 v12, 0x0

    #@2
    .line 154
    .local v12, "block":Z
    const/4 v5, 0x0

    #@3
    const/4 v6, 0x0

    #@4
    move-object/from16 v0, p1

    #@6
    move-object/from16 v1, p4

    #@8
    move-object/from16 v2, p7

    #@a
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    #@d
    move-result-object v13

    #@e
    .line 155
    .local v13, "candidateRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    if-nez v13, :cond_0

    #@10
    .line 156
    new-instance v13, Ljava/util/ArrayList;

    #@12
    .end local v13    # "candidateRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 158
    .restart local v13    # "candidateRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    :cond_0
    move-object/from16 v0, p1

    #@17
    move-object/from16 v1, p2

    #@19
    invoke-virtual {v0, v1, v13}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->queryByComponent(Landroid/content/ComponentName;Ljava/util/List;)V

    #@1c
    .line 162
    const/4 v14, 0x0

    #@1d
    .end local v12    # "block":Z
    .end local v15    # "log":Z
    .local v14, "i":I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@20
    move-result v5

    #@21
    if-ge v14, v5, :cond_1

    #@23
    .line 163
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Lcom/android/server/firewall/IntentFirewall$Rule;

    #@29
    .local v4, "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    move-object/from16 v5, p0

    #@2b
    move-object/from16 v6, p2

    #@2d
    move-object/from16 v7, p4

    #@2f
    move/from16 v8, p5

    #@31
    move/from16 v9, p6

    #@33
    move-object/from16 v10, p7

    #@35
    move/from16 v11, p8

    #@37
    .line 164
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/firewall/IntentFirewall$Rule;->matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_3

    #@3d
    .line 166
    invoke-virtual {v4}, Lcom/android/server/firewall/IntentFirewall$Rule;->getBlock()Z

    #@40
    move-result v5

    #@41
    or-int/2addr v12, v5

    #@42
    .line 167
    .local v12, "block":Z
    invoke-virtual {v4}, Lcom/android/server/firewall/IntentFirewall$Rule;->getLog()Z

    #@45
    move-result v5

    #@46
    or-int/2addr v15, v5

    #@47
    .line 171
    .local v15, "log":Z
    if-eqz v12, :cond_3

    #@49
    if-eqz v15, :cond_3

    #@4b
    .line 177
    .end local v4    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    .end local v12    # "block":Z
    .end local v15    # "log":Z
    :cond_1
    if-eqz v15, :cond_2

    #@4d
    .line 178
    move/from16 v0, p3

    #@4f
    move-object/from16 v1, p4

    #@51
    move/from16 v2, p5

    #@53
    move-object/from16 v3, p7

    #@55
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/firewall/IntentFirewall;->logIntent(ILandroid/content/Intent;ILjava/lang/String;)V

    #@58
    .line 181
    :cond_2
    if-eqz v12, :cond_4

    #@5a
    const/4 v5, 0x0

    #@5b
    :goto_1
    return v5

    #@5c
    .line 162
    .restart local v4    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 181
    .end local v4    # "rule":Lcom/android/server/firewall/IntentFirewall$Rule;
    :cond_4
    const/4 v5, 0x1

    #@60
    goto :goto_1
.end method

.method public checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .locals 9
    .param p1, "resolvedService"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resolvedApp"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mServiceResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    #@2
    .line 136
    iget v8, p6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@4
    .line 135
    const/4 v3, 0x2

    #@5
    move-object v0, p0

    #@6
    move-object v2, p1

    #@7
    move-object v4, p2

    #@8
    move v5, p3

    #@9
    move v6, p4

    #@a
    move-object v7, p5

    #@b
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "resolvedApp"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    #@2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@5
    move-result-object v2

    #@6
    .line 130
    iget v8, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@8
    .line 129
    const/4 v3, 0x0

    #@9
    move-object v0, p0

    #@a
    move-object v4, p1

    #@b
    move v5, p2

    #@c
    move v6, p3

    #@d
    move-object v7, p4

    #@e
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method signaturesMatch(II)Z
    .locals 5
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 604
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v1

    #@5
    .line 605
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result v3

    #@9
    if-nez v3, :cond_0

    #@b
    const/4 v2, 0x1

    #@c
    :cond_0
    return v2

    #@d
    .line 606
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    #@e
    .line 607
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "IntentFirewall"

    #@11
    const-string/jumbo v4, "Remote exception while checking signatures"

    #@14
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 608
    return v2
.end method
