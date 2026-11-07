.class final Lcom/android/internal/telephony/SimultaneousCallingTracker$ConfigManagerHandler;
.super Landroid/os/Handler;
.source "SimultaneousCallingTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimultaneousCallingTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfigManagerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SimultaneousCallingTracker;Lcom/android/internal/telephony/SimultaneousCallingTracker-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimultaneousCallingTracker$ConfigManagerHandler;-><init>(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->-$$Nest$fgetmFeatureFlags(Lcom/android/internal/telephony/SimultaneousCallingTracker;)Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received EVENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimultaneousCallingTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6c

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received unknown event: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :pswitch_39
    iget-object p0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->-$$Nest$mupdateSimultaneousCallSupportMap(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V

    return-void

    .line 138
    :pswitch_3f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_54

    .line 141
    iget-object p0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->-$$Nest$mupdatePhoneMapAndSimultaneousCallSupportMap(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V

    return-void

    .line 144
    :cond_54
    iget-object p1, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->-$$Nest$mdisableSimultaneousCallingSupport(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V

    .line 145
    iget-object p0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->-$$Nest$mhandleSimultaneousCallingSupportChanged(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V

    return-void

    .line 132
    :pswitch_5f
    iget-object p0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->-$$Nest$mcheckSimultaneousCallingDeviceCapability(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V

    return-void

    .line 135
    :pswitch_65
    iget-object p0, p0, Lcom/android/internal/telephony/SimultaneousCallingTracker$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/SimultaneousCallingTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/SimultaneousCallingTracker;->-$$Nest$mupdatePhoneMapAndSimultaneousCallSupportMap(Lcom/android/internal/telephony/SimultaneousCallingTracker;)V

    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x65
        :pswitch_65
        :pswitch_5f
        :pswitch_3f
        :pswitch_39
        :pswitch_39
    .end packed-switch
.end method
