.class public final Landroid/service/notification/ZenDeviceEffects$Builder;
.super Ljava/lang/Object;
.source "ZenDeviceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenDeviceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDimWallpaper:Z

.field private blacklist mDisableAutoBrightness:Z

.field private blacklist mDisableTapToWake:Z

.field private blacklist mDisableTiltToWake:Z

.field private blacklist mDisableTouch:Z

.field private final blacklist mExtraEffects:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGrayscale:Z

.field private blacklist mMaximizeDoze:Z

.field private blacklist mMinimizeRadioUsage:Z

.field private blacklist mNightLight:Z

.field private blacklist mNightMode:Z

.field private blacklist mSuppressAmbientDisplay:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    .line 453
    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/notification/ZenDeviceEffects;)V
    .registers 4
    .param p1, "zenDeviceEffects"    # Landroid/service/notification/ZenDeviceEffects;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    .line 460
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mGrayscale:Z

    .line 461
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mSuppressAmbientDisplay:Z

    .line 462
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDimWallpaper:Z

    .line 463
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mNightMode:Z

    .line 464
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableAutoBrightness:Z

    .line 465
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTapToWake:Z

    .line 466
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTiltToWake:Z

    .line 467
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTouch:Z

    .line 468
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mMinimizeRadioUsage:Z

    .line 469
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mMaximizeDoze:Z

    .line 470
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mNightLight:Z

    .line 471
    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 472
    return-void
.end method


# virtual methods
.method public blacklist add(Landroid/service/notification/ZenDeviceEffects;)Landroid/service/notification/ZenDeviceEffects$Builder;
    .registers 4
    .param p1, "effects"    # Landroid/service/notification/ZenDeviceEffects;

    .line 639
    if-nez p1, :cond_3

    return-object p0

    .line 640
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisplayGrayscale(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 641
    :cond_d
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldSuppressAmbientDisplay(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 642
    :cond_16
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDimWallpaper(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 643
    :cond_1f
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldUseNightMode(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 644
    :cond_28
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableAutoBrightness(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 645
    :cond_31
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTapToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 646
    :cond_3a
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTiltToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 647
    :cond_43
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTouch(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 648
    :cond_4c
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMinimizeRadioUsage(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 649
    :cond_55
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMaximizeDoze(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 650
    :cond_5e
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldUseNightLight(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 651
    :cond_67
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/notification/ZenDeviceEffects$Builder;->addExtraEffects(Ljava/util/Set;)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 652
    return-object p0
.end method

.method public blacklist addExtraEffect(Ljava/lang/String;)Landroid/service/notification/ZenDeviceEffects$Builder;
    .registers 4
    .param p1, "extraEffect"    # Ljava/lang/String;

    .line 628
    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 629
    return-object p0
.end method

.method public blacklist addExtraEffects(Ljava/util/Set;)Landroid/service/notification/ZenDeviceEffects$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/service/notification/ZenDeviceEffects$Builder;"
        }
    .end annotation

    .line 613
    .local p1, "extraEffects":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 614
    return-object p0
.end method

.method public whitelist build()Landroid/service/notification/ZenDeviceEffects;
    .registers 15

    .line 658
    new-instance v0, Landroid/service/notification/ZenDeviceEffects;

    iget-boolean v1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mGrayscale:Z

    iget-boolean v2, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mSuppressAmbientDisplay:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDimWallpaper:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mNightMode:Z

    iget-boolean v5, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableAutoBrightness:Z

    iget-boolean v6, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTapToWake:Z

    iget-boolean v7, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTiltToWake:Z

    iget-boolean v8, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTouch:Z

    iget-boolean v9, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mMinimizeRadioUsage:Z

    iget-boolean v10, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mMaximizeDoze:Z

    iget-boolean v11, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mNightLight:Z

    iget-object v12, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Landroid/service/notification/ZenDeviceEffects;-><init>(ZZZZZZZZZZZLjava/util/Set;Landroid/service/notification/ZenDeviceEffects-IA;)V

    return-object v0
.end method

.method public blacklist setExtraEffects(Ljava/util/Set;)Landroid/service/notification/ZenDeviceEffects$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/service/notification/ZenDeviceEffects$Builder;"
        }
    .end annotation

    .line 596
    .local p1, "extraEffects":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 598
    iget-object v0, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mExtraEffects:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 599
    return-object p0
.end method

.method public whitelist setShouldDimWallpaper(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .registers 2
    .param p1, "dimWallpaper"    # Z

    .line 498
    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDimWallpaper:Z

    .line 499
    return-object p0
.end method

.method public blacklist setShouldDisableAutoBrightness(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .registers 2
    .param p1, "disableAutoBrightness"    # Z

    .line 516
    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableAutoBrightness:Z

    .line 517
    return-object p0
.end method

.method public blacklist setShouldDisableTapToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .registers 2
    .param p1, "disableTapToWake"    # Z

    .line 526
    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTapToWake:Z

    .line 527
    return-object p0
.end method

.method public blacklist setShouldDisableTiltToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .registers 2
    .param p1, "disableTiltToWake"    # Z

    .line 536
    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTiltToWake:Z

    .line 537
    return-object p0
.end method

.method public blacklist setShouldDisableTouch(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .registers 2
    .param p1, "disableTouch"    # Z

    .line 546
    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mDisableTouch:Z

    .line 547
    return-object p0
.end method

.method public whitelist setShouldDisplayGrayscale(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .registers 2
    .param p1, "grayscale"    # Z

    .line 480
    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mGrayscale:Z

    .line 481
    return-object p0
.end method

.method public blacklist setShouldMaximizeDoze(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .registers 2
    .param p1, "maximizeDoze"    # Z

    .line 568
    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mMaximizeDoze:Z

    .line 569
    return-object p0
.end method

.method public blacklist setShouldMinimizeRadioUsage(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .registers 2
    .param p1, "minimizeRadioUsage"    # Z

    .line 557
    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mMinimizeRadioUsage:Z

    .line 558
    return-object p0
.end method

.method public whitelist setShouldSuppressAmbientDisplay(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .registers 2
    .param p1, "suppressAmbientDisplay"    # Z

    .line 491
    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mSuppressAmbientDisplay:Z

    .line 492
    return-object p0
.end method

.method public blacklist setShouldUseNightLight(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .registers 2
    .param p1, "nightLight"    # Z

    .line 580
    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mNightLight:Z

    .line 581
    return-object p0
.end method

.method public whitelist setShouldUseNightMode(Z)Landroid/service/notification/ZenDeviceEffects$Builder;
    .registers 2
    .param p1, "nightMode"    # Z

    .line 505
    iput-boolean p1, p0, Landroid/service/notification/ZenDeviceEffects$Builder;->mNightMode:Z

    .line 506
    return-object p0
.end method
