.class final Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 9100
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    #@5
    .line 9307
    new-instance v0, Landroid/util/ArrayMap;

    #@7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@a
    .line 9306
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    #@c
    .line 9100
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public final addProvider(Landroid/content/pm/PackageParser$Provider;)V
    .locals 6
    .param p1, "p"    # Landroid/content/pm/PackageParser$Provider;

    #@0
    .prologue
    .line 9144
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 9145
    const-string/jumbo v3, "PackageManager"

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "Provider "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    const-string/jumbo v5, " already defined; ignoring"

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 9146
    return-void

    #@32
    .line 9149
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    #@34
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v3, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 9156
    iget-object v3, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v0

    #@41
    .line 9158
    .local v0, "NI":I
    const/4 v2, 0x0

    #@42
    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@44
    .line 9159
    iget-object v3, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v1

    #@4a
    check-cast v1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@4c
    .line 9164
    .local v1, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->debugCheck()Z

    #@4f
    move-result v3

    #@50
    if-nez v3, :cond_1

    #@52
    .line 9165
    const-string/jumbo v3, "PackageManager"

    #@55
    new-instance v4, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v5, "==> For Provider "

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    iget-object v5, p1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@63
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 9167
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    #@73
    .line 9158
    add-int/lit8 v2, v2, 0x1

    #@75
    goto :goto_0

    #@76
    .line 9143
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_2
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "dest"    # Ljava/util/List;

    #@0
    .prologue
    .line 9191
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;Ljava/util/List;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;Ljava/util/List;)Z
    .locals 6
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    #@1
    .line 9193
    iget-object v3, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    #@3
    iget-object v1, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@5
    .line 9194
    .local v1, "filterPi":Landroid/content/pm/ProviderInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@8
    move-result v3

    #@9
    add-int/lit8 v2, v3, -0x1

    #@b
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@d
    .line 9195
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@13
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@15
    .line 9196
    .local v0, "destPi":Landroid/content/pm/ProviderInfo;
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@17
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    #@19
    if-ne v3, v4, :cond_0

    #@1b
    .line 9197
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    #@1d
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    #@1f
    if-ne v3, v4, :cond_0

    #@21
    .line 9198
    return v5

    #@22
    .line 9194
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@24
    goto :goto_0

    #@25
    .line 9201
    .end local v0    # "destPi":Landroid/content/pm/ProviderInfo;
    :cond_1
    const/4 v3, 0x1

    #@26
    return v3
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 9278
    check-cast p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@2
    .end local p3    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)V

    #@5
    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@0
    .prologue
    .line 9280
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 9282
    iget-object v0, p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    #@5
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 9281
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    .line 9283
    const/16 v0, 0x20

    #@12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@15
    .line 9284
    iget-object v0, p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    #@17
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Provider;->printComponentShortName(Ljava/io/PrintWriter;)V

    #@1a
    .line 9285
    const-string/jumbo v0, " filter "

    #@1d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 9286
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@23
    move-result v0

    #@24
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b
    .line 9279
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    #@0
    .prologue
    move-object v0, p3

    #@1
    .line 9295
    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    #@3
    .line 9296
    .local v0, "provider":Landroid/content/pm/PackageParser$Provider;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 9297
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 9296
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 9298
    const/16 v1, 0x20

    #@13
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    #@16
    .line 9299
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Provider;->printComponentShortName(Ljava/io/PrintWriter;)V

    #@19
    .line 9300
    const/4 v1, 0x1

    #@1a
    if-le p4, v1, :cond_0

    #@1c
    .line 9301
    const-string/jumbo v1, " ("

    #@1f
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    #@25
    const-string/jumbo v1, " filters)"

    #@28
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    .line 9303
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@2e
    .line 9294
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 9290
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@0
    .prologue
    .line 9291
    iget-object v0, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    #@2
    return-object v0
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 9210
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Z
    .locals 4
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 9211
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-virtual {v3, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    .line 9212
    const/4 v2, 0x1

    #@a
    return v2

    #@b
    .line 9213
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    #@d
    iget-object v0, v3, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    #@f
    .line 9214
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2

    #@11
    .line 9215
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    #@13
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    #@15
    .line 9216
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_2

    #@17
    .line 9220
    iget v3, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@19
    and-int/lit8 v3, v3, 0x1

    #@1b
    if-nez v3, :cond_1

    #@1d
    .line 9221
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    #@20
    move-result v2

    #@21
    .line 9220
    :cond_1
    return v2

    #@22
    .line 9224
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return v2
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 9228
    check-cast p2, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@2
    .end local p2    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@0
    .prologue
    .line 9230
    iget-object v0, p2, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    #@2
    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    #@4
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 9205
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 9206
    new-array v0, p1, [Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@2
    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 9
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 9236
    sget-object v5, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-virtual {v5, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@6
    move-result v5

    #@7
    if-nez v5, :cond_0

    #@9
    .line 9237
    return-object v8

    #@a
    .line 9238
    :cond_0
    move-object v0, p1

    #@b
    .line 9239
    .local v0, "info":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@d
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@f
    iget-object v6, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    #@11
    iget-object v6, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@13
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    #@15
    invoke-virtual {v5, v6, v7, p3}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;II)Z

    #@18
    move-result v5

    #@19
    if-nez v5, :cond_1

    #@1b
    .line 9240
    return-object v8

    #@1c
    .line 9242
    :cond_1
    iget-object v2, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    #@1e
    .line 9243
    .local v2, "provider":Landroid/content/pm/PackageParser$Provider;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@20
    iget-boolean v5, v5, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    #@22
    if-eqz v5, :cond_2

    #@24
    iget-object v5, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    #@26
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@28
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2a
    and-int/lit8 v5, v5, 0x1

    #@2c
    if-nez v5, :cond_2

    #@2e
    .line 9245
    return-object v8

    #@2f
    .line 9247
    :cond_2
    iget-object v5, v2, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    #@31
    iget-object v3, v5, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    #@33
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    #@35
    .line 9248
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_3

    #@37
    .line 9249
    return-object v8

    #@38
    .line 9251
    :cond_3
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    #@3a
    .line 9252
    invoke-virtual {v3, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3d
    move-result-object v6

    #@3e
    .line 9251
    invoke-static {v2, v5, v6, p3}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    #@41
    move-result-object v1

    #@42
    .line 9253
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_4

    #@44
    .line 9254
    return-object v8

    #@45
    .line 9256
    :cond_4
    new-instance v4, Landroid/content/pm/ResolveInfo;

    #@47
    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    #@4a
    .line 9257
    .local v4, "res":Landroid/content/pm/ResolveInfo;
    iput-object v1, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@4c
    .line 9258
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    #@4e
    and-int/lit8 v5, v5, 0x40

    #@50
    if-eqz v5, :cond_5

    #@52
    .line 9259
    iput-object p1, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@54
    .line 9261
    :cond_5
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->getPriority()I

    #@57
    move-result v5

    #@58
    iput v5, v4, Landroid/content/pm/ResolveInfo;->priority:I

    #@5a
    .line 9262
    iget-object v5, v2, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    #@5c
    iget v5, v5, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    #@5e
    iput v5, v4, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    #@60
    .line 9263
    iput p2, v4, Landroid/content/pm/ResolveInfo;->match:I

    #@62
    .line 9264
    iget-boolean v5, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->hasDefault:Z

    #@64
    iput-boolean v5, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    #@66
    .line 9265
    iget v5, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->labelRes:I

    #@68
    iput v5, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@6a
    .line 9266
    iget-object v5, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@6c
    iput-object v5, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@6e
    .line 9267
    iget v5, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->icon:I

    #@70
    iput v5, v4, Landroid/content/pm/ResolveInfo;->icon:I

    #@72
    .line 9268
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    #@74
    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@76
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@79
    move-result v5

    #@7a
    iput-boolean v5, v4, Landroid/content/pm/ResolveInfo;->system:Z

    #@7c
    .line 9269
    return-object v4
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 9234
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->newResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 9110
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-virtual {v1, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 9111
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 9112
    :cond_0
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    #@d
    .line 9114
    const/high16 v1, 0x10000

    #@f
    and-int/2addr v1, p3

    #@10
    if-eqz v1, :cond_1

    #@12
    const/4 v0, 0x1

    #@13
    .line 9113
    :cond_1
    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 9104
    if-eqz p3, :cond_0

    #@2
    const/high16 v0, 0x10000

    #@4
    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    #@6
    .line 9105
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 9104
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p4, "packageProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Provider;>;"
    const/4 v1, 0x0

    #@1
    .line 9119
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 9120
    return-object v1

    #@a
    .line 9121
    :cond_0
    if-nez p4, :cond_1

    #@c
    .line 9122
    return-object v1

    #@d
    .line 9124
    :cond_1
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    #@f
    .line 9125
    const/high16 v0, 0x10000

    #@11
    and-int/2addr v0, p3

    #@12
    if-eqz v0, :cond_3

    #@14
    const/4 v3, 0x1

    #@15
    .line 9126
    .local v3, "defaultOnly":Z
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v6

    #@19
    .line 9128
    .local v6, "N":I
    new-instance v4, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@1e
    .line 9131
    .local v4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    const/4 v8, 0x0

    #@1f
    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_4

    #@21
    .line 9132
    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    #@27
    iget-object v9, v0, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    #@29
    .line 9133
    .local v9, "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    if-eqz v9, :cond_2

    #@2b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v0

    #@2f
    if-lez v0, :cond_2

    #@31
    .line 9135
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v0

    #@35
    new-array v7, v0, [Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@37
    .line 9136
    .local v7, "array":[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3a
    .line 9137
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 9131
    .end local v7    # "array":[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 9125
    .end local v3    # "defaultOnly":Z
    .end local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    .end local v6    # "N":I
    .end local v8    # "i":I
    .end local v9    # "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    :cond_3
    const/4 v3, 0x0

    #@41
    .restart local v3    # "defaultOnly":Z
    goto :goto_0

    #@42
    .restart local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    .restart local v6    # "N":I
    .restart local v8    # "i":I
    :cond_4
    move-object v0, p0

    #@43
    move-object v1, p1

    #@44
    move-object v2, p2

    #@45
    move v5, p5

    #@46
    .line 9140
    invoke-super/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    #@49
    move-result-object v0

    #@4a
    return-object v0
.end method

.method public final removeProvider(Landroid/content/pm/PackageParser$Provider;)V
    .locals 5
    .param p1, "p"    # Landroid/content/pm/PackageParser$Provider;

    #@0
    .prologue
    .line 9172
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 9178
    iget-object v3, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    .line 9180
    .local v0, "NI":I
    const/4 v2, 0x0

    #@10
    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@12
    .line 9181
    iget-object v3, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    #@1a
    .line 9186
    .local v1, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    #@1d
    .line 9180
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 9171
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_0
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 9274
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get6()Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@7
    .line 9273
    return-void
.end method
