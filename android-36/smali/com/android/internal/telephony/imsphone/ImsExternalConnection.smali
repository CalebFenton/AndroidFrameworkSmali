.class public Lcom/android/internal/telephony/imsphone/ImsExternalConnection;
.super Lcom/android/internal/telephony/Connection;
.source "ImsExternalConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;
    }
.end annotation


# instance fields
.field private blacklist mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

.field private blacklist mCallId:I

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mIsPullable:Z

.field private final blacklist mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOriginalAddress:Landroid/net/Uri;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/telephony/Phone;ILandroid/net/Uri;Z)V
    .registers 9

    .line 86
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/Connection;-><init>(I)V

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    .line 87
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    .line 89
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCallId:I

    .line 90
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setExternalConnectionAddress(Landroid/net/Uri;)V

    .line 91
    iput v3, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 92
    iput-boolean p4, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mIsPullable:Z

    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->rebuildCapabilities()V

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->setActive()V

    return-void
.end method

.method private greylist-max-r rebuildCapabilities()V
    .registers 2

    .line 289
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mIsPullable:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x30

    goto :goto_9

    :cond_7
    const/16 v0, 0x10

    .line 293
    :goto_9
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Connection;->setConnectionCapabilities(I)V

    return-void
.end method


# virtual methods
.method public blacklist addListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V
    .registers 2

    .line 257
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist cancelPostDial()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist consultativeTransfer(Lcom/android/internal/telephony/Connection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 145
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "Transfer is not supported for external calls"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist deflect(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 133
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "Deflect is not supported for external calls"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getCall()Lcom/android/internal/telephony/Call;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    return-object p0
.end method

.method public blacklist getCallId()I
    .registers 1

    .line 102
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCallId:I

    return p0
.end method

.method public blacklist getDisconnectTime()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getHoldDurationMillis()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getNumberPresentation()I
    .registers 1

    .line 170
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    return p0
.end method

.method public blacklist getPreciseDisconnectCause()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getVendorDisconnectCause()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist hangup()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist isMultiparty()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist proceedAfterWaitChar()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist proceedAfterWildChar(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist pullExternalCall()V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;

    .line 198
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;->onPullExternalCall(Lcom/android/internal/telephony/imsphone/ImsExternalConnection;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public blacklist removeListener(Lcom/android/internal/telephony/imsphone/ImsExternalConnection$Listener;)V
    .registers 2

    .line 261
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist separate()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist-max-r setActive()V
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    if-nez p0, :cond_5

    return-void

    .line 210
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->setActive()V

    return-void
.end method

.method public blacklist setExternalConnectionAddress(Landroid/net/Uri;)V
    .registers 4

    .line 241
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mOriginalAddress:Landroid/net/Uri;

    .line 243
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sip"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 244
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 245
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mContext:Landroid/content/Context;

    const v0, 0x10401ff

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 246
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 247
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    const/4 p1, 0x2

    .line 248
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    return-void

    .line 252
    :cond_30
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertSipUriToTelUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public blacklist setIsPullable(Z)V
    .registers 2

    .line 230
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mIsPullable:Z

    .line 231
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->rebuildCapabilities()V

    return-void
.end method

.method public blacklist setTerminated()V
    .registers 1

    .line 217
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    if-nez p0, :cond_5

    return-void

    .line 221
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsExternalCall;->setTerminated()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 271
    const-string v1, "[ImsExternalConnection dialogCallId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_26

    .line 275
    const-string p0, "Active"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 276
    :cond_26
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->mCall:Lcom/android/internal/telephony/imsphone/ImsExternalCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v1, :cond_35

    .line 277
    const-string p0, "Disconnected"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_35
    :goto_35
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 139
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "Transfer is not supported for external calls"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
