.class Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaServiceCategoryProgramHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@0
    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method private sendScpResults()V
    .locals 14

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->getResultCode()I

    #@4
    move-result v8

    #@5
    .line 129
    .local v8, "resultCode":I
    const/4 v11, -0x1

    #@6
    if-eq v8, v11, :cond_0

    #@8
    const/4 v11, 0x1

    #@9
    if-eq v8, v11, :cond_0

    #@b
    .line 130
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@d
    new-instance v12, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v13, "SCP results error: result code = "

    #@15
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v12

    #@19
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v12

    #@1d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v12

    #@21
    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->-wrap1(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    #@24
    .line 131
    return-void

    #@25
    .line 133
    :cond_0
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->getResultExtras(Z)Landroid/os/Bundle;

    #@28
    move-result-object v6

    #@29
    .line 134
    .local v6, "extras":Landroid/os/Bundle;
    if-nez v6, :cond_1

    #@2b
    .line 135
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@2d
    const-string/jumbo v12, "SCP results error: missing extras"

    #@30
    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->-wrap1(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    #@33
    .line 136
    return-void

    #@34
    .line 138
    :cond_1
    const-string/jumbo v11, "sender"

    #@37
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v10

    #@3b
    .line 139
    .local v10, "sender":Ljava/lang/String;
    if-nez v10, :cond_2

    #@3d
    .line 140
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@3f
    const-string/jumbo v12, "SCP results error: missing sender extra."

    #@42
    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->-wrap1(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    #@45
    .line 141
    return-void

    #@46
    .line 144
    :cond_2
    const-string/jumbo v11, "results"

    #@49
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@4c
    move-result-object v9

    #@4d
    .line 145
    .local v9, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramResults;>;"
    if-nez v9, :cond_3

    #@4f
    .line 146
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@51
    const-string/jumbo v12, "SCP results error: missing results extra."

    #@54
    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->-wrap1(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    #@57
    .line 147
    return-void

    #@58
    .line 150
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    #@5a
    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    #@5d
    .line 151
    .local v0, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v11, 0x2

    #@5e
    iput v11, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    #@60
    .line 152
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    #@63
    move-result v11

    #@64
    iput v11, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    #@66
    .line 153
    iput-object v9, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    #@68
    .line 154
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    #@6b
    move-result-object v5

    #@6c
    .line 156
    .local v5, "encodedBearerData":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@6e
    const/16 v11, 0x64

    #@70
    invoke-direct {v1, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@73
    .line 157
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    #@75
    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@78
    .line 159
    .local v3, "dos":Ljava/io/DataOutputStream;
    const/16 v11, 0x1006

    #@7a
    :try_start_0
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@7d
    .line 160
    const/4 v11, 0x0

    #@7e
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@81
    .line 161
    const/4 v11, 0x0

    #@82
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@85
    .line 163
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    #@88
    move-result-object v11

    #@89
    .line 162
    invoke-static {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #@8c
    move-result-object v2

    #@8d
    .line 164
    .local v2, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iget v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    #@8f
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    #@92
    .line 165
    iget v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    #@94
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    #@97
    .line 166
    iget v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    #@99
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    #@9c
    .line 167
    iget v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    #@9e
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    #@a1
    .line 168
    iget v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    #@a3
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    #@a6
    .line 169
    iget-object v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@a8
    iget-object v12, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    #@aa
    array-length v12, v12

    #@ab
    const/4 v13, 0x0

    #@ac
    invoke-virtual {v3, v11, v13, v12}, Ljava/io/DataOutputStream;->write([BII)V

    #@af
    .line 171
    const/4 v11, 0x0

    #@b0
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    #@b3
    .line 172
    const/4 v11, 0x0

    #@b4
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    #@b7
    .line 173
    const/4 v11, 0x0

    #@b8
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    #@bb
    .line 174
    array-length v11, v5

    #@bc
    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->write(I)V

    #@bf
    .line 175
    array-length v11, v5

    #@c0
    const/4 v12, 0x0

    #@c1
    invoke-virtual {v3, v5, v12, v11}, Ljava/io/DataOutputStream;->write([BII)V

    #@c4
    .line 177
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@c6
    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@c8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@cb
    move-result-object v12

    #@cc
    const/4 v13, 0x0

    #@cd
    invoke-interface {v11, v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d0
    .line 182
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@d3
    .line 127
    .end local v2    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :goto_0
    return-void

    #@d4
    .line 183
    .restart local v2    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :catch_0
    move-exception v7

    #@d5
    .local v7, "ignored":Ljava/io/IOException;
    goto :goto_0

    #@d6
    .line 178
    .end local v2    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v7    # "ignored":Ljava/io/IOException;
    :catch_1
    move-exception v4

    #@d7
    .line 179
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@d9
    const-string/jumbo v12, "exception creating SCP results PDU"

    #@dc
    invoke-static {v11, v12, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->-wrap2(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@df
    .line 182
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@e2
    goto :goto_0

    #@e3
    .line 183
    :catch_2
    move-exception v7

    #@e4
    .restart local v7    # "ignored":Ljava/io/IOException;
    goto :goto_0

    #@e5
    .line 180
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "ignored":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    #@e6
    .line 182
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@e9
    .line 180
    :goto_1
    throw v11

    #@ea
    .line 183
    :catch_3
    move-exception v7

    #@eb
    .restart local v7    # "ignored":Ljava/io/IOException;
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->sendScpResults()V

    #@3
    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@5
    const-string/jumbo v1, "mScpResultsReceiver finished"

    #@8
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->-wrap0(Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;Ljava/lang/String;)V

    #@b
    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    #@d
    const/4 v1, 0x2

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->sendMessage(I)V

    #@11
    .line 121
    return-void
.end method
