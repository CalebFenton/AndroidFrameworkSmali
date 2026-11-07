.class public Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
.super Lcom/android/internal/net/ipsec/ike/SaRecord;
.source "SaRecord.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/SaRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IkeSaRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/net/ipsec/ike/SaRecord;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IkeSaRecord"


# instance fields
.field private blacklist mCollectedReqFragments:Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

.field private blacklist mCollectedRespFragments:Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

.field private final blacklist mInitiatorSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

.field private blacklist mLastRecivedReqFirstPacket:[B

.field private blacklist mLastSentRespAllPackets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private blacklist mLastSentRespMsgId:I

.field private blacklist mLocalRequestMessageId:I

.field private blacklist mRemoteRequestMessageId:I

.field private final blacklist mResponderSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

.field private final blacklist mSkD:[B

.field private final blacklist mSkPi:[B

.field private final blacklist mSkPr:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSkD(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mSkD:[B

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Z[B[B[B[B[B[B[B[B[BLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)V
    .registers 26
    .param p1, "initSpi"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .param p2, "respSpi"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .param p3, "localInit"    # Z
    .param p4, "nonceInit"    # [B
    .param p5, "nonceResp"    # [B
    .param p6, "skD"    # [B
    .param p7, "skAi"    # [B
    .param p8, "skAr"    # [B
    .param p9, "skEi"    # [B
    .param p10, "skEr"    # [B
    .param p11, "skPi"    # [B
    .param p12, "skPr"    # [B
    .param p13, "saLifetimeAlarmScheduler"    # Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    .line 666
    move-object/from16 v0, p6

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    move-object v3, p0

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p13

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/net/ipsec/ike/SaRecord;-><init>(Z[B[B[B[B[B[BLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)V

    .line 676
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mInitiatorSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    .line 677
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mResponderSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    .line 678
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mInitiatorSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->bindToIkeSaRecord()V

    .line 679
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mResponderSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->bindToIkeSaRecord()V

    .line 681
    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mSkD:[B

    .line 682
    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mSkPi:[B

    .line 683
    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mSkPr:[B

    .line 685
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mLocalRequestMessageId:I

    .line 686
    iput v4, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mRemoteRequestMessageId:I

    .line 687
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mLastSentRespMsgId:I

    .line 689
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mCollectedReqFragments:Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    .line 690
    iput-object v4, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mCollectedRespFragments:Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    .line 692
    const-string v4, "SK_d"

    invoke-direct {p0, v4, v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->logKey(Ljava/lang/String;[B)V

    .line 693
    const-string v4, "SK_pi"

    invoke-direct {p0, v4, v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->logKey(Ljava/lang/String;[B)V

    .line 694
    const-string v4, "SK_pr"

    invoke-direct {p0, v4, v2}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->logKey(Ljava/lang/String;[B)V

    .line 695
    return-void
.end method

.method private blacklist logKey(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .line 754
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IkeSaRecord"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method static blacklist makeFirstIkeSaRecord(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;IILcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .registers 17
    .param p0, "initRequest"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p1, "initResponse"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p2, "initSpi"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .param p3, "respSpi"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .param p4, "prf"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .param p5, "integrityKeyLength"    # I
    .param p6, "encryptionKeyLength"    # I
    .param p7, "saLifetimeAlarmScheduler"    # Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 711
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/SaRecord;->-$$Nest$sfgetsSaRecordHelper()Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;

    move-result-object v0

    new-instance v1, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;

    const/4 v7, 0x1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;-><init>(Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;IIZLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)V

    invoke-interface {v0, p0, p1, v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;->makeFirstIkeSaRecord(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object v0

    return-object v0
.end method

.method static blacklist makeRekeyedIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;IIZLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .registers 20
    .param p0, "oldSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p1, "oldPrf"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .param p2, "rekeyRequest"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p3, "rekeyResponse"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
    .param p4, "initSpi"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .param p5, "respSpi"    # Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .param p6, "prf"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .param p7, "integrityKeyLength"    # I
    .param p8, "encryptionKeyLength"    # I
    .param p9, "isLocalInit"    # Z
    .param p10, "saLifetimeAlarmScheduler"    # Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 738
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/SaRecord;->-$$Nest$sfgetsSaRecordHelper()Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;

    move-result-object v0

    new-instance v5, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    move-object v1, v5

    move/from16 v5, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;-><init>(Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;IIZLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;->makeRekeyedIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;)Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 929
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/SaRecord;->close()V

    .line 930
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mInitiatorSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->unbindFromIkeSaRecord()V

    .line 931
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mResponderSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->unbindFromIkeSaRecord()V

    .line 932
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mInitiatorSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->close()V

    .line 933
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mResponderSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->close()V

    .line 934
    return-void
.end method

.method public blacklist compareTo(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)I
    .registers 3
    .param p1, "record"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    .line 825
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 629
    check-cast p1, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->compareTo(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)I

    move-result p1

    return p1
.end method

.method public blacklist getCollectedFragments(Z)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    .registers 3
    .param p1, "isResp"    # Z

    .line 875
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mCollectedRespFragments:Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mCollectedReqFragments:Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    :goto_7
    return-object v0
.end method

.method blacklist getInitiatorIkeSecurityParameterIndex()Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .registers 2

    .line 769
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mInitiatorSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    return-object v0
.end method

.method blacklist getInitiatorSpi()J
    .registers 3

    .line 764
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mInitiatorSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->getSpi()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getLastSentRespAllPackets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 923
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mLastSentRespAllPackets:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getLastSentRespMsgId()I
    .registers 2

    .line 913
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mLastSentRespMsgId:I

    return v0
.end method

.method public blacklist getLocalRequestMessageId()I
    .registers 2

    .line 837
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mLocalRequestMessageId:I

    return v0
.end method

.method public blacklist getLocalSpi()J
    .registers 3

    .line 784
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->isLocalInit:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mInitiatorSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mResponderSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    :goto_9
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->getSpi()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRemoteRequestMessageId()I
    .registers 2

    .line 850
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mRemoteRequestMessageId:I

    return v0
.end method

.method public blacklist getRemoteSpi()J
    .registers 3

    .line 789
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->isLocalInit:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mResponderSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mInitiatorSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    :goto_9
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->getSpi()J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getResponderIkeSecurityParameterIndex()Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;
    .registers 2

    .line 779
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mResponderSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    return-object v0
.end method

.method blacklist getResponderSpi()J
    .registers 3

    .line 774
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mResponderSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->getSpi()J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getSkD()[B
    .registers 2

    .line 794
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mSkD:[B

    return-object v0
.end method

.method public blacklist getSkPi()[B
    .registers 2

    .line 803
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mSkPi:[B

    return-object v0
.end method

.method public blacklist getSkPr()[B
    .registers 2

    .line 812
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mSkPr:[B

    return-object v0
.end method

.method protected blacklist getTag()Ljava/lang/String;
    .registers 2

    .line 759
    const-string v0, "IkeSaRecord"

    return-object v0
.end method

.method public blacklist incrementLocalRequestMessageId()V
    .registers 2

    .line 860
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mLocalRequestMessageId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mLocalRequestMessageId:I

    .line 861
    return-void
.end method

.method public blacklist incrementRemoteRequestMessageId()V
    .registers 2

    .line 870
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mRemoteRequestMessageId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mRemoteRequestMessageId:I

    .line 871
    return-void
.end method

.method public blacklist isRetransmittedRequest([B)Z
    .registers 3
    .param p1, "request"    # [B

    .line 918
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mLastRecivedReqFirstPacket:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public blacklist migrate(Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .registers 4
    .param p1, "initiatorAddress"    # Ljava/net/InetAddress;
    .param p2, "responderAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mInitiatorSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->migrate(Ljava/net/InetAddress;)V

    .line 940
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mResponderSpiResource:Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;

    invoke-virtual {v0, p2}, Lcom/android/internal/net/ipsec/ike/utils/IkeSecurityParameterIndex;->migrate(Ljava/net/InetAddress;)V

    .line 941
    return-void
.end method

.method public blacklist resetCollectedFragments(Z)V
    .registers 3
    .param p1, "isResp"    # Z

    .line 897
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->updateCollectedFragments(Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;Z)V

    .line 898
    return-void
.end method

.method public blacklist updateCollectedFragments(Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;Z)V
    .registers 3
    .param p1, "updatedFragments"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    .param p2, "isResp"    # Z

    .line 888
    if-eqz p2, :cond_5

    .line 889
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mCollectedRespFragments:Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    goto :goto_7

    .line 891
    :cond_5
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mCollectedReqFragments:Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    .line 893
    :goto_7
    return-void
.end method

.method public blacklist updateLastReceivedReqFirstPacket([B)V
    .registers 2
    .param p1, "reqPacket"    # [B

    .line 902
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mLastRecivedReqFirstPacket:[B

    .line 903
    return-void
.end method

.method public blacklist updateLastSentRespAllPackets(Ljava/util/List;I)V
    .registers 3
    .param p2, "msgId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    .line 907
    .local p1, "respPacketList":Ljava/util/List;, "Ljava/util/List<[B>;"
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mLastSentRespAllPackets:Ljava/util/List;

    .line 908
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->mLastSentRespMsgId:I

    .line 909
    return-void
.end method
