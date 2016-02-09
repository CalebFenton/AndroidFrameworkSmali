.class public Lcom/android/internal/telephony/CallForwardInfo;
.super Ljava/lang/Object;
.source "CallForwardInfo.java"


# instance fields
.field public number:Ljava/lang/String;

.field public reason:I

.field public serviceClass:I

.field public status:I

.field public timeSeconds:I

.field public toa:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    iget v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@f
    if-nez v0, :cond_0

    #@11
    const-string/jumbo v0, " not active "

    #@14
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 37
    const-string/jumbo v1, " reason: "

    #@1b
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 37
    iget v1, p0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    #@21
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 38
    const-string/jumbo v1, " serviceClass: "

    #@28
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 38
    iget v1, p0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@2e
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 39
    const-string/jumbo v1, " \""

    #@35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 39
    iget-object v1, p0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    #@3b
    iget v2, p0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    #@3d
    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 39
    const-string/jumbo v1, "\" "

    #@48
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 40
    iget v1, p0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    #@4e
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    .line 40
    const-string/jumbo v1, " seconds"

    #@55
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    return-object v0

    #@5e
    :cond_0
    const-string/jumbo v0, " active "

    #@61
    goto :goto_0
.end method
