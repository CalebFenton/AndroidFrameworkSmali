.class Landroid/service/dreams/DreamService$2;
.super Landroid/service/dreams/IDreamOverlayCallback$Stub;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/dreams/DreamService;


# direct methods
.method public static synthetic blacklist $r8$lambda$nzQBFl9MaG0AFcrDeJVEwGouvWE(Landroid/service/dreams/DreamService$2;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService$2;->lambda$onExitRequested$0()V

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

    .line 1289
    iput-object p1, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamOverlayCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onExitRequested$0()V
    .registers 2

    .line 1295
    iget-object v0, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$mfinishInternal(Landroid/service/dreams/DreamService;)V

    return-void
.end method


# virtual methods
.method public blacklist onExitRequested()V
    .registers 5

    .line 1292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1295
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    new-instance v3, Landroid/service/dreams/DreamService$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/service/dreams/DreamService$2$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamService$2;)V

    invoke-static {v2, v3}, Landroid/service/dreams/DreamService;->-$$Nest$mpostIfNeeded(Landroid/service/dreams/DreamService;Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 1297
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1298
    nop

    .line 1299
    return-void

    .line 1297
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1298
    throw v2
.end method

.method public blacklist onRedirectWake(Z)V
    .registers 5
    .param p1, "redirect"    # Z

    .line 1303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1305
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v2, p1}, Landroid/service/dreams/DreamService;->-$$Nest$fputmRedirectWake(Landroid/service/dreams/DreamService;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 1307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1308
    nop

    .line 1309
    return-void

    .line 1307
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1308
    throw v2
.end method
