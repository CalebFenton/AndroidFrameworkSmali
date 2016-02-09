.class Lcom/android/server/VibratorService$3;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/VibratorService;

    #@0
    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/server/VibratorService$3;->this$0:Lcom/android/server/VibratorService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onLowPowerModeChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/VibratorService$3;->this$0:Lcom/android/server/VibratorService;

    #@2
    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap4(Lcom/android/server/VibratorService;)V

    #@5
    .line 229
    return-void
.end method
