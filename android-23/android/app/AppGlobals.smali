.class public Landroid/app/AppGlobals;
.super Ljava/lang/Object;
.source "AppGlobals.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInitialApplication()Landroid/app/Application;
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getInitialPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 39
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getIntCoreSetting(Ljava/lang/String;I)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 58
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@3
    move-result-object v0

    #@4
    .line 59
    .local v0, "currentActivityThread":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    #@6
    .line 60
    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityThread;->getIntCoreSetting(Ljava/lang/String;I)I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 62
    :cond_0
    return p1
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    #@0
    .prologue
    .line 47
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
