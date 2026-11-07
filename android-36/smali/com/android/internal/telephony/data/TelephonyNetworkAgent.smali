.class public Lcom/android/internal/telephony/data/TelephonyNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "TelephonyNetworkAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;
    }
.end annotation


# instance fields
.field private blacklist mAbandoned:Z

.field private final blacklist mDataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

.field private final blacklist mId:I

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mTelephonyNetworkAgentCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$3hAXTjlfa6CF5wd1f_0TWjazbew(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V
    .registers 4

    .line 245
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;->onStartSocketKeepalive(ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$79CBqtGBPdqcZNVGCtpvZXf6oaE(ILandroid/net/Uri;Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V
    .registers 4

    .line 214
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;ILandroid/net/Uri;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GpZ0sbUF-wcsFhMUNdq8stnOc0U(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;I)V
    .registers 2

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;->onStopSocketKeepalive(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P35YRszlncMOvDrDHjqMI5BUgzU(ILcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V
    .registers 3

    .line 260
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$d_mG0DUpmm5BuANXsZW0Ea5zgNY(ILandroid/net/QosFilter;Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V
    .registers 4

    .line 276
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;ILandroid/net/QosFilter;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kGDky9gqEpOl78MMvGUcamfBvuE(ILcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V
    .registers 3

    .line 294
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rBViQlo8Jo_3z7_mH2DQgnsknsY(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;ILandroid/net/QosFilter;)V
    .registers 3

    .line 277
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;->onQosCallbackRegistered(ILandroid/net/QosFilter;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tCqfsNlReH5R97MiyRXD8-nnqQM(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;ILandroid/net/Uri;)V
    .registers 3

    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;->onValidationStatus(ILandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xAGWmohtCpJjmsMZjFy1VgAh9bQ(ILjava/time/Duration;Landroid/net/KeepalivePacketData;Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V
    .registers 5

    .line 244
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda6;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yXvOQSyavkRufxgaQmO2u7Jz0Ow(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;I)V
    .registers 2

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;->onQosCallbackUnregistered(I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataNetwork;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V
    .registers 18

    .line 156
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance p1, Landroid/net/NetworkCapabilities$Builder;

    .line 160
    invoke-virtual {p3}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    const/16 v9, 0x15

    .line 161
    invoke-virtual {p1, v9}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v4

    .line 163
    invoke-virtual {p3}, Lcom/android/internal/telephony/data/DataNetwork;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    .line 156
    const-string v3, "TelephonyNetworkAgent"

    move-object v0, p0

    move-object v2, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    .line 51
    new-instance p1, Lcom/android/internal/telephony/LocalLog;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 p1, 0x0

    .line 67
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mAbandoned:Z

    .line 73
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mTelephonyNetworkAgentCallbacks:Ljava/util/Set;

    .line 165
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->register()Landroid/net/Network;

    .line 166
    iput-object p3, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mDataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    move-object/from16 p2, p7

    .line 167
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mId:I

    .line 169
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "TNA-"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mLogTag:Ljava/lang/String;

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TelephonyNetworkAgent created, nc="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Landroid/net/NetworkCapabilities$Builder;

    .line 172
    invoke-virtual {p3}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 173
    invoke-virtual {p2, v9}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    move-result-object p2

    .line 174
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", score="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 342
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist abandon()V
    .registers 2

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mAbandoned:Z

    const/16 v0, 0x1388

    .line 308
    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->unregisterAfterReplacement(I)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 353
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mLogTag:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 356
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 358
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 360
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getId()I
    .registers 1

    .line 194
    iget p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mId:I

    return p0
.end method

.method protected blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 334
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist onBandwidthUpdateRequested()V
    .registers 2

    .line 225
    const-string v0, "onBandwidthUpdateRequested: RIL.pullLceData is not supported anymore."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onNetworkUnwanted()V
    .registers 2

    .line 182
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mAbandoned:Z

    if-eqz v0, :cond_a

    .line 183
    const-string v0, "The agent is already abandoned. Ignored onNetworkUnwanted."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->log(Ljava/lang/String;)V

    return-void

    .line 187
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mDataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    return-void
.end method

.method public whitelist onQosCallbackRegistered(ILandroid/net/QosFilter;)V
    .registers 4

    .line 272
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mAbandoned:Z

    if-eqz v0, :cond_a

    .line 273
    const-string p1, "The agent is already abandoned. Ignored onQosCallbackRegistered."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->log(Ljava/lang/String;)V

    return-void

    .line 276
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mTelephonyNetworkAgentCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda4;-><init>(ILandroid/net/QosFilter;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public whitelist onQosCallbackUnregistered(I)V
    .registers 3

    .line 290
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mAbandoned:Z

    if-eqz v0, :cond_a

    .line 291
    const-string p1, "The agent is already abandoned. Ignored onQosCallbackUnregistered."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->log(Ljava/lang/String;)V

    return-void

    .line 294
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mTelephonyNetworkAgentCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public whitelist onStartSocketKeepalive(ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V
    .registers 5

    .line 240
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mAbandoned:Z

    if-eqz v0, :cond_a

    .line 241
    const-string p1, "The agent is already abandoned. Ignored onStartSocketKeepalive."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->log(Ljava/lang/String;)V

    return-void

    .line 244
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mTelephonyNetworkAgentCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda0;-><init>(ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public whitelist onStopSocketKeepalive(I)V
    .registers 3

    .line 256
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mAbandoned:Z

    if-eqz v0, :cond_a

    .line 257
    const-string p1, "The agent is already abandoned. Ignored onStopSocketKeepalive."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->log(Ljava/lang/String;)V

    return-void

    .line 260
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mTelephonyNetworkAgentCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public whitelist onValidationStatus(ILandroid/net/Uri;)V
    .registers 4

    .line 210
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mAbandoned:Z

    if-eqz v0, :cond_a

    .line 211
    const-string p1, "The agent is already abandoned. Ignored onValidationStatus."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->log(Ljava/lang/String;)V

    return-void

    .line 214
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mTelephonyNetworkAgentCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda1;-><init>(ILandroid/net/Uri;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V
    .registers 2

    .line 317
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mTelephonyNetworkAgentCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V
    .registers 2

    .line 326
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->mTelephonyNetworkAgentCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
