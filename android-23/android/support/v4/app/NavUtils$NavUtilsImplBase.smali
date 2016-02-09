.class Landroid/support/v4/app/NavUtils$NavUtilsImplBase;
.super Ljava/lang/Object;
.source "NavUtils.java"

# interfaces
.implements Landroid/support/v4/app/NavUtils$NavUtilsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NavUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NavUtilsImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 53
    invoke-static {p1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 54
    .local v3, "parentName":Ljava/lang/String;
    if-nez v3, :cond_0

    #@7
    return-object v8

    #@8
    .line 57
    :cond_0
    new-instance v4, Landroid/content/ComponentName;

    #@a
    invoke-direct {v4, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@d
    .line 59
    .local v4, "target":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {p1, v4}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 60
    .local v1, "grandparent":Ljava/lang/String;
    if-nez v1, :cond_1

    #@13
    .line 61
    invoke-static {v4}, Landroid/support/v4/content/IntentCompat;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@16
    move-result-object v2

    #@17
    .line 63
    .local v2, "parentIntent":Landroid/content/Intent;
    :goto_0
    return-object v2

    #@18
    .line 62
    .end local v2    # "parentIntent":Landroid/content/Intent;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    #@1a
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    #@1d
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result-object v2

    #@21
    .restart local v2    # "parentIntent":Landroid/content/Intent;
    goto :goto_0

    #@22
    .line 64
    .end local v1    # "grandparent":Ljava/lang/String;
    .end local v2    # "parentIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@23
    .line 65
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "NavUtils"

    #@26
    new-instance v6, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v7, "getParentActivityIntent: bad parentActivityName \'"

    #@2e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    .line 66
    const-string/jumbo v7, "\' in manifest"

    #@39
    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 67
    return-object v8
.end method

.method public getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 86
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    return-object v3

    #@6
    .line 87
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    #@8
    const-string/jumbo v2, "android.support.PARENT_ACTIVITY"

    #@b
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 88
    .local v0, "parentActivity":Ljava/lang/String;
    if-nez v0, :cond_1

    #@11
    return-object v3

    #@12
    .line 89
    :cond_1
    const/4 v1, 0x0

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v1

    #@17
    const/16 v2, 0x2e

    #@19
    if-ne v1, v2, :cond_2

    #@1b
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 92
    :cond_2
    return-object v0
.end method

.method public navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "upIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 79
    const/high16 v0, 0x4000000

    #@2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5
    .line 80
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    #@8
    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    #@b
    .line 78
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "targetIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 74
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@b
    const-string/jumbo v2, "android.intent.action.MAIN"

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    :cond_0
    :goto_0
    return v1

    #@15
    :cond_1
    const/4 v1, 0x1

    #@16
    goto :goto_0
.end method
