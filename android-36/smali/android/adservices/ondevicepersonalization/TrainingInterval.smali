.class public final Landroid/adservices/ondevicepersonalization/TrainingInterval;
.super Ljava/lang/Object;
.source "TrainingInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/TrainingInterval$Builder;,
        Landroid/adservices/ondevicepersonalization/TrainingInterval$SchedulingMode;
    }
.end annotation


# static fields
.field public static final whitelist SCHEDULING_MODE_ONE_TIME:I = 0x1

.field public static final whitelist SCHEDULING_MODE_RECURRENT:I = 0x2


# instance fields
.field private blacklist mMinimumInterval:Ljava/time/Duration;

.field private blacklist mSchedulingMode:I


# direct methods
.method constructor blacklist <init>(ILjava/time/Duration;)V
    .registers 8
    .param p1, "schedulingMode"    # I
    .param p2, "minimumInterval"    # Ljava/time/Duration;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mSchedulingMode:I

    .line 53
    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mMinimumInterval:Ljava/time/Duration;

    .line 92
    iput p1, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mSchedulingMode:I

    .line 94
    iget v1, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mSchedulingMode:I

    if-eq v1, v0, :cond_4b

    iget v1, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mSchedulingMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    goto :goto_4b

    .line 96
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "schedulingMode was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mSchedulingMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but must be one of: SCHEDULING_MODE_ONE_TIME("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), SCHEDULING_MODE_RECURRENT("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_4b
    :goto_4b
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mMinimumInterval:Ljava/time/Duration;

    .line 109
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mMinimumInterval:Ljava/time/Duration;

    invoke-static {v0, v1, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    return-void
.end method

.method public static blacklist schedulingModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 79
    packed-switch p0, :pswitch_data_e

    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :pswitch_8
    const-string v0, "SCHEDULING_MODE_RECURRENT"

    return-object v0

    .line 81
    :pswitch_b
    const-string v0, "SCHEDULING_MODE_ONE_TIME"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 148
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 149
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 151
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/TrainingInterval;

    .line 153
    .local v2, "that":Landroid/adservices/ondevicepersonalization/TrainingInterval;
    iget v3, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mSchedulingMode:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mSchedulingMode:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mMinimumInterval:Ljava/time/Duration;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mMinimumInterval:Ljava/time/Duration;

    .line 155
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    .line 153
    :goto_27
    return v0

    .line 149
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/TrainingInterval;
    :cond_28
    :goto_28
    return v1
.end method

.method public whitelist getMinimumInterval()Ljava/time/Duration;
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mMinimumInterval:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist getSchedulingMode()I
    .registers 2

    .line 121
    iget v0, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mSchedulingMode:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 164
    const/4 v0, 0x1

    .line 165
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mSchedulingMode:I

    add-int/2addr v1, v2

    .line 166
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/TrainingInterval;->mMinimumInterval:Ljava/time/Duration;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 167
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method
