.class Landroid/service/dreams/DreamOverlayService$DreamOverlay;
.super Landroid/service/dreams/IDreamOverlay$Stub;
.source "DreamOverlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamOverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DreamOverlay"
.end annotation


# instance fields
.field private final blacklist mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/dreams/DreamOverlayService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/service/dreams/DreamOverlayService;)V
    .registers 3
    .param p1, "service"    # Landroid/service/dreams/DreamOverlayService;

    .line 190
    invoke-direct {p0}, Landroid/service/dreams/IDreamOverlay$Stub;-><init>()V

    .line 191
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService$DreamOverlay;->mService:Ljava/lang/ref/WeakReference;

    .line 192
    return-void
.end method


# virtual methods
.method public blacklist getClient(Landroid/service/dreams/IDreamOverlayClientCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/service/dreams/IDreamOverlayClientCallback;

    .line 197
    :try_start_0
    new-instance v0, Landroid/service/dreams/DreamOverlayService$OverlayClient;

    iget-object v1, p0, Landroid/service/dreams/DreamOverlayService$DreamOverlay;->mService:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Landroid/service/dreams/DreamOverlayService$OverlayClient;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-interface {p1, v0}, Landroid/service/dreams/IDreamOverlayClientCallback;->onDreamOverlayClient(Landroid/service/dreams/IDreamOverlayClient;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 200
    goto :goto_13

    .line 198
    :catch_b
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DreamOverlayService"

    const-string v2, "could not send client to callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method
