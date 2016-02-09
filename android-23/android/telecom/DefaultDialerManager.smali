.class public Landroid/telecom/DefaultDialerManager;
.super Ljava/lang/Object;
.source "DefaultDialerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDialerManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static filterByIntent(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 205
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_1

    #@8
    .line 206
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    #@a
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@d
    return-object v5

    #@e
    .line 209
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    #@10
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 211
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v5

    #@17
    const/4 v6, 0x0

    #@18
    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@1b
    move-result-object v3

    #@1c
    .line 212
    .local v3, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1f
    move-result v2

    #@20
    .line 213
    .local v2, "length":I
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_4

    #@23
    .line 214
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v5

    #@27
    check-cast v5, Landroid/content/pm/ResolveInfo;

    #@29
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2b
    .line 215
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_2

    #@2d
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2f
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_2

    #@35
    .line 216
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@37
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_3

    #@3d
    .line 213
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 217
    :cond_3
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@42
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    goto :goto_1

    #@46
    .line 221
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :cond_4
    return-object v4
.end method

.method public static getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 100
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v3

    #@5
    .line 118
    const-string/jumbo v4, "dialer_default_application"

    #@8
    .line 117
    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 120
    .local v0, "defaultPackageName":Ljava/lang/String;
    invoke-static {p0}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;)Ljava/util/List;

    #@f
    move-result-object v1

    #@10
    .line 123
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 124
    return-object v0

    #@17
    .line 128
    :cond_0
    invoke-static {p0}, Landroid/telecom/DefaultDialerManager;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 130
    .local v2, "systemDialerPackageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_1

    #@25
    .line 132
    return-object v5

    #@26
    .line 135
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_2

    #@2c
    .line 136
    return-object v2

    #@2d
    .line 138
    :cond_2
    return-object v5
.end method

.method public static getInstalledDialerApplications(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v3

    #@5
    .line 157
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    #@7
    const-string/jumbo v8, "android.intent.action.DIAL"

    #@a
    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    .line 158
    .local v2, "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    #@e
    invoke-virtual {v3, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@11
    move-result-object v7

    #@12
    .line 160
    .local v7, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@14
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@17
    .line 162
    .local v4, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v6

    #@1b
    .local v6, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_1

    #@21
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Landroid/content/pm/ResolveInfo;

    #@27
    .line 163
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@29
    .line 164
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    #@2b
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2d
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@30
    move-result v8

    #@31
    if-nez v8, :cond_0

    #@33
    .line 165
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@35
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    goto :goto_0

    #@39
    .line 169
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    #@3b
    const-string/jumbo v8, "android.intent.action.DIAL"

    #@3e
    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@41
    .line 170
    .local v1, "dialIntentWithTelScheme":Landroid/content/Intent;
    const-string/jumbo v8, "tel"

    #@44
    const-string/jumbo v9, ""

    #@47
    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@4e
    .line 171
    invoke-static {p0, v4, v1}, Landroid/telecom/DefaultDialerManager;->filterByIntent(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    #@51
    move-result-object v8

    #@52
    return-object v8
.end method

.method private static getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 226
    const-string/jumbo v0, "telecom"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/telecom/TelecomManager;

    #@9
    return-object v0
.end method

.method public static isDefaultOrSystemDialer(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 188
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 190
    :cond_0
    invoke-static {p0}, Landroid/telecom/DefaultDialerManager;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    #@b
    move-result-object v0

    #@c
    .line 191
    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_1

    #@16
    .line 192
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    .line 191
    :goto_0
    return v1

    #@1f
    :cond_1
    const/4 v1, 0x1

    #@20
    goto :goto_0
.end method

.method public static setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/telecom/DefaultDialerManager;->setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v2

    #@5
    .line 67
    const-string/jumbo v3, "dialer_default_application"

    #@8
    .line 66
    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 69
    .local v0, "oldPackageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@e
    if-eqz v0, :cond_0

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 71
    return v4

    #@17
    .line 75
    :cond_0
    invoke-static {p0}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;)Ljava/util/List;

    #@1a
    move-result-object v1

    #@1b
    .line 77
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@24
    move-result-object v2

    #@25
    .line 80
    const-string/jumbo v3, "dialer_default_application"

    #@28
    .line 79
    invoke-static {v2, v3, p1, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@2b
    .line 81
    const/4 v2, 0x1

    #@2c
    return v2

    #@2d
    .line 83
    :cond_1
    return v4
.end method
