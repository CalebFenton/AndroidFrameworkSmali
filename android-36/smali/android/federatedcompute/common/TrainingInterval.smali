.class public final Landroid/federatedcompute/common/TrainingInterval;
.super Ljava/lang/Object;
.source "TrainingInterval.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/common/TrainingInterval$Builder;,
        Landroid/federatedcompute/common/TrainingInterval$SchedulingMode;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/federatedcompute/common/TrainingInterval;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCHEDULING_MODE_ONE_TIME:I = 0x1

.field public static final blacklist SCHEDULING_MODE_RECURRENT:I = 0x2


# instance fields
.field private blacklist mMinimumIntervalMillis:J

.field private blacklist mSchedulingMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 194
    new-instance v0, Landroid/federatedcompute/common/TrainingInterval$1;

    invoke-direct {v0}, Landroid/federatedcompute/common/TrainingInterval$1;-><init>()V

    sput-object v0, Landroid/federatedcompute/common/TrainingInterval;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IJ)V
    .registers 9
    .param p1, "schedulingMode"    # I
    .param p2, "minimumIntervalMillis"    # J

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/federatedcompute/common/TrainingInterval;->mMinimumIntervalMillis:J

    .line 82
    iput p1, p0, Landroid/federatedcompute/common/TrainingInterval;->mSchedulingMode:I

    .line 84
    iget v2, p0, Landroid/federatedcompute/common/TrainingInterval;->mSchedulingMode:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_49

    iget v2, p0, Landroid/federatedcompute/common/TrainingInterval;->mSchedulingMode:I

    if-ne v2, v3, :cond_14

    goto :goto_49

    .line 86
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schedulingMode was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/federatedcompute/common/TrainingInterval;->mSchedulingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but must be one of: SCHEDULING_MODE_ONE_TIME("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), SCHEDULING_MODE_RECURRENT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_49
    :goto_49
    if-ne p1, v3, :cond_51

    cmp-long v0, p2, v0

    if-lez v0, :cond_50

    goto :goto_51

    :cond_50
    const/4 v4, 0x0

    :cond_51
    :goto_51
    const-string v0, "Recurrent jobs cannot have non-positive minimal interval."

    invoke-static {v4, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 102
    iput-wide p2, p0, Landroid/federatedcompute/common/TrainingInterval;->mMinimumIntervalMillis:J

    .line 105
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/federatedcompute/common/TrainingInterval;->mMinimumIntervalMillis:J

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    .local v0, "schedulingMode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 172
    .local v1, "minimumIntervalMillis":J
    iput v0, p0, Landroid/federatedcompute/common/TrainingInterval;->mSchedulingMode:I

    .line 174
    iget v3, p0, Landroid/federatedcompute/common/TrainingInterval;->mSchedulingMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_51

    iget v3, p0, Landroid/federatedcompute/common/TrainingInterval;->mSchedulingMode:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1c

    goto :goto_51

    .line 176
    :cond_1c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "schedulingMode was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/federatedcompute/common/TrainingInterval;->mSchedulingMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but must be one of: SCHEDULING_MODE_ONE_TIME("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "), SCHEDULING_MODE_RECURRENT("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 188
    :cond_51
    :goto_51
    iput-wide v1, p0, Landroid/federatedcompute/common/TrainingInterval;->mMinimumIntervalMillis:J

    .line 191
    return-void
.end method

.method public static blacklist schedulingModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 69
    packed-switch p0, :pswitch_data_e

    .line 75
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :pswitch_8
    const-string v0, "SCHEDULING_MODE_RECURRENT"

    return-object v0

    .line 71
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
.method public whitelist describeContents()I
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 124
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 125
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_26

    .line 127
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/federatedcompute/common/TrainingInterval;

    .line 129
    .local v2, "that":Landroid/federatedcompute/common/TrainingInterval;
    iget v3, p0, Landroid/federatedcompute/common/TrainingInterval;->mSchedulingMode:I

    iget v4, v2, Landroid/federatedcompute/common/TrainingInterval;->mSchedulingMode:I

    if-ne v3, v4, :cond_24

    iget-wide v3, p0, Landroid/federatedcompute/common/TrainingInterval;->mMinimumIntervalMillis:J

    iget-wide v5, v2, Landroid/federatedcompute/common/TrainingInterval;->mMinimumIntervalMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0

    .line 125
    .end local v2    # "that":Landroid/federatedcompute/common/TrainingInterval;
    :cond_26
    :goto_26
    return v1
.end method

.method public blacklist getMinimumIntervalMillis()J
    .registers 3

    .line 114
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingInterval;->mMinimumIntervalMillis:J

    return-wide v0
.end method

.method public blacklist getSchedulingMode()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/federatedcompute/common/TrainingInterval;->mSchedulingMode:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 140
    const/4 v0, 0x1

    .line 141
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/federatedcompute/common/TrainingInterval;->mSchedulingMode:I

    add-int/2addr v1, v2

    .line 142
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/federatedcompute/common/TrainingInterval;->mMinimumIntervalMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 143
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 152
    iget v0, p0, Landroid/federatedcompute/common/TrainingInterval;->mSchedulingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-wide v0, p0, Landroid/federatedcompute/common/TrainingInterval;->mMinimumIntervalMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    return-void
.end method
