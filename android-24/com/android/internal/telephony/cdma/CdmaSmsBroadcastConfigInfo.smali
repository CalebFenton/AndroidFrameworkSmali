.class public Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
.super Ljava/lang/Object;
.source "CdmaSmsBroadcastConfigInfo.java"


# instance fields
.field private mFromServiceCategory:I

.field private mLanguage:I

.field private mSelected:Z

.field private mToServiceCategory:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0
    .param p1, "fromServiceCategory"    # I
    .param p2, "toServiceCategory"    # I
    .param p3, "language"    # I
    .param p4, "selected"    # Z

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mFromServiceCategory:I

    #@5
    .line 48
    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mToServiceCategory:I

    #@7
    .line 49
    iput p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mLanguage:I

    #@9
    .line 50
    iput-boolean p4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mSelected:Z

    #@b
    .line 46
    return-void
.end method


# virtual methods
.method public getFromServiceCategory()I
    .locals 1

    #@0
    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mFromServiceCategory:I

    #@2
    return v0
.end method

.method public getLanguage()I
    .locals 1

    #@0
    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mLanguage:I

    #@2
    return v0
.end method

.method public getToServiceCategory()I
    .locals 1

    #@0
    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mToServiceCategory:I

    #@2
    return v0
.end method

.method public isSelected()Z
    .locals 1

    #@0
    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mSelected:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CdmaSmsBroadcastConfigInfo: Id ["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 84
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mFromServiceCategory:I

    #@e
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 84
    const-string/jumbo v1, ", "

    #@15
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 84
    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mToServiceCategory:I

    #@1b
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 84
    const-string/jumbo v1, "] "

    #@22
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_0

    #@2c
    const-string/jumbo v0, "ENABLED"

    #@2f
    .line 83
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0

    #@38
    .line 85
    :cond_0
    const-string/jumbo v0, "DISABLED"

    #@3b
    goto :goto_0
.end method
