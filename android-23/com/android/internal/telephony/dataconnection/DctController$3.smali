.class Lcom/android/internal/telephony/dataconnection/DctController$3;
.super Landroid/os/Handler;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    #@0
    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 171
    iget v2, p1, Landroid/os/Message;->what:I

    #@2
    const/16 v3, 0x2bc

    #@4
    if-lt v2, v3, :cond_1

    #@6
    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "EVENT_PHONE"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget v3, p1, Landroid/os/Message;->what:I

    #@14
    add-int/lit16 v3, v3, -0x2bc

    #@16
    add-int/lit8 v3, v3, 0x1

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 173
    const-string/jumbo v3, "_EMERGENCY_CALL_END."

    #@1f
    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap4(Ljava/lang/String;)V

    #@2a
    .line 174
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2c
    check-cast v0, Landroid/os/AsyncResult;

    #@2e
    .line 175
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@30
    check-cast v1, Ljava/lang/Integer;

    #@32
    .line 176
    .local v1, "toggle":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    #@34
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->-get0(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    #@37
    move-result-object v2

    #@38
    iget v3, p1, Landroid/os/Message;->what:I

    #@3a
    add-int/lit16 v3, v3, -0x2bc

    #@3c
    aget-object v2, v2, v3

    #@3e
    .line 177
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@41
    move-result v3

    #@42
    .line 176
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyEmergencyCallToggled(I)V

    #@45
    .line 170
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "toggle":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    #@46
    .line 178
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    #@48
    const/16 v3, 0x258

    #@4a
    if-lt v2, v3, :cond_2

    #@4c
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v3, "EVENT_PHONE"

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    iget v3, p1, Landroid/os/Message;->what:I

    #@5a
    add-int/lit16 v3, v3, -0x258

    #@5c
    add-int/lit8 v3, v3, 0x1

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    .line 180
    const-string/jumbo v3, "_DATA_DETACH."

    #@65
    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap4(Ljava/lang/String;)V

    #@70
    .line 181
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    #@72
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->-get0(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    #@75
    move-result-object v2

    #@76
    iget v3, p1, Landroid/os/Message;->what:I

    #@78
    add-int/lit16 v3, v3, -0x258

    #@7a
    aget-object v2, v2, v3

    #@7c
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyDataDetached()V

    #@7f
    goto :goto_0

    #@80
    .line 183
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    #@82
    const/16 v3, 0x1f4

    #@84
    if-lt v2, v3, :cond_0

    #@86
    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v3, "EVENT_PHONE"

    #@8e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v2

    #@92
    iget v3, p1, Landroid/os/Message;->what:I

    #@94
    add-int/lit16 v3, v3, -0x1f4

    #@96
    add-int/lit8 v3, v3, 0x1

    #@98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    .line 185
    const-string/jumbo v3, "_DATA_ATTACH."

    #@9f
    .line 184
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v2

    #@a3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v2

    #@a7
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap4(Ljava/lang/String;)V

    #@aa
    .line 186
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    #@ac
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->-get0(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    #@af
    move-result-object v2

    #@b0
    iget v3, p1, Landroid/os/Message;->what:I

    #@b2
    add-int/lit16 v3, v3, -0x1f4

    #@b4
    aget-object v2, v2, v3

    #@b6
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyDataAttached()V

    #@b9
    goto :goto_0
.end method
