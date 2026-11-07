.class final Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;
.super Ljava/lang/Object;
.source "SerializedRepeatingEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

.field private blacklist mRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist build()Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;
    .registers 4

    .line 114
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;

    iget-object v1, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->mPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    iget-object v2, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->mRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect;-><init>(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V

    return-object v0
.end method

.method blacklist hasRepeatingSegment()Z
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->mRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist setPreamble(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V
    .registers 2
    .param p1, "effect"    # Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 102
    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->mPreamble:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 103
    return-void
.end method

.method blacklist setRepeating(Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;)V
    .registers 2
    .param p1, "effect"    # Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 106
    iput-object p1, p0, Lcom/android/internal/vibrator/persistence/SerializedRepeatingEffect$Builder;->mRepeating:Lcom/android/internal/vibrator/persistence/SerializedComposedEffect;

    .line 107
    return-void
.end method
