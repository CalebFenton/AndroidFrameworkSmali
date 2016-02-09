.class Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;
.super Ljava/lang/Object;
.source "CarrierServiceBindHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierServiceConnection"
.end annotation


# instance fields
.field private binding:Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

.field private service:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierServiceBindHelper;
    .param p2, "binding"    # Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@0
    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 253
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->binding:Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@7
    .line 252
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Connected to carrier app: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@1b
    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    #@1d
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get2(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/os/Handler;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->binding:Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@23
    const/4 v2, 0x2

    #@24
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@27
    .line 260
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->service:Landroid/os/IBinder;

    #@29
    .line 257
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Disconnected from carrier app: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    #@1b
    .line 266
    const/4 v0, 0x0

    #@1c
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->service:Landroid/os/IBinder;

    #@1e
    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;->binding:Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    #@20
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->handleConnectionDown()V

    #@23
    .line 264
    return-void
.end method
