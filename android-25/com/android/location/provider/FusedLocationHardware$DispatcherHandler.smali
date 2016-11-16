.class Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;
.super Landroid/os/Handler;
.source "FusedLocationHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/FusedLocationHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispatcherHandler"
.end annotation


# static fields
.field public static final DISPATCH_CAPABILITIES:I = 0x3

.field public static final DISPATCH_DIAGNOSTIC_DATA:I = 0x2

.field public static final DISPATCH_LOCATION:I = 0x1

.field public static final DISPATCH_STATUS:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/FusedLocationHardware;


# direct methods
.method public constructor <init>(Lcom/android/location/provider/FusedLocationHardware;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/location/provider/FusedLocationHardware;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/location/provider/FusedLocationHardware$DispatcherHandler;->this$0:Lcom/android/location/provider/FusedLocationHardware;

    #@2
    .line 249
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 248
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 254
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;

    #@4
    .line 255
    .local v0, "command":Lcom/android/location/provider/FusedLocationHardware$MessageCommand;
    iget v1, p1, Landroid/os/Message;->what:I

    #@6
    packed-switch v1, :pswitch_data_0

    #@9
    .line 269
    const-string/jumbo v1, "FusedLocationHardware"

    #@c
    const-string/jumbo v2, "Invalid dispatch message"

    #@f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 253
    :goto_0
    return-void

    #@13
    .line 257
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->dispatchLocation()V

    #@16
    goto :goto_0

    #@17
    .line 260
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->dispatchDiagnosticData()V

    #@1a
    goto :goto_0

    #@1b
    .line 263
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->dispatchCapabilities()V

    #@1e
    goto :goto_0

    #@1f
    .line 266
    :pswitch_3
    invoke-virtual {v0}, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->dispatchStatus()V

    #@22
    goto :goto_0

    #@23
    .line 255
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
