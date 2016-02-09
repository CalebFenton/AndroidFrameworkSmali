.class final Lcom/android/server/BatteryService$BinderService;
.super Landroid/os/Binder;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    #@0
    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/server/BatteryService$BinderService;->this$0:Lcom/android/server/BatteryService;

    #@2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;)V

    #@3
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/server/BatteryService$BinderService;->this$0:Lcom/android/server/BatteryService;

    #@2
    invoke-static {v0}, Lcom/android/server/BatteryService;->-get2(Lcom/android/server/BatteryService;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.DUMP"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v1, "Permission Denial: can\'t dump Battery service from from pid="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 788
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v1

    #@1f
    .line 787
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 789
    const-string/jumbo v1, ", uid="

    #@26
    .line 787
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 789
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v1

    #@2e
    .line 787
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 790
    return-void

    #@3a
    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService$BinderService;->this$0:Lcom/android/server/BatteryService;

    #@3c
    invoke-static {v0, p2, p3}, Lcom/android/server/BatteryService;->-wrap1(Lcom/android/server/BatteryService;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3f
    .line 783
    return-void
.end method
