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


# static fields
.field private static final EVENT_OPEN_LOGICAL_CHANNEL_DONE:I = 0xc9

.field private static final PKCS15_AID:Ljava/lang/String; = "A000000063504B43532D3135"


# instance fields
.field private mCallback:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Landroid/os/Message;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccPkcs15;
    .param p2, "callBack"    # Landroid/os/Message;

    #@0
    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 146
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    #@7
    .line 147
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-get1(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccCard;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "A000000063504B43532D3135"

    #@e
    .line 148
    const/16 v2, 0xc9

    #@10
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v2

    #@14
    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    #@17
    .line 145
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v2, "handleMessage: "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    iget v2, p1, Landroid/os/Message;->what:I

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    #@1a
    .line 156
    iget v1, p1, Landroid/os/Message;->what:I

    #@1c
    packed-switch v1, :pswitch_data_0

    #@1f
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, "Unknown event"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    iget v2, p1, Landroid/os/Message;->what:I

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    #@38
    .line 152
    :goto_0
    return-void

    #@39
    .line 158
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3b
    check-cast v0, Landroid/os/AsyncResult;

    #@3d
    .line 159
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@3f
    if-nez v1, :cond_0

    #@41
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@43
    if-eqz v1, :cond_0

    #@45
    .line 160
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@47
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@49
    check-cast v1, [I

    #@4b
    const/4 v3, 0x0

    #@4c
    aget v1, v1, v3

    #@4e
    invoke-static {v2, v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-set0(Lcom/android/internal/telephony/uicc/UiccPkcs15;I)I

    #@51
    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v2, "mChannelId: "

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@5f
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-get0(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    #@62
    move-result v2

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    #@6e
    .line 162
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    #@70
    invoke-static {v1, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@73
    .line 168
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    #@75
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@78
    goto :goto_0

    #@79
    .line 164
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v2, "error: "

    #@81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    #@92
    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    #@94
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@96
    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@99
    goto :goto_1

    #@9a
    .line 156
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method
