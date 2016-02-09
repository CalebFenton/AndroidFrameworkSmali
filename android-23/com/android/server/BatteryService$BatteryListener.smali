.class final Lcom/android/server/BatteryService$BatteryListener;
.super Landroid/os/IBatteryPropertiesListener$Stub;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    #@0
    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/server/BatteryService$BatteryListener;->this$0:Lcom/android/server/BatteryService;

    #@2
    invoke-direct {p0}, Landroid/os/IBatteryPropertiesListener$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BatteryListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$BatteryListener;-><init>(Lcom/android/server/BatteryService;)V

    #@3
    return-void
.end method


# virtual methods
.method public batteryPropertiesChanged(Landroid/os/BatteryProperties;)V
    .locals 3
    .param p1, "props"    # Landroid/os/BatteryProperties;

    #@0
    .prologue
    .line 772
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 774
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$BatteryListener;->this$0:Lcom/android/server/BatteryService;

    #@6
    invoke-static {v2, p1}, Lcom/android/server/BatteryService;->-wrap3(Lcom/android/server/BatteryService;Landroid/os/BatteryProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 776
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@c
    .line 771
    return-void

    #@d
    .line 775
    :catchall_0
    move-exception v2

    #@e
    .line 776
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@11
    .line 775
    throw v2
.end method
