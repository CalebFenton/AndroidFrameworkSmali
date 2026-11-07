.class Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "ApduSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->openChannel(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;ZLcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "Landroid/telephony/IccOpenLogicalChannelResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

.field final synthetic blacklist val$closeChannelImmediately:Z

.field final synthetic blacklist val$handler:Landroid/os/Handler;

.field final synthetic blacklist val$requestProvider:Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

.field final synthetic blacklist val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$requestProvider:Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    iput-boolean p5, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$closeChannelImmediately:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onResult(Landroid/telephony/IccOpenLogicalChannelResponse;)V
    .registers 15

    .line 204
    invoke-virtual {p1}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result v0

    .line 205
    invoke-virtual {p1}, Landroid/telephony/IccOpenLogicalChannelResponse;->getStatus()I

    move-result v1

    .line 206
    invoke-virtual {p1}, Landroid/telephony/IccOpenLogicalChannelResponse;->getSelectResponse()[B

    move-result-object p1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v1, v2, :cond_5b

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$fgetmChannelKey(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_5b

    .line 212
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to use already opened channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$mlogv(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Landroid/content/Context;

    move-result-object p1

    .line 215
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$fgetmChannelResponseKey(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 216
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    move v7, v0

    move v1, v4

    goto :goto_5c

    :cond_5b
    move v7, v0

    :goto_5c
    if-eq v7, v5, :cond_b1

    if-eq v1, v4, :cond_61

    goto :goto_b1

    .line 237
    :cond_61
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$fgetmChannelKey(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$fgetmChannelResponseKey(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {p1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 241
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 242
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {p1, v4}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$fputmChannelOpened(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Z)V

    .line 244
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$requestProvider:Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$closeChannelImmediately:Z

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$handler:Landroid/os/Handler;

    .line 245
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$mgetRequestBuilderWithOpenedChannel(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;ZLcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;

    move-result-object p1

    if-nez p1, :cond_a0

    return-void

    .line 251
    :cond_a0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->getCommands()Ljava/util/List;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$closeChannelImmediately:Z

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$msendCommand(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/util/List;IZLcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V

    return-void

    .line 223
    :cond_b1
    :goto_b1
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {p1, v3}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$fputmChannelOpened(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Z)V

    .line 224
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    new-instance v10, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to open logical channel for AID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->this$0:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$fgetmAid(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", with status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v10, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$resultCallback:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->val$handler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->-$$Nest$mreturnRespnseOrException(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;IZ[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic blacklist onResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 201
    check-cast p1, Landroid/telephony/IccOpenLogicalChannelResponse;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;->onResult(Landroid/telephony/IccOpenLogicalChannelResponse;)V

    return-void
.end method
