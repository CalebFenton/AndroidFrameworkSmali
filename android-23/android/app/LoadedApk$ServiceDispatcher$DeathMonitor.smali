.class final Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;
.super Ljava/lang/Object;
.source "LoadedApk.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeathMonitor"
.end annotation


# instance fields
.field final mName:Landroid/content/ComponentName;

.field final mService:Landroid/os/IBinder;

.field final synthetic this$1:Landroid/app/LoadedApk$ServiceDispatcher;


# direct methods
.method constructor <init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/LoadedApk$ServiceDispatcher;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1253
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->this$1:Landroid/app/LoadedApk$ServiceDispatcher;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1254
    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->mName:Landroid/content/ComponentName;

    #@7
    .line 1255
    iput-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->mService:Landroid/os/IBinder;

    #@9
    .line 1253
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 1259
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->this$1:Landroid/app/LoadedApk$ServiceDispatcher;

    #@2
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->mName:Landroid/content/ComponentName;

    #@4
    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->mService:Landroid/os/IBinder;

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/app/LoadedApk$ServiceDispatcher;->death(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    #@9
    .line 1258
    return-void
.end method
