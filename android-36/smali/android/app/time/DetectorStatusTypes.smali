.class public final Landroid/app/time/DetectorStatusTypes;
.super Ljava/lang/Object;
.source "DetectorStatusTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/DetectorStatusTypes$DetectionAlgorithmStatus;,
        Landroid/app/time/DetectorStatusTypes$DetectorStatus;
    }
.end annotation


# static fields
.field public static final blacklist DETECTION_ALGORITHM_STATUS_NOT_RUNNING:I = 0x2

.field public static final blacklist DETECTION_ALGORITHM_STATUS_NOT_SUPPORTED:I = 0x1

.field public static final blacklist DETECTION_ALGORITHM_STATUS_RUNNING:I = 0x3

.field public static final blacklist DETECTION_ALGORITHM_STATUS_UNKNOWN:I = 0x0

.field public static final blacklist DETECTOR_STATUS_NOT_RUNNING:I = 0x2

.field public static final blacklist DETECTOR_STATUS_NOT_SUPPORTED:I = 0x1

.field public static final blacklist DETECTOR_STATUS_RUNNING:I = 0x3

.field public static final blacklist DETECTOR_STATUS_UNKNOWN:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist detectionAlgorithmStatusFromString(Ljava/lang/String;)I
    .registers 6
    .param p0, "detectorAlgorithmStatusString"    # Ljava/lang/String;

    .line 209
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_74

    :cond_11
    goto :goto_3a

    :sswitch_12
    const-string v0, "NOT_RUNNING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_3b

    :sswitch_1c
    const-string v0, "NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v3

    goto :goto_3b

    :sswitch_26
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v4

    goto :goto_3b

    :sswitch_30
    const-string v0, "RUNNING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_3b

    :goto_3a
    const/4 v0, -0x1

    :goto_3b
    packed-switch v0, :pswitch_data_86

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :pswitch_57
    return v1

    .line 219
    :pswitch_58
    return v2

    .line 217
    :pswitch_59
    return v3

    .line 215
    :pswitch_5a
    return v4

    .line 210
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_74
    .sparse-switch
        -0x78c55e61 -> :sswitch_30
        0x19d1382a -> :sswitch_26
        0x32f38a02 -> :sswitch_1c
        0x7a971413 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
    .end packed-switch
.end method

.method public static blacklist detectionAlgorithmStatusToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "detectorAlgorithmStatus"    # I

    .line 186
    packed-switch p0, :pswitch_data_28

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :pswitch_1c
    const-string v0, "RUNNING"

    return-object v0

    .line 192
    :pswitch_1f
    const-string v0, "NOT_RUNNING"

    return-object v0

    .line 190
    :pswitch_22
    const-string v0, "NOT_SUPPORTED"

    return-object v0

    .line 188
    :pswitch_25
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist detectorStatusFromString(Ljava/lang/String;)I
    .registers 6
    .param p0, "detectorStatusString"    # Ljava/lang/String;

    .line 143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_74

    :cond_11
    goto :goto_3a

    :sswitch_12
    const-string v0, "NOT_RUNNING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_3b

    :sswitch_1c
    const-string v0, "NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v3

    goto :goto_3b

    :sswitch_26
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v4

    goto :goto_3b

    :sswitch_30
    const-string v0, "RUNNING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_3b

    :goto_3a
    const/4 v0, -0x1

    :goto_3b
    packed-switch v0, :pswitch_data_86

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_57
    return v1

    .line 153
    :pswitch_58
    return v2

    .line 151
    :pswitch_59
    return v3

    .line 149
    :pswitch_5a
    return v4

    .line 144
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_74
    .sparse-switch
        -0x78c55e61 -> :sswitch_30
        0x19d1382a -> :sswitch_26
        0x32f38a02 -> :sswitch_1c
        0x7a971413 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
    .end packed-switch
.end method

.method public static blacklist detectorStatusToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "detectorStatus"    # I

    .line 121
    packed-switch p0, :pswitch_data_28

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :pswitch_1c
    const-string v0, "RUNNING"

    return-object v0

    .line 127
    :pswitch_1f
    const-string v0, "NOT_RUNNING"

    return-object v0

    .line 125
    :pswitch_22
    const-string v0, "NOT_SUPPORTED"

    return-object v0

    .line 123
    :pswitch_25
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist requireValidDetectionAlgorithmStatus(I)I
    .registers 4
    .param p0, "detectionAlgorithmStatus"    # I

    .line 169
    if-ltz p0, :cond_6

    const/4 v0, 0x3

    if-gt p0, v0, :cond_6

    .line 174
    return p0

    .line 171
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid detection algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist requireValidDetectorStatus(I)I
    .registers 4
    .param p0, "detectorStatus"    # I

    .line 107
    if-ltz p0, :cond_6

    const/4 v0, 0x3

    if-gt p0, v0, :cond_6

    .line 110
    return p0

    .line 108
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid detector status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
