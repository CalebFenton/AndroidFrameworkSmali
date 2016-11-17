.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkViews.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListViewsCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 13
    .param p2, "queue"    # Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;",
            ")",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    #@0
    .prologue
    .line 163
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    #@2
    invoke-virtual {v9}, Landroid/app/UiAutomation;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v7

    #@6
    .line 166
    .local v7, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v7, :cond_0

    #@8
    .line 167
    new-instance v9, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@a
    const-string/jumbo v10, "No accessibility event has occured yet"

    #@d
    const/4 v11, 0x0

    #@e
    invoke-direct {v9, v11, v10}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    #@11
    return-object v9

    #@12
    .line 169
    :cond_0
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    #@15
    move-result-object v9

    #@16
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@19
    move-result-object v8

    #@1a
    .line 172
    .local v8, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->-get1()Landroid/content/pm/IPackageManager;

    #@1d
    move-result-object v9

    #@1e
    .line 173
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@21
    move-result v10

    #@22
    .line 172
    const/4 v11, 0x0

    #@23
    invoke-interface {v9, v8, v11, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@26
    move-result-object v0

    #@27
    .line 174
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@29
    invoke-static {v8, v9}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->-wrap2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    #@2c
    move-result-object v6

    #@2d
    .line 175
    .local v6, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    .line 176
    .local v4, "fieldBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    #@35
    move-result-object v5

    #@36
    .line 177
    .local v5, "fields":[Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    #@37
    array-length v10, v5

    #@38
    :goto_0
    if-ge v9, v10, :cond_1

    #@3a
    aget-object v3, v5, v9

    #@3c
    .line 178
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@3f
    move-result-object v11

    #@40
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v11

    #@44
    const-string/jumbo v12, " "

    #@47
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 177
    add-int/lit8 v9, v9, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 180
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_1
    new-instance v9, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@4f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v10

    #@53
    const/4 v11, 0x1

    #@54
    invoke-direct {v9, v11, v10}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    return-object v9

    #@58
    .line 183
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "fieldBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "fields":[Ljava/lang/reflect/Field;
    .end local v6    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    #@59
    .line 184
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v9, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@5b
    const-string/jumbo v10, "Error retrieving class information"

    #@5e
    const/4 v11, 0x0

    #@5f
    invoke-direct {v9, v11, v10}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    #@62
    return-object v9

    #@63
    .line 181
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    #@64
    .line 182
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v9, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    #@66
    const-string/jumbo v10, "Unable to retrieve application info from PackageManager"

    #@69
    const/4 v11, 0x0

    #@6a
    invoke-direct {v9, v11, v10}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    #@6d
    return-object v9
.end method
