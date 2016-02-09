.class public abstract Landroid/support/v4/app/NotificationCompatSideChannelService;
.super Landroid/app/Service;
.source "NotificationCompatSideChannelService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Landroid/support/v4/app/NotificationCompatSideChannelService;ILjava/lang/String;)V
    .locals 0
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    return-void
.end method

.method private checkPermission(ILjava/lang/String;)V
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatSideChannelService;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    const/4 v1, 0x0

    #@9
    array-length v3, v2

    #@a
    :goto_0
    if-ge v1, v3, :cond_1

    #@c
    aget-object v0, v2, v1

    #@e
    .line 111
    .local v0, "validPackage":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 112
    return-void

    #@15
    .line 110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 115
    .end local v0    # "validPackage":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "NotificationSideChannelService: Uid "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 116
    const-string/jumbo v3, " is not authorized for package "

    #@2d
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v1
.end method


# virtual methods
.method public abstract cancel(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract cancelAll(Ljava/lang/String;)V
.end method

.method public abstract notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    const-string/jumbo v1, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@10
    const/16 v1, 0x13

    #@12
    if-le v0, v1, :cond_0

    #@14
    .line 51
    return-object v2

    #@15
    .line 53
    :cond_0
    new-instance v0, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;

    #@17
    invoke-direct {v0, p0, v2}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;-><init>(Landroid/support/v4/app/NotificationCompatSideChannelService;Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;)V

    #@1a
    return-object v0

    #@1b
    .line 55
    :cond_1
    return-object v2
.end method
