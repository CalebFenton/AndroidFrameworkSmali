.class Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;
.super Lcom/android/ims/internal/IImsEcbmListener$Stub;
.source "ImsEcbm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsEcbm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImsEcbmListenerProxy"
.end annotation


# instance fields
.field private final blacklist mListener:Lcom/android/ims/ImsEcbmStateListener;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/ImsEcbmStateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/ims/ImsEcbmStateListener;

    .line 82
    invoke-direct {p0}, Lcom/android/ims/internal/IImsEcbmListener$Stub;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    .line 84
    return-void
.end method


# virtual methods
.method public blacklist enteredECBM()V
    .registers 3

    .line 88
    const-string v0, "ImsEcbm"

    const-string v1, "enteredECBM ::"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    if-eqz v0, :cond_10

    .line 91
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    invoke-virtual {v0}, Lcom/android/ims/ImsEcbmStateListener;->onECBMEntered()V

    .line 93
    :cond_10
    return-void
.end method

.method public blacklist exitedECBM()V
    .registers 3

    .line 97
    const-string v0, "ImsEcbm"

    const-string v1, "exitedECBM ::"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    if-eqz v0, :cond_10

    .line 100
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    invoke-virtual {v0}, Lcom/android/ims/ImsEcbmStateListener;->onECBMExited()V

    .line 102
    :cond_10
    return-void
.end method
