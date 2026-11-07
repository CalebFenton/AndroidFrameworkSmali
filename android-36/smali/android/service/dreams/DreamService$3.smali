.class Landroid/service/dreams/DreamService$3;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService;->onWindowCreated(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mDreamStartOverlayConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlayClient;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/service/dreams/DreamService;


# direct methods
.method public static synthetic blacklist $r8$lambda$aWnQRS1r6epxQL-DFuLKoOxx_tg(Landroid/service/dreams/DreamService$3;Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamService$3;->lambda$onViewAttachedToWindow$0(Landroid/service/dreams/IDreamOverlayClient;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/dreams/DreamService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/dreams/DreamService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1789
    iput-object p1, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onViewAttachedToWindow$0(Landroid/service/dreams/IDreamOverlayClient;)V
    .registers 9
    .param p1, "overlay"    # Landroid/service/dreams/IDreamOverlayClient;

    .line 1800
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmWindow(Landroid/service/dreams/DreamService;)Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1801
    invoke-static {}, Landroid/service/dreams/DreamService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mWindow is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    return-void

    .line 1805
    :cond_13
    :try_start_13
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmWindow(Landroid/service/dreams/DreamService;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmOverlayCallback(Landroid/service/dreams/DreamService;)Landroid/service/dreams/IDreamOverlayCallback;

    move-result-object v3

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmDreamComponent(Landroid/service/dreams/DreamService;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1806
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmPreviewMode(Landroid/service/dreams/DreamService;)Z

    move-result v5

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmShouldShowComplications(Landroid/service/dreams/DreamService;)Z

    move-result v6
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_39} :catch_41

    .line 1805
    move-object v1, p1

    .end local p1    # "overlay":Landroid/service/dreams/IDreamOverlayClient;
    .local v1, "overlay":Landroid/service/dreams/IDreamOverlayClient;
    :try_start_3a
    invoke-interface/range {v1 .. v6}, Landroid/service/dreams/IDreamOverlayClient;->startDream(Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/IDreamOverlayCallback;Ljava/lang/String;ZZ)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 1811
    goto :goto_60

    .line 1809
    :catch_3e
    move-exception v0

    move-object p1, v0

    goto :goto_44

    .end local v1    # "overlay":Landroid/service/dreams/IDreamOverlayClient;
    .restart local p1    # "overlay":Landroid/service/dreams/IDreamOverlayClient;
    :catch_41
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    .line 1810
    .restart local v1    # "overlay":Landroid/service/dreams/IDreamOverlayClient;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_44
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmTag(Landroid/service/dreams/DreamService;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not send window attributes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_60
    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 1794
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmDispatchAfterOnAttachedToWindow(Landroid/service/dreams/DreamService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1796
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamOverlayConnectionHandler;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1799
    new-instance v0, Landroid/service/dreams/DreamService$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamService$3$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamService$3;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService$3;->mDreamStartOverlayConsumer:Ljava/util/function/Consumer;

    .line 1813
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamOverlayConnectionHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService$3;->mDreamStartOverlayConsumer:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->addConsumer(Ljava/util/function/Consumer;)V

    .line 1815
    :cond_23
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 1819
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmActivity(Landroid/service/dreams/DreamService;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmActivity(Landroid/service/dreams/DreamService;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1823
    :cond_14
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->-$$Nest$fputmWindow(Landroid/service/dreams/DreamService;Landroid/view/Window;)V

    .line 1824
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->-$$Nest$fputmActivity(Landroid/service/dreams/DreamService;Landroid/app/Activity;)V

    .line 1825
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$mfinishInternal(Landroid/service/dreams/DreamService;)V

    .line 1828
    :cond_24
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamOverlayConnectionHandler;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->mDreamStartOverlayConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_3b

    .line 1829
    iget-object v0, p0, Landroid/service/dreams/DreamService$3;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmOverlayConnection(Landroid/service/dreams/DreamService;)Landroid/service/dreams/DreamOverlayConnectionHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService$3;->mDreamStartOverlayConsumer:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->removeConsumer(Ljava/util/function/Consumer;)V

    .line 1831
    :cond_3b
    return-void
.end method
