.class final Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/PackageParser$ServiceIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Service;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 8886
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    #@5
    .line 9096
    new-instance v0, Landroid/util/ArrayMap;

    #@7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@a
    .line 9095
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    #@c
    .line 8886
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public final addService(Landroid/content/pm/PackageParser$Service;)V
    .locals 6
    .param p1, "s"    # Landroid/content/pm/PackageParser$Service;

    #@0
    .prologue
    .line 8928
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v3, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 8935
    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    .line 8937
    .local v0, "NI":I
    const/4 v2, 0x0

    #@10
    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@12
    .line 8938
    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@1a
    .line 8943
    .local v1, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->debugCheck()Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_0

    #@20
    .line 8944
    const-string/jumbo v3, "PackageManager"

    #@23
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "==> For Service "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    iget-object v5, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@31
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 8946
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    #@41
    .line 8937
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_0

    #@44
    .line 8927
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_1
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "dest"    # Ljava/util/List;

    #@0
    .prologue
    .line 8970
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;Ljava/util/List;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;Ljava/util/List;)Z
    .locals 6
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ServiceIntentInfo;",
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
    .line 8972
    iget-object v3, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    #@3
    iget-object v1, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@5
    .line 8973
    .local v1, "filterSi":Landroid/content/pm/ServiceInfo;
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
    .line 8974
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@13
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@15
    .line 8975
    .local v0, "destAi":Landroid/content/pm/ServiceInfo;
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@17
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@19
    if-ne v3, v4, :cond_0

    #@1b
    .line 8976
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@1d
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@1f
    if-ne v3, v4, :cond_0

    #@21
    .line 8977
    return v5

    #@22
    .line 8973
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@24
    goto :goto_0

    #@25
    .line 8980
    .end local v0    # "destAi":Landroid/content/pm/ServiceInfo;
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
    .line 9055
    check-cast p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@2
    .end local p3    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)V

    #@5
    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@0
    .prologue
    .line 9057
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 9058
    iget-object v0, p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    #@5
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 9057
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    .line 9059
    const/16 v0, 0x20

    #@12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@15
    .line 9060
    iget-object v0, p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    #@17
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Service;->printComponentShortName(Ljava/io/PrintWriter;)V

    #@1a
    .line 9061
    const-string/jumbo v0, " filter "

    #@1d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 9062
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
    .line 9056
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
    .line 9071
    check-cast v0, Landroid/content/pm/PackageParser$Service;

    #@3
    .line 9072
    .local v0, "service":Landroid/content/pm/PackageParser$Service;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 9073
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 9072
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 9074
    const/16 v1, 0x20

    #@13
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    #@16
    .line 9075
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Service;->printComponentShortName(Ljava/io/PrintWriter;)V

    #@19
    .line 9076
    const/4 v1, 0x1

    #@1a
    if-le p4, v1, :cond_0

    #@1c
    .line 9077
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
    .line 9079
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@2e
    .line 9070
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 9066
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ServiceIntentInfo;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ServiceIntentInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@0
    .prologue
    .line 9067
    iget-object v0, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    #@2
    return-object v0
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 8989
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ServiceIntentInfo;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ServiceIntentInfo;I)Z
    .locals 4
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 8990
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-virtual {v3, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    const/4 v2, 0x1

    #@a
    return v2

    #@b
    .line 8991
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    #@d
    iget-object v0, v3, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    #@f
    .line 8992
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2

    #@11
    .line 8993
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    #@13
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    #@15
    .line 8994
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_2

    #@17
    .line 8998
    iget v3, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@19
    and-int/lit8 v3, v3, 0x1

    #@1b
    if-nez v3, :cond_1

    #@1d
    .line 8999
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    #@20
    move-result v2

    #@21
    .line 8998
    :cond_1
    return v2

    #@22
    .line 9002
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
    .line 9006
    check-cast p2, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@2
    .end local p2    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@0
    .prologue
    .line 9008
    iget-object v0, p2, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    #@2
    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

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
    .line 8984
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 8985
    new-array v0, p1, [Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@2
    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 9
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 9014
    sget-object v5, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-virtual {v5, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@6
    move-result v5

    #@7
    if-nez v5, :cond_0

    #@9
    return-object v8

    #@a
    .line 9015
    :cond_0
    move-object v0, p1

    #@b
    .line 9016
    .local v0, "info":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@d
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@f
    iget-object v6, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    #@11
    iget-object v6, v6, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@13
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    #@15
    invoke-virtual {v5, v6, v7, p3}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;II)Z

    #@18
    move-result v5

    #@19
    if-nez v5, :cond_1

    #@1b
    .line 9017
    return-object v8

    #@1c
    .line 9019
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    #@1e
    .line 9020
    .local v3, "service":Landroid/content/pm/PackageParser$Service;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@20
    iget-boolean v5, v5, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    #@22
    if-eqz v5, :cond_2

    #@24
    iget-object v5, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    #@26
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@28
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2a
    and-int/lit8 v5, v5, 0x1

    #@2c
    if-nez v5, :cond_2

    #@2e
    .line 9022
    return-object v8

    #@2f
    .line 9024
    :cond_2
    iget-object v5, v3, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    #@31
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    #@33
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    #@35
    .line 9025
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_3

    #@37
    .line 9026
    return-object v8

    #@38
    .line 9028
    :cond_3
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    #@3a
    .line 9029
    invoke-virtual {v1, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3d
    move-result-object v6

    #@3e
    .line 9028
    invoke-static {v3, v5, v6, p3}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    #@41
    move-result-object v4

    #@42
    .line 9030
    .local v4, "si":Landroid/content/pm/ServiceInfo;
    if-nez v4, :cond_4

    #@44
    .line 9031
    return-object v8

    #@45
    .line 9033
    :cond_4
    new-instance v2, Landroid/content/pm/ResolveInfo;

    #@47
    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    #@4a
    .line 9034
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    iput-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4c
    .line 9035
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    #@4e
    and-int/lit8 v5, v5, 0x40

    #@50
    if-eqz v5, :cond_5

    #@52
    .line 9036
    iput-object p1, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@54
    .line 9038
    :cond_5
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->getPriority()I

    #@57
    move-result v5

    #@58
    iput v5, v2, Landroid/content/pm/ResolveInfo;->priority:I

    #@5a
    .line 9039
    iget-object v5, v3, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    #@5c
    iget v5, v5, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    #@5e
    iput v5, v2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    #@60
    .line 9040
    iput p2, v2, Landroid/content/pm/ResolveInfo;->match:I

    #@62
    .line 9041
    iget-boolean v5, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->hasDefault:Z

    #@64
    iput-boolean v5, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    #@66
    .line 9042
    iget v5, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->labelRes:I

    #@68
    iput v5, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@6a
    .line 9043
    iget-object v5, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@6c
    iput-object v5, v2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@6e
    .line 9044
    iget v5, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->icon:I

    #@70
    iput v5, v2, Landroid/content/pm/ResolveInfo;->icon:I

    #@72
    .line 9045
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@74
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@76
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@79
    move-result v5

    #@7a
    iput-boolean v5, v2, Landroid/content/pm/ResolveInfo;->system:Z

    #@7c
    .line 9046
    return-object v2
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 9012
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->newResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;

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
    .line 8896
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-virtual {v1, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 8897
    :cond_0
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    #@d
    .line 8899
    const/high16 v1, 0x10000

    #@f
    and-int/2addr v1, p3

    #@10
    if-eqz v1, :cond_1

    #@12
    const/4 v0, 0x1

    #@13
    .line 8898
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
    .line 8890
    if-eqz p3, :cond_0

    #@2
    const/high16 v0, 0x10000

    #@4
    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    #@6
    .line 8891
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 8890
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
            "Landroid/content/pm/PackageParser$Service;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p4, "packageServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Service;>;"
    const/4 v1, 0x0

    #@1
    .line 8904
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    return-object v1

    #@a
    .line 8905
    :cond_0
    if-nez p4, :cond_1

    #@c
    .line 8906
    return-object v1

    #@d
    .line 8908
    :cond_1
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    #@f
    .line 8909
    const/high16 v0, 0x10000

    #@11
    and-int/2addr v0, p3

    #@12
    if-eqz v0, :cond_3

    #@14
    const/4 v3, 0x1

    #@15
    .line 8910
    .local v3, "defaultOnly":Z
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v6

    #@19
    .line 8912
    .local v6, "N":I
    new-instance v4, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@1e
    .line 8915
    .local v4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    const/4 v8, 0x0

    #@1f
    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_4

    #@21
    .line 8916
    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/content/pm/PackageParser$Service;

    #@27
    iget-object v9, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    #@29
    .line 8917
    .local v9, "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    if-eqz v9, :cond_2

    #@2b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v0

    #@2f
    if-lez v0, :cond_2

    #@31
    .line 8919
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v0

    #@35
    new-array v7, v0, [Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@37
    .line 8920
    .local v7, "array":[Landroid/content/pm/PackageParser$ServiceIntentInfo;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3a
    .line 8921
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 8915
    .end local v7    # "array":[Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 8909
    .end local v3    # "defaultOnly":Z
    .end local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    .end local v6    # "N":I
    .end local v8    # "i":I
    .end local v9    # "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    :cond_3
    const/4 v3, 0x0

    #@41
    .restart local v3    # "defaultOnly":Z
    goto :goto_0

    #@42
    .restart local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
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
    .line 8924
    invoke-super/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    #@49
    move-result-object v0

    #@4a
    return-object v0
.end method

.method public final removeService(Landroid/content/pm/PackageParser$Service;)V
    .locals 5
    .param p1, "s"    # Landroid/content/pm/PackageParser$Service;

    #@0
    .prologue
    .line 8951
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 8957
    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    .line 8959
    .local v0, "NI":I
    const/4 v2, 0x0

    #@10
    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@12
    .line 8960
    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    #@1a
    .line 8965
    .local v1, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    #@1d
    .line 8959
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 8950
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
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
    .line 9051
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get6()Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@7
    .line 9050
    return-void
.end method
