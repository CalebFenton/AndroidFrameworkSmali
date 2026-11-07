.class public abstract Lcom/android/internal/net/ipsec/ike/SaRecord;
.super Ljava/lang/Object;
.source "SaRecord.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;,
        Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;,
        Lcom/android/internal/net/ipsec/ike/SaRecord$IIpSecTransformHelper;,
        Lcom/android/internal/net/ipsec/ike/SaRecord$SaRecordHelper;,
        Lcom/android/internal/net/ipsec/ike/SaRecord$IpSecTransformHelper;,
        Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;,
        Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecordConfig;,
        Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;,
        Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecordConfig;
    }
.end annotation


# static fields
.field private static blacklist sIpSecTransformHelper:Lcom/android/internal/net/ipsec/ike/SaRecord$IIpSecTransformHelper;

.field private static blacklist sSaRecordHelper:Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;


# instance fields
.field public final blacklist isLocalInit:Z

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field final blacklist mSaLifetimeAlarmScheduler:Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

.field private final blacklist mSkAi:[B

.field private final blacklist mSkAr:[B

.field private final blacklist mSkEi:[B

.field private final blacklist mSkEr:[B

.field public final blacklist nonceInitiator:[B

.field public final blacklist nonceResponder:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsIpSecTransformHelper()Lcom/android/internal/net/ipsec/ike/SaRecord$IIpSecTransformHelper;
    .registers 1

    sget-object v0, Lcom/android/internal/net/ipsec/ike/SaRecord;->sIpSecTransformHelper:Lcom/android/internal/net/ipsec/ike/SaRecord$IIpSecTransformHelper;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsSaRecordHelper()Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;
    .registers 1

    sget-object v0, Lcom/android/internal/net/ipsec/ike/SaRecord;->sSaRecordHelper:Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Lcom/android/internal/net/ipsec/ike/SaRecord$SaRecordHelper;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$SaRecordHelper;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/SaRecord;->sSaRecordHelper:Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;

    .line 69
    new-instance v0, Lcom/android/internal/net/ipsec/ike/SaRecord$IpSecTransformHelper;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/SaRecord$IpSecTransformHelper;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/SaRecord;->sIpSecTransformHelper:Lcom/android/internal/net/ipsec/ike/SaRecord$IIpSecTransformHelper;

    return-void
.end method

.method constructor blacklist <init>(Z[B[B[B[B[B[BLcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;)V
    .registers 11
    .param p1, "localInit"    # Z
    .param p2, "nonceInit"    # [B
    .param p3, "nonceResp"    # [B
    .param p4, "skAi"    # [B
    .param p5, "skAr"    # [B
    .param p6, "skEi"    # [B
    .param p7, "skEr"    # [B
    .param p8, "saLifetimeAlarmScheduler"    # Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mCloseGuard:Landroid/util/CloseGuard;

    .line 96
    iput-boolean p1, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->isLocalInit:Z

    .line 97
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->nonceInitiator:[B

    .line 98
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->nonceResponder:[B

    .line 100
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSkAi:[B

    .line 101
    iput-object p5, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSkAr:[B

    .line 102
    iput-object p6, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSkEi:[B

    .line 103
    iput-object p7, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSkEr:[B

    .line 105
    const-string v0, "SK_ai"

    invoke-direct {p0, v0, p4}, Lcom/android/internal/net/ipsec/ike/SaRecord;->logKey(Ljava/lang/String;[B)V

    .line 106
    const-string v0, "SK_ar"

    invoke-direct {p0, v0, p5}, Lcom/android/internal/net/ipsec/ike/SaRecord;->logKey(Ljava/lang/String;[B)V

    .line 107
    const-string v0, "SK_ei"

    invoke-direct {p0, v0, p6}, Lcom/android/internal/net/ipsec/ike/SaRecord;->logKey(Ljava/lang/String;[B)V

    .line 108
    const-string v0, "SK_er"

    invoke-direct {p0, v0, p7}, Lcom/android/internal/net/ipsec/ike/SaRecord;->logKey(Ljava/lang/String;[B)V

    .line 110
    iput-object p8, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSaLifetimeAlarmScheduler:Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    .line 111
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSaLifetimeAlarmScheduler:Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/SaRecord;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;->scheduleLifetimeExpiryAlarm(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private blacklist logKey(Ljava/lang/String;[B)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .line 117
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/SaRecord;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method static blacklist setIpSecTransformHelper(Lcom/android/internal/net/ipsec/ike/SaRecord$IIpSecTransformHelper;)V
    .registers 1
    .param p0, "helper"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IIpSecTransformHelper;

    .line 188
    sput-object p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->sIpSecTransformHelper:Lcom/android/internal/net/ipsec/ike/SaRecord$IIpSecTransformHelper;

    .line 189
    return-void
.end method

.method static blacklist setSaRecordHelper(Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;)V
    .registers 1
    .param p0, "helper"    # Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;

    .line 182
    sput-object p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->sSaRecordHelper:Lcom/android/internal/net/ipsec/ike/SaRecord$ISaRecordHelper;

    .line 183
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSaLifetimeAlarmScheduler:Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/SaRecord;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;->cancelLifetimeExpiryAlarm(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 171
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/SaRecord;->close()V

    .line 172
    return-void
.end method

.method public blacklist getInboundDecryptionKey()[B
    .registers 2

    .line 157
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->isLocalInit:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSkEr:[B

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSkEi:[B

    :goto_9
    return-object v0
.end method

.method public blacklist getInboundIntegrityKey()[B
    .registers 2

    .line 139
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->isLocalInit:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSkAr:[B

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSkAi:[B

    :goto_9
    return-object v0
.end method

.method public blacklist getOutboundEncryptionKey()[B
    .registers 2

    .line 148
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->isLocalInit:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSkEi:[B

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSkEr:[B

    :goto_9
    return-object v0
.end method

.method public blacklist getOutboundIntegrityKey()[B
    .registers 2

    .line 129
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->isLocalInit:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSkAi:[B

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSkAr:[B

    :goto_9
    return-object v0
.end method

.method protected abstract blacklist getTag()Ljava/lang/String;
.end method

.method public blacklist rescheduleRekey(J)V
    .registers 4
    .param p1, "retryDelayMs"    # J

    .line 162
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/SaRecord;->mSaLifetimeAlarmScheduler:Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/SaRecord$SaLifetimeAlarmScheduler;->rescheduleRekey(J)V

    .line 163
    return-void
.end method
