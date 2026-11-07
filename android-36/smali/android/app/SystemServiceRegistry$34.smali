.class Landroid/app/SystemServiceRegistry$34;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/app/NotificationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 616
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/app/NotificationManager;
    .registers 12
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 619
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v0

    .line 620
    .local v0, "outerContext":Landroid/content/Context;
    new-instance v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 623
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 622
    const/4 v4, 0x0

    const v6, 0x103000b

    const v7, 0x103006f

    const v8, 0x103012e

    const v9, 0x1030132

    invoke-static/range {v4 .. v9}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/NotificationManager;-><init>(Landroid/content/Context;)V

    .line 620
    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 616
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$34;->createService(Landroid/app/ContextImpl;)Landroid/app/NotificationManager;

    move-result-object p1

    return-object p1
.end method
