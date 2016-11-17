.class Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;
.super Landroid/os/Handler;
.source "UiccPkcs15.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccPkcs15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileHandler"
.end annotation


# static fields
.field protected static final EVENT_READ_BINARY_DONE:I = 0x66

.field protected static final EVENT_SELECT_FILE_DONE:I = 0x65


# instance fields
.field private mCallback:Landroid/os/Message;

.field private mFileId:Ljava/lang/String;

.field private final mPkcs15Path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccPkcs15;
    .param p2, "pkcs15Path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "Creating FileHandler, pkcs15Path: "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    #@1c
    .line 78
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mPkcs15Path:Ljava/lang/String;

    #@1e
    .line 76
    return-void
.end method

.method private readBinary()V
    .locals 9

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-get0(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    #@6
    move-result v0

    #@7
    if-ltz v0, :cond_0

    #@9
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@b
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-get1(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccCard;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@11
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-get0(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    #@14
    move-result v1

    #@15
    .line 102
    const-string/jumbo v7, ""

    #@18
    const/16 v3, 0x66

    #@1a
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->obtainMessage(I)Landroid/os/Message;

    #@1d
    move-result-object v8

    #@1e
    .line 101
    const/16 v3, 0xb0

    #@20
    move v4, v2

    #@21
    move v5, v2

    #@22
    move v6, v2

    #@23
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    #@26
    .line 99
    :goto_0
    return-void

    #@27
    .line 104
    :cond_0
    const-string/jumbo v0, "EF based"

    #@2a
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    #@2d
    goto :goto_0
.end method

.method private selectFile()V
    .locals 9

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@3
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-get0(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    #@6
    move-result v0

    #@7
    if-ltz v0, :cond_0

    #@9
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@b
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-get1(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccCard;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    #@11
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-get0(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    #@14
    move-result v1

    #@15
    .line 93
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mFileId:Ljava/lang/String;

    #@17
    const/16 v3, 0x65

    #@19
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->obtainMessage(I)Landroid/os/Message;

    #@1c
    move-result-object v8

    #@1d
    .line 92
    const/16 v3, 0xa4

    #@1f
    const/4 v5, 0x4

    #@20
    const/4 v6, 0x2

    #@21
    move v4, v2

    #@22
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    #@25
    .line 90
    :goto_0
    return-void

    #@26
    .line 95
    :cond_0
    const-string/jumbo v0, "EF based"

    #@29
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    #@2c
    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v5, "handleMessage: "

    #@9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v4

    #@d
    iget v5, p1, Landroid/os/Message;->what:I

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    #@1a
    .line 111
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c
    check-cast v0, Landroid/os/AsyncResult;

    #@1e
    .line 112
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@20
    if-nez v4, :cond_0

    #@22
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@24
    if-nez v4, :cond_1

    #@26
    .line 113
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v5, "Error: "

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    #@3f
    .line 114
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    #@41
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@43
    invoke-static {v4, v3, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@46
    .line 115
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    #@48
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@4b
    .line 116
    return-void

    #@4c
    .line 119
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    #@4e
    packed-switch v4, :pswitch_data_0

    #@51
    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v4, "Unknown event"

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    iget v4, p1, Landroid/os/Message;->what:I

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    #@6a
    .line 109
    :goto_0
    return-void

    #@6b
    .line 121
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->readBinary()V

    #@6e
    goto :goto_0

    #@6f
    .line 125
    :pswitch_1
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@71
    check-cast v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    #@73
    .line 126
    .local v1, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@75
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    .line 127
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@7b
    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    .line 128
    .local v2, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v5, "IccIoResult: "

    #@87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v4

    #@8f
    const-string/jumbo v5, " payload: "

    #@92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v4

    #@96
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v4

    #@9a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v4

    #@9e
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    #@a1
    .line 129
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    #@a3
    if-nez v2, :cond_2

    #@a5
    .line 130
    new-instance v3, Lcom/android/internal/telephony/uicc/IccException;

    #@a7
    new-instance v5, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v6, "Error: null response for "

    #@af
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v5

    #@b3
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mFileId:Ljava/lang/String;

    #@b5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v5

    #@b9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v5

    #@bd
    invoke-direct {v3, v5}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    #@c0
    .line 129
    :cond_2
    invoke-static {v4, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@c3
    .line 131
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    #@c5
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@c8
    goto :goto_0

    #@c9
    .line 119
    nop

    #@ca
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadFile(Ljava/lang/String;Landroid/os/Message;)Z
    .locals 2
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "callBack"    # Landroid/os/Message;

    #@0
    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "loadFile: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    #@17
    .line 83
    if-eqz p1, :cond_0

    #@19
    if-nez p2, :cond_1

    #@1b
    :cond_0
    const/4 v0, 0x0

    #@1c
    return v0

    #@1d
    .line 84
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mFileId:Ljava/lang/String;

    #@1f
    .line 85
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    #@21
    .line 86
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->selectFile()V

    #@24
    .line 87
    const/4 v0, 0x1

    #@25
    return v0
.end method
