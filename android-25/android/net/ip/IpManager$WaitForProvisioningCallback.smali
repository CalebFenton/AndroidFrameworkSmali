.class public Landroid/net/ip/IpManager$WaitForProvisioningCallback;
.super Landroid/net/ip/IpManager$Callback;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitForProvisioningCallback"
.end annotation


# instance fields
.field private mCallbackLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 132
    invoke-direct {p0}, Landroid/net/ip/IpManager$Callback;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 154
    monitor-enter p0

    #@1
    .line 155
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    #@4
    .line 156
    invoke-virtual {p0}, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 153
    return-void

    #@9
    .line 154
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 146
    monitor-enter p0

    #@1
    .line 147
    :try_start_0
    iput-object p1, p0, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    #@3
    .line 148
    invoke-virtual {p0}, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 145
    return-void

    #@8
    .line 146
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public waitForProvisioning()Landroid/net/LinkProperties;
    .locals 2

    #@0
    .prologue
    .line 136
    monitor-enter p0

    #@1
    .line 138
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    .line 140
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->mCallbackLinkProperties:Landroid/net/LinkProperties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6
    monitor-exit p0

    #@7
    return-object v1

    #@8
    .line 139
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@a
    .line 136
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@b
    monitor-exit p0

    #@c
    throw v1
.end method
