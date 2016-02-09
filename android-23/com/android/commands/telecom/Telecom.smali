.class public final Lcom/android/commands/telecom/Telecom;
.super Lcom/android/internal/os/BaseCommand;
.source "Telecom.java"


# static fields
.field private static final COMMAND_GET_DEFAULT_DIALER:Ljava/lang/String; = "get-default-dialer"

.field private static final COMMAND_GET_SYSTEM_DIALER:Ljava/lang/String; = "get-system-dialer"

.field private static final COMMAND_REGISTER_PHONE_ACCOUNT:Ljava/lang/String; = "register-phone-account"

.field private static final COMMAND_REGISTER_SIM_PHONE_ACCOUNT:Ljava/lang/String; = "register-sim-phone-account"

.field private static final COMMAND_SET_DEFAULT_DIALER:Ljava/lang/String; = "set-default-dialer"

.field private static final COMMAND_SET_PHONE_ACCOUNT_DISABLED:Ljava/lang/String; = "set-phone-account-disabled"

.field private static final COMMAND_SET_PHONE_ACCOUNT_ENABLED:Ljava/lang/String; = "set-phone-account-enabled"

.field private static final COMMAND_UNREGISTER_PHONE_ACCOUNT:Ljava/lang/String; = "unregister-phone-account"


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private mComponent:Landroid/content/ComponentName;

.field private mTelecomService:Lcom/android/internal/telecom/ITelecomService;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    #@3
    return-void
.end method

.method private getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    #@0
    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-direct {p0, v2}, Lcom/android/commands/telecom/Telecom;->parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    #@7
    move-result-object v1

    #@8
    .line 188
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 189
    .local v0, "accountId":Ljava/lang/String;
    new-instance v2, Landroid/telecom/PhoneAccountHandle;

    #@e
    invoke-direct {v2, v1, v0}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@11
    return-object v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 41
    new-instance v0, Lcom/android/commands/telecom/Telecom;

    #@2
    invoke-direct {v0}, Lcom/android/commands/telecom/Telecom;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/commands/telecom/Telecom;->run([Ljava/lang/String;)V

    #@8
    .line 40
    return-void
.end method

.method private parseComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 4
    .param p1, "component"    # Ljava/lang/String;

    #@0
    .prologue
    .line 193
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    .line 194
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    #@6
    .line 195
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
    .line 197
    :cond_0
    return-object v0
.end method

.method private runGetDefaultDialer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    #@4
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getDefaultDialerPackage()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b
    .line 178
    return-void
.end method

.method private runGetSystemDialer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    #@4
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getSystemDialerPackage()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b
    .line 182
    return-void
.end method

.method private runRegisterPhoneAccount()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;

    #@3
    move-result-object v1

    #@4
    .line 136
    .local v1, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 137
    .local v2, "label":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/telecom/PhoneAccount;->builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    #@b
    move-result-object v3

    #@c
    .line 138
    const/4 v4, 0x2

    #@d
    .line 137
    invoke-virtual {v3, v4}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    #@14
    move-result-object v0

    #@15
    .line 139
    .local v0, "account":Landroid/telecom/PhoneAccount;
    iget-object v3, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    #@17
    invoke-interface {v3, v0}, Lcom/android/internal/telecom/ITelecomService;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    #@1a
    .line 140
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "Success - "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, " registered."

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3a
    .line 134
    return-void
.end method

.method private runRegisterSimPhoneAccount()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;

    #@3
    move-result-object v2

    #@4
    .line 145
    .local v2, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 146
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 147
    .local v1, "address":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/telecom/PhoneAccount;->builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    #@f
    move-result-object v4

    #@10
    .line 149
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v5

    #@14
    .line 147
    invoke-virtual {v4, v5}, Landroid/telecom/PhoneAccount$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    #@17
    move-result-object v4

    #@18
    .line 150
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@1b
    move-result-object v5

    #@1c
    .line 147
    invoke-virtual {v4, v5}, Landroid/telecom/PhoneAccount$Builder;->setSubscriptionAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    #@1f
    move-result-object v4

    #@20
    .line 151
    const/4 v5, 0x6

    #@21
    .line 147
    invoke-virtual {v4, v5}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, v3}, Landroid/telecom/PhoneAccount$Builder;->setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    #@28
    move-result-object v4

    #@29
    .line 154
    const-string/jumbo v5, "tel"

    #@2c
    .line 147
    invoke-virtual {v4, v5}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    #@2f
    move-result-object v4

    #@30
    .line 155
    const-string/jumbo v5, "voicemail"

    #@33
    .line 147
    invoke-virtual {v4, v5}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    #@3a
    move-result-object v0

    #@3b
    .line 157
    .local v0, "account":Landroid/telecom/PhoneAccount;
    iget-object v4, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    #@3d
    invoke-interface {v4, v0}, Lcom/android/internal/telecom/ITelecomService;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    #@40
    .line 158
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@42
    new-instance v5, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v6, "Success - "

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    const-string/jumbo v6, " registered."

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@60
    .line 143
    return-void
.end method

.method private runSetDefaultDialer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 169
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    #@6
    invoke-interface {v2, v0}, Lcom/android/internal/telecom/ITelecomService;->setDefaultDialer(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    .line 170
    .local v1, "success":Z
    if-eqz v1, :cond_0

    #@c
    .line 171
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Success - "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    const-string/jumbo v4, " set as default dialer."

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2c
    .line 167
    :goto_0
    return-void

    #@2d
    .line 173
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2f
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "Error - "

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    const-string/jumbo v4, " is not an installed Dialer app, \n"

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    .line 174
    const-string/jumbo v4, " or is already the default dialer."

    #@49
    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@54
    goto :goto_0
.end method

.method private runSetPhoneAccountEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;

    #@3
    move-result-object v0

    #@4
    .line 126
    .local v0, "handle":Landroid/telecom/PhoneAccountHandle;
    iget-object v2, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    #@6
    invoke-interface {v2, v0, p1}, Lcom/android/internal/telecom/ITelecomService;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z

    #@9
    move-result v1

    #@a
    .line 127
    .local v1, "success":Z
    if-eqz v1, :cond_1

    #@c
    .line 128
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Success - "

    #@16
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    if-eqz p1, :cond_0

    #@20
    const-string/jumbo v2, " enabled."

    #@23
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 124
    :goto_1
    return-void

    #@2f
    .line 128
    :cond_0
    const-string/jumbo v2, " disabled."

    #@32
    goto :goto_0

    #@33
    .line 130
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@35
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v4, "Error - is "

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    const-string/jumbo v4, " a valid PhoneAccount?"

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@53
    goto :goto_1
.end method

.method private runUnregisterPhoneAccount()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->getPhoneAccountHandleFromArgs()Landroid/telecom/PhoneAccountHandle;

    #@3
    move-result-object v0

    #@4
    .line 163
    .local v0, "handle":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    #@6
    invoke-interface {v1, v0}, Lcom/android/internal/telecom/ITelecomService;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    #@9
    .line 164
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Success - "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, " unregistered."

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@29
    .line 161
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
    .line 87
    const-string/jumbo v1, "telecom"

    #@3
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    .line 86
    invoke-static {v1}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    #@d
    .line 88
    iget-object v1, p0, Lcom/android/commands/telecom/Telecom;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    #@f
    if-nez v1, :cond_0

    #@11
    .line 89
    const-string/jumbo v1, "Error: Could not access the Telecom Manager. Is the system running?"

    #@14
    invoke-virtual {p0, v1}, Lcom/android/commands/telecom/Telecom;->showError(Ljava/lang/String;)V

    #@17
    .line 90
    return-void

    #@18
    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/telecom/Telecom;->nextArgRequired()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 94
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v1, "set-phone-account-enabled"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 96
    const/4 v1, 0x1

    #@26
    invoke-direct {p0, v1}, Lcom/android/commands/telecom/Telecom;->runSetPhoneAccountEnabled(Z)V

    #@29
    .line 85
    :goto_0
    return-void

    #@2a
    .line 94
    :cond_1
    const-string/jumbo v1, "set-phone-account-disabled"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_2

    #@33
    .line 99
    const/4 v1, 0x0

    #@34
    invoke-direct {p0, v1}, Lcom/android/commands/telecom/Telecom;->runSetPhoneAccountEnabled(Z)V

    #@37
    goto :goto_0

    #@38
    .line 94
    :cond_2
    const-string/jumbo v1, "register-phone-account"

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_3

    #@41
    .line 102
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runRegisterPhoneAccount()V

    #@44
    goto :goto_0

    #@45
    .line 94
    :cond_3
    const-string/jumbo v1, "register-sim-phone-account"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_4

    #@4e
    .line 105
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runRegisterSimPhoneAccount()V

    #@51
    goto :goto_0

    #@52
    .line 94
    :cond_4
    const-string/jumbo v1, "unregister-phone-account"

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v1

    #@59
    if-eqz v1, :cond_5

    #@5b
    .line 108
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runUnregisterPhoneAccount()V

    #@5e
    goto :goto_0

    #@5f
    .line 94
    :cond_5
    const-string/jumbo v1, "set-default-dialer"

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_6

    #@68
    .line 111
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runSetDefaultDialer()V

    #@6b
    goto :goto_0

    #@6c
    .line 94
    :cond_6
    const-string/jumbo v1, "get-default-dialer"

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v1

    #@73
    if-eqz v1, :cond_7

    #@75
    .line 114
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runGetDefaultDialer()V

    #@78
    goto :goto_0

    #@79
    .line 94
    :cond_7
    const-string/jumbo v1, "get-system-dialer"

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v1

    #@80
    if-eqz v1, :cond_8

    #@82
    .line 117
    invoke-direct {p0}, Lcom/android/commands/telecom/Telecom;->runGetSystemDialer()V

    #@85
    goto :goto_0

    #@86
    .line 120
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@88
    new-instance v2, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v3, "unknown command \'"

    #@90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v2

    #@98
    const-string/jumbo v3, "\'"

    #@9b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v2

    #@9f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v2

    #@a3
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v1
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 60
    const-string/jumbo v0, "usage: telecom [subcommand] [options]\nusage: telecom set-phone-account-enabled <COMPONENT> <ID>\nusage: telecom set-phone-account-disabled <COMPONENT> <ID>\nusage: telecom register-phone-account <COMPONENT> <ID> <LABEL>\nusage: telecom register-sim-phone-account <COMPONENT> <ID> <LABEL> <ADDRESS>\nusage: telecom unregister-phone-account <COMPONENT> <ID>\nusage: telecom set-default-dialer <PACKAGE>\nusage: telecom get-default-dialer\nusage: telecom get-system-dialer\n\ntelecom set-phone-account-enabled: Enables the given phone account, if it has \n already been registered with Telecom.\n\ntelecom set-phone-account-disabled: Disables the given phone account, if it \n has already been registered with telecom.\n\ntelecom set-default-dialer: Sets the default dialer to the given component. \n\ntelecom get-default-dialer: Displays the current default dialer. \n\ntelecom get-system-dialer: Displays the current system dialer. \n"

    #@3
    .line 59
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 58
    return-void
.end method
