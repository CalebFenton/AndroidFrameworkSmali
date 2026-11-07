.class public final Landroid/media/ApplicationMediaCapabilities$Builder;
.super Ljava/lang/Object;
.source "ApplicationMediaCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ApplicationMediaCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFormatSupportedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsSlowMotionSupported:Z

.field private blacklist mSupportedHdrTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupportedVideoMimeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnsupportedHdrTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnsupportedVideoMimeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsSlowMotionSupported(Landroid/media/ApplicationMediaCapabilities$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mIsSlowMotionSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSupportedHdrTypes(Landroid/media/ApplicationMediaCapabilities$Builder;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/media/ApplicationMediaCapabilities$Builder;->getSupportedHdrTypes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSupportedVideoMimeTypes(Landroid/media/ApplicationMediaCapabilities$Builder;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/media/ApplicationMediaCapabilities$Builder;->getSupportedVideoMimeTypes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetUnsupportedHdrTypes(Landroid/media/ApplicationMediaCapabilities$Builder;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/media/ApplicationMediaCapabilities$Builder;->getUnsupportedHdrTypes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetUnsupportedVideoMimeTypes(Landroid/media/ApplicationMediaCapabilities$Builder;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/media/ApplicationMediaCapabilities$Builder;->getUnsupportedVideoMimeTypes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseXml(Landroid/media/ApplicationMediaCapabilities$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Landroid/media/ApplicationMediaCapabilities$Builder;->parseXml(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedVideoMimeTypes:Ljava/util/Set;

    .line 331
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedHdrTypes:Ljava/util/Set;

    .line 334
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mUnsupportedVideoMimeTypes:Ljava/util/Set;

    .line 337
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mUnsupportedHdrTypes:Ljava/util/Set;

    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mIsSlowMotionSupported:Z

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mFormatSupportedMap:Ljava/util/Map;

    return-void
.end method

.method private blacklist getSupportedHdrTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedHdrTypes:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private blacklist getSupportedVideoMimeTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedVideoMimeTypes:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private blacklist getUnsupportedHdrTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mUnsupportedHdrTypes:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private blacklist getUnsupportedVideoMimeTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mUnsupportedVideoMimeTypes:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private blacklist isValidVideoCodecHdrType(Ljava/lang/String;)Z
    .registers 2

    .line 583
    const-string p0, "android.media.feature.hdr.dolby_vision"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    const-string p0, "android.media.feature.hdr.hdr10"

    .line 584
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    const-string p0, "android.media.feature.hdr.hdr10_plus"

    .line 585
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    const-string p0, "android.media.feature.hdr.hlg"

    .line 586
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    const/4 p0, 0x0

    return p0

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isValidVideoCodecMimeType(Ljava/lang/String;)Z
    .registers 2

    .line 532
    const-string p0, "video/hevc"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    const-string p0, "video/x-vnd.on2.vp9"

    .line 533
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    const-string p0, "video/av01"

    .line 534
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist parseFormatTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    .line 396
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v4, v5, :cond_41

    .line 397
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 398
    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 399
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    .line 400
    :cond_1c
    const-string v3, "supported"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 401
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    :goto_28
    add-int/2addr v4, v0

    goto :goto_5

    .line 403
    :cond_2a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid attribute name "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    if-eqz v1, :cond_190

    if-eqz v3, :cond_190

    .line 408
    const-string p1, "true"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    const-string p1, "false"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    goto :goto_5e

    .line 409
    :cond_56
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Supported value must be either true or false"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 412
    :cond_5e
    :goto_5e
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 415
    iget-object v3, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mFormatSupportedMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_95

    iget-object v3, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mFormatSupportedMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, p1, :cond_79

    goto :goto_95

    .line 417
    :cond_79
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has conflict supported value"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 421
    :cond_95
    :goto_95
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_198

    :goto_a0
    move v0, v3

    goto :goto_f7

    :sswitch_a2
    const-string v0, "Dolby-Vision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    goto :goto_a0

    :cond_ab
    const/4 v0, 0x7

    goto :goto_f7

    :sswitch_ad
    const-string v0, "HDR10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    goto :goto_a0

    :cond_b6
    const/4 v0, 0x6

    goto :goto_f7

    :sswitch_b8
    const-string v0, "HEVC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    goto :goto_a0

    :cond_c1
    const/4 v0, 0x5

    goto :goto_f7

    :sswitch_c3
    const-string v0, "VP9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    goto :goto_a0

    :cond_cc
    const/4 v0, 0x4

    goto :goto_f7

    :sswitch_ce
    const-string v0, "HLG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d7

    goto :goto_a0

    :cond_d7
    const/4 v0, 0x3

    goto :goto_f7

    :sswitch_d9
    const-string v0, "AV1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e2

    goto :goto_a0

    :cond_e2
    const/4 v0, 0x2

    goto :goto_f7

    :sswitch_e4
    const-string v2, "SlowMotion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f7

    goto :goto_a0

    :sswitch_ed
    const-string v0, "HDR10Plus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f6

    goto :goto_a0

    :cond_f6
    move v0, v2

    :cond_f7
    :goto_f7
    packed-switch v0, :pswitch_data_1ba

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format name "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ApplicationMediaCapabilities"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_186

    .line 458
    :pswitch_112
    const-string v0, "android.media.feature.hdr.dolby_vision"

    if-eqz p1, :cond_11d

    .line 459
    iget-object v2, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedHdrTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_186

    .line 461
    :cond_11d
    iget-object v2, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mUnsupportedHdrTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_186

    .line 444
    :pswitch_124
    const-string v0, "android.media.feature.hdr.hdr10"

    if-eqz p1, :cond_12e

    .line 445
    iget-object v2, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedHdrTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 447
    :cond_12e
    iget-object v2, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mUnsupportedHdrTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 423
    :pswitch_134
    const-string v0, "video/hevc"

    if-eqz p1, :cond_13e

    .line 424
    iget-object v2, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedVideoMimeTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 426
    :cond_13e
    iget-object v2, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mUnsupportedVideoMimeTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 430
    :pswitch_144
    const-string v0, "video/x-vnd.on2.vp9"

    if-eqz p1, :cond_14e

    .line 431
    iget-object v2, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedVideoMimeTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 433
    :cond_14e
    iget-object v2, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mUnsupportedVideoMimeTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 465
    :pswitch_154
    const-string v0, "android.media.feature.hdr.hlg"

    if-eqz p1, :cond_15e

    .line 466
    iget-object v2, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedHdrTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 468
    :cond_15e
    iget-object v2, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mUnsupportedHdrTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 437
    :pswitch_164
    const-string v0, "video/av01"

    if-eqz p1, :cond_16e

    .line 438
    iget-object v2, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedVideoMimeTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 440
    :cond_16e
    iget-object v2, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mUnsupportedVideoMimeTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 472
    :pswitch_174
    iput-boolean p1, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mIsSlowMotionSupported:Z

    goto :goto_186

    .line 451
    :pswitch_177
    const-string v0, "android.media.feature.hdr.hdr10_plus"

    if-eqz p1, :cond_181

    .line 452
    iget-object v2, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedHdrTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 454
    :cond_181
    iget-object v2, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mUnsupportedHdrTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 478
    :goto_186
    iget-object p0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mFormatSupportedMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 480
    :cond_190
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Format name and supported must both be specified"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_198
    .sparse-switch
        -0x6cca0151 -> :sswitch_ed
        -0x13f1d2c9 -> :sswitch_e4
        0xfe9c -> :sswitch_d9
        0x117c3 -> :sswitch_ce
        0x14cbf -> :sswitch_c3
        0x21c86a -> :sswitch_b8
        0x416bf75 -> :sswitch_ad
        0x6a2c8e3d -> :sswitch_a2
    .end sparse-switch

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_177
        :pswitch_174
        :pswitch_164
        :pswitch_154
        :pswitch_144
        :pswitch_134
        :pswitch_124
        :pswitch_112
    .end packed-switch
.end method

.method private blacklist parseXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    if-eqz p1, :cond_6e

    .line 357
    :goto_2
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_2

    .line 362
    :cond_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "media-capabilities"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_14} :catch_66
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_14} :catch_5e

    const-string v2, "Invalid tag"

    if-eqz v0, :cond_58

    .line 366
    :try_start_18
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 367
    :goto_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_57

    .line 368
    :goto_22
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_34

    .line 369
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_30

    goto :goto_57

    .line 372
    :cond_30
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_22

    .line 376
    :cond_34
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "format"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 377
    invoke-direct {p0, p1}, Landroid/media/ApplicationMediaCapabilities$Builder;->parseFormatTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 381
    :goto_43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v3, :cond_4d

    .line 382
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_43

    .line 384
    :cond_4d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1b

    .line 379
    :cond_51
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    :goto_57
    return-void

    .line 363
    :cond_58
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_5e} :catch_66
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_5e} :catch_5e

    .line 389
    :catch_5e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unable to read xml file"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 387
    :catch_66
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Ill-formatted xml file"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 353
    :cond_6e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "XmlParser must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist addSupportedHdrType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;
    .registers 4

    .line 571
    invoke-direct {p0, p1}, Landroid/media/ApplicationMediaCapabilities$Builder;->isValidVideoCodecHdrType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 574
    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedHdrTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 572
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid hdr type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist addSupportedVideoMimeType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;
    .registers 3

    .line 523
    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedVideoMimeTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist addUnsupportedHdrType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;
    .registers 4

    .line 602
    invoke-direct {p0, p1}, Landroid/media/ApplicationMediaCapabilities$Builder;->isValidVideoCodecHdrType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 605
    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mUnsupportedHdrTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 603
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid hdr type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist addUnsupportedVideoMimeType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;
    .registers 4

    .line 550
    invoke-direct {p0, p1}, Landroid/media/ApplicationMediaCapabilities$Builder;->isValidVideoCodecMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 553
    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mUnsupportedVideoMimeTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 551
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid codec mime type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist build()Landroid/media/ApplicationMediaCapabilities;
    .registers 3

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Building ApplicationMediaCapabilities with: (Supported HDR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedHdrTypes:Ljava/util/Set;

    .line 499
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Unsupported HDR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mUnsupportedHdrTypes:Ljava/util/Set;

    .line 500
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") (Supported Codec:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedVideoMimeTypes:Ljava/util/Set;

    .line 501
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Unsupported Codec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mUnsupportedVideoMimeTypes:Ljava/util/Set;

    .line 502
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mIsSlowMotionSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    const-string v1, "ApplicationMediaCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedHdrTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mSupportedVideoMimeTypes:Ljava/util/Set;

    const-string v1, "video/hevc"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_6b

    .line 508
    :cond_63
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Only support HEVC mime type"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 510
    :cond_6b
    :goto_6b
    new-instance v0, Landroid/media/ApplicationMediaCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/ApplicationMediaCapabilities;-><init>(Landroid/media/ApplicationMediaCapabilities$Builder;Landroid/media/ApplicationMediaCapabilities-IA;)V

    return-object v0
.end method

.method public blacklist setSlowMotionSupported(Z)Landroid/media/ApplicationMediaCapabilities$Builder;
    .registers 2

    .line 622
    iput-boolean p1, p0, Landroid/media/ApplicationMediaCapabilities$Builder;->mIsSlowMotionSupported:Z

    return-object p0
.end method
