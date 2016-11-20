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
        "Landroid/os/RemoteCallbackList",
        "<",
        "Landroid/hardware/location/IActivityRecognitionHardwareSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/ActivityRecognitionHardware;


# direct methods
.method private constructor <init>(Landroid/hardware/location/ActivityRecognitionHardware;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/ActivityRecognitionHardware;

    #@0
    .prologue
    .line 231
    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    #@2
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/location/ActivityRecognitionHardware;Landroid/hardware/location/ActivityRecognitionHardware$SinkList;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/ActivityRecognitionHardware;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;-><init>(Landroid/hardware/location/ActivityRecognitionHardware;)V

    #@3
    return-void
.end method

.method private disableActivityEventIfEnabled(II)V
    .locals 7
    .param p1, "activityType"    # I
    .param p2, "eventType"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 249
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    #@4
    invoke-static {v2}, Landroid/hardware/location/ActivityRecognitionHardware;->-get3(Landroid/hardware/location/ActivityRecognitionHardware;)[[I

    #@7
    move-result-object v2

    #@8
    aget-object v2, v2, p1

    #@a
    aget v2, v2, p2

    #@c
    if-eq v2, v6, :cond_0

    #@e
    .line 250
    return-void

    #@f
    .line 253
    :cond_0
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    #@11
    invoke-static {v2, p1, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->-wrap0(Landroid/hardware/location/ActivityRecognitionHardware;II)I

    #@14
    move-result v1

    #@15
    .line 254
    .local v1, "result":I
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    #@17
    invoke-static {v2}, Landroid/hardware/location/ActivityRecognitionHardware;->-get3(Landroid/hardware/location/ActivityRecognitionHardware;)[[I

    #@1a
    move-result-object v2

    #@1b
    aget-object v2, v2, p1

    #@1d
    aput v5, v2, p2

    #@1f
    .line 256
    const-string/jumbo v2, "DisableActivityEvent: activityType=%d, eventType=%d, result=%d"

    #@22
    .line 255
    const/4 v3, 0x3

    #@23
    new-array v3, v3, [Ljava/lang/Object;

    #@25
    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v4

    #@29
    aput-object v4, v3, v5

    #@2b
    .line 258
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v4

    #@2f
    aput-object v4, v3, v6

    #@31
    .line 259
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v4

    #@35
    const/4 v5, 0x2

    #@36
    aput-object v4, v3, v5

    #@38
    .line 255
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 260
    .local v0, "message":Ljava/lang/String;
    const-string/jumbo v2, "ActivityRecognitionHW"

    #@3f
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 248
    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/hardware/location/IActivityRecognitionHardwareSink;)V
    .locals 6
    .param p1, "callback"    # Landroid/hardware/location/IActivityRecognitionHardwareSink;

    #@0
    .prologue
    .line 234
    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    #@2
    invoke-static {v3}, Landroid/hardware/location/ActivityRecognitionHardware;->-get1(Landroid/hardware/location/ActivityRecognitionHardware;)Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->getRegisteredCallbackCount()I

    #@9
    move-result v1

    #@a
    .line 235
    .local v1, "callbackCount":I
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->-get0()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    const-string/jumbo v3, "ActivityRecognitionHW"

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "RegisteredCallbackCount: "

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 236
    :cond_0
    if-eqz v1, :cond_1

    #@2c
    .line 237
    return-void

    #@2d
    .line 241
    :cond_1
    const/4 v0, 0x0

    #@2e
    .local v0, "activity":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    #@30
    invoke-static {v3}, Landroid/hardware/location/ActivityRecognitionHardware;->-get2(Landroid/hardware/location/ActivityRecognitionHardware;)I

    #@33
    move-result v3

    #@34
    if-ge v0, v3, :cond_3

    #@36
    .line 242
    const/4 v2, 0x0

    #@37
    .local v2, "event":I
    :goto_1
    const/4 v3, 0x3

    #@38
    if-ge v2, v3, :cond_2

    #@3a
    .line 243
    invoke-direct {p0, v0, v2}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->disableActivityEventIfEnabled(II)V

    #@3d
    .line 242
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 241
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_0

    #@43
    .line 233
    .end local v2    # "event":I
    :cond_3
    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/IInterface;

    #@0
    .prologue
    .line 233
    check-cast p1, Landroid/hardware/location/IActivityRecognitionHardwareSink;

    #@2
    .end local p1    # "callback":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->onCallbackDied(Landroid/hardware/location/IActivityRecognitionHardwareSink;)V

    #@5
    return-void
.end method
