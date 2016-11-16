.class final Lcom/android/location/provider/LocationProviderBase$Service;
.super Lcom/android/internal/location/ILocationProvider$Stub;
.source "LocationProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/LocationProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Service"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/LocationProviderBase;


# direct methods
.method private constructor <init>(Lcom/android/location/provider/LocationProviderBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/location/provider/LocationProviderBase;

    #@0
    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    #@2
    invoke-direct {p0}, Lcom/android/internal/location/ILocationProvider$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/location/provider/LocationProviderBase;Lcom/android/location/provider/LocationProviderBase$Service;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/location/provider/LocationProviderBase;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/location/provider/LocationProviderBase$Service;-><init>(Lcom/android/location/provider/LocationProviderBase;)V

    #@3
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    #@2
    invoke-virtual {v0}, Lcom/android/location/provider/LocationProviderBase;->onDisable()V

    #@5
    .line 84
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 109
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    #@2
    new-instance v1, Ljava/io/FileOutputStream;

    #@4
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@7
    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 110
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    #@c
    invoke-virtual {v1, p1, v0, p2}, Lcom/android/location/provider/LocationProviderBase;->onDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@f
    .line 111
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    #@12
    .line 108
    return-void
.end method

.method public enable()V
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    #@2
    invoke-virtual {v0}, Lcom/android/location/provider/LocationProviderBase;->onEnable()V

    #@5
    .line 80
    return-void
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    #@2
    invoke-static {v0}, Lcom/android/location/provider/LocationProviderBase;->-get0(Lcom/android/location/provider/LocationProviderBase;)Lcom/android/internal/location/ProviderProperties;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/location/provider/LocationProviderBase;->onGetStatus(Landroid/os/Bundle;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    #@2
    invoke-virtual {v0}, Lcom/android/location/provider/LocationProviderBase;->onGetStatusUpdateTime()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/location/provider/LocationProviderBase;->onSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/location/provider/LocationProviderBase$Service;->this$0:Lcom/android/location/provider/LocationProviderBase;

    #@2
    new-instance v1, Lcom/android/location/provider/ProviderRequestUnbundled;

    #@4
    invoke-direct {v1, p1}, Lcom/android/location/provider/ProviderRequestUnbundled;-><init>(Lcom/android/internal/location/ProviderRequest;)V

    #@7
    invoke-virtual {v0, v1, p2}, Lcom/android/location/provider/LocationProviderBase;->onSetRequest(Lcom/android/location/provider/ProviderRequestUnbundled;Landroid/os/WorkSource;)V

    #@a
    .line 88
    return-void
.end method
