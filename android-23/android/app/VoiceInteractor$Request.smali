.class public abstract Landroid/app/VoiceInteractor$Request;
.super Ljava/lang/Object;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Request"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field mName:Ljava/lang/String;

.field mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    #@0
    .prologue
    .line 232
    iget-object v1, p0, Landroid/app/VoiceInteractor$Request;->mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 233
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Request "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, " is no longer active"

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 236
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/VoiceInteractor$Request;->mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@27
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 231
    :goto_0
    return-void

    #@2b
    .line 237
    :catch_0
    move-exception v0

    #@2c
    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VoiceInteractor"

    #@2f
    const-string/jumbo v2, "Voice interactor has died"

    #@32
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    goto :goto_0
.end method

.method clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 303
    iput-object v0, p0, Landroid/app/VoiceInteractor$Request;->mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@3
    .line 304
    iput-object v0, p0, Landroid/app/VoiceInteractor$Request;->mContext:Landroid/content/Context;

    #@5
    .line 305
    iput-object v0, p0, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    #@7
    .line 306
    iput-object v0, p0, Landroid/app/VoiceInteractor$Request;->mName:Ljava/lang/String;

    #@9
    .line 302
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 292
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mRequestInterface="

    #@6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 293
    iget-object v0, p0, Landroid/app/VoiceInteractor$Request;->mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@b
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@12
    .line 294
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    const-string/jumbo v0, "mActivity="

    #@18
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b
    iget-object v0, p0, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    #@1d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@20
    .line 295
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    const-string/jumbo v0, "mName="

    #@26
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@29
    iget-object v0, p0, Landroid/app/VoiceInteractor$Request;->mName:Ljava/lang/String;

    #@2b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e
    .line 291
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/app/VoiceInteractor$Request;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Landroid/app/VoiceInteractor$Request;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getRequestTypeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 299
    const-string/jumbo v0, "Request"

    #@3
    return-object v0
.end method

.method public onAttached(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 270
    return-void
.end method

.method public onCancel()V
    .locals 0

    #@0
    .prologue
    .line 263
    return-void
.end method

.method public onDetached()V
    .locals 0

    #@0
    .prologue
    .line 276
    return-void
.end method

.method abstract submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 282
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@a
    .line 283
    const-string/jumbo v1, " "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 284
    invoke-virtual {p0}, Landroid/app/VoiceInteractor$Request;->getRequestTypeName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 285
    const-string/jumbo v1, " name="

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 286
    iget-object v1, p0, Landroid/app/VoiceInteractor$Request;->mName:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 287
    const/16 v1, 0x7d

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method
