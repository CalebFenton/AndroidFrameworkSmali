.class public Lcom/android/internal/telephony/TelephonyTester;
.super Ljava/lang/Object;
.source "TelephonyTester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyTester$1;
    }
.end annotation


# static fields
.field private static final ACTION_TEST_CONFERENCE_EVENT_PACKAGE:Ljava/lang/String; = "com.android.internal.telephony.TestConferenceEventPackage"

.field private static final ACTION_TEST_DIALOG_EVENT_PACKAGE:Ljava/lang/String; = "com.android.internal.telephony.TestDialogEventPackage"

.field private static final DBG:Z = true

.field private static final EXTRA_CANPULL:Ljava/lang/String; = "canPull"

.field private static final EXTRA_DIALOGID:Ljava/lang/String; = "dialogId"

.field private static final EXTRA_FILENAME:Ljava/lang/String; = "filename"

.field private static final EXTRA_NUMBER:Ljava/lang/String; = "number"

.field private static final EXTRA_SENDPACKAGE:Ljava/lang/String; = "sendPackage"

.field private static final EXTRA_STARTPACKAGE:Ljava/lang/String; = "startPackage"

.field private static final EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyTester"

.field private static mImsExternalCallStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyTester;->handleTestConferenceEventPackage(Landroid/content/Context;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->handleTestDialogEventPackageIntent(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 74
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    #@3
    .line 50
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    new-instance v1, Lcom/android/internal/telephony/TelephonyTester$1;

    #@5
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/TelephonyTester$1;-><init>(Lcom/android/internal/telephony/TelephonyTester;)V

    #@8
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@a
    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    #@c
    .line 106
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    #@12
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@15
    .line 109
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    #@17
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1e
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "register for intent action="

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2c
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    #@3b
    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@44
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v2, "register for intent action="

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    #@52
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    #@61
    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    #@63
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    #@66
    move-result v1

    #@67
    const/4 v2, 0x5

    #@68
    if-ne v1, v2, :cond_0

    #@6a
    .line 116
    const-string/jumbo v1, "register for intent action=com.android.internal.telephony.TestConferenceEventPackage"

    #@6d
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    #@70
    .line 117
    const-string/jumbo v1, "com.android.internal.telephony.TestConferenceEventPackage"

    #@73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@76
    .line 118
    const-string/jumbo v1, "com.android.internal.telephony.TestDialogEventPackage"

    #@79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@7c
    .line 119
    new-instance v1, Ljava/util/ArrayList;

    #@7e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@81
    sput-object v1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    #@83
    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@86
    move-result-object v1

    #@87
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@89
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    #@8b
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getHandler()Landroid/os/Handler;

    #@8e
    move-result-object v3

    #@8f
    const/4 v4, 0x0

    #@90
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@93
    .line 103
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method private handleTestConferenceEventPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 145
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4
    .line 146
    .local v3, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-nez v3, :cond_0

    #@6
    .line 147
    return-void

    #@7
    .line 150
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@a
    move-result-object v4

    #@b
    .line 151
    .local v4, "imsPhoneCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    if-nez v4, :cond_1

    #@d
    .line 152
    return-void

    #@e
    .line 155
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@11
    move-result-object v1

    #@12
    .line 156
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_2

    #@14
    .line 157
    return-void

    #@15
    .line 160
    :cond_2
    new-instance v6, Ljava/io/File;

    #@17
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@1a
    move-result-object v8

    #@1b
    invoke-direct {v6, v8, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1e
    .line 163
    .local v6, "packageFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    #@20
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 169
    .local v5, "is":Ljava/io/FileInputStream;
    new-instance v7, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;

    #@25
    invoke-direct {v7, v5}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;-><init>(Ljava/io/InputStream;)V

    #@28
    .line 170
    .local v7, "parser":Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
    invoke-virtual {v7}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->parse()Lcom/android/ims/ImsConferenceState;

    #@2b
    move-result-object v2

    #@2c
    .line 171
    .local v2, "imsConferenceState":Lcom/android/ims/ImsConferenceState;
    if-nez v2, :cond_3

    #@2e
    .line 172
    return-void

    #@2f
    .line 164
    .end local v2    # "imsConferenceState":Lcom/android/ims/ImsConferenceState;
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v7    # "parser":Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
    :catch_0
    move-exception v0

    #@30
    .line 165
    .local v0, "ex":Ljava/io/FileNotFoundException;
    new-instance v8, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v9, "Test conference event package file not found: "

    #@38
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@3f
    move-result-object v9

    #@40
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v8

    #@48
    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    #@4b
    .line 166
    return-void

    #@4c
    .line 175
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v2    # "imsConferenceState":Lcom/android/ims/ImsConferenceState;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "parser":Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->conferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V

    #@4f
    .line 143
    return-void
.end method

.method private handleTestDialogEventPackageIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 184
    iget-object v8, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4
    check-cast v8, Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@6
    .line 185
    .local v8, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-nez v8, :cond_0

    #@8
    .line 186
    return-void

    #@9
    .line 188
    :cond_0
    invoke-virtual {v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@c
    move-result-object v7

    #@d
    .line 189
    .local v7, "externalCallTracker":Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
    if-nez v7, :cond_1

    #@f
    .line 190
    return-void

    #@10
    .line 193
    :cond_1
    const-string/jumbo v1, "startPackage"

    #@13
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_3

    #@19
    .line 194
    sget-object v1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    #@1b
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@1e
    .line 183
    :cond_2
    :goto_0
    return-void

    #@1f
    .line 195
    :cond_3
    const-string/jumbo v1, "sendPackage"

    #@22
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_4

    #@28
    .line 196
    sget-object v1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    #@2a
    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->refreshExternalCallState(Ljava/util/List;)V

    #@2d
    .line 197
    sget-object v1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    #@2f
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@32
    goto :goto_0

    #@33
    .line 198
    :cond_4
    const-string/jumbo v1, "dialogId"

    #@36
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_2

    #@3c
    .line 199
    new-instance v0, Lcom/android/ims/ImsExternalCallState;

    #@3e
    .line 200
    const-string/jumbo v1, "dialogId"

    #@41
    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@44
    move-result v1

    #@45
    .line 201
    const-string/jumbo v2, "number"

    #@48
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@4f
    move-result-object v2

    #@50
    .line 202
    const-string/jumbo v3, "canPull"

    #@53
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@56
    move-result v3

    #@57
    .line 203
    const-string/jumbo v4, "state"

    #@5a
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@5d
    move-result v4

    #@5e
    .line 205
    const/4 v5, 0x2

    #@5f
    .line 199
    invoke-direct/range {v0 .. v6}, Lcom/android/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    #@62
    .line 208
    .local v0, "state":Lcom/android/ims/ImsExternalCallState;
    sget-object v1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    #@64
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@67
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 133
    const-string/jumbo v0, "TelephonyTester"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 132
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    #@0
    .prologue
    .line 127
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@f
    .line 126
    :cond_0
    return-void
.end method
