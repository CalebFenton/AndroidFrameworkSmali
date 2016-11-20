.class public Landroid/net/NetworkPolicyManager;
.super Ljava/lang/Object;
.source "NetworkPolicyManager.java"


# static fields
.field private static final ALLOW_PLATFORM_APP_POLICY:Z = true

.field public static final EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "android.net.NETWORK_TEMPLATE"

.field public static final FIREWALL_CHAIN_DOZABLE:I = 0x1

.field public static final FIREWALL_CHAIN_NAME_DOZABLE:Ljava/lang/String; = "dozable"

.field public static final FIREWALL_CHAIN_NAME_NONE:Ljava/lang/String; = "none"

.field public static final FIREWALL_CHAIN_NAME_POWERSAVE:Ljava/lang/String; = "powersave"

.field public static final FIREWALL_CHAIN_NAME_STANDBY:Ljava/lang/String; = "standby"

.field public static final FIREWALL_CHAIN_NONE:I = 0x0

.field public static final FIREWALL_CHAIN_POWERSAVE:I = 0x3

.field public static final FIREWALL_CHAIN_STANDBY:I = 0x2

.field public static final FIREWALL_RULE_ALLOW:I = 0x1

.field public static final FIREWALL_RULE_DEFAULT:I = 0x0

.field public static final FIREWALL_RULE_DENY:I = 0x2

.field public static final FIREWALL_TYPE_BLACKLIST:I = 0x1

.field public static final FIREWALL_TYPE_WHITELIST:I = 0x0

.field public static final MASK_ALL_NETWORKS:I = 0xf0

.field public static final MASK_METERED_NETWORKS:I = 0xf

.field public static final POLICY_ALLOW_BACKGROUND_BATTERY_SAVE:I = 0x2

.field public static final POLICY_NONE:I = 0x0

.field public static final POLICY_REJECT_METERED_BACKGROUND:I = 0x1

.field public static final RULE_ALLOW_ALL:I = 0x20

.field public static final RULE_ALLOW_METERED:I = 0x1

.field public static final RULE_NONE:I = 0x0

.field public static final RULE_REJECT_ALL:I = 0x40

.field public static final RULE_REJECT_METERED:I = 0x4

.field public static final RULE_TEMPORARY_ALLOW_METERED:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/net/INetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/INetworkPolicyManager;

    #@0
    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 115
    if-nez p2, :cond_0

    #@5
    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "missing INetworkPolicyManager"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 118
    :cond_0
    iput-object p1, p0, Landroid/net/NetworkPolicyManager;->mContext:Landroid/content/Context;

    #@10
    .line 119
    iput-object p2, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@12
    .line 114
    return-void
.end method

.method public static computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .locals 6
    .param p0, "currentTime"    # J
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 252
    iget v1, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    #@3
    if-ne v1, v4, :cond_0

    #@5
    .line 253
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v2, "Unable to compute boundary without cycleDay"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 256
    :cond_0
    iget-object v1, p2, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    #@10
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@13
    move-result-object v1

    #@14
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@17
    move-result-object v0

    #@18
    .line 257
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@1b
    .line 258
    iget v1, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    #@1d
    invoke-static {v0, v1}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Ljava/util/Calendar;I)V

    #@20
    .line 260
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@23
    move-result-wide v2

    #@24
    cmp-long v1, v2, p0

    #@26
    if-ltz v1, :cond_1

    #@28
    .line 262
    const/4 v1, 0x5

    #@29
    const/4 v2, 0x1

    #@2a
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    #@2d
    .line 263
    const/4 v1, 0x2

    #@2e
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    #@31
    .line 264
    iget v1, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    #@33
    invoke-static {v0, v1}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Ljava/util/Calendar;I)V

    #@36
    .line 267
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@39
    move-result-wide v2

    #@3a
    return-wide v2
.end method

.method public static computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .locals 6
    .param p0, "currentTime"    # J
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 272
    iget v1, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    #@3
    const/4 v2, -0x1

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Unable to compute boundary without cycleDay"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 276
    :cond_0
    iget-object v1, p2, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    #@11
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@14
    move-result-object v1

    #@15
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@18
    move-result-object v0

    #@19
    .line 277
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@1c
    .line 278
    iget v1, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    #@1e
    invoke-static {v0, v1}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Ljava/util/Calendar;I)V

    #@21
    .line 280
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@24
    move-result-wide v2

    #@25
    cmp-long v1, v2, p0

    #@27
    if-gtz v1, :cond_1

    #@29
    .line 282
    const/4 v1, 0x5

    #@2a
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    #@2d
    .line 283
    const/4 v1, 0x2

    #@2e
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    #@31
    .line 284
    iget v1, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    #@33
    invoke-static {v0, v1}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Ljava/util/Calendar;I)V

    #@36
    .line 287
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@39
    move-result-wide v2

    #@3a
    return-wide v2
.end method

.method public static from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 123
    const-string/jumbo v0, "netpolicy"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/net/NetworkPolicyManager;

    #@9
    return-object v0
.end method

.method public static isUidValidForPolicy(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 316
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 317
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 344
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0
.end method

.method public static snapToCycleDay(Ljava/util/Calendar;I)V
    .locals 5
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "cycleDay"    # I

    #@0
    .prologue
    const/16 v4, 0xd

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x5

    #@4
    const/4 v1, 0x0

    #@5
    .line 297
    const/16 v0, 0xb

    #@7
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@a
    .line 298
    const/16 v0, 0xc

    #@c
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    #@f
    .line 299
    invoke-virtual {p0, v4, v1}, Ljava/util/Calendar;->set(II)V

    #@12
    .line 300
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    #@15
    move-result v0

    #@16
    if-le p1, v0, :cond_0

    #@18
    .line 301
    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->set(II)V

    #@1b
    .line 302
    const/4 v0, 0x2

    #@1c
    invoke-virtual {p0, v0, v3}, Ljava/util/Calendar;->add(II)V

    #@1f
    .line 303
    const/4 v0, -0x1

    #@20
    invoke-virtual {p0, v4, v0}, Ljava/util/Calendar;->add(II)V

    #@23
    .line 296
    :goto_0
    return-void

    #@24
    .line 305
    :cond_0
    invoke-virtual {p0, v2, p1}, Ljava/util/Calendar;->set(II)V

    #@27
    goto :goto_0
.end method

.method public static uidRulesToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "uidRules"    # I

    #@0
    .prologue
    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8
    move-result-object v1

    #@9
    const-string/jumbo v2, " ("

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 352
    .local v0, "string":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    #@12
    .line 353
    const-string/jumbo v1, "NONE"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 357
    :goto_0
    const-string/jumbo v1, ")"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 355
    :cond_0
    const-class v1, Landroid/net/NetworkPolicyManager;

    #@25
    const-string/jumbo v2, "RULE_"

    #@28
    invoke-static {v1, v2, p0}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    goto :goto_0
.end method


# virtual methods
.method public addUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/INetworkPolicyManager;->addUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 145
    return-void

    #@6
    .line 148
    :catch_0
    move-exception v0

    #@7
    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 2
    .param p1, "subscriber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->factoryReset(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 235
    return-void

    #@6
    .line 238
    :catch_0
    move-exception v0

    #@7
    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .locals 3

    #@0
    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    iget-object v2, p0, Landroid/net/NetworkPolicyManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, v2}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 209
    :catch_0
    move-exception v0

    #@e
    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public getRestrictBackground()Z
    .locals 2

    #@0
    .prologue
    .line 224
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 225
    :catch_0
    move-exception v0

    #@8
    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getUidPolicy(I)I
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 169
    :catch_0
    move-exception v0

    #@8
    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getUidsWithPolicy(I)[I
    .locals 2
    .param p1, "policy"    # I

    #@0
    .prologue
    .line 176
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->getUidsWithPolicy(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 177
    :catch_0
    move-exception v0

    #@8
    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    #@0
    .prologue
    .line 184
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 182
    return-void

    #@6
    .line 185
    :catch_0
    move-exception v0

    #@7
    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public removeUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/INetworkPolicyManager;->removeUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 158
    return-void

    #@6
    .line 161
    :catch_0
    move-exception v0

    #@7
    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    #@0
    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 198
    return-void

    #@6
    .line 201
    :catch_0
    move-exception v0

    #@7
    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setRestrictBackground(Z)V
    .locals 2
    .param p1, "restrictBackground"    # Z

    #@0
    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 214
    return-void

    #@6
    .line 217
    :catch_0
    move-exception v0

    #@7
    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public setUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 132
    return-void

    #@6
    .line 135
    :catch_0
    move-exception v0

    #@7
    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    #@0
    .prologue
    .line 192
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 190
    return-void

    #@6
    .line 193
    :catch_0
    move-exception v0

    #@7
    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@a
    move-result-object v1

    #@b
    throw v1
.end method
