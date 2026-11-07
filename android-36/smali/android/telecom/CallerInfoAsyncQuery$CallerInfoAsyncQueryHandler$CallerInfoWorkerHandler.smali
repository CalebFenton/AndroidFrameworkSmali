.class public Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CallerInfoWorkerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method public constructor blacklist <init>(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$1"    # Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 176
    iput-object p1, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->this$1:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 177
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 178
    return-void
.end method

.method private blacklist handleGeoDescription(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 231
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 232
    .local v0, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iget-object v1, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    .line 233
    .local v1, "cw":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    iget-object v2, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    if-eqz v2, :cond_34

    iget-object v2, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->this$1:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v2}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fgetmContext(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 235
    .local v2, "startTimeMillis":J
    iget-object v4, p0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->this$1:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v4}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fgetmContext(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telecom/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->geoDescription:Ljava/lang/String;

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 237
    .local v4, "duration":J
    nop

    .line 242
    .end local v2    # "startTimeMillis":J
    .end local v4    # "duration":J
    :cond_34
    iget-object v2, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 243
    .local v2, "reply":Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 244
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 245
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 246
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 182
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 183
    .local v0, "args":Landroid/content/AsyncQueryHandler$WorkerArgs;
    iget-object v1, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    .line 185
    .local v1, "cw":Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;
    const/4 v2, 0x0

    const-string v3, "CallerInfoAsyncQuery"

    if-nez v1, :cond_31

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected command (CookieWrapper is null): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ignored by CallerInfoWorkerHandler, passing onto parent."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_93

    .line 197
    :cond_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " token (arg1): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " query URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 198
    invoke-static {v5}, Landroid/telecom/CallerInfoAsyncQuery;->-$$Nest$smsanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 197
    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget v2, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    packed-switch v2, :pswitch_data_94

    goto :goto_93

    .line 223
    :pswitch_79
    invoke-direct {p0, p1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->handleGeoDescription(Landroid/os/Message;)V

    .line 224
    goto :goto_93

    .line 215
    :pswitch_7d
    iget-object v2, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 216
    .local v2, "reply":Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 219
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 221
    goto :goto_93

    .line 203
    .end local v2    # "reply":Landroid/os/Message;
    :pswitch_8f
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V

    .line 204
    nop

    .line 228
    :goto_93
    return-void

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_79
    .end packed-switch
.end method
