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

.field private static final DBG:Z = true

.field private static final EXTRA_FILENAME:Ljava/lang/String; = "filename"

.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyTester"


# instance fields
.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;

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

.method static synthetic -wrap1(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    new-instance v1, Lcom/android/internal/telephony/TelephonyTester$1;

    #@5
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/TelephonyTester$1;-><init>(Lcom/android/internal/telephony/TelephonyTester;)V

    #@8
    iput-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@a
    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@c
    .line 82
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    #@12
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@15
    .line 85
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@17
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getActionDetached()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1e
    .line 86
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
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2c
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getActionDetached()Ljava/lang/String;

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
    .line 88
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getActionAttached()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@44
    .line 89
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
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@52
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getActionAttached()Ljava/lang/String;

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
    .line 91
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@63
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    #@66
    move-result v1

    #@67
    const/4 v2, 0x5

    #@68
    if-ne v1, v2, :cond_0

    #@6a
    .line 92
    const-string/jumbo v1, "register for intent action=com.android.internal.telephony.TestConferenceEventPackage"

    #@6d
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    #@70
    .line 93
    const-string/jumbo v1, "com.android.internal.telephony.TestConferenceEventPackage"

    #@73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@76
    .line 96
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@79
    move-result-object v1

    #@7a
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@7c
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@7e
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    #@81
    move-result-object v3

    #@82
    const/4 v4, 0x0

    #@83
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@86
    .line 79
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
    .line 119
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    check-cast v3, Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@4
    .line 120
    .local v3, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-nez v3, :cond_0

    #@6
    .line 121
    return-void

    #@7
    .line 124
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@a
    move-result-object v4

    #@b
    .line 125
    .local v4, "imsPhoneCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    if-nez v4, :cond_1

    #@d
    .line 126
    return-void

    #@e
    .line 129
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    #@11
    move-result-object v1

    #@12
    .line 130
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_2

    #@14
    .line 131
    return-void

    #@15
    .line 134
    :cond_2
    new-instance v6, Ljava/io/File;

    #@17
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@1a
    move-result-object v8

    #@1b
    invoke-direct {v6, v8, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1e
    .line 137
    .local v6, "packageFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    #@20
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 143
    .local v5, "is":Ljava/io/FileInputStream;
    new-instance v7, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;

    #@25
    invoke-direct {v7, v5}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;-><init>(Ljava/io/InputStream;)V

    #@28
    .line 144
    .local v7, "parser":Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
    invoke-virtual {v7}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->parse()Lcom/android/ims/ImsConferenceState;

    #@2b
    move-result-object v2

    #@2c
    .line 145
    .local v2, "imsConferenceState":Lcom/android/ims/ImsConferenceState;
    if-nez v2, :cond_3

    #@2e
    .line 146
    return-void

    #@2f
    .line 138
    .end local v2    # "imsConferenceState":Lcom/android/ims/ImsConferenceState;
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v7    # "parser":Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
    :catch_0
    move-exception v0

    #@30
    .line 139
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
    .line 140
    return-void

    #@4c
    .line 149
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v2    # "imsConferenceState":Lcom/android/ims/ImsConferenceState;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "parser":Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->conferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V

    #@4f
    .line 117
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 107
    const-string/jumbo v0, "TelephonyTester"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 106
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    #@0
    .prologue
    .line 101
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@f
    .line 100
    :cond_0
    return-void
.end method
