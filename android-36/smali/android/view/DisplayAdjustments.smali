.class public Landroid/view/DisplayAdjustments;
.super Ljava/lang/Object;
.source "DisplayAdjustments.java"


# static fields
.field public static final greylist-max-o DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;


# instance fields
.field private volatile greylist-max-o mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field private final greylist-max-o mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    sput-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 34
    new-instance v0, Landroid/content/res/Configuration;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    .line 38
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 34
    new-instance v0, Landroid/content/res/Configuration;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    .line 41
    if-eqz p1, :cond_17

    .line 42
    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 44
    :cond_17
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/DisplayAdjustments;)V
    .registers 4
    .param p1, "daj"    # Landroid/view/DisplayAdjustments;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 34
    new-instance v0, Landroid/content/res/Configuration;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    .line 47
    iget-object v0, p1, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 48
    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 99
    instance-of v0, p1, Landroid/view/DisplayAdjustments;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 100
    return v1

    .line 102
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/view/DisplayAdjustments;

    .line 103
    .local v0, "daj":Landroid/view/DisplayAdjustments;
    iget-object v2, v0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v3, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    .line 104
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 103
    :goto_20
    return v1
.end method

.method public greylist-max-o getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public greylist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 91
    const/16 v0, 0x11

    .line 92
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 93
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 94
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method public greylist setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .registers 4
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 53
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    if-eq p0, v0, :cond_1a

    .line 57
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-nez v0, :cond_12

    .line 58
    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_15

    .line 59
    :cond_12
    iput-object p1, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    goto :goto_19

    .line 61
    :cond_15
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 63
    :goto_19
    return-void

    .line 54
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setCompatbilityInfo: Cannot modify DEFAULT_DISPLAY_ADJUSTMENTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 76
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    if-eq p0, v0, :cond_10

    .line 80
    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p1, :cond_a

    move-object v1, p1

    goto :goto_c

    :cond_a
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :goto_c
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 81
    return-void

    .line 77
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setConfiguration: Cannot modify DEFAULT_DISPLAY_ADJUSTMENTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
