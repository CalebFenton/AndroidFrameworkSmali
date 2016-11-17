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

.field public roaming:I

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
    .line 116
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
    .line 115
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
    .line 120
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
    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIJJJJJ)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "roaming"    # I
    .param p6, "rxBytes"    # J
    .param p8, "rxPackets"    # J
    .param p10, "txBytes"    # J
    .param p12, "txPackets"    # J
    .param p14, "operations"    # J

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 132
    iput-object p1, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@5
    .line 133
    iput p2, p0, Landroid/net/NetworkStats$Entry;->uid:I

    #@7
    .line 134
    iput p3, p0, Landroid/net/NetworkStats$Entry;->set:I

    #@9
    .line 135
    iput p4, p0, Landroid/net/NetworkStats$Entry;->tag:I

    #@b
    .line 136
    iput p5, p0, Landroid/net/NetworkStats$Entry;->roaming:I

    #@d
    .line 137
    iput-wide p6, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@f
    .line 138
    iput-wide p8, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@11
    .line 139
    iput-wide p10, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@13
    .line 140
    iput-wide p12, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@15
    .line 141
    iput-wide p14, p0, Landroid/net/NetworkStats$Entry;->operations:J

    #@17
    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIJJJJJ)V
    .locals 17
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
    .line 126
    const/4 v5, 0x0

    #@1
    move-object/from16 v0, p0

    #@3
    move-object/from16 v1, p1

    #@5
    move/from16 v2, p2

    #@7
    move/from16 v3, p3

    #@9
    move/from16 v4, p4

    #@b
    move-wide/from16 v6, p5

    #@d
    move-wide/from16 v8, p7

    #@f
    move-wide/from16 v10, p9

    #@11
    move-wide/from16 v12, p11

    #@13
    move-wide/from16 v14, p13

    #@15
    invoke-direct/range {v0 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIJJJJJ)V

    #@18
    .line 125
    return-void
.end method


# virtual methods
.method public add(Landroid/net/NetworkStats$Entry;)V
    .locals 4
    .param p1, "another"    # Landroid/net/NetworkStats$Entry;

    #@0
    .prologue
    .line 154
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@2
    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@7
    .line 155
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@9
    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@b
    add-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@e
    .line 156
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@10
    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@12
    add-long/2addr v0, v2

    #@13
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@15
    .line 157
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@17
    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@19
    add-long/2addr v0, v2

    #@1a
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@1c
    .line 158
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    #@1e
    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->operations:J

    #@20
    add-long/2addr v0, v2

    #@21
    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    #@23
    .line 153
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 179
    instance-of v2, p1, Landroid/net/NetworkStats$Entry;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 180
    check-cast v0, Landroid/net/NetworkStats$Entry;

    #@8
    .line 181
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
    iget v2, p0, Landroid/net/NetworkStats$Entry;->roaming:I

    #@1c
    iget v3, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    #@1e
    if-ne v2, v3, :cond_0

    #@20
    .line 182
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@22
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@24
    cmp-long v2, v2, v4

    #@26
    if-nez v2, :cond_0

    #@28
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@2a
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@2c
    cmp-long v2, v2, v4

    #@2e
    if-nez v2, :cond_0

    #@30
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@32
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@34
    cmp-long v2, v2, v4

    #@36
    if-nez v2, :cond_0

    #@38
    .line 183
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@3a
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@3c
    cmp-long v2, v2, v4

    #@3e
    if-nez v2, :cond_0

    #@40
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    #@42
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    #@44
    cmp-long v2, v2, v4

    #@46
    if-nez v2, :cond_0

    #@48
    .line 184
    iget-object v1, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@4a
    iget-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v1

    #@50
    .line 181
    :cond_0
    return v1

    #@51
    .line 186
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
    .line 149
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
    .line 150
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    #@1d
    cmp-long v1, v2, v4

    #@1f
    if-nez v1, :cond_0

    #@21
    const/4 v0, 0x1

    #@22
    .line 149
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
    .line 145
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
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 164
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
    .line 165
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
    .line 166
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
    .line 167
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
    .line 168
    const-string/jumbo v1, " roaming="

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    iget v2, p0, Landroid/net/NetworkStats$Entry;->roaming:I

    #@46
    invoke-static {v2}, Landroid/net/NetworkStats;->roamingToString(I)Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 169
    const-string/jumbo v1, " rxBytes="

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    #@56
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@59
    .line 170
    const-string/jumbo v1, " rxPackets="

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    #@62
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@65
    .line 171
    const-string/jumbo v1, " txBytes="

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    #@6e
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@71
    .line 172
    const-string/jumbo v1, " txPackets="

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    #@7a
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@7d
    .line 173
    const-string/jumbo v1, " operations="

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    #@86
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@89
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v1

    #@8d
    return-object v1
.end method
