.class public Landroid/net/NetworkStats$Entry;
.super Ljava/lang/Object;
.source "NetworkStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public iface:Ljava/lang/String;

.field public operations:J

.field public rxBytes:J

.field public rxPackets:J

.field public set:I

.field public tag:I

.field public txBytes:J

.field public txPackets:J

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 16

    #@0
    .prologue
    .line 100
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    #@2
    const/4 v3, -0x1

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v5, 0x0

    #@5
    const-wide/16 v6, 0x0

    #@7
    const-wide/16 v8, 0x0

    #@9
    const-wide/16 v10, 0x0

    #@b
    const-wide/16 v12, 0x0

    #@d
    const-wide/16 v14, 0x0

    #@f
    move-object/from16 v1, p0

    #@11
    invoke-direct/range {v1 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    #@14
    .line 99
    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .locals 17
    .param p1, "rxBytes"    # J
    .param p3, "rxPackets"    # J
    .param p5, "txBytes"    # J
    .param p7, "txPackets"    # J
    .param p9, "operations"    # J

    #@0
    .prologue
    .line 104
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    #@2
    const/4 v3, -0x1

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v5, 0x0

    #@5
    move-object/from16 v1, p0

    #@7
    move-wide/from16 v6, p1

    #@9
    move-wide/from16 v8, p3

    #@b
    move-wide/from16 v10, p5

    #@d
    move-wide/from16 v12, p7

    #@f
    move-wide/from16 v14, p9

    #@11
    invoke-direct/range {v1 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    #@14
    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIJJJJJ)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 110
    iput-object p1, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@5
    .line 111
    iput p2, p0, Landroid/net/NetworkStats$Entry;->uid:I

    #@7
    .line 112
    iput p3, p0, Landroid/net/NetworkStats$Entry;->set:I

    #@9
    .line 113
    iput p4, p0, Landroid/net/NetworkStats$Entry;->tag:I

    #@b
    .line 114
    iput-wide p5, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@d
    .line 115
    iput-wide p7, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@f
    .line 116
    iput-wide p9, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@11
    .line 117
    iput-wide p11, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@13
    .line 118
    iput-wide p13, p0, Landroid/net/NetworkStats$Entry;->operations:J

    #@15
    .line 109
    return-void
.end method


# virtual methods
.method public add(Landroid/net/NetworkStats$Entry;)V
    .locals 4
    .param p1, "another"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 131
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@2
    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@7
    .line 132
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@9
    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@b
    add-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@e
    .line 133
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@10
    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@12
    add-long/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@15
    .line 134
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@17
    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@19
    add-long/2addr v0, v2

    #@1a
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@1c
    .line 135
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    #@1e
    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->operations:J

    #@20
    add-long/2addr v0, v2

    #@21
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    #@23
    .line 130
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 155
    instance-of v2, p1, Landroid/net/NetworkStats$Entry;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 156
    check-cast v0, Landroid/net/NetworkStats$Entry;

    #@8
    .line 157
    .local v0, "e":Landroid/net/NetworkStats$Entry;
    iget v2, p0, Landroid/net/NetworkStats$Entry;->uid:I

    #@a
    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    #@c
    if-ne v2, v3, :cond_0

    #@e
    iget v2, p0, Landroid/net/NetworkStats$Entry;->set:I

    #@10
    iget v3, v0, Landroid/net/NetworkStats$Entry;->set:I

    #@12
    if-ne v2, v3, :cond_0

    #@14
    iget v2, p0, Landroid/net/NetworkStats$Entry;->tag:I

    #@16
    iget v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    #@18
    if-ne v2, v3, :cond_0

    #@1a
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@1c
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@1e
    cmp-long v2, v2, v4

    #@20
    if-nez v2, :cond_0

    #@22
    .line 158
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@24
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@26
    cmp-long v2, v2, v4

    #@28
    if-nez v2, :cond_0

    #@2a
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@2c
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@2e
    cmp-long v2, v2, v4

    #@30
    if-nez v2, :cond_0

    #@32
    .line 159
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@34
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@36
    cmp-long v2, v2, v4

    #@38
    if-nez v2, :cond_0

    #@3a
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    #@3c
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@3e
    cmp-long v2, v2, v4

    #@40
    if-nez v2, :cond_0

    #@42
    .line 160
    iget-object v1, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@44
    iget-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v1

    #@4a
    .line 157
    :cond_0
    return v1

    #@4b
    .line 162
    .end local v0    # "e":Landroid/net/NetworkStats$Entry;
    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const-wide/16 v4, 0x0

    #@3
    .line 126
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@5
    cmp-long v1, v2, v4

    #@7
    if-nez v1, :cond_0

    #@9
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@b
    cmp-long v1, v2, v4

    #@d
    if-nez v1, :cond_0

    #@f
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@11
    cmp-long v1, v2, v4

    #@13
    if-nez v1, :cond_0

    #@15
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@17
    cmp-long v1, v2, v4

    #@19
    if-nez v1, :cond_0

    #@1b
    .line 127
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    #@1d
    cmp-long v1, v2, v4

    #@1f
    if-nez v1, :cond_0

    #@21
    const/4 v0, 0x1

    #@22
    .line 126
    :cond_0
    return v0
.end method

.method public isNegative()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const-wide/16 v4, 0x0

    #@3
    .line 122
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@5
    cmp-long v1, v2, v4

    #@7
    if-ltz v1, :cond_0

    #@9
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@b
    cmp-long v1, v2, v4

    #@d
    if-gez v1, :cond_1

    #@f
    :cond_0
    :goto_0
    return v0

    #@10
    :cond_1
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@12
    cmp-long v1, v2, v4

    #@14
    if-ltz v1, :cond_0

    #@16
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@18
    cmp-long v1, v2, v4

    #@1a
    if-ltz v1, :cond_0

    #@1c
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    #@1e
    cmp-long v1, v2, v4

    #@20
    if-ltz v1, :cond_0

    #@22
    const/4 v0, 0x0

    #@23
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 141
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "iface="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 142
    const-string/jumbo v1, " uid="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Landroid/net/NetworkStats$Entry;->uid:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    .line 143
    const-string/jumbo v1, " set="

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget v2, p0, Landroid/net/NetworkStats$Entry;->set:I

    #@26
    invoke-static {v2}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 144
    const-string/jumbo v1, " tag="

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    iget v2, p0, Landroid/net/NetworkStats$Entry;->tag:I

    #@36
    invoke-static {v2}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 145
    const-string/jumbo v1, " rxBytes="

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@46
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@49
    .line 146
    const-string/jumbo v1, " rxPackets="

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@52
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@55
    .line 147
    const-string/jumbo v1, " txBytes="

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@5e
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@61
    .line 148
    const-string/jumbo v1, " txPackets="

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@6a
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6d
    .line 149
    const-string/jumbo v1, " operations="

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    #@76
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@79
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v1

    #@7d
    return-object v1
.end method
