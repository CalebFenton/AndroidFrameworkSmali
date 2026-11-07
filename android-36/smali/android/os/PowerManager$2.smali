.class Landroid/os/PowerManager$2;
.super Landroid/app/PropertyInvalidatedCache;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/PowerManager;


# direct methods
.method constructor blacklist <init>(Landroid/os/PowerManager;Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .registers 5
    .param p1, "this$0"    # Landroid/os/PowerManager;
    .param p2, "args"    # Landroid/app/PropertyInvalidatedCache$Args;
    .param p3, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1220
    .local p4, "computer":Landroid/app/PropertyInvalidatedCache$QueryHandler;, "Landroid/app/PropertyInvalidatedCache$QueryHandler<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Landroid/os/PowerManager$2;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist recompute(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "displayId"    # Ljava/lang/Integer;

    .line 1224
    if-nez p1, :cond_f

    .line 1225
    :try_start_2
    iget-object v0, p0, Landroid/os/PowerManager$2;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isInteractive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1227
    :cond_f
    iget-object v0, p0, Landroid/os/PowerManager$2;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->isDisplayInteractive(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1f} :catch_20

    return-object v0

    .line 1229
    :catch_20
    move-exception v0

    .line 1230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1220
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/os/PowerManager$2;->recompute(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
