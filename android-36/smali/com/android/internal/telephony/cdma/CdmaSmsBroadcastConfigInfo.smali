.class public Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
.super Ljava/lang/Object;
.source "CdmaSmsBroadcastConfigInfo.java"


# instance fields
.field private blacklist mFromServiceCategory:I

.field private blacklist mLanguage:I

.field private blacklist mSelected:Z

.field private blacklist mToServiceCategory:I


# direct methods
.method public constructor blacklist <init>(IIIZ)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mFromServiceCategory:I

    .line 50
    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mToServiceCategory:I

    .line 51
    iput p3, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mLanguage:I

    .line 52
    iput-boolean p4, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mSelected:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 97
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 101
    :cond_6
    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    .line 103
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mFromServiceCategory:I

    iget v2, p1, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mFromServiceCategory:I

    if-ne v0, v2, :cond_22

    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mToServiceCategory:I

    iget v2, p1, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mToServiceCategory:I

    if-ne v0, v2, :cond_22

    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mLanguage:I

    iget v2, p1, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mLanguage:I

    if-ne v0, v2, :cond_22

    iget-boolean p0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mSelected:Z

    iget-boolean p1, p1, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mSelected:Z

    if-ne p0, p1, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    return v1
.end method

.method public blacklist getFromServiceCategory()I
    .registers 1

    .line 59
    iget p0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mFromServiceCategory:I

    return p0
.end method

.method public blacklist getLanguage()I
    .registers 1

    .line 73
    iget p0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mLanguage:I

    return p0
.end method

.method public blacklist getToServiceCategory()I
    .registers 1

    .line 66
    iget p0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mToServiceCategory:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 92
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mFromServiceCategory:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mToServiceCategory:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mLanguage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean p0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mSelected:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isSelected()Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mSelected:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaSmsBroadcastConfigInfo: Id ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mFromServiceCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->mToServiceCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_27

    const-string p0, "ENABLED"

    goto :goto_29

    :cond_27
    const-string p0, "DISABLED"

    :goto_29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
