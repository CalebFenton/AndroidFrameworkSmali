.class Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
.super Ljava/lang/Object;
.source "GeofenceHardwareImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reaper"
.end annotation


# instance fields
.field private mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

.field private mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

.field private mMonitoringType:I

.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method static synthetic -get0(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->unlinkToDeath()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareCallback;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardwareImpl;
    .param p2, "c"    # Landroid/hardware/location/IGeofenceHardwareCallback;
    .param p3, "monitoringType"    # I

    #@0
    .prologue
    .line 844
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 845
    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    #@7
    .line 846
    iput p3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    #@9
    .line 844
    return-void
.end method

.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareMonitorCallback;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardwareImpl;
    .param p2, "c"    # Landroid/hardware/location/IGeofenceHardwareMonitorCallback;
    .param p3, "monitoringType"    # I

    #@0
    .prologue
    .line 849
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 850
    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@7
    .line 851
    iput p3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    #@9
    .line 849
    return-void
.end method

.method private binderEquals(Landroid/os/IInterface;Landroid/os/IInterface;)Z
    .locals 4
    .param p1, "left"    # Landroid/os/IInterface;
    .param p2, "right"    # Landroid/os/IInterface;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 896
    if-nez p1, :cond_1

    #@4
    .line 897
    if-nez p2, :cond_0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    move v0, v1

    #@8
    goto :goto_0

    #@9
    .line 899
    :cond_1
    if-nez p2, :cond_3

    #@b
    :cond_2
    :goto_1
    return v1

    #@c
    :cond_3
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@f
    move-result-object v2

    #@10
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v3

    #@14
    if-ne v2, v3, :cond_2

    #@16
    move v1, v0

    #@17
    goto :goto_1
.end method

.method private callbackEquals(Landroid/hardware/location/IGeofenceHardwareCallback;)Z
    .locals 3
    .param p1, "cb"    # Landroid/hardware/location/IGeofenceHardwareCallback;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 916
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    #@7
    invoke-interface {v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    #@a
    move-result-object v1

    #@b
    invoke-interface {p1}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    #@e
    move-result-object v2

    #@f
    if-ne v1, v2, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method

.method private unlinkToDeath()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 907
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 908
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@7
    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 909
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 910
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    #@16
    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@1d
    move-result v0

    #@1e
    return v0

    #@1f
    .line 912
    :cond_1
    const/4 v0, 0x1

    #@20
    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    #@0
    .prologue
    .line 857
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 858
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@6
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-get3(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    #@9
    move-result-object v2

    #@a
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    #@c
    const/4 v4, 0x6

    #@d
    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    .line 859
    .local v0, "m":Landroid/os/Message;
    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    #@13
    iput v2, v0, Landroid/os/Message;->arg1:I

    #@15
    .line 860
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@17
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-get3(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1e
    .line 866
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@20
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-get5(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    #@23
    move-result-object v2

    #@24
    const/4 v3, 0x3

    #@25
    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@28
    move-result-object v1

    #@29
    .line 867
    .local v1, "reaperMessage":Landroid/os/Message;
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@2b
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-get5(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@32
    .line 855
    return-void

    #@33
    .line 861
    .end local v1    # "reaperMessage":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@35
    if-eqz v2, :cond_0

    #@37
    .line 862
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@39
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-get2(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    #@3c
    move-result-object v2

    #@3d
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@3f
    const/4 v4, 0x4

    #@40
    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@43
    move-result-object v0

    #@44
    .line 863
    .restart local v0    # "m":Landroid/os/Message;
    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    #@46
    iput v2, v0, Landroid/os/Message;->arg1:I

    #@48
    .line 864
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    #@4a
    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-get2(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@51
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 882
    if-nez p1, :cond_0

    #@4
    return v2

    #@5
    .line 883
    :cond_0
    if-ne p1, p0, :cond_1

    #@7
    return v1

    #@8
    :cond_1
    move-object v0, p1

    #@9
    .line 885
    check-cast v0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    #@b
    .line 886
    .local v0, "rhs":Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    #@d
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    #@f
    invoke-direct {p0, v3, v4}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->binderEquals(Landroid/os/IInterface;Landroid/os/IInterface;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_3

    #@15
    .line 887
    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@17
    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@19
    invoke-direct {p0, v3, v4}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->binderEquals(Landroid/os/IInterface;Landroid/os/IInterface;)Z

    #@1c
    move-result v3

    #@1d
    .line 886
    if-eqz v3, :cond_3

    #@1f
    .line 888
    iget v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    #@21
    iget v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    #@23
    if-ne v3, v4, :cond_2

    #@25
    .line 886
    :goto_0
    return v1

    #@26
    :cond_2
    move v1, v2

    #@27
    .line 888
    goto :goto_0

    #@28
    :cond_3
    move v1, v2

    #@29
    .line 886
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 873
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    #@3
    if-eqz v1, :cond_1

    #@5
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    #@7
    invoke-interface {v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@e
    move-result v1

    #@f
    :goto_0
    add-int/lit16 v0, v1, 0x20f

    #@11
    .line 874
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@13
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 875
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    #@19
    invoke-interface {v2}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@20
    move-result v2

    #@21
    .line 874
    :cond_0
    add-int v0, v1, v2

    #@23
    .line 876
    mul-int/lit8 v1, v0, 0x1f

    #@25
    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    #@27
    add-int v0, v1, v2

    #@29
    .line 877
    return v0

    #@2a
    .end local v0    # "result":I
    :cond_1
    move v1, v2

    #@2b
    .line 873
    goto :goto_0
.end method
