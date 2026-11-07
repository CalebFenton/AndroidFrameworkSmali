.class public final synthetic Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/time/Duration;

.field public final synthetic blacklist f$3:Landroid/net/KeepalivePacketData;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda6;->f$0:Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;

    iput p2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda6;->f$2:Ljava/time/Duration;

    iput-object p4, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda6;->f$3:Landroid/net/KeepalivePacketData;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda6;->f$0:Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;

    iget v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda6;->f$1:I

    iget-object v2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda6;->f$2:Ljava/time/Duration;

    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkAgent$$ExternalSyntheticLambda6;->f$3:Landroid/net/KeepalivePacketData;

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;->$r8$lambda$3hAXTjlfa6CF5wd1f_0TWjazbew(Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V

    return-void
.end method
