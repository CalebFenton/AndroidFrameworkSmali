.class public Landroid/service/voice/VoiceInteractionSession$Request;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionSession$Request$1;
    }
.end annotation


# instance fields
.field final mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

.field final mCallingPackage:Ljava/lang/String;

.field final mCallingUid:I

.field final mExtras:Landroid/os/Bundle;

.field final mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

.field final mSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/service/voice/VoiceInteractionSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p4, "session"    # Landroid/service/voice/VoiceInteractionSession;
    .param p5, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 288
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$Request$1;

    #@5
    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$Request$1;-><init>(Landroid/service/voice/VoiceInteractionSession$Request;)V

    #@8
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@a
    .line 306
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingPackage:Ljava/lang/String;

    #@c
    .line 307
    iput p2, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingUid:I

    #@e
    .line 308
    iput-object p3, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    #@10
    .line 309
    iget-object v0, p4, Landroid/service/voice/VoiceInteractionSession;->mWeakRef:Ljava/lang/ref/WeakReference;

    #@12
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mSession:Ljava/lang/ref/WeakReference;

    #@14
    .line 310
    iput-object p5, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mExtras:Landroid/os/Bundle;

    #@16
    .line 305
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    #@0
    .prologue
    .line 371
    :try_start_0
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession$Request;->finishRequest()V

    #@3
    .line 372
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    #@5
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@7
    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractorCallback;->deliverCancel(Lcom/android/internal/app/IVoiceInteractorRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 368
    :goto_0
    return-void

    #@b
    .line 373
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 392
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mInterface="

    #@6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 393
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@b
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@12
    .line 394
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    const-string/jumbo v0, "mCallingPackage="

    #@18
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingPackage:Ljava/lang/String;

    #@1d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20
    .line 395
    const-string/jumbo v0, " mCallingUid="

    #@23
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@26
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingUid:I

    #@28
    invoke-static {p3, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@2b
    .line 396
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    #@2e
    .line 397
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    const-string/jumbo v0, "mCallback="

    #@34
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@37
    .line 398
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    #@39
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractorCallback;->asBinder()Landroid/os/IBinder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@40
    .line 399
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mExtras:Landroid/os/Bundle;

    #@42
    if-eqz v0, :cond_0

    #@44
    .line 400
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@47
    const-string/jumbo v0, "mExtras="

    #@4a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 401
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mExtras:Landroid/os/Bundle;

    #@4f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@52
    .line 391
    :cond_0
    return-void
.end method

.method finishRequest()V
    .locals 5

    #@0
    .prologue
    .line 351
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/service/voice/VoiceInteractionSession;

    #@8
    .line 352
    .local v1, "session":Landroid/service/voice/VoiceInteractionSession;
    if-nez v1, :cond_0

    #@a
    .line 353
    new-instance v2, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v3, "VoiceInteractionSession has been destroyed"

    #@f
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 355
    :cond_0
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@15
    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->removeRequest(Landroid/os/IBinder;)Landroid/service/voice/VoiceInteractionSession$Request;

    #@1c
    move-result-object v0

    #@1d
    .line 356
    .local v0, "req":Landroid/service/voice/VoiceInteractionSession$Request;
    if-nez v0, :cond_1

    #@1f
    .line 357
    new-instance v2, Ljava/lang/IllegalStateException;

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "Request not active: "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@38
    throw v2

    #@39
    .line 358
    :cond_1
    if-eq v0, p0, :cond_2

    #@3b
    .line 359
    new-instance v2, Ljava/lang/IllegalStateException;

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v4, "Current active request "

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    .line 360
    const-string/jumbo v4, " not same as calling request "

    #@50
    .line 359
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v2

    #@60
    .line 350
    :cond_2
    return-void
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCallingUid()I
    .locals 1

    #@0
    .prologue
    .line 317
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingUid:I

    #@2
    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public isActive()Z
    .locals 2

    #@0
    .prologue
    .line 343
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/service/voice/VoiceInteractionSession;

    #@8
    .line 344
    .local v0, "session":Landroid/service/voice/VoiceInteractionSession;
    if-nez v0, :cond_0

    #@a
    .line 345
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 347
    :cond_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@e
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionSession;->isRequestActive(Landroid/os/IBinder;)Z

    #@15
    move-result v1

    #@16
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 380
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@a
    .line 381
    const-string/jumbo v1, " "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 382
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@12
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    .line 383
    const-string/jumbo v1, " pkg="

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 384
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingPackage:Ljava/lang/String;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 385
    const-string/jumbo v1, " uid="

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 386
    iget v1, p0, Landroid/service/voice/VoiceInteractionSession$Request;->mCallingUid:I

    #@2c
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    #@2f
    .line 387
    const/16 v1, 0x7d

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    return-object v1
.end method
