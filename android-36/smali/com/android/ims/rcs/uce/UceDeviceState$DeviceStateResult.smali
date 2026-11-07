.class public Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
.super Ljava/lang/Object;
.source "UceDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/UceDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceStateResult"
.end annotation


# instance fields
.field final blacklist mDeviceState:I

.field final blacklist mErrorCode:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mExitStateTime:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mRequestRetryTime:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(ILjava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 5
    .param p1, "deviceState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/time/Instant;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/time/Instant;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p2, "errorCode":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .local p3, "requestRetryTime":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/time/Instant;>;"
    .local p4, "exitStateTime":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/time/Instant;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mDeviceState:I

    .line 104
    iput-object p2, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mErrorCode:Ljava/util/Optional;

    .line 105
    iput-object p3, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mRequestRetryTime:Ljava/util/Optional;

    .line 106
    iput-object p4, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mExitStateTime:Ljava/util/Optional;

    .line 107
    return-void
.end method


# virtual methods
.method public blacklist getDeviceState()I
    .registers 2

    .line 136
    iget v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mDeviceState:I

    return v0
.end method

.method public blacklist getErrorCode()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mErrorCode:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getExitStateTime()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mExitStateTime:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getRequestRetryAfterMillis()J
    .registers 6

    .line 148
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mRequestRetryTime:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_b

    .line 149
    return-wide v1

    .line 151
    :cond_b
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mRequestRetryTime:Ljava/util/Optional;

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/temporal/Temporal;

    invoke-virtual {v0, v3, v4}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v3

    .line 152
    .local v3, "retryAfter":J
    cmp-long v0, v3, v1

    if-gez v0, :cond_22

    goto :goto_23

    :cond_22
    move-wide v1, v3

    :goto_23
    return-wide v1
.end method

.method public blacklist getRequestRetryTime()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mRequestRetryTime:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist isDeviceStateEqual(Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;)Z
    .registers 4
    .param p1, "otherDeviceState"    # Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    .line 163
    iget v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mDeviceState:I

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getDeviceState()I

    move-result v1

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mErrorCode:Ljava/util/Optional;

    .line 164
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mRequestRetryTime:Ljava/util/Optional;

    .line 165
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getRequestRetryTime()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mExitStateTime:Ljava/util/Optional;

    .line 166
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getExitStateTime()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 167
    const/4 v0, 0x1

    return v0

    .line 169
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPublishRequestBlocked()Z
    .registers 2

    .line 127
    iget v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mDeviceState:I

    packed-switch v0, :pswitch_data_a

    .line 131
    const/4 v0, 0x0

    return v0

    .line 129
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x4
        :pswitch_7
    .end packed-switch
.end method

.method public blacklist isRequestForbidden()Z
    .registers 2

    .line 113
    iget v0, p0, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->mDeviceState:I

    packed-switch v0, :pswitch_data_a

    .line 119
    const/4 v0, 0x0

    return v0

    .line 117
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "DeviceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/ims/rcs/uce/UceDeviceState;->-$$Nest$sfgetDEVICE_STATE_DESCRIPTION()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getDeviceState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
    const-string v2, ", ErrorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 177
    const-string v2, ", RetryTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getRequestRetryTime()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    const-string v2, ", retryAfterMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getRequestRetryAfterMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    const-string v2, ", ExitStateTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getExitStateTime()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
