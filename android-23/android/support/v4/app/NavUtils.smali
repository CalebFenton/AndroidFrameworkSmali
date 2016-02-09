.class public Landroid/support/v4/app/NavUtils;
.super Ljava/lang/Object;
.source "NavUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NavUtils$NavUtilsImpl;,
        Landroid/support/v4/app/NavUtils$NavUtilsImplBase;,
        Landroid/support/v4/app/NavUtils$NavUtilsImplJB;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

.field public static final PARENT_ACTIVITY:Ljava/lang/String; = "android.support.PARENT_ACTIVITY"

.field private static final TAG:Ljava/lang/String; = "NavUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 137
    .local v0, "version":I
    const/16 v1, 0x10

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 138
    new-instance v1, Landroid/support/v4/app/NavUtils$NavUtilsImplJB;

    #@8
    invoke-direct {v1}, Landroid/support/v4/app/NavUtils$NavUtilsImplJB;-><init>()V

    #@b
    sput-object v1, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    #@d
    .line 38
    :goto_0
    return-void

    #@e
    .line 140
    :cond_0
    new-instance v1, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;

    #@10
    invoke-direct {v1}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;-><init>()V

    #@13
    sput-object v1, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    #@15
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1
    .param p0, "sourceActivity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 216
    sget-object v0, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/app/NavUtils$NavUtilsImpl;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 256
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 257
    .local v1, "parentActivity":Ljava/lang/String;
    if-nez v1, :cond_0

    #@7
    return-object v4

    #@8
    .line 260
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    #@a
    .line 261
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    .line 260
    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 262
    .local v3, "target":Landroid/content/ComponentName;
    invoke-static {p0, v3}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 263
    .local v0, "grandparent":Ljava/lang/String;
    if-nez v0, :cond_1

    #@17
    .line 264
    invoke-static {v3}, Landroid/support/v4/content/IntentCompat;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1a
    move-result-object v2

    #@1b
    .line 266
    .local v2, "parentIntent":Landroid/content/Intent;
    :goto_0
    return-object v2

    #@1c
    .line 265
    .end local v2    # "parentIntent":Landroid/content/Intent;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    #@1e
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    #@21
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@24
    move-result-object v2

    #@25
    .restart local v2    # "parentIntent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    #@1
    .line 232
    new-instance v4, Landroid/content/ComponentName;

    #@3
    invoke-direct {v4, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@6
    .line 231
    invoke-static {p0, v4}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 233
    .local v1, "parentActivity":Ljava/lang/String;
    if-nez v1, :cond_0

    #@c
    return-object v5

    #@d
    .line 236
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    #@f
    invoke-direct {v3, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@12
    .line 237
    .local v3, "target":Landroid/content/ComponentName;
    invoke-static {p0, v3}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 238
    .local v0, "grandparent":Ljava/lang/String;
    if-nez v0, :cond_1

    #@18
    .line 239
    invoke-static {v3}, Landroid/support/v4/content/IntentCompat;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1b
    move-result-object v2

    #@1c
    .line 241
    .local v2, "parentIntent":Landroid/content/Intent;
    :goto_0
    return-object v2

    #@1d
    .line 240
    .end local v2    # "parentIntent":Landroid/content/Intent;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    #@1f
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    #@22
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@25
    move-result-object v2

    #@26
    .restart local v2    # "parentIntent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .param p0, "sourceActivity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    #@0
    .prologue
    .line 281
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    #@3
    move-result-object v1

    #@4
    invoke-static {p0, v1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 282
    :catch_0
    move-exception v0

    #@a
    .line 284
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method public static getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v2

    #@4
    .line 301
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x80

    #@6
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@9
    move-result-object v0

    #@a
    .line 302
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    sget-object v3, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    #@c
    invoke-interface {v3, p0, v0}, Landroid/support/v4/app/NavUtils$NavUtilsImpl;->getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 303
    .local v1, "parentActivity":Ljava/lang/String;
    return-object v1
.end method

.method public static navigateUpFromSameTask(Landroid/app/Activity;)V
    .locals 4
    .param p0, "sourceActivity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 175
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 177
    .local v0, "upIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    #@6
    .line 178
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Activity "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 180
    const-string/jumbo v3, " does not have a parent activity name specified."

    #@23
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 181
    const-string/jumbo v3, " (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data> "

    #@2a
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 182
    const-string/jumbo v3, " element in your manifest?)"

    #@31
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v1

    #@3d
    .line 185
    :cond_0
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    #@40
    .line 174
    return-void
.end method

.method public static navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "sourceActivity"    # Landroid/app/Activity;
    .param p1, "upIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 202
    sget-object v0, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    #@2
    invoke-interface {v0, p0, p1}, Landroid/support/v4/app/NavUtils$NavUtilsImpl;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    #@5
    .line 201
    return-void
.end method

.method public static shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "sourceActivity"    # Landroid/app/Activity;
    .param p1, "targetIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 159
    sget-object v0, Landroid/support/v4/app/NavUtils;->IMPL:Landroid/support/v4/app/NavUtils$NavUtilsImpl;

    #@2
    invoke-interface {v0, p0, p1}, Landroid/support/v4/app/NavUtils$NavUtilsImpl;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
