.class public Lcom/android/internal/telephony/uicc/IccIoResult;
.super Ljava/lang/Object;
.source "IccIoResult.java"


# instance fields
.field public payload:[B

.field public sw1:I

.field public sw2:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "sw1"    # I
    .param p2, "sw2"    # I
    .param p3, "hexString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 37
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    #@7
    .line 36
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0
    .param p1, "sw1"    # I
    .param p2, "sw2"    # I
    .param p3, "payload"    # [B

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    #@5
    .line 32
    iput p2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    #@7
    .line 33
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    #@9
    .line 30
    return-void
.end method


# virtual methods
.method public getException()Lcom/android/internal/telephony/uicc/IccException;
    .locals 3

    #@0
    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccIoResult;->success()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 61
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 69
    new-instance v0, Lcom/android/internal/telephony/uicc/IccException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "sw1:"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v2, " sw2:"

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    #@35
    return-object v0

    #@36
    .line 63
    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    #@38
    const/16 v1, 0x8

    #@3a
    if-ne v0, v1, :cond_1

    #@3c
    .line 64
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    #@3e
    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    #@41
    return-object v0

    #@42
    .line 66
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileNotFound;

    #@44
    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileNotFound;-><init>()V

    #@47
    return-object v0

    #@48
    .line 61
    :pswitch_data_0
    .packed-switch 0x94
        :pswitch_0
    .end packed-switch
.end method

.method public success()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 52
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    #@3
    const/16 v2, 0x90

    #@5
    if-eq v1, v2, :cond_0

    #@7
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    #@9
    const/16 v2, 0x91

    #@b
    if-ne v1, v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    #@10
    const/16 v2, 0x9e

    #@12
    if-eq v1, v2, :cond_0

    #@14
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    #@16
    const/16 v2, 0x9f

    #@18
    if-eq v1, v2, :cond_0

    #@1a
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "IccIoResponse sw1:0x"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, " sw2:0x"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 43
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    #@1f
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method
