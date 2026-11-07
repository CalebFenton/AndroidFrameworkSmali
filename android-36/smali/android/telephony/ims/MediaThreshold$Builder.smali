.class public final Landroid/telephony/ims/MediaThreshold$Builder;
.super Ljava/lang/Object;
.source "MediaThreshold.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/MediaThreshold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRtpInactivityTimeMillis:[J

.field private blacklist mRtpJitter:[I

.field private blacklist mRtpPacketLossRate:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    .line 213
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    .line 214
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    .line 222
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/ims/MediaThreshold;
    .registers 6

    .line 326
    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    goto :goto_a

    :cond_8
    new-array v0, v1, [I

    :goto_a
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    .line 327
    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    goto :goto_15

    :cond_13
    new-array v0, v1, [I

    :goto_15
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    .line 328
    nop

    .line 329
    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    goto :goto_21

    :cond_1f
    new-array v0, v1, [J

    :goto_21
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    .line 330
    new-instance v0, Landroid/telephony/ims/MediaThreshold;

    iget-object v1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    iget-object v2, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    iget-object v3, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/ims/MediaThreshold;-><init>([I[I[JLandroid/telephony/ims/MediaThreshold-IA;)V

    return-object v0
.end method

.method public blacklist setThresholdsRtpInactivityTimeMillis([J)Landroid/telephony/ims/MediaThreshold$Builder;
    .registers 9
    .param p1, "inactivityTimeThresholds"    # [J

    .line 298
    array-length v0, p1

    if-lez v0, :cond_46

    .line 299
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 300
    .local v0, "thresholds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_22

    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 301
    .local v3, "value":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/telephony/ims/MediaThreshold;->isValidRtpInactivityTimeMillis(J)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 302
    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v3    # "value":Ljava/lang/Long;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 305
    :cond_22
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 306
    .local v1, "targetArray":[J
    const/4 v2, 0x0

    .line 307
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 308
    .local v4, "element":J
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aput-wide v4, v1, v2

    .line 309
    .end local v4    # "element":J
    move v2, v6

    goto :goto_2d

    .line 310
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_43
    iput-object v1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    .line 311
    .end local v0    # "thresholds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    .end local v1    # "targetArray":[J
    .end local v2    # "i":I
    goto :goto_48

    .line 312
    :cond_46
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    .line 314
    :goto_48
    return-object p0
.end method

.method public blacklist setThresholdsRtpJitterMillis([I)Landroid/telephony/ims/MediaThreshold$Builder;
    .registers 8
    .param p1, "jitterThresholds"    # [I

    .line 268
    array-length v0, p1

    if-lez v0, :cond_46

    .line 269
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 270
    .local v0, "thresholds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_22

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 271
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/ims/MediaThreshold;->isValidJitterMillis(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 272
    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 275
    :cond_22
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 276
    .local v1, "targetArray":[I
    const/4 v2, 0x0

    .line 277
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 278
    .local v4, "element":I
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    aput v4, v1, v2

    .line 279
    .end local v4    # "element":I
    move v2, v5

    goto :goto_2d

    .line 280
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_43
    iput-object v1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    .line 281
    .end local v0    # "thresholds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v1    # "targetArray":[I
    .end local v2    # "i":I
    goto :goto_48

    .line 282
    :cond_46
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    .line 284
    :goto_48
    return-object p0
.end method

.method public blacklist setThresholdsRtpPacketLossRate([I)Landroid/telephony/ims/MediaThreshold$Builder;
    .registers 8
    .param p1, "packetLossRateThresholds"    # [I

    .line 238
    array-length v0, p1

    if-lez v0, :cond_46

    .line 239
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 240
    .local v0, "thresholds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_22

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 241
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/ims/MediaThreshold;->isValidRtpPacketLossRate(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 242
    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 245
    :cond_22
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 246
    .local v1, "targetArray":[I
    const/4 v2, 0x0

    .line 247
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 248
    .local v4, "element":I
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    aput v4, v1, v2

    .line 249
    .end local v4    # "element":I
    move v2, v5

    goto :goto_2d

    .line 250
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_43
    iput-object v1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    .line 251
    .end local v0    # "thresholds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v1    # "targetArray":[I
    .end local v2    # "i":I
    goto :goto_48

    .line 252
    :cond_46
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    .line 254
    :goto_48
    return-object p0
.end method
