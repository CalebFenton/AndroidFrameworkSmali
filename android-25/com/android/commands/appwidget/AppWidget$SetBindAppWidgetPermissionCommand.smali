.class Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;
.super Ljava/lang/Object;
.source "AppWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/appwidget/AppWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetBindAppWidgetPermissionCommand"
.end annotation


# instance fields
.field final mGranted:Z

.field final mPackageName:Ljava/lang/String;

.field final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "granted"    # Z
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 143
    iput-object p1, p0, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;->mPackageName:Ljava/lang/String;

    #@5
    .line 144
    iput-boolean p2, p0, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;->mGranted:Z

    #@7
    .line 145
    iput p3, p0, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;->mUserId:I

    #@9
    .line 142
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 150
    const-string/jumbo v3, "appwidget"

    #@3
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    .line 151
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    #@a
    move-result-object v0

    #@b
    .line 153
    .local v0, "appWidgetService":Lcom/android/internal/appwidget/IAppWidgetService;
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;->mPackageName:Ljava/lang/String;

    #@d
    iget v4, p0, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;->mUserId:I

    #@f
    iget-boolean v5, p0, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;->mGranted:Z

    #@11
    invoke-interface {v0, v3, v4, v5}, Lcom/android/internal/appwidget/IAppWidgetService;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 149
    :goto_0
    return-void

    #@15
    .line 154
    :catch_0
    move-exception v2

    #@16
    .line 155
    .local v2, "re":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    #@19
    goto :goto_0
.end method
