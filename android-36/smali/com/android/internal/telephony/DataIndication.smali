.class public Lcom/android/internal/telephony/DataIndication;
.super Landroid/hardware/radio/data/IRadioDataIndication$Stub;
.source "DataIndication.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method


# virtual methods
.method public blacklist dataCallListChanged(I[Landroid/hardware/radio/data/SetupDataCallResult;)V
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 60
    iget-object p1, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x3f2

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 61
    :cond_15
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResultList([Landroid/hardware/radio/data/SetupDataCallResult;)Ljava/util/ArrayList;

    move-result-object p1

    .line 62
    iget-object p0, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mDataCallListChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 136
    const-string p0, "70713939dbe39fdbd3a294b3a3e3d2842b3bf4eb"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public blacklist keepaliveStatus(ILandroid/hardware/radio/data/KeepaliveStatus;)V
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 75
    iget-object p1, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 76
    iget-object p1, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/radio/data/KeepaliveStatus;->sessionHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/hardware/radio/data/KeepaliveStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x41a

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 81
    :cond_32
    new-instance p1, Lcom/android/internal/telephony/data/KeepaliveStatus;

    iget v0, p2, Landroid/hardware/radio/data/KeepaliveStatus;->sessionHandle:I

    iget p2, p2, Landroid/hardware/radio/data/KeepaliveStatus;->code:I

    invoke-direct {p1, v0, p2}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(II)V

    .line 83
    iget-object p0, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mNattKeepaliveStatusRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist pcoData(ILandroid/hardware/radio/data/PcoDataInfo;)V
    .registers 6

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 94
    new-instance p1, Landroid/telephony/PcoData;

    iget v0, p2, Landroid/hardware/radio/data/PcoDataInfo;->cid:I

    iget-object v1, p2, Landroid/hardware/radio/data/PcoDataInfo;->bearerProto:Ljava/lang/String;

    iget v2, p2, Landroid/hardware/radio/data/PcoDataInfo;->pcoId:I

    iget-object p2, p2, Landroid/hardware/radio/data/PcoDataInfo;->contents:[B

    invoke-direct {p1, v0, v1, v2, p2}, Landroid/telephony/PcoData;-><init>(ILjava/lang/String;I[B)V

    .line 96
    iget-object p2, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_22

    iget-object p2, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x416

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 98
    :cond_22
    iget-object p0, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mPcoDataRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist slicingConfigChanged(ILandroid/hardware/radio/data/SlicingConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 126
    iget-object p1, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 127
    iget-object p1, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x41f

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 129
    :cond_15
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSlicingConfig(Landroid/hardware/radio/data/SlicingConfig;)Landroid/telephony/data/NetworkSlicingConfig;

    move-result-object p1

    .line 130
    iget-object p0, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mSlicingConfigChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public blacklist unthrottleApn(ILandroid/hardware/radio/data/DataProfileInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processIndication(II)V

    .line 110
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToDataProfile(Landroid/hardware/radio/data/DataProfileInfo;)Landroid/telephony/data/DataProfile;

    move-result-object p1

    .line 112
    iget-object p2, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    const/16 v0, 0x41c

    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 114
    :cond_19
    iget-object p0, p0, Lcom/android/internal/telephony/DataIndication;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mApnUnthrottledRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p2, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method
