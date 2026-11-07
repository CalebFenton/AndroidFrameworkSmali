.class Landroid/hardware/display/DisplayManagerGlobal$1;
.super Landroid/app/PropertyInvalidatedCache;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Integer;",
        "Landroid/view/DisplayInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/display/DisplayManagerGlobal;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .registers 5
    .param p1, "this$0"    # Landroid/hardware/display/DisplayManagerGlobal;
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

    .line 212
    .local p4, "computer":Landroid/app/PropertyInvalidatedCache$QueryHandler;, "Landroid/app/PropertyInvalidatedCache$QueryHandler<Ljava/lang/Integer;Landroid/view/DisplayInfo;>;"
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$1;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-direct {p0, p2, p3, p4}, Landroid/app/PropertyInvalidatedCache;-><init>(Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist recompute(Ljava/lang/Integer;)Landroid/view/DisplayInfo;
    .registers 4
    .param p1, "id"    # Ljava/lang/Integer;

    .line 217
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$1;->this$0:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v0}, Landroid/hardware/display/DisplayManagerGlobal;->-$$Nest$fgetmDm(Landroid/hardware/display/DisplayManagerGlobal;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 218
    :catch_f
    move-exception v0

    .line 219
    .local v0, "ex":Landroid/os/RemoteException;
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

    .line 212
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal$1;->recompute(Ljava/lang/Integer;)Landroid/view/DisplayInfo;

    move-result-object p1

    return-object p1
.end method
