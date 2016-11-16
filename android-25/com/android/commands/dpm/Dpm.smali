.class public final Lcom/android/commands/dpm/Dpm;
.super Lcom/android/internal/os/BaseCommand;
.source "Dpm.java"


# static fields
.field private static final COMMAND_REMOVE_ACTIVE_ADMIN:Ljava/lang/String; = "remove-active-admin"

.field private static final COMMAND_SET_ACTIVE_ADMIN:Ljava/lang/String; = "set-active-admin"

.field private static final COMMAND_SET_DEVICE_OWNER:Ljava/lang/String; = "set-device-owner"

.field private static final COMMAND_SET_PROFILE_OWNER:Ljava/lang/String; = "set-profile-owner"


# instance fields
.field private mComponent:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field private mName:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    #@3
    .line 50
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@6
    .line 51
    const-string/jumbo v0, ""

    #@9
    iput-object v0, p0, Lcom/android/commands/dpm/Dpm;->mName:Ljava/lang/String;

    #@b
    .line 52
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@e
    .line 33
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 41
    new-instance v0, Lcom/android/commands/dpm/Dpm;

    #@2
    invoke-direct {v0}, Lcom/android/commands/dpm/Dpm;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/commands/dpm/Dpm;->run([Ljava/lang/String;)V

    #@8
    .line 40
    return-void
.end method

.method private parseArgs(Z)V
    .locals 7
    .param p1, "canHaveName"    # Z

    #@0
    .prologue
    const/4 v5, -0x2

    #@1
    .line 111
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextOption()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .local v3, "opt":Ljava/lang/String;
    if-eqz v3, :cond_5

    #@7
    .line 112
    const-string/jumbo v4, "--user"

    #@a
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_3

    #@10
    .line 113
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 114
    .local v1, "arg":Ljava/lang/String;
    const-string/jumbo v4, "current"

    #@17
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v4

    #@1b
    if-nez v4, :cond_1

    #@1d
    const-string/jumbo v4, "cur"

    #@20
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_2

    #@26
    .line 115
    :cond_1
    iput v5, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@28
    .line 119
    :goto_1
    iget v4, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@2a
    if-ne v4, v5, :cond_0

    #@2c
    .line 120
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@2f
    move-result-object v0

    #@30
    .line 122
    .local v0, "activityManager":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@33
    move-result-object v4

    #@34
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    #@36
    iput v4, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    goto :goto_0

    #@39
    .line 123
    :catch_0
    move-exception v2

    #@3a
    .line 124
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@3d
    goto :goto_0

    #@3e
    .line 117
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/commands/dpm/Dpm;->parseInt(Ljava/lang/String;)I

    #@41
    move-result v4

    #@42
    iput v4, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@44
    goto :goto_1

    #@45
    .line 127
    .end local v1    # "arg":Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_4

    #@47
    const-string/jumbo v4, "--name"

    #@4a
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v4

    #@4e
    if-eqz v4, :cond_4

    #@50
    .line 128
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    iput-object v4, p0, Lcom/android/commands/dpm/Dpm;->mName:Ljava/lang/String;

    #@56
    goto :goto_0

    #@57
    .line 130
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@59
    new-instance v5, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v6, "Unknown option: "

    #@61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@70
    throw v4

    #@71
    .line 133
    :cond_5
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    invoke-direct {p0, v4}, Lcom/android/commands/dpm/Dpm;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    #@78
    move-result-object v4

    #@79
    iput-object v4, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@7b
    .line 109
    return-void
.end method

.method private parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 4
    .param p1, "component"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    .line 195
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    #@6
    .line 196
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
    .line 198
    :cond_0
    return-object v0
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "argument"    # Ljava/lang/String;

    #@0
    .prologue
    .line 203
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 204
    :catch_0
    move-exception v0

    #@6
    .line 205
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

.method private runRemoveActiveAdmin()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/dpm/Dpm;->parseArgs(Z)V

    #@4
    .line 167
    iget-object v0, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@8
    iget v2, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@a
    invoke-interface {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    #@d
    .line 168
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Success: Admin removed "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget-object v2, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 165
    return-void
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
    .line 137
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/commands/dpm/Dpm;->parseArgs(Z)V

    #@4
    .line 138
    iget-object v0, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@8
    iget v2, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@a
    const/4 v3, 0x1

    #@b
    invoke-interface {v0, v1, v3, v2}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    #@e
    .line 140
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Success: Active admin set to component "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@1e
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d
    .line 136
    return-void
.end method

.method private runSetDeviceOwner()V
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
    .line 144
    invoke-direct {p0, v4}, Lcom/android/commands/dpm/Dpm;->parseArgs(Z)V

    #@4
    .line 145
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-object v2, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@8
    iget v3, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@a
    invoke-interface {v1, v2, v4, v3}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    #@d
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@f
    iget-object v2, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@11
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mName:Ljava/lang/String;

    #@13
    iget v4, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@15
    invoke-interface {v1, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_0

    #@1b
    .line 149
    new-instance v1, Ljava/lang/RuntimeException;

    #@1d
    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v3, "Can\'t set package "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    const-string/jumbo v3, " as device owner."

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 149
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 152
    :catch_0
    move-exception v0

    #@3f
    .line 154
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@41
    iget-object v2, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@43
    const/4 v3, 0x0

    #@44
    invoke-interface {v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    #@47
    .line 155
    throw v0

    #@48
    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@4a
    .line 159
    iget v2, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@4c
    const/4 v3, 0x3

    #@4d
    .line 158
    invoke-interface {v1, v3, v2}, Landroid/app/admin/IDevicePolicyManager;->setUserProvisioningState(II)V

    #@50
    .line 161
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@52
    new-instance v2, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v3, "Success: Device owner set to package "

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6b
    .line 162
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6d
    new-instance v2, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v3, "Active admin set to component "

    #@75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@7b
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8a
    .line 143
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
    .line 172
    invoke-direct {p0, v4}, Lcom/android/commands/dpm/Dpm;->parseArgs(Z)V

    #@4
    .line 173
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@6
    iget-object v2, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@8
    iget v3, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@a
    invoke-interface {v1, v2, v4, v3}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    #@d
    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@f
    iget-object v2, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@11
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mName:Ljava/lang/String;

    #@13
    iget v4, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@15
    invoke-interface {v1, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_0

    #@1b
    .line 177
    new-instance v1, Ljava/lang/RuntimeException;

    #@1d
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v3, "Can\'t set component "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@2b
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 178
    const-string/jumbo v3, " as profile owner for user "

    #@36
    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 178
    iget v3, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@3c
    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@47
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 180
    :catch_0
    move-exception v0

    #@49
    .line 182
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@4b
    iget-object v2, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@4d
    iget v3, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@4f
    invoke-interface {v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    #@52
    .line 183
    throw v0

    #@53
    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@55
    .line 187
    iget v2, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@57
    const/4 v3, 0x3

    #@58
    .line 186
    invoke-interface {v1, v3, v2}, Landroid/app/admin/IDevicePolicyManager;->setUserProvisioningState(II)V

    #@5b
    .line 189
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5d
    new-instance v2, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v3, "Success: Active admin and profile owner set to "

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    .line 190
    iget-object v3, p0, Lcom/android/commands/dpm/Dpm;->mComponent:Landroid/content/ComponentName;

    #@6b
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    .line 190
    const-string/jumbo v3, " for user "

    #@76
    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    .line 190
    iget v3, p0, Lcom/android/commands/dpm/Dpm;->mUserId:I

    #@7c
    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@87
    .line 171
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
    .line 84
    const-string/jumbo v1, "device_policy"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    .line 83
    invoke-static {v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@d
    .line 85
    iget-object v1, p0, Lcom/android/commands/dpm/Dpm;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@f
    if-nez v1, :cond_0

    #@11
    .line 86
    const-string/jumbo v1, "Error: Could not access the Device Policy Manager. Is the system running?"

    #@14
    invoke-virtual {p0, v1}, Lcom/android/commands/dpm/Dpm;->showError(Ljava/lang/String;)V

    #@17
    .line 87
    return-void

    #@18
    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/dpm/Dpm;->nextArgRequired()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 91
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v1, "set-active-admin"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 93
    invoke-direct {p0}, Lcom/android/commands/dpm/Dpm;->runSetActiveAdmin()V

    #@28
    .line 82
    :goto_0
    return-void

    #@29
    .line 91
    :cond_1
    const-string/jumbo v1, "set-device-owner"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_2

    #@32
    .line 96
    invoke-direct {p0}, Lcom/android/commands/dpm/Dpm;->runSetDeviceOwner()V

    #@35
    goto :goto_0

    #@36
    .line 91
    :cond_2
    const-string/jumbo v1, "set-profile-owner"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_3

    #@3f
    .line 99
    invoke-direct {p0}, Lcom/android/commands/dpm/Dpm;->runSetProfileOwner()V

    #@42
    goto :goto_0

    #@43
    .line 91
    :cond_3
    const-string/jumbo v1, "remove-active-admin"

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v1

    #@4a
    if-eqz v1, :cond_4

    #@4c
    .line 102
    invoke-direct {p0}, Lcom/android/commands/dpm/Dpm;->runRemoveActiveAdmin()V

    #@4f
    goto :goto_0

    #@50
    .line 105
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@52
    new-instance v2, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v3, "unknown command \'"

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    const-string/jumbo v3, "\'"

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@70
    throw v1
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 57
    const-string/jumbo v0, "usage: dpm [subcommand] [options]\nusage: dpm set-active-admin [ --user <USER_ID> | current ] <COMPONENT>\nusage: dpm set-device-owner [ --user <USER_ID> | current *EXPERIMENTAL* ] [ --name <NAME> ] <COMPONENT>\nusage: dpm set-profile-owner [ --user <USER_ID> | current ] [ --name <NAME> ] <COMPONENT>\nusage: dpm remove-active-admin [ --user <USER_ID> | current ] [ --name <NAME> ] <COMPONENT>\n\ndpm set-active-admin: Sets the given component as active admin for an existing user.\n\ndpm set-device-owner: Sets the given component as active admin, and its package as device owner.\n\ndpm set-profile-owner: Sets the given component as active admin and profile owner for an existing user.\n\ndpm remove-active-admin: Disables an active admin, the admin must have declared android:testOnly in the application in its manifest. This will also remove device and profile owners\n"

    #@3
    .line 56
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 55
    return-void
.end method
