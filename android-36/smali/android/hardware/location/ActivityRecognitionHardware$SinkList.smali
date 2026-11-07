.class Landroid/hardware/location/ActivityRecognitionHardware$SinkList;
.super Landroid/os/RemoteCallbackList;
.source "ActivityRecognitionHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ActivityRecognitionHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SinkList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Landroid/hardware/location/IActivityRecognitionHardwareSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/location/ActivityRecognitionHardware;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/location/ActivityRecognitionHardware;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 245
    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/location/ActivityRecognitionHardware;Landroid/hardware/location/ActivityRecognitionHardware-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;-><init>(Landroid/hardware/location/ActivityRecognitionHardware;)V

    return-void
.end method

.method private greylist-max-o disableActivityEventIfEnabled(II)V
    .registers 7
    .param p1, "activityType"    # I
    .param p2, "eventType"    # I

    .line 263
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v0}, Landroid/hardware/location/ActivityRecognitionHardware;->-$$Nest$fgetmSupportedActivitiesEnabledEvents(Landroid/hardware/location/ActivityRecognitionHardware;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    aget v0, v0, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 264
    return-void

    .line 267
    :cond_e
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v0, p1, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->-$$Nest$mnativeDisableActivityEvent(Landroid/hardware/location/ActivityRecognitionHardware;II)I

    move-result v0

    .line 268
    .local v0, "result":I
    iget-object v1, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v1}, Landroid/hardware/location/ActivityRecognitionHardware;->-$$Nest$fgetmSupportedActivitiesEnabledEvents(Landroid/hardware/location/ActivityRecognitionHardware;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aput v2, v1, p2

    .line 269
    nop

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 272
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 273
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 269
    const-string v2, "DisableActivityEvent: activityType=%d, eventType=%d, result=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "message":Ljava/lang/String;
    const-string v2, "ActivityRecognitionHW"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method


# virtual methods
.method public greylist-max-o onCallbackDied(Landroid/hardware/location/IActivityRecognitionHardwareSink;)V
    .registers 6
    .param p1, "callback"    # Landroid/hardware/location/IActivityRecognitionHardwareSink;

    .line 248
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v0}, Landroid/hardware/location/ActivityRecognitionHardware;->-$$Nest$fgetmSinks(Landroid/hardware/location/ActivityRecognitionHardware;)Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->getRegisteredCallbackCount()I

    move-result v0

    .line 249
    .local v0, "callbackCount":I
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegisteredCallbackCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityRecognitionHW"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_28
    if-eqz v0, :cond_2b

    .line 251
    return-void

    .line 255
    :cond_2b
    const/4 v1, 0x0

    .local v1, "activity":I
    :goto_2c
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v2}, Landroid/hardware/location/ActivityRecognitionHardware;->-$$Nest$fgetmSupportedActivitiesCount(Landroid/hardware/location/ActivityRecognitionHardware;)I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 256
    const/4 v2, 0x0

    .local v2, "event":I
    :goto_35
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3e

    .line 257
    invoke-direct {p0, v1, v2}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->disableActivityEventIfEnabled(II)V

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 255
    .end local v2    # "event":I
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 260
    .end local v1    # "activity":I
    :cond_41
    return-void
.end method

.method public bridge synthetic whitelist onCallbackDied(Landroid/os/IInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 245
    check-cast p1, Landroid/hardware/location/IActivityRecognitionHardwareSink;

    invoke-virtual {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->onCallbackDied(Landroid/hardware/location/IActivityRecognitionHardwareSink;)V

    return-void
.end method
