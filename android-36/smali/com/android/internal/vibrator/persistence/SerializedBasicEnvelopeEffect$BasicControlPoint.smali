.class final Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;
.super Ljava/lang/Object;
.source "SerializedBasicEnvelopeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BasicControlPoint"
.end annotation


# instance fields
.field private final blacklist mDurationMs:J

.field private final blacklist mIntensity:F

.field private final blacklist mSharpness:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDurationMs(Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->mDurationMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntensity(Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->mIntensity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSharpness(Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->mSharpness:F

    return p0
.end method

.method constructor blacklist <init>(FFJ)V
    .registers 5
    .param p1, "intensity"    # F
    .param p2, "sharpness"    # F
    .param p3, "durationMs"    # J

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p1, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->mIntensity:F

    .line 173
    iput p2, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->mSharpness:F

    .line 174
    iput-wide p3, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->mDurationMs:J

    .line 175
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 179
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v1, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->mIntensity:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->mSharpness:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/vibrator/persistence/SerializedBasicEnvelopeEffect$BasicControlPoint;->mDurationMs:J

    .line 180
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 179
    const-string v2, "(%.2f, %.2f, %dms)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
