.class final Landroid/app/EphemeralResolverService$ServiceHandler;
.super Landroid/os/Handler;
.source "EphemeralResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/EphemeralResolverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_GET_EPHEMERAL_RESOLVE_INFO:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/app/EphemeralResolverService;


# direct methods
.method public constructor <init>(Landroid/app/EphemeralResolverService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/app/EphemeralResolverService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 81
    iput-object p1, p0, Landroid/app/EphemeralResolverService$ServiceHandler;->this$0:Landroid/app/EphemeralResolverService;

    #@2
    .line 82
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 81
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    .line 89
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@5
    .line 105
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v7, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v8, "Unknown message: "

    #@f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v7

    #@13
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v7

    #@17
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v7

    #@1b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v6

    #@1f
    .line 91
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21
    check-cast v1, Landroid/os/IRemoteCallback;

    #@23
    .line 92
    .local v1, "callback":Landroid/os/IRemoteCallback;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    #@26
    move-result-object v6

    #@27
    const-string/jumbo v7, "android.app.PREFIX"

    #@2a
    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    #@2d
    move-result-object v3

    #@2e
    .line 94
    .local v3, "digestPrefix":[I
    iget-object v6, p0, Landroid/app/EphemeralResolverService$ServiceHandler;->this$0:Landroid/app/EphemeralResolverService;

    #@30
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@32
    invoke-virtual {v6, v3, v7}, Landroid/app/EphemeralResolverService;->onEphemeralResolveInfoList([II)Ljava/util/List;

    #@35
    move-result-object v5

    #@36
    .line 95
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralResolveInfo;>;"
    new-instance v2, Landroid/os/Bundle;

    #@38
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@3b
    .line 96
    .local v2, "data":Landroid/os/Bundle;
    const-string/jumbo v6, "android.app.extra.SEQUENCE"

    #@3e
    iget v7, p1, Landroid/os/Message;->arg2:I

    #@40
    invoke-virtual {v2, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    #@43
    .line 97
    const-string/jumbo v6, "android.app.extra.RESOLVE_INFO"

    #@46
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    #@49
    .line 99
    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    .line 87
    :goto_0
    return-void

    #@4d
    .line 100
    :catch_0
    move-exception v4

    #@4e
    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_0

    #@4f
    .line 89
    nop

    #@50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
