.class Lcom/android/server/NetworkManagementService$1;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;ILandroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    #@2
    invoke-direct {p0, p2, p3}, Landroid/telephony/PhoneStateListener;-><init>(ILandroid/os/Looper;)V

    #@5
    .line 287
    return-void
.end method


# virtual methods
.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 7
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    #@0
    .prologue
    .line 291
    invoke-static {}, Lcom/android/server/NetworkManagementService;->-get0()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v0, "NetworkManagement"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "onDataConnectionRealTimeInfoChanged: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 292
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    #@22
    .line 293
    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->getDcPowerState()I

    #@25
    move-result v3

    #@26
    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->getTime()J

    #@29
    move-result-wide v4

    #@2a
    .line 292
    const/4 v2, 0x0

    #@2b
    .line 293
    const/4 v6, 0x1

    #@2c
    .line 292
    invoke-static/range {v1 .. v6}, Lcom/android/server/NetworkManagementService;->-wrap3(Lcom/android/server/NetworkManagementService;IIJZ)V

    #@2f
    .line 290
    return-void
.end method
