.class Lcom/android/server/BatteryService$Shell;
.super Landroid/os/ShellCommand;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Shell"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    #@0
    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/server/BatteryService$Shell;->this$0:Lcom/android/server/BatteryService;

    #@2
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/server/BatteryService$Shell;->this$0:Lcom/android/server/BatteryService;

    #@2
    invoke-virtual {v0, p0, p1}, Lcom/android/server/BatteryService;->onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onHelp()V
    .locals 1

    #@0
    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/server/BatteryService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@3
    move-result-object v0

    #@4
    .line 652
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/BatteryService;->dumpHelp(Ljava/io/PrintWriter;)V

    #@7
    .line 650
    return-void
.end method
