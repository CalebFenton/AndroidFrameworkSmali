.class public Lcom/android/server/location/MockProvider;
.super Ljava/lang/Object;
.source "MockProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "MockProvider"


# instance fields
.field private mEnabled:Z

.field private final mExtras:Landroid/os/Bundle;

.field private mHasLocation:Z

.field private mHasStatus:Z

.field private final mLocation:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mName:Ljava/lang/String;

.field private final mProperties:Lcom/android/internal/location/ProviderProperties;

.field private mStatus:I

.field private mStatusUpdateTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/ILocationManager;Lcom/android/internal/location/ProviderProperties;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "locationManager"    # Landroid/location/ILocationManager;
    .param p3, "properties"    # Lcom/android/internal/location/ProviderProperties;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    #@a
    .line 58
    if-nez p3, :cond_0

    #@c
    new-instance v0, Ljava/lang/NullPointerException;

    #@e
    const-string/jumbo v1, "properties is null"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 60
    :cond_0
    iput-object p1, p0, Lcom/android/server/location/MockProvider;->mName:Ljava/lang/String;

    #@17
    .line 61
    iput-object p2, p0, Lcom/android/server/location/MockProvider;->mLocationManager:Landroid/location/ILocationManager;

    #@19
    .line 62
    iput-object p3, p0, Lcom/android/server/location/MockProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@1b
    .line 63
    new-instance v0, Landroid/location/Location;

    #@1d
    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #@20
    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    #@22
    .line 57
    return-void
.end method


# virtual methods
.method public clearLocation()V
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasLocation:Z

    #@3
    .line 119
    return-void
.end method

.method public clearStatus()V
    .locals 2

    #@0
    .prologue
    .line 134
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    #@3
    .line 135
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    #@7
    .line 133
    return-void
.end method

.method public disable()V
    .locals 1

    #@0
    .prologue
    .line 78
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    #@3
    .line 77
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 140
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p0, p2, v0}, Lcom/android/server/location/MockProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@6
    .line 139
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mName:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "mHasLocation="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-boolean v1, p0, Lcom/android/server/location/MockProvider;->mHasLocation:Z

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    const-string/jumbo v1, "mLocation:"

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4a
    .line 147
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    #@4c
    new-instance v1, Landroid/util/PrintWriterPrinter;

    #@4e
    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@51
    new-instance v2, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    const-string/jumbo v3, "  "

    #@5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@68
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    const-string/jumbo v1, "mHasStatus="

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    iget-boolean v1, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v0

    #@82
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@85
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    const-string/jumbo v1, "mStatus="

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    iget v1, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a2
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    const-string/jumbo v1, "mStatusUpdateTime="

    #@ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v0

    #@b2
    iget-wide v2, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    #@b4
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v0

    #@b8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v0

    #@bc
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bf
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v0

    #@c8
    const-string/jumbo v1, "mExtras="

    #@cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v0

    #@cf
    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    #@d1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v0

    #@d5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object v0

    #@d9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@dc
    .line 143
    return-void
.end method

.method public enable()V
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    #@3
    .line 82
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    #@2
    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 94
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    #@7
    .line 95
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@c
    .line 96
    iget v0, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    #@e
    return v0

    #@f
    .line 98
    :cond_0
    const/4 v0, 0x2

    #@10
    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    #@0
    .prologue
    .line 104
    iget-wide v0, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    #@2
    return-wide v0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    #@2
    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 159
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "l"    # Landroid/location/Location;

    #@0
    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    #@2
    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    #@5
    .line 109
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Lcom/android/server/location/MockProvider;->mHasLocation:Z

    #@8
    .line 110
    iget-boolean v1, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mLocationManager:Landroid/location/ILocationManager;

    #@e
    iget-object v2, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    #@10
    const/4 v3, 0x0

    #@11
    invoke-interface {v1, v2, v3}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 107
    :cond_0
    :goto_0
    return-void

    #@15
    .line 113
    :catch_0
    move-exception v0

    #@16
    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MockProvider"

    #@19
    const-string/jumbo v2, "RemoteException calling reportLocation"

    #@1c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    goto :goto_0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 155
    return-void
.end method

.method public setStatus(ILandroid/os/Bundle;J)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "updateTime"    # J

    #@0
    .prologue
    .line 124
    iput p1, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    #@2
    .line 125
    iput-wide p3, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    #@4
    .line 126
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    #@9
    .line 127
    if-eqz p2, :cond_0

    #@b
    .line 128
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@10
    .line 130
    :cond_0
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    #@13
    .line 123
    return-void
.end method
