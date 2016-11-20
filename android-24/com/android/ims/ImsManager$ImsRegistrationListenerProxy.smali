.class Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;
.super Lcom/android/ims/internal/IImsRegistrationListener$Stub;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsRegistrationListenerProxy"
.end annotation


# instance fields
.field private mListener:Lcom/android/ims/ImsConnectionStateListener;

.field private mServiceClass:I

.field final synthetic this$0:Lcom/android/ims/ImsManager;


# direct methods
.method public constructor <init>(Lcom/android/ims/ImsManager;ILcom/android/ims/ImsConnectionStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsManager;
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConnectionStateListener;

    #@0
    .prologue
    .line 1261
    iput-object p1, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->this$0:Lcom/android/ims/ImsManager;

    #@2
    invoke-direct {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;-><init>()V

    #@5
    .line 1263
    iput p2, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mServiceClass:I

    #@7
    .line 1264
    iput-object p3, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@9
    .line 1262
    return-void
.end method


# virtual methods
.method public isSameProxy(I)Z
    .locals 1
    .param p1, "serviceClass"    # I

    #@0
    .prologue
    .line 1268
    iget v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mServiceClass:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public registrationAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 1
    .param p1, "uris"    # [Landroid/net/Uri;

    #@0
    .prologue
    .line 1384
    const-string/jumbo v0, "registrationAssociatedUriChanged ::"

    #@3
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@6
    .line 1386
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1387
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@c
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsConnectionStateListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    #@f
    .line 1383
    :cond_0
    return-void
.end method

.method public registrationConnected()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1274
    const-string/jumbo v0, "registrationConnected ::"

    #@3
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@6
    .line 1277
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1278
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@c
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsConnected()V

    #@f
    .line 1272
    :cond_0
    return-void
.end method

.method public registrationConnectedWithRadioTech(I)V
    .locals 2
    .param p1, "imsRadioTech"    # I

    #@0
    .prologue
    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "registrationConnectedWithRadioTech :: imsRadioTech="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@17
    .line 1301
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 1302
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@1d
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsConnected()V

    #@20
    .line 1294
    :cond_0
    return-void
.end method

.method public registrationDisconnected(Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "registrationDisconnected :: imsReasonInfo"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@17
    .line 1325
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 1326
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@1d
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onImsDisconnected(Lcom/android/ims/ImsReasonInfo;)V

    #@20
    .line 1320
    :cond_0
    return-void
.end method

.method public registrationFeatureCapabilityChanged(I[I[I)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    #@0
    .prologue
    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "registrationFeatureCapabilityChanged :: serviceClass="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@17
    .line 1367
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 1368
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@1d
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsConnectionStateListener;->onFeatureCapabilityChanged(I[I[I)V

    #@20
    .line 1364
    :cond_0
    return-void
.end method

.method public registrationProgressing()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1285
    const-string/jumbo v0, "registrationProgressing ::"

    #@3
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@6
    .line 1288
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1289
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@c
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsProgressing()V

    #@f
    .line 1283
    :cond_0
    return-void
.end method

.method public registrationProgressingWithRadioTech(I)V
    .locals 2
    .param p1, "imsRadioTech"    # I

    #@0
    .prologue
    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "registrationProgressingWithRadioTech :: imsRadioTech="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@17
    .line 1314
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 1315
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@1d
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsProgressing()V

    #@20
    .line 1307
    :cond_0
    return-void
.end method

.method public registrationResumed()V
    .locals 1

    #@0
    .prologue
    .line 1333
    const-string/jumbo v0, "registrationResumed ::"

    #@3
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@6
    .line 1336
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1337
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@c
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsResumed()V

    #@f
    .line 1331
    :cond_0
    return-void
.end method

.method public registrationServiceCapabilityChanged(II)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "event"    # I

    #@0
    .prologue
    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "registrationServiceCapabilityChanged :: serviceClass="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 1355
    const-string/jumbo v1, ", event="

    #@13
    .line 1354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@22
    .line 1357
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 1358
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@28
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsConnected()V

    #@2b
    .line 1353
    :cond_0
    return-void
.end method

.method public registrationSuspended()V
    .locals 1

    #@0
    .prologue
    .line 1344
    const-string/jumbo v0, "registrationSuspended ::"

    #@3
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@6
    .line 1347
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1348
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@c
    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsSuspended()V

    #@f
    .line 1342
    :cond_0
    return-void
.end method

.method public voiceMessageCountUpdate(I)V
    .locals 2
    .param p1, "count"    # I

    #@0
    .prologue
    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "voiceMessageCountUpdate :: count="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/android/ims/ImsManager;->-wrap0(Ljava/lang/String;)V

    #@17
    .line 1377
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 1378
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    #@1d
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onVoiceMessageCountChanged(I)V

    #@20
    .line 1374
    :cond_0
    return-void
.end method
