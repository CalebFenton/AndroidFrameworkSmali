.class final Landroid/app/SystemServiceRegistry$26;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/app/NotificationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 342
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/NotificationManager;
    .locals 9
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@3
    move-result-object v6

    #@4
    .line 346
    .local v6, "outerContext":Landroid/content/Context;
    new-instance v7, Landroid/app/NotificationManager;

    #@6
    .line 347
    new-instance v8, Landroid/view/ContextThemeWrapper;

    #@8
    .line 349
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@b
    move-result-object v0

    #@c
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@e
    .line 348
    const/4 v0, 0x0

    #@f
    .line 350
    const v2, 0x103000b

    #@12
    .line 351
    const v3, 0x103006f

    #@15
    .line 352
    const v4, 0x103012e

    #@18
    .line 353
    const v5, 0x1030132

    #@1b
    .line 348
    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    #@1e
    move-result v0

    #@1f
    .line 347
    invoke-direct {v8, v6, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@22
    .line 354
    iget-object v0, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@24
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@27
    move-result-object v0

    #@28
    .line 346
    invoke-direct {v7, v8, v0}, Landroid/app/NotificationManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@2b
    return-object v7
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 344
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$26;->createService(Landroid/app/ContextImpl;)Landroid/app/NotificationManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
