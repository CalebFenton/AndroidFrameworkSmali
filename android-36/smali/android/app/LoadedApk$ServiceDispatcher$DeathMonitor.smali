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
.field final greylist-max-o mName:Landroid/content/ComponentName;

.field final greylist-max-o mService:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Landroid/app/LoadedApk$ServiceDispatcher;


# direct methods
.method constructor blacklist <init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2282
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->this$0:Landroid/app/LoadedApk$ServiceDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2283
    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->mName:Landroid/content/ComponentName;

    .line 2284
    iput-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->mService:Landroid/os/IBinder;

    .line 2285
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 2288
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->this$0:Landroid/app/LoadedApk$ServiceDispatcher;

    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->mName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/LoadedApk$ServiceDispatcher;->death(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 2289
    return-void
.end method
