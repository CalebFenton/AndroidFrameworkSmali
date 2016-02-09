.class public Lcom/android/internal/app/NetInitiatedActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "NetInitiatedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/NetInitiatedActivity$1;,
        Lcom/android/internal/app/NetInitiatedActivity$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final GPS_NO_RESPONSE_TIME_OUT:I = 0x1

.field private static final NEGATIVE_BUTTON:I = -0x2

.field private static final POSITIVE_BUTTON:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NetInitiatedActivity"

.field private static final VERBOSE:Z


# instance fields
.field private default_response:I

.field private default_response_timeout:I

.field private final mHandler:Landroid/os/Handler;

.field private mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

.field private notificationId:I

.field private timeout:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/NetInitiatedActivity;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/NetInitiatedActivity;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/NetInitiatedActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/NetInitiatedActivity;->handleNIVerify(Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/NetInitiatedActivity;I)V
    .locals 0
    .param p1, "response"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponse(I)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 39
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    #@4
    .line 51
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    #@6
    .line 52
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    #@8
    .line 53
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    #@a
    .line 54
    const/4 v0, 0x6

    #@b
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response_timeout:I

    #@d
    .line 57
    new-instance v0, Lcom/android/internal/app/NetInitiatedActivity$1;

    #@f
    invoke-direct {v0, p0}, Lcom/android/internal/app/NetInitiatedActivity$1;-><init>(Lcom/android/internal/app/NetInitiatedActivity;)V

    #@12
    iput-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    #@14
    .line 67
    new-instance v0, Lcom/android/internal/app/NetInitiatedActivity$2;

    #@16
    invoke-direct {v0, p0}, Lcom/android/internal/app/NetInitiatedActivity$2;-><init>(Lcom/android/internal/app/NetInitiatedActivity;)V

    #@19
    iput-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    #@1b
    .line 39
    return-void
.end method

.method private handleNIVerify(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 145
    const-string/jumbo v1, "notif_id"

    #@3
    const/4 v2, -0x1

    #@4
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    .line 146
    .local v0, "notifId":I
    iput v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    #@a
    .line 148
    const-string/jumbo v1, "NetInitiatedActivity"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "handleNIVerify action: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 144
    return-void
.end method

.method private sendUserResponse(I)V
    .locals 4
    .param p1, "response"    # I

    #@0
    .prologue
    .line 138
    const-string/jumbo v1, "NetInitiatedActivity"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "sendUserResponse, response: "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 140
    const-string/jumbo v1, "location"

    #@1d
    invoke-virtual {p0, v1}, Lcom/android/internal/app/NetInitiatedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    .line 139
    check-cast v0, Landroid/location/LocationManager;

    #@23
    .line 141
    .local v0, "locationManager":Landroid/location/LocationManager;
    iget v1, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    #@25
    invoke-virtual {v0, v1, p1}, Landroid/location/LocationManager;->sendNiResponse(II)Z

    #@28
    .line 137
    return-void
.end method

.method private showNIError()V
    .locals 2

    #@0
    .prologue
    .line 152
    const-string/jumbo v0, "NI error"

    #@3
    .line 153
    const/4 v1, 0x1

    #@4
    .line 152
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    #@b
    .line 151
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 124
    if-ne p2, v1, :cond_0

    #@3
    .line 125
    const/4 v0, 0x1

    #@4
    invoke-direct {p0, v0}, Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponse(I)V

    #@7
    .line 127
    :cond_0
    const/4 v0, -0x2

    #@8
    if-ne p2, v0, :cond_1

    #@a
    .line 128
    const/4 v0, 0x2

    #@b
    invoke-direct {p0, v0}, Lcom/android/internal/app/NetInitiatedActivity;->sendUserResponse(I)V

    #@e
    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->finish()V

    #@11
    .line 133
    iput v1, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    #@13
    .line 123
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 84
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    #@5
    .line 87
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->getIntent()Landroid/content/Intent;

    #@8
    move-result-object v1

    #@9
    .line 88
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/NetInitiatedActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    #@b
    .line 89
    .local v2, "p":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->getApplicationContext()Landroid/content/Context;

    #@e
    move-result-object v0

    #@f
    .line 90
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v3, "title"

    #@12
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    #@18
    .line 91
    const-string/jumbo v3, "message"

    #@1b
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    #@21
    .line 92
    const v3, 0x1040450

    #@24
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    new-array v4, v5, [Ljava/lang/Object;

    #@2a
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    #@30
    .line 93
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    #@32
    .line 94
    const v3, 0x1040451

    #@35
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    new-array v4, v5, [Ljava/lang/Object;

    #@3b
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    #@41
    .line 95
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    #@43
    .line 97
    const-string/jumbo v3, "notif_id"

    #@46
    const/4 v4, -0x1

    #@47
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@4a
    move-result v3

    #@4b
    iput v3, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    #@4d
    .line 98
    const-string/jumbo v3, "timeout"

    #@50
    iget v4, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response_timeout:I

    #@52
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@55
    move-result v3

    #@56
    iput v3, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    #@58
    .line 99
    const-string/jumbo v3, "default_resp"

    #@5b
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@5e
    move-result v3

    #@5f
    iput v3, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    #@61
    .line 100
    const-string/jumbo v3, "NetInitiatedActivity"

    #@64
    new-instance v4, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v5, "onCreate() : notificationId: "

    #@6c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    iget v5, p0, Lcom/android/internal/app/NetInitiatedActivity;->notificationId:I

    #@72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    const-string/jumbo v5, " timeout: "

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    iget v5, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    #@7f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    const-string/jumbo v5, " default_response:"

    #@86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    iget v5, p0, Lcom/android/internal/app/NetInitiatedActivity;->default_response:I

    #@8c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v4

    #@90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v4

    #@94
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@97
    .line 102
    iget-object v3, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    #@99
    iget-object v4, p0, Lcom/android/internal/app/NetInitiatedActivity;->mHandler:Landroid/os/Handler;

    #@9b
    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@9e
    move-result-object v4

    #@9f
    iget v5, p0, Lcom/android/internal/app/NetInitiatedActivity;->timeout:I

    #@a1
    mul-int/lit16 v5, v5, 0x3e8

    #@a3
    int-to-long v6, v5

    #@a4
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@a7
    .line 103
    invoke-virtual {p0}, Lcom/android/internal/app/NetInitiatedActivity;->setupAlert()V

    #@aa
    .line 83
    return-void
.end method

.method protected onPause()V
    .locals 2

    #@0
    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    #@3
    .line 116
    const-string/jumbo v0, "NetInitiatedActivity"

    #@6
    const-string/jumbo v1, "onPause"

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 117
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    #@e
    invoke-virtual {p0, v0}, Lcom/android/internal/app/NetInitiatedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@11
    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 3

    #@0
    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    #@3
    .line 109
    const-string/jumbo v0, "NetInitiatedActivity"

    #@6
    const-string/jumbo v1, "onResume"

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 110
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    #@e
    new-instance v1, Landroid/content/IntentFilter;

    #@10
    const-string/jumbo v2, "android.intent.action.NETWORK_INITIATED_VERIFY"

    #@13
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/NetInitiatedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@19
    .line 107
    return-void
.end method
