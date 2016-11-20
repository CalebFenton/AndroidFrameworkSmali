.class Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
.super Landroid/os/Handler;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/emergency/EmergencyAffordanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/emergency/EmergencyAffordanceService;


# direct methods
.method public constructor <init>(Lcom/android/server/emergency/EmergencyAffordanceService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/emergency/EmergencyAffordanceService;
    .param p2, "l"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    #@2
    .line 181
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 180
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 185
    :goto_0
    return-void

    #@6
    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    #@8
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->-wrap3(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    #@b
    goto :goto_0

    #@c
    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    #@e
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->-wrap0(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    #@11
    goto :goto_0

    #@12
    .line 194
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    #@14
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->-wrap1(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    #@17
    goto :goto_0

    #@18
    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
