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
.field protected static final blacklist EVENT_READ_BINARY_DONE:I = 0x66

.field protected static final blacklist EVENT_SELECT_FILE_DONE:I = 0x65


# instance fields
.field private blacklist mCallback:Landroid/os/Message;

.field private blacklist mFileId:Ljava/lang/String;

.field final blacklist mPkcs15Path:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Ljava/lang/String;)V
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

    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Creating FileHandler, pkcs15Path: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mPkcs15Path:Ljava/lang/String;

    return-void
.end method

.method private blacklist readBinary()V
    .registers 12

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$fgetmChannelId(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v0

    if-ltz v0, :cond_27

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$fgetmUiccProfile(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$fgetmChannelId(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v2

    const/16 v0, 0x66

    .line 93
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const/4 v3, 0x0

    const/16 v4, 0xb0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 92
    const-string v8, ""

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;ZLandroid/os/Message;)V

    return-void

    .line 95
    :cond_27
    const-string p0, "EF based"

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist selectFile()V
    .registers 12

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$fgetmChannelId(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v0

    if-ltz v0, :cond_27

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$fgetmUiccProfile(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$fgetmChannelId(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v2

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mFileId:Ljava/lang/String;

    const/16 v0, 0x65

    .line 84
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const/4 v3, 0x0

    const/16 v4, 0xa4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v9, 0x0

    .line 83
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;ZLandroid/os/Message;)V

    return-void

    .line 86
    :cond_27
    const-string p0, "EF based"

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 102
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 103
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-nez v1, :cond_c8

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_25

    goto/16 :goto_c8

    .line 110
    :cond_25
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x65

    if-eq v0, v3, :cond_95

    const/16 v3, 0x66

    if-eq v0, v3, :cond_46

    .line 133
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

    .line 123
    :cond_46
    check-cast v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 124
    iget-object p1, v1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccIoResult: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    if-nez p1, :cond_8c

    .line 128
    new-instance v2, Lcom/android/internal/telephony/uicc/IccException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: null response for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mFileId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    .line 127
    :cond_8c
    invoke-static {v0, p1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 129
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 112
    :cond_95
    check-cast v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 113
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object p1

    if-nez p1, :cond_a1

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->readBinary()V

    return-void

    .line 116
    :cond_a1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Select file error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v0

    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 118
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 104
    :cond_c8
    :goto_c8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 106
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist loadFile(Ljava/lang/String;Landroid/os/Message;)Z
    .registers 5

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-$$Nest$smlog(Ljava/lang/String;)V

    if-eqz p1, :cond_22

    if-nez p2, :cond_19

    goto :goto_22

    .line 75
    :cond_19
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mFileId:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->selectFile()V

    const/4 p0, 0x1

    return p0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return p0
.end method
