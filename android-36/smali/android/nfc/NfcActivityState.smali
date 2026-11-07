.class public Landroid/nfc/NfcActivityState;
.super Ljava/lang/Object;
.source "NfcActivityState.java"


# instance fields
.field greylist activity:Landroid/app/Activity;

.field greylist mListenTech:I

.field private final greylist mNfcActivityManager:Landroid/nfc/NfcActivityManager;

.field greylist mPollTech:I

.field greylist readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

.field greylist readerModeExtras:Landroid/os/Bundle;

.field greylist readerModeFlags:I

.field greylist resumed:Z

.field greylist token:Landroid/os/Binder;


# direct methods
.method public constructor blacklist <init>(Landroid/app/Activity;Landroid/nfc/NfcActivityManager;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "activityManager"    # Landroid/nfc/NfcActivityManager;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcActivityState;->resumed:Z

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/nfc/NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 48
    iput v0, p0, Landroid/nfc/NfcActivityState;->readerModeFlags:I

    .line 53
    iput-object v1, p0, Landroid/nfc/NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    .line 64
    const/16 v0, 0xff

    iput v0, p0, Landroid/nfc/NfcActivityState;->mPollTech:I

    .line 69
    iput v0, p0, Landroid/nfc/NfcActivityState;->mListenTech:I

    .line 82
    iput-object p2, p0, Landroid/nfc/NfcActivityState;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    .line 83
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_34

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/nfc/NfcActivityState;->resumed:Z

    .line 90
    iput-object p1, p0, Landroid/nfc/NfcActivityState;->activity:Landroid/app/Activity;

    .line 91
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcActivityState;->token:Landroid/os/Binder;

    .line 92
    iget-object v0, p0, Landroid/nfc/NfcActivityState;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcActivityManager;->registerApplication(Landroid/app/Application;)V

    .line 93
    return-void

    .line 84
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activity is already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 3

    .line 99
    iget-object v0, p0, Landroid/nfc/NfcActivityState;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    iget-object v1, p0, Landroid/nfc/NfcActivityState;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcActivityManager;->unregisterApplication(Landroid/app/Application;)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcActivityState;->resumed:Z

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/nfc/NfcActivityState;->activity:Landroid/app/Activity;

    .line 102
    iput-object v1, p0, Landroid/nfc/NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 103
    iput v0, p0, Landroid/nfc/NfcActivityState;->readerModeFlags:I

    .line 104
    iput-object v1, p0, Landroid/nfc/NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    .line 105
    iput-object v1, p0, Landroid/nfc/NfcActivityState;->token:Landroid/os/Binder;

    .line 107
    const/16 v0, 0xff

    iput v0, p0, Landroid/nfc/NfcActivityState;->mPollTech:I

    .line 108
    iput v0, p0, Landroid/nfc/NfcActivityState;->mListenTech:I

    .line 109
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/nfc/NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
