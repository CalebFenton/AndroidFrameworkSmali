.class Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "MainContentCaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/MainContentCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionStateReceiver"
.end annotation


# instance fields
.field private final blacklist mMainSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/contentcapture/MainContentCaptureSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/view/contentcapture/MainContentCaptureSession;)V
    .registers 3
    .param p1, "session"    # Landroid/view/contentcapture/MainContentCaptureSession;

    .line 194
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    .line 195
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;->mMainSession:Ljava/lang/ref/WeakReference;

    .line 196
    return-void
.end method

.method static synthetic blacklist lambda$send$0(Landroid/view/contentcapture/MainContentCaptureSession;)V
    .registers 2
    .param p0, "mainSession"    # Landroid/view/contentcapture/MainContentCaptureSession;

    .line 217
    const/16 v0, 0x104

    invoke-virtual {p0, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->resetSession(I)V

    return-void
.end method

.method static synthetic blacklist lambda$send$1(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/os/IBinder;)V
    .registers 3
    .param p0, "mainSession"    # Landroid/view/contentcapture/MainContentCaptureSession;
    .param p1, "resultCode"    # I
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 225
    invoke-virtual {p0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession;->onSessionStarted(ILandroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public blacklist send(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 200
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver;->mMainSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/MainContentCaptureSession;

    .line 201
    .local v0, "mainSession":Landroid/view/contentcapture/MainContentCaptureSession;
    if-nez v0, :cond_15

    .line 202
    invoke-static {}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "received result after mina session released"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 206
    :cond_15
    if-eqz p2, :cond_48

    .line 208
    const-string v1, "enabled"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 209
    .local v1, "hasEnabled":Z
    if-eqz v1, :cond_2d

    .line 210
    const/4 v2, 0x2

    if-ne p1, v2, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    .line 211
    .local v2, "disabled":Z
    :goto_25
    invoke-static {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$fgetmDisabled(Landroid/view/contentcapture/MainContentCaptureSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 212
    return-void

    .line 214
    .end local v2    # "disabled":Z
    :cond_2d
    const-string v2, "binder"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 215
    .local v2, "binder":Landroid/os/IBinder;
    if-nez v2, :cond_47

    .line 216
    invoke-static {}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No binder extra result"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v3, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;)V

    invoke-static {v0, v3}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$mrunOnContentCaptureThread(Landroid/view/contentcapture/MainContentCaptureSession;Ljava/lang/Runnable;)V

    .line 219
    return-void

    .line 221
    .end local v1    # "hasEnabled":Z
    :cond_47
    goto :goto_49

    .line 222
    .end local v2    # "binder":Landroid/os/IBinder;
    :cond_48
    const/4 v2, 0x0

    .line 224
    .restart local v2    # "binder":Landroid/os/IBinder;
    :goto_49
    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1, v2}, Landroid/view/contentcapture/MainContentCaptureSession$SessionStateReceiver$$ExternalSyntheticLambda1;-><init>(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/os/IBinder;)V

    invoke-static {v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->-$$Nest$mrunOnContentCaptureThread(Landroid/view/contentcapture/MainContentCaptureSession;Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method
