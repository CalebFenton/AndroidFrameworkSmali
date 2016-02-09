.class public Landroid/app/usage/NetworkStatsManager;
.super Ljava/lang/Object;
.source "NetworkStatsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStatsManager"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    iput-object p1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    #@5
    .line 70
    return-void
.end method

.method private static createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 4
    .param p0, "networkType"    # I
    .param p1, "subscriberId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 239
    const/4 v0, 0x0

    #@1
    .line 240
    .local v0, "template":Landroid/net/NetworkTemplate;
    packed-switch p0, :pswitch_data_0

    #@4
    .line 248
    const-string/jumbo v1, "NetworkStatsManager"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Cannot create template for network type "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 249
    const-string/jumbo v3, ", subscriberId \'"

    #@1a
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    .line 249
    invoke-static {p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 250
    const-string/jumbo v3, "\'."

    #@29
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 253
    .end local v0    # "template":Landroid/net/NetworkTemplate;
    :goto_0
    return-object v0

    #@35
    .line 242
    .restart local v0    # "template":Landroid/net/NetworkTemplate;
    :pswitch_0
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    #@38
    move-result-object v0

    #@39
    .local v0, "template":Landroid/net/NetworkTemplate;
    goto :goto_0

    #@3a
    .line 245
    .local v0, "template":Landroid/net/NetworkTemplate;
    :pswitch_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    #@3d
    move-result-object v0

    #@3e
    .local v0, "template":Landroid/net/NetworkTemplate;
    goto :goto_0

    #@3f
    .line 240
    nop

    #@40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public queryDetails(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;
    .locals 9
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 228
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    #@4
    move-result-object v3

    #@5
    .line 229
    .local v3, "template":Landroid/net/NetworkTemplate;
    if-nez v3, :cond_0

    #@7
    .line 230
    return-object v0

    #@8
    .line 233
    :cond_0
    new-instance v1, Landroid/app/usage/NetworkStats;

    #@a
    iget-object v2, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    #@c
    move-wide v4, p3

    #@d
    move-wide v6, p5

    #@e
    invoke-direct/range {v1 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)V

    #@11
    .line 234
    .local v1, "result":Landroid/app/usage/NetworkStats;
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->startUserUidEnumeration()V

    #@14
    .line 235
    return-object v1
.end method

.method public queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;
    .locals 11
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 194
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    #@4
    move-result-object v5

    #@5
    .line 195
    .local v5, "template":Landroid/net/NetworkTemplate;
    if-nez v5, :cond_0

    #@7
    .line 196
    return-object v2

    #@8
    .line 200
    :cond_0
    new-instance v3, Landroid/app/usage/NetworkStats;

    #@a
    iget-object v4, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    #@c
    move-wide v6, p3

    #@d
    move-wide/from16 v8, p5

    #@f
    invoke-direct/range {v3 .. v9}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)V

    #@12
    .line 201
    .local v3, "result":Landroid/app/usage/NetworkStats;
    move/from16 v0, p7

    #@14
    invoke-virtual {v3, v0}, Landroid/app/usage/NetworkStats;->startHistoryEnumeration(I)V

    #@17
    .line 203
    return-object v3
.end method

.method public querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;
    .locals 9
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 159
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    #@4
    move-result-object v3

    #@5
    .line 160
    .local v3, "template":Landroid/net/NetworkTemplate;
    if-nez v3, :cond_0

    #@7
    .line 161
    return-object v0

    #@8
    .line 165
    :cond_0
    new-instance v1, Landroid/app/usage/NetworkStats;

    #@a
    iget-object v2, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    #@c
    move-wide v4, p3

    #@d
    move-wide v6, p5

    #@e
    invoke-direct/range {v1 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)V

    #@11
    .line 166
    .local v1, "result":Landroid/app/usage/NetworkStats;
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->startSummaryEnumeration()V

    #@14
    .line 168
    return-object v1
.end method

.method public querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .locals 9
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 93
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    #@4
    move-result-object v3

    #@5
    .line 94
    .local v3, "template":Landroid/net/NetworkTemplate;
    if-nez v3, :cond_0

    #@7
    .line 95
    return-object v2

    #@8
    .line 98
    :cond_0
    const/4 v0, 0x0

    #@9
    .line 99
    .local v0, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    new-instance v1, Landroid/app/usage/NetworkStats;

    #@b
    iget-object v2, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    #@d
    move-wide v4, p3

    #@e
    move-wide v6, p5

    #@f
    invoke-direct/range {v1 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)V

    #@12
    .line 100
    .local v1, "stats":Landroid/app/usage/NetworkStats;
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->getDeviceSummaryForNetwork()Landroid/app/usage/NetworkStats$Bucket;

    #@15
    move-result-object v0

    #@16
    .line 102
    .local v0, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->close()V

    #@19
    .line 103
    return-object v0
.end method

.method public querySummaryForUser(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .locals 9
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 126
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    #@4
    move-result-object v3

    #@5
    .line 127
    .local v3, "template":Landroid/net/NetworkTemplate;
    if-nez v3, :cond_0

    #@7
    .line 128
    return-object v0

    #@8
    .line 132
    :cond_0
    new-instance v1, Landroid/app/usage/NetworkStats;

    #@a
    iget-object v2, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    #@c
    move-wide v4, p3

    #@d
    move-wide v6, p5

    #@e
    invoke-direct/range {v1 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;JJ)V

    #@11
    .line 133
    .local v1, "stats":Landroid/app/usage/NetworkStats;
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->startSummaryEnumeration()V

    #@14
    .line 135
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->close()V

    #@17
    .line 136
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats;->getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method
