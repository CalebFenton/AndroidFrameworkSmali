.class public final Landroid/os/vibrator/persistence/ParsedVibration;
.super Ljava/lang/Object;
.source "ParsedVibration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/os/VibrationEffect;)V
    .registers 4
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    .line 55
    iget-object v0, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "effects":Ljava/util/List;, "Ljava/util/List<Landroid/os/VibrationEffect;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 89
    if-ne p0, p1, :cond_4

    .line 90
    const/4 v0, 0x1

    return v0

    .line 92
    :cond_4
    instance-of v0, p1, Landroid/os/vibrator/persistence/ParsedVibration;

    if-nez v0, :cond_a

    .line 93
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/os/vibrator/persistence/ParsedVibration;

    .line 96
    .local v0, "other":Landroid/os/vibrator/persistence/ParsedVibration;
    iget-object v1, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist resolve(Landroid/os/Vibrator;)Landroid/os/VibrationEffect;
    .registers 3
    .param p1, "vibrator"    # Landroid/os/Vibrator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 68
    invoke-virtual {p1}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public blacklist resolve(Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;
    .registers 5
    .param p1, "info"    # Landroid/os/VibratorInfo;

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 79
    iget-object v1, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    .line 80
    .local v1, "effect":Landroid/os/VibrationEffect;
    invoke-virtual {p1, v1}, Landroid/os/VibratorInfo;->areVibrationFeaturesSupported(Landroid/os/VibrationEffect;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 81
    return-object v1

    .line 78
    .end local v1    # "effect":Landroid/os/VibrationEffect;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParsedVibration{effects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/vibrator/persistence/ParsedVibration;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
