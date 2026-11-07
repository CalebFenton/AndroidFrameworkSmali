.class Landroid/media/MediaCas$EventHandler;
.super Landroid/os/Handler;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final blacklist DATA_KEY:Ljava/lang/String; = "data"

.field private static final greylist-max-o MSG_CAS_EVENT:I = 0x0

.field private static final blacklist MSG_CAS_RESOURCE_LOST:I = 0x3

.field private static final blacklist MSG_CAS_SESSION_EVENT:I = 0x1

.field private static final blacklist MSG_CAS_STATUS_EVENT:I = 0x2

.field private static final blacklist SESSION_KEY:Ljava/lang/String; = "sessionId"


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaCas;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaCas;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 399
    iput-object p1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    .line 400
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 401
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 405
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_20

    .line 406
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_10

    :cond_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 407
    .local v0, "data":[B
    :goto_10
    iget-object v1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$fgetmListener(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/media/MediaCas$EventListener;->onEvent(Landroid/media/MediaCas;II[B)V

    .line 408
    .end local v0    # "data":[B
    goto :goto_8d

    :cond_20
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    .line 409
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 410
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "sessionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 411
    .local v1, "sessionId":[B
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 412
    .local v8, "data":[B
    iget-object v2, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v2}, Landroid/media/MediaCas;->-$$Nest$fgetmListener(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    iget-object v2, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    .line 413
    invoke-virtual {v2, v1}, Landroid/media/MediaCas;->createFromSessionId([B)Landroid/media/MediaCas$Session;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 412
    invoke-interface/range {v3 .. v8}, Landroid/media/MediaCas$EventListener;->onSessionEvent(Landroid/media/MediaCas;Landroid/media/MediaCas$Session;II[B)V

    .line 414
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "sessionId":[B
    .end local v8    # "data":[B
    goto :goto_8d

    :cond_4b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7d

    .line 415
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_6d

    iget-object v0, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmTunerResourceManager(Landroid/media/MediaCas;)Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 417
    iget-object v0, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmTunerResourceManager(Landroid/media/MediaCas;)Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$fgetmCasSystemId(Landroid/media/MediaCas;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->updateCasInfo(II)V

    .line 419
    :cond_6d
    iget-object v0, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmListener(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaCas$EventListener;->onPluginStatusUpdate(Landroid/media/MediaCas;II)V

    goto :goto_8d

    .line 420
    :cond_7d
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8d

    .line 421
    iget-object v0, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmListener(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-interface {v0, v1}, Landroid/media/MediaCas$EventListener;->onResourceLost(Landroid/media/MediaCas;)V

    .line 423
    :cond_8d
    :goto_8d
    return-void
.end method
