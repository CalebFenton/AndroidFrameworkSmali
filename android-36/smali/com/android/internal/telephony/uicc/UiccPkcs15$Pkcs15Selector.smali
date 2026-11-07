.class Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;
.super Landroid/os/Handler;
.source "UiccPkcs15.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccPkcs15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pkcs15Selector"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/os/Message;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Landroid/os/Message;)V
    .registers 4
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

    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    .line 147
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$fgetmUiccProfile(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p1

    const/16 p2, 0xc9

    .line 148
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 147
    const-string p2, "A000000063504B43532D3135"

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_33

    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown event"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    return-void

    .line 158
    :cond_33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 159
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_6a

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_6a

    .line 160
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    check-cast v0, [I

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$fputmChannelId(Lcom/android/internal/telephony/uicc/UiccPkcs15;I)V

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mChannelId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$fgetmChannelId(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    invoke-static {p1, v1, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_87

    .line 164
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 168
    :goto_87
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
