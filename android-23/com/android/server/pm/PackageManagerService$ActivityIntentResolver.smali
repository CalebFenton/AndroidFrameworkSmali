.class final Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 8657
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    #@5
    .line 8882
    new-instance v0, Landroid/util/ArrayMap;

    #@7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@a
    .line 8881
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    #@c
    .line 8657
    return-void
.end method


# virtual methods
.method public final addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .locals 8
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 8700
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@3
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@8
    move-result v3

    #@9
    .line 8701
    .local v3, "systemApp":Z
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v4, v5, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 8708
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v0

    #@18
    .line 8709
    .local v0, "NI":I
    const/4 v2, 0x0

    #@19
    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    #@1b
    .line 8710
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@23
    .line 8711
    .local v1, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-nez v3, :cond_0

    #@25
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    #@28
    move-result v4

    #@29
    if-lez v4, :cond_0

    #@2b
    const-string/jumbo v4, "activity"

    #@2e
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_0

    #@34
    .line 8712
    invoke-virtual {v1, v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    #@37
    .line 8713
    const-string/jumbo v4, "PackageManager"

    #@3a
    new-instance v5, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v6, "Package "

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@48
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4a
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    const-string/jumbo v6, " has activity "

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    .line 8714
    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    #@59
    .line 8713
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    .line 8714
    const-string/jumbo v6, " with priority > 0, forcing to 0"

    #@60
    .line 8713
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 8720
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->debugCheck()Z

    #@6e
    move-result v4

    #@6f
    if-nez v4, :cond_1

    #@71
    .line 8721
    const-string/jumbo v4, "PackageManager"

    #@74
    new-instance v5, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v6, "==> For Activity "

    #@7c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@82
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v5

    #@88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v5

    #@8c
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8f
    .line 8723
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    #@92
    .line 8709
    add-int/lit8 v2, v2, 0x1

    #@94
    goto :goto_0

    #@95
    .line 8699
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "dest"    # Ljava/util/List;

    #@0
    .prologue
    .line 8747
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z
    .locals 6
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
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
    .line 8749
    iget-object v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@3
    iget-object v1, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@5
    .line 8750
    .local v1, "filterAi":Landroid/content/pm/ActivityInfo;
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
    .line 8751
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@13
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@15
    .line 8752
    .local v0, "destAi":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@17
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@19
    if-ne v3, v4, :cond_0

    #@1b
    .line 8753
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1d
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1f
    if-ne v3, v4, :cond_0

    #@21
    .line 8754
    return v5

    #@22
    .line 8750
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@24
    goto :goto_0

    #@25
    .line 8757
    .end local v0    # "destAi":Landroid/content/pm/ActivityInfo;
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
    .line 8841
    check-cast p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2
    .end local p3    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    #@5
    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@0
    .prologue
    .line 8843
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 8844
    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@5
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 8843
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    .line 8845
    const/16 v0, 0x20

    #@12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    #@15
    .line 8846
    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@17
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    #@1a
    .line 8847
    const-string/jumbo v0, " filter "

    #@1d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 8848
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
    .line 8842
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
    .line 8857
    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    #@3
    .line 8858
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    .line 8859
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 8858
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 8860
    const/16 v1, 0x20

    #@13
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    #@16
    .line 8861
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    #@19
    .line 8862
    const/4 v1, 0x1

    #@1a
    if-le p4, v1, :cond_0

    #@1c
    .line 8863
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
    .line 8865
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@2e
    .line 8856
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 8852
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@0
    .prologue
    .line 8853
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@2
    return-object v0
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 8766
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z
    .locals 4
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 8767
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
    .line 8768
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@d
    iget-object v0, v3, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    #@f
    .line 8769
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2

    #@11
    .line 8770
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    #@13
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    #@15
    .line 8771
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_2

    #@17
    .line 8775
    iget v3, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    #@19
    and-int/lit8 v3, v3, 0x1

    #@1b
    if-nez v3, :cond_1

    #@1d
    .line 8776
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    #@20
    move-result v2

    #@21
    .line 8775
    :cond_1
    return v2

    #@22
    .line 8779
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
    .line 8783
    check-cast p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2
    .end local p2    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@0
    .prologue
    .line 8785
    iget-object v0, p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@2
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

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
    .line 8761
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 8762
    new-array v0, p1, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2
    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 8
    .param p1, "info"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 8791
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@3
    invoke-virtual {v4, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    return-object v7

    #@a
    .line 8792
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@c
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@e
    iget-object v5, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@10
    iget-object v5, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@12
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    #@14
    invoke-virtual {v4, v5, v6, p3}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;II)Z

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_1

    #@1a
    .line 8793
    return-object v7

    #@1b
    .line 8795
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    #@1d
    .line 8796
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@1f
    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    #@21
    if-eqz v4, :cond_2

    #@23
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    #@25
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@27
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    #@29
    and-int/lit8 v4, v4, 0x1

    #@2b
    if-nez v4, :cond_2

    #@2d
    .line 8798
    return-object v7

    #@2e
    .line 8800
    :cond_2
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    #@30
    iget-object v2, v4, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    #@32
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    #@34
    .line 8801
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_3

    #@36
    .line 8802
    return-object v7

    #@37
    .line 8804
    :cond_3
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    #@39
    .line 8805
    invoke-virtual {v2, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    #@3c
    move-result-object v5

    #@3d
    .line 8804
    invoke-static {v0, v4, v5, p3}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    #@40
    move-result-object v1

    #@41
    .line 8806
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_4

    #@43
    .line 8807
    return-object v7

    #@44
    .line 8809
    :cond_4
    new-instance v3, Landroid/content/pm/ResolveInfo;

    #@46
    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    #@49
    .line 8810
    .local v3, "res":Landroid/content/pm/ResolveInfo;
    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4b
    .line 8811
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    #@4d
    and-int/lit8 v4, v4, 0x40

    #@4f
    if-eqz v4, :cond_5

    #@51
    .line 8812
    iput-object p1, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    #@53
    .line 8814
    :cond_5
    if-eqz p1, :cond_6

    #@55
    .line 8815
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->handleAllWebDataURI()Z

    #@58
    move-result v4

    #@59
    iput-boolean v4, v3, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    #@5b
    .line 8817
    :cond_6
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    #@5e
    move-result v4

    #@5f
    iput v4, v3, Landroid/content/pm/ResolveInfo;->priority:I

    #@61
    .line 8818
    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    #@63
    iget v4, v4, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    #@65
    iput v4, v3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    #@67
    .line 8821
    iput p2, v3, Landroid/content/pm/ResolveInfo;->match:I

    #@69
    .line 8822
    iget-boolean v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDefault:Z

    #@6b
    iput-boolean v4, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    #@6d
    .line 8823
    iget v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->labelRes:I

    #@6f
    iput v4, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    #@71
    .line 8824
    iget-object v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@73
    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@75
    .line 8825
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@77
    invoke-static {v4, p3}, Lcom/android/server/pm/PackageManagerService;->-wrap9(Lcom/android/server/pm/PackageManagerService;I)Z

    #@7a
    move-result v4

    #@7b
    if-eqz v4, :cond_7

    #@7d
    .line 8826
    const/4 v4, 0x1

    #@7e
    iput-boolean v4, v3, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    #@80
    .line 8830
    :goto_0
    iget v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    #@82
    iput v4, v3, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    #@84
    .line 8831
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@86
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@88
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@8b
    move-result v4

    #@8c
    iput-boolean v4, v3, Landroid/content/pm/ResolveInfo;->system:Z

    #@8e
    .line 8832
    return-object v3

    #@8f
    .line 8828
    :cond_7
    iget v4, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    #@91
    iput v4, v3, Landroid/content/pm/ResolveInfo;->icon:I

    #@93
    goto :goto_0
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 8789
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@2
    .end local p1    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;

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
    .line 8668
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
    .line 8669
    :cond_0
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    #@d
    .line 8671
    const/high16 v1, 0x10000

    #@f
    and-int/2addr v1, p3

    #@10
    if-eqz v1, :cond_1

    #@12
    const/4 v0, 0x1

    #@13
    .line 8670
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
    .line 8661
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    #@2
    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 8662
    :cond_0
    if-eqz p3, :cond_1

    #@c
    const/high16 v0, 0x10000

    #@e
    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    #@10
    .line 8663
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 8662
    :cond_1
    const/4 v0, 0x0

    #@16
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
            "Landroid/content/pm/PackageParser$Activity;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p4, "packageActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    const/4 v1, 0x0

    #@1
    .line 8676
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
    .line 8677
    :cond_0
    if-nez p4, :cond_1

    #@c
    .line 8678
    return-object v1

    #@d
    .line 8680
    :cond_1
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    #@f
    .line 8681
    const/high16 v0, 0x10000

    #@11
    and-int/2addr v0, p3

    #@12
    if-eqz v0, :cond_3

    #@14
    const/4 v3, 0x1

    #@15
    .line 8682
    .local v3, "defaultOnly":Z
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v6

    #@19
    .line 8684
    .local v6, "N":I
    new-instance v4, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@1e
    .line 8687
    .local v4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    const/4 v8, 0x0

    #@1f
    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_4

    #@21
    .line 8688
    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    #@27
    iget-object v9, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@29
    .line 8689
    .local v9, "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-eqz v9, :cond_2

    #@2b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v0

    #@2f
    if-lez v0, :cond_2

    #@31
    .line 8691
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v0

    #@35
    new-array v7, v0, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@37
    .line 8692
    .local v7, "array":[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3a
    .line 8693
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 8687
    .end local v7    # "array":[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 8681
    .end local v3    # "defaultOnly":Z
    .end local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "N":I
    .end local v8    # "i":I
    .end local v9    # "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_3
    const/4 v3, 0x0

    #@41
    .restart local v3    # "defaultOnly":Z
    goto :goto_0

    #@42
    .restart local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
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
    .line 8696
    invoke-super/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    #@49
    move-result-object v0

    #@4a
    return-object v0
.end method

.method public final removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .locals 5
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 8728
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 8735
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    .line 8736
    .local v0, "NI":I
    const/4 v2, 0x0

    #@10
    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@12
    .line 8737
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    #@1a
    .line 8742
    .local v1, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    #@1d
    .line 8736
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 8727
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
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
    .line 8837
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get6()Ljava/util/Comparator;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@7
    .line 8836
    return-void
.end method
