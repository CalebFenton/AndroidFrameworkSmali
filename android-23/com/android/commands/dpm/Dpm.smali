.class public final Lcom/android/commands/dpm/Dpm;
.super Lcom/android/internal/os/BaseCommand;
.source "Dpm.java"


# static fields
.field private static final COMMAND_SET_ACTIVE_ADMIN:Ljava/lang/String; = "set-active-admin"

.field private static final COMMAND_SET_DEVICE_OWNER:Ljava/lang/String; = "set-device-owner"

.field private static final COMMAND_SET_PROFILE_OWNER:Ljava/lang/String; = "set-profile-owner"


# instance fields
.field private mComponent:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    #@3
    .line 46
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@6
    .line 47
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@9
    .line 30
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 38
    new-instance v0, Lcom/android/commands/dpm/Dpm;

    #@2
    invoke-direct {v0}, Lcom/android/commands/dpm/Dpm;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/commands/dpm/Dpm;->run([Ljava/lang/String;)V

    #@8
    .line 37
    return-void
.end method

.method private parseArgs(Z)V
    .locals 2
    .param p1, "canHaveUser"    # Z

    #@0
    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 94
    .local v0, "nextArg":Ljava/lang/String;
    if-eqz p1, :cond_0

    #@6
    const-string/jumbo v1, "--user"

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 95
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v1}, Lcom/android/commands/dpm/Dpm;->parseInt(Ljava/lang/String;)I

    #@16
    move-result v1

    #@17
    iput v1, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@19
    .line 96
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 98
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/commands/dpm/Dpm;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@23
    .line 92
    return-void
.end method

.method private parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 4
    .param p1, "component"    # Ljava/lang/String;

    #@0
    .prologue
    .line 146
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    .line 147
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    #@6
    .line 148
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Invalid component "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 150
    :cond_0
    return-object v0
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "argument"    # Ljava/lang/String;

    #@0
    .prologue
    .line 155
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 156
    :catch_0
    move-exception v0

    #@6
    .line 157
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Invalid integer argument \'"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, "\'"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@26
    throw v1
.end method

.method private runSetActiveAdmin()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 102
    invoke-direct {p0, v3}, Lcom/android/commands/dpm/Dpm;->parseArgs(Z)V

    #@4
    .line 103
    iget-object v0, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@8
    iget v2, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@a
    invoke-interface {v0, v1, v3, v2}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    #@d
    .line 105
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Success: Active admin set to component "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget-object v2, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@1d
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2c
    .line 101
    return-void
.end method

.method private runSetDeviceOwner()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 109
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    invoke-direct {p0, v3}, Lcom/android/commands/dpm/Dpm;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    #@8
    move-result-object v0

    #@9
    .line 110
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@b
    const/4 v4, 0x1

    #@c
    invoke-interface {v3, v0, v4, v6}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    #@f
    .line 112
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 114
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v3, v2, v4}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_0

    #@1c
    .line 115
    new-instance v3, Ljava/lang/RuntimeException;

    #@1e
    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v5, "Can\'t set package "

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    const-string/jumbo v5, " as device owner."

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 115
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 118
    :catch_0
    move-exception v1

    #@3e
    .line 120
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@40
    invoke-interface {v3, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    #@43
    .line 121
    throw v1

    #@44
    .line 123
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@46
    new-instance v4, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v5, "Success: Device owner set to package "

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5d
    .line 124
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5f
    new-instance v4, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v5, "Active admin set to component "

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7a
    .line 108
    return-void
.end method

.method private runSetProfileOwner()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 128
    invoke-direct {p0, v4}, Lcom/android/commands/dpm/Dpm;->parseArgs(Z)V

    #@4
    .line 129
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-object v2, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@8
    iget v3, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@a
    invoke-interface {v1, v2, v4, v3}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    #@d
    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@f
    iget-object v2, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@11
    const-string/jumbo v3, ""

    #@14
    iget v4, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@16
    invoke-interface {v1, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_0

    #@1c
    .line 133
    new-instance v1, Ljava/lang/RuntimeException;

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Can\'t set component "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@2c
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 134
    const-string/jumbo v3, " as profile owner for user "

    #@37
    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 134
    iget v3, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@3d
    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@48
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 136
    :catch_0
    move-exception v0

    #@4a
    .line 138
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@4c
    iget-object v2, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@4e
    iget v3, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@50
    invoke-interface {v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    #@53
    .line 139
    throw v0

    #@54
    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@56
    new-instance v2, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v3, "Success: Active admin and profile owner set to "

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    .line 142
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@64
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    .line 142
    const-string/jumbo v3, " for user "

    #@6f
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    .line 142
    iget v3, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@75
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@80
    .line 127
    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    const-string/jumbo v1, "device_policy"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    .line 69
    invoke-static {v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@d
    .line 71
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@f
    if-nez v1, :cond_0

    #@11
    .line 72
    const-string/jumbo v1, "Error: Could not access the Device Policy Manager. Is the system running?"

    #@14
    invoke-virtual {p0, v1}, Lcom/android/commands/dpm/Dpm;->showError(Ljava/lang/String;)V

    #@17
    .line 73
    return-void

    #@18
    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 77
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v1, "set-active-admin"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 79
    invoke-direct {p0}, Lcom/android/commands/dpm/Dpm;->runSetActiveAdmin()V

    #@28
    .line 68
    :goto_0
    return-void

    #@29
    .line 77
    :cond_1
    const-string/jumbo v1, "set-device-owner"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_2

    #@32
    .line 82
    invoke-direct {p0}, Lcom/android/commands/dpm/Dpm;->runSetDeviceOwner()V

    #@35
    goto :goto_0

    #@36
    .line 77
    :cond_2
    const-string/jumbo v1, "set-profile-owner"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_3

    #@3f
    .line 85
    invoke-direct {p0}, Lcom/android/commands/dpm/Dpm;->runSetProfileOwner()V

    #@42
    goto :goto_0

    #@43
    .line 88
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@45
    new-instance v2, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v3, "unknown command \'"

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    const-string/jumbo v3, "\'"

    #@58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw v1
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 52
    const-string/jumbo v0, "usage: dpm [subcommand] [options]\nusage: dpm set-active-admin [ --user <USER_ID> ] <COMPONENT>\nusage: dpm set-device-owner <COMPONENT>\nusage: dpm set-profile-owner [ --user <USER_ID> ] <COMPONENT>\n\ndpm set-active-admin: Sets the given component as active admin for an existing user.\n\ndpm set-device-owner: Sets the given component as active admin, and its\n  package as device owner.\n\ndpm set-profile-owner: Sets the given component as active admin and profile  owner for an existing user.\n"

    #@3
    .line 51
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 50
    return-void
.end method
