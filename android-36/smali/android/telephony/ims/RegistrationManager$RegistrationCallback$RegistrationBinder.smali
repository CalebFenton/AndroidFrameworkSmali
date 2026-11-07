.class Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;
.super Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;
.source "RegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegistrationBinder"
.end annotation


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$8KXGybkGz3YFtHk2xL0OkvWQABA(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onDeregistered$2(Landroid/telephony/ims/ImsReasonInfo;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Cod11UjHLsl446Ps9Cd1yXcybxs(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onTechnologyChangeFailed$5(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$F05J2ZPu6rbEezuIxtH39FiBAi4(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onRegistered$0(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PvGwKCcXCZLTR6_jD3KjSrZ1qFM(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onDeregisteredWithDetails$4(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VD7fPccJ8RIsqKtgqbwxx1L5gWM(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onDeregisteredWithDetails$3(Landroid/telephony/ims/ImsReasonInfo;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bquTjgKwgVCJ6vCgr5qocnGDyAw(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;[Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onSubscriberAssociatedUriChanged$6([Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$d8X8D63xz4UnIzeGH3qCPzeL43U(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onRegistering$1(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetExecutor(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Ljava/util/concurrent/Executor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .registers 3
    .param p1, "localCallback"    # Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 202
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;-><init>()V

    .line 200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mBundle:Landroid/os/Bundle;

    .line 203
    iput-object p1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 204
    return-void
.end method

.method private synthetic blacklist lambda$onDeregistered$2(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 5
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "suggestedAction"    # I
    .param p3, "imsRadioTech"    # I

    .line 238
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onUnregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onDeregisteredWithDetails$3(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 5
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "suggestedAction"    # I
    .param p3, "imsRadioTech"    # I

    .line 254
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onUnregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    return-void
.end method

.method private synthetic blacklist lambda$onDeregisteredWithDetails$4(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V
    .registers 4
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "details"    # Landroid/telephony/ims/SipDetails;

    .line 256
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onUnregistered(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRegistered$0(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 3
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 212
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method private synthetic blacklist lambda$onRegistering$1(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 3
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 224
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSubscriberAssociatedUriChanged$6([Landroid/net/Uri;)V
    .registers 3
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 280
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTechnologyChangeFailed$5(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 268
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 269
    invoke-static {p1}, Landroid/telephony/ims/RegistrationManager;->getAccessType(I)I

    move-result v1

    .line 268
    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method private blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 287
    iput-object p1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 288
    return-void
.end method


# virtual methods
.method public blacklist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V
    .registers 8
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "suggestedAction"    # I
    .param p3, "imsRadioTech"    # I

    .line 234
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_5

    return-void

    .line 236
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 238
    .local v0, "callingIdentity":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 241
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 242
    nop

    .line 243
    return-void

    .line 241
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 242
    throw v2
.end method

.method public blacklist onDeregisteredWithDetails(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V
    .registers 9
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "suggestedAction"    # I
    .param p3, "imsRadioTech"    # I
    .param p4, "details"    # Landroid/telephony/ims/SipDetails;

    .line 250
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_5

    return-void

    .line 252
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 254
    .local v0, "callingIdentity":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 256
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1, p4}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_22

    .line 258
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 259
    nop

    .line 260
    return-void

    .line 258
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 259
    throw v2
.end method

.method public blacklist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 6
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 208
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_5

    return-void

    .line 210
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 212
    .local v0, "callingIdentity":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsRegistrationAttributes;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 214
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 215
    nop

    .line 216
    return-void

    .line 214
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 215
    throw v2
.end method

.method public blacklist onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 6
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 220
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_5

    return-void

    .line 222
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 224
    .local v0, "callingIdentity":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsRegistrationAttributes;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 226
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 227
    nop

    .line 228
    return-void

    .line 226
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 227
    throw v2
.end method

.method public blacklist onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 6
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 276
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_5

    return-void

    .line 278
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 280
    .local v0, "callingIdentity":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;[Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 282
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 283
    nop

    .line 284
    return-void

    .line 282
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 283
    throw v2
.end method

.method public blacklist onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 7
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 264
    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mLocalCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-nez v0, :cond_5

    return-void

    .line 266
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 268
    .local v0, "callingIdentity":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;ILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 271
    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 272
    nop

    .line 273
    return-void

    .line 271
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->restoreCallingIdentity(J)V

    .line 272
    throw v2
.end method
