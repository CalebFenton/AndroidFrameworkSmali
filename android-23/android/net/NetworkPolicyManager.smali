.class public Landroid/net/NetworkPolicyManager;
.super Ljava/lang/Object;
.source "NetworkPolicyManager.java"


# static fields
.field private static final ALLOW_PLATFORM_APP_POLICY:Z = true

.field public static final EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "android.net.NETWORK_TEMPLATE"

.field public static final FIREWALL_CHAIN_DOZABLE:I = 0x1

.field public static final FIREWALL_CHAIN_NAME_DOZABLE:Ljava/lang/String; = "dozable"

.field public static final FIREWALL_CHAIN_NAME_NONE:Ljava/lang/String; = "none"

.field public static final FIREWALL_CHAIN_NAME_STANDBY:Ljava/lang/String; = "standby"

.field public static final FIREWALL_CHAIN_NONE:I = 0x0

.field public static final FIREWALL_CHAIN_STANDBY:I = 0x2

.field public static final FIREWALL_RULE_ALLOW:I = 0x1

.field public static final FIREWALL_RULE_DEFAULT:I = 0x0

.field public static final FIREWALL_RULE_DENY:I = 0x2

.field public static final FIREWALL_TYPE_BLACKLIST:I = 0x1

.field public static final FIREWALL_TYPE_WHITELIST:I = 0x0

.field public static final POLICY_ALLOW_BACKGROUND_BATTERY_SAVE:I = 0x2

.field public static final POLICY_NONE:I = 0x0

.field public static final POLICY_REJECT_METERED_BACKGROUND:I = 0x1

.field public static final RULE_ALLOW_ALL:I = 0x0

.field public static final RULE_REJECT_ALL:I = 0x2

.field public static final RULE_REJECT_METERED:I = 0x1


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
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    if-nez p2, :cond_0

    #@5
    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "missing INetworkPolicyManager"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 90
    :cond_0
    iput-object p1, p0, Landroid/net/NetworkPolicyManager;->mContext:Landroid/content/Context;

    #@10
    .line 91
    iput-object p2, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@12
    .line 86
    return-void
.end method

.method public static computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .locals 8
    .param p0, "currentTime"    # J
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 216
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    #@4
    const/4 v4, -0x1

    #@5
    if-ne v3, v4, :cond_0

    #@7
    .line 217
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v4, "Unable to compute boundary without cycleDay"

    #@c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v3

    #@10
    .line 220
    :cond_0
    new-instance v2, Landroid/text/format/Time;

    #@12
    iget-object v3, p2, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    #@14
    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #@17
    .line 221
    .local v2, "now":Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    #@1a
    .line 224
    new-instance v0, Landroid/text/format/Time;

    #@1c
    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    #@1f
    .line 225
    .local v0, "cycle":Landroid/text/format/Time;
    iput v5, v0, Landroid/text/format/Time;->second:I

    #@21
    iput v5, v0, Landroid/text/format/Time;->minute:I

    #@23
    iput v5, v0, Landroid/text/format/Time;->hour:I

    #@25
    .line 226
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    #@27
    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    #@2a
    .line 228
    invoke-static {v0, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    #@2d
    move-result v3

    #@2e
    if-ltz v3, :cond_1

    #@30
    .line 231
    new-instance v1, Landroid/text/format/Time;

    #@32
    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    #@35
    .line 232
    .local v1, "lastMonth":Landroid/text/format/Time;
    iput v5, v1, Landroid/text/format/Time;->second:I

    #@37
    iput v5, v1, Landroid/text/format/Time;->minute:I

    #@39
    iput v5, v1, Landroid/text/format/Time;->hour:I

    #@3b
    .line 233
    iput v6, v1, Landroid/text/format/Time;->monthDay:I

    #@3d
    .line 234
    iget v3, v1, Landroid/text/format/Time;->month:I

    #@3f
    add-int/lit8 v3, v3, -0x1

    #@41
    iput v3, v1, Landroid/text/format/Time;->month:I

    #@43
    .line 235
    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    #@46
    .line 237
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    #@49
    .line 238
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    #@4b
    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    #@4e
    .line 241
    .end local v1    # "lastMonth":Landroid/text/format/Time;
    :cond_1
    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    #@51
    move-result-wide v4

    #@52
    return-wide v4
.end method

.method public static computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J
    .locals 8
    .param p0, "currentTime"    # J
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 246
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    #@4
    const/4 v4, -0x1

    #@5
    if-ne v3, v4, :cond_0

    #@7
    .line 247
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v4, "Unable to compute boundary without cycleDay"

    #@c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v3

    #@10
    .line 250
    :cond_0
    new-instance v2, Landroid/text/format/Time;

    #@12
    iget-object v3, p2, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    #@14
    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #@17
    .line 251
    .local v2, "now":Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    #@1a
    .line 254
    new-instance v0, Landroid/text/format/Time;

    #@1c
    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    #@1f
    .line 255
    .local v0, "cycle":Landroid/text/format/Time;
    iput v5, v0, Landroid/text/format/Time;->second:I

    #@21
    iput v5, v0, Landroid/text/format/Time;->minute:I

    #@23
    iput v5, v0, Landroid/text/format/Time;->hour:I

    #@25
    .line 256
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    #@27
    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    #@2a
    .line 258
    invoke-static {v0, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    #@2d
    move-result v3

    #@2e
    if-gtz v3, :cond_1

    #@30
    .line 261
    new-instance v1, Landroid/text/format/Time;

    #@32
    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    #@35
    .line 262
    .local v1, "nextMonth":Landroid/text/format/Time;
    iput v5, v1, Landroid/text/format/Time;->second:I

    #@37
    iput v5, v1, Landroid/text/format/Time;->minute:I

    #@39
    iput v5, v1, Landroid/text/format/Time;->hour:I

    #@3b
    .line 263
    iput v6, v1, Landroid/text/format/Time;->monthDay:I

    #@3d
    .line 264
    iget v3, v1, Landroid/text/format/Time;->month:I

    #@3f
    add-int/lit8 v3, v3, 0x1

    #@41
    iput v3, v1, Landroid/text/format/Time;->month:I

    #@43
    .line 265
    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    #@46
    .line 267
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    #@49
    .line 268
    iget v3, p2, Landroid/net/NetworkPolicy;->cycleDay:I

    #@4b
    invoke-static {v0, v3}, Landroid/net/NetworkPolicyManager;->snapToCycleDay(Landroid/text/format/Time;I)V

    #@4e
    .line 271
    .end local v1    # "nextMonth":Landroid/text/format/Time;
    :cond_1
    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    #@51
    move-result-wide v4

    #@52
    return-wide v4
.end method

.method public static dumpPolicy(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "policy"    # I

    #@0
    .prologue
    .line 332
    const-string/jumbo v0, "["

    #@3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@6
    .line 333
    and-int/lit8 v0, p1, 0x1

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 334
    const-string/jumbo v0, "REJECT_METERED_BACKGROUND"

    #@d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@10
    .line 336
    :cond_0
    const-string/jumbo v0, "]"

    #@13
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@16
    .line 331
    return-void
.end method

.method public static dumpRules(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "rules"    # I

    #@0
    .prologue
    .line 341
    const-string/jumbo v0, "["

    #@3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@6
    .line 342
    and-int/lit8 v0, p1, 0x1

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 343
    const-string/jumbo v0, "REJECT_METERED"

    #@d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@10
    .line 347
    :cond_0
    :goto_0
    const-string/jumbo v0, "]"

    #@13
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@16
    .line 340
    return-void

    #@17
    .line 344
    :cond_1
    and-int/lit8 v0, p1, 0x2

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 345
    const-string/jumbo v0, "REJECT_ALL"

    #@1e
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    #@21
    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 95
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
    .line 299
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 300
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 327
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0
.end method

.method public static snapToCycleDay(Landroid/text/format/Time;I)V
    .locals 2
    .param p0, "time"    # Landroid/text/format/Time;
    .param p1, "cycleDay"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 281
    const/4 v0, 0x4

    #@2
    invoke-virtual {p0, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    #@5
    move-result v0

    #@6
    if-le p1, v0, :cond_0

    #@8
    .line 283
    iget v0, p0, Landroid/text/format/Time;->month:I

    #@a
    add-int/lit8 v0, v0, 0x1

    #@c
    iput v0, p0, Landroid/text/format/Time;->month:I

    #@e
    .line 284
    iput v1, p0, Landroid/text/format/Time;->monthDay:I

    #@10
    .line 285
    const/4 v0, -0x1

    #@11
    iput v0, p0, Landroid/text/format/Time;->second:I

    #@13
    .line 289
    :goto_0
    invoke-virtual {p0, v1}, Landroid/text/format/Time;->normalize(Z)J

    #@16
    .line 280
    return-void

    #@17
    .line 287
    :cond_0
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    #@19
    goto :goto_0
.end method


# virtual methods
.method public addUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/INetworkPolicyManager;->addUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 116
    :goto_0
    return-void

    #@6
    .line 119
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 2
    .param p1, "subscriber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->factoryReset(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 200
    :goto_0
    return-void

    #@6
    .line 203
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getNetworkPolicies()[Landroid/net/NetworkPolicy;
    .locals 3

    #@0
    .prologue
    .line 174
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
    .line 175
    :catch_0
    move-exception v0

    #@e
    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@f
    return-object v1
.end method

.method public getRestrictBackground()Z
    .locals 2

    #@0
    .prologue
    .line 189
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
    .line 190
    :catch_0
    move-exception v0

    #@8
    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getUidPolicy(I)I
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 137
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
    .line 138
    :catch_0
    move-exception v0

    #@8
    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getUidsWithPolicy(I)[I
    .locals 2
    .param p1, "policy"    # I

    #@0
    .prologue
    .line 145
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
    .line 146
    :catch_0
    move-exception v0

    #@8
    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    new-array v1, v1, [I

    #@b
    return-object v1
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    #@0
    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 151
    :goto_0
    return-void

    #@6
    .line 154
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public removeUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/INetworkPolicyManager;->removeUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 128
    :goto_0
    return-void

    #@6
    .line 131
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    #@0
    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 165
    :goto_0
    return-void

    #@6
    .line 168
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setRestrictBackground(Z)V
    .locals 2
    .param p1, "restrictBackground"    # Z

    #@0
    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 180
    :goto_0
    return-void

    #@6
    .line 183
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 104
    :goto_0
    return-void

    #@6
    .line 107
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    #@0
    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkPolicyManager;->mService:Landroid/net/INetworkPolicyManager;

    #@2
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 158
    :goto_0
    return-void

    #@6
    .line 161
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
