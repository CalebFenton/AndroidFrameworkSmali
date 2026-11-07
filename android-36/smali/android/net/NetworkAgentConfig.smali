.class public final Landroid/net/NetworkAgentConfig;
.super Ljava/lang/Object;
.source "NetworkAgentConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkAgentConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkAgentConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist acceptPartialConnectivity:Z

.field public blacklist acceptUnvalidated:Z

.field public blacklist allowBypass:Z

.field public blacklist excludeLocalRouteVpn:Z

.field public blacklist explicitlySelected:Z

.field public transient blacklist hasShownBroken:Z

.field public blacklist legacySubType:I

.field public blacklist legacySubTypeName:Ljava/lang/String;

.field public blacklist legacyType:I

.field public blacklist legacyTypeName:Ljava/lang/String;

.field private blacklist mLegacyExtraInfo:Ljava/lang/String;

.field private blacklist mVpnRequiresValidation:Z

.field public blacklist provisioningNotificationDisabled:Z

.field public blacklist skip464xlat:Z

.field public blacklist subscriberId:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmLegacyExtraInfo(Landroid/net/NetworkAgentConfig;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVpnRequiresValidation(Landroid/net/NetworkAgentConfig;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/NetworkAgentConfig;->mVpnRequiresValidation:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 568
    new-instance v0, Landroid/net/NetworkAgentConfig$1;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig$1;-><init>()V

    sput-object v0, Landroid/net/NetworkAgentConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    .line 185
    iput v0, p0, Landroid/net/NetworkAgentConfig;->legacySubType:I

    .line 202
    const-string v0, ""

    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    .line 217
    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->legacySubTypeName:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->excludeLocalRouteVpn:Z

    .line 259
    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->mVpnRequiresValidation:Z

    .line 277
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/NetworkAgentConfig;)V
    .registers 3
    .param p1, "nac"    # Landroid/net/NetworkAgentConfig;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    .line 185
    iput v0, p0, Landroid/net/NetworkAgentConfig;->legacySubType:I

    .line 202
    const-string v0, ""

    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    .line 217
    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->legacySubTypeName:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->excludeLocalRouteVpn:Z

    .line 259
    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->mVpnRequiresValidation:Z

    .line 281
    if-eqz p1, :cond_4f

    .line 282
    iget-boolean v0, p1, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    .line 283
    iget-boolean v0, p1, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    .line 284
    iget-boolean v0, p1, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    .line 285
    iget-boolean v0, p1, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    .line 286
    iget-object v0, p1, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    .line 287
    iget-boolean v0, p1, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    .line 288
    iget-boolean v0, p1, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    .line 289
    iget v0, p1, Landroid/net/NetworkAgentConfig;->legacyType:I

    iput v0, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    .line 290
    iget-object v0, p1, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    .line 291
    iget v0, p1, Landroid/net/NetworkAgentConfig;->legacySubType:I

    iput v0, p0, Landroid/net/NetworkAgentConfig;->legacySubType:I

    .line 292
    iget-object v0, p1, Landroid/net/NetworkAgentConfig;->legacySubTypeName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->legacySubTypeName:Ljava/lang/String;

    .line 293
    iget-object v0, p1, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    .line 294
    iget-boolean v0, p1, Landroid/net/NetworkAgentConfig;->excludeLocalRouteVpn:Z

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->excludeLocalRouteVpn:Z

    .line 295
    iget-boolean v0, p1, Landroid/net/NetworkAgentConfig;->mVpnRequiresValidation:Z

    iput-boolean v0, p0, Landroid/net/NetworkAgentConfig;->mVpnRequiresValidation:Z

    .line 297
    :cond_4f
    return-void
.end method


# virtual methods
.method public blacklist areLocalRoutesExcludedForVpn()Z
    .registers 2

    .line 251
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->excludeLocalRouteVpn:Z

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 497
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 498
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_7c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_7c

    .line 499
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/NetworkAgentConfig;

    .line 500
    .local v2, "that":Landroid/net/NetworkAgentConfig;
    iget-boolean v3, p0, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    iget-boolean v4, v2, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    if-ne v3, v4, :cond_7a

    iget-boolean v3, p0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    iget-boolean v4, v2, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    if-ne v3, v4, :cond_7a

    iget-boolean v3, p0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    iget-boolean v4, v2, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    if-ne v3, v4, :cond_7a

    iget-boolean v3, p0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    iget-boolean v4, v2, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    if-ne v3, v4, :cond_7a

    iget-boolean v3, p0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    iget-boolean v4, v2, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    if-ne v3, v4, :cond_7a

    iget-boolean v3, p0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    iget-boolean v4, v2, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    if-ne v3, v4, :cond_7a

    iget v3, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    iget v4, v2, Landroid/net/NetworkAgentConfig;->legacyType:I

    if-ne v3, v4, :cond_7a

    iget v3, p0, Landroid/net/NetworkAgentConfig;->legacySubType:I

    iget v4, v2, Landroid/net/NetworkAgentConfig;->legacySubType:I

    if-ne v3, v4, :cond_7a

    iget-object v3, p0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    .line 508
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    .line 509
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/net/NetworkAgentConfig;->legacySubTypeName:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/NetworkAgentConfig;->legacySubTypeName:Ljava/lang/String;

    .line 510
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    .line 511
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-boolean v3, p0, Landroid/net/NetworkAgentConfig;->excludeLocalRouteVpn:Z

    iget-boolean v4, v2, Landroid/net/NetworkAgentConfig;->excludeLocalRouteVpn:Z

    if-ne v3, v4, :cond_7a

    iget-boolean v3, p0, Landroid/net/NetworkAgentConfig;->mVpnRequiresValidation:Z

    iget-boolean v4, v2, Landroid/net/NetworkAgentConfig;->mVpnRequiresValidation:Z

    if-ne v3, v4, :cond_7a

    goto :goto_7b

    :cond_7a
    move v0, v1

    .line 500
    :goto_7b
    return v0

    .line 498
    .end local v2    # "that":Landroid/net/NetworkAgentConfig;
    :cond_7c
    :goto_7c
    return v1
.end method

.method public blacklist getLegacyExtraInfo()Ljava/lang/String;
    .registers 2

    .line 237
    iget-object v0, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLegacyType()I
    .registers 2

    .line 178
    iget v0, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    return v0
.end method

.method public whitelist getLegacyTypeName()Ljava/lang/String;
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSubscriberId()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 148
    iget-object v0, p0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 16

    .line 518
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    .line 519
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, p0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    .line 520
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget v0, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/net/NetworkAgentConfig;->legacySubType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    iget-object v11, p0, Landroid/net/NetworkAgentConfig;->legacySubTypeName:Ljava/lang/String;

    iget-object v12, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->excludeLocalRouteVpn:Z

    .line 521
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->mVpnRequiresValidation:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    .line 518
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isBypassableVpn()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 77
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    return v0
.end method

.method public whitelist isExplicitlySelected()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    return v0
.end method

.method public blacklist isNat64DetectionEnabled()Z
    .registers 2

    .line 164
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isPartialConnectivityAcceptable()Z
    .registers 2

    .line 111
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    return v0
.end method

.method public blacklist isProvisioningNotificationEnabled()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isUnvalidatedConnectivityAcceptable()Z
    .registers 2

    .line 94
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    return v0
.end method

.method public blacklist isVpnValidationRequired()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 272
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->mVpnRequiresValidation:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkAgentConfig { allowBypass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", explicitlySelected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acceptUnvalidated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acceptPartialConnectivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provisioningNotificationDisabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriberId = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", skip464xlat = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", legacyType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", legacySubType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/net/NetworkAgentConfig;->legacySubType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", hasShownBroken = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/net/NetworkAgentConfig;->hasShownBroken:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", legacyTypeName = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", legacySubTypeName = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/net/NetworkAgentConfig;->legacySubTypeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", legacyExtraInfo = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", excludeLocalRouteVpn = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/net/NetworkAgentConfig;->excludeLocalRouteVpn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", vpnRequiresValidation = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/net/NetworkAgentConfig;->mVpnRequiresValidation:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 552
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    iget-object v0, p0, Landroid/net/NetworkAgentConfig;->subscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->skip464xlat:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    iget v0, p0, Landroid/net/NetworkAgentConfig;->legacyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget-object v0, p0, Landroid/net/NetworkAgentConfig;->legacyTypeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 561
    iget v0, p0, Landroid/net/NetworkAgentConfig;->legacySubType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget-object v0, p0, Landroid/net/NetworkAgentConfig;->legacySubTypeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Landroid/net/NetworkAgentConfig;->mLegacyExtraInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 564
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->excludeLocalRouteVpn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    iget-boolean v0, p0, Landroid/net/NetworkAgentConfig;->mVpnRequiresValidation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    return-void
.end method
