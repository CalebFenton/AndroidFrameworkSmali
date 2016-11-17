.class Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;
.super Lcom/android/ims/internal/IImsEcbmListener$Stub;
.source "ImsEcbm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsEcbm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsEcbmListenerProxy"
.end annotation


# instance fields
.field private mListener:Lcom/android/ims/ImsEcbmStateListener;

.field final synthetic this$0:Lcom/android/ims/ImsEcbm;


# direct methods
.method public constructor <init>(Lcom/android/ims/ImsEcbm;Lcom/android/ims/ImsEcbmStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsEcbm;
    .param p2, "listener"    # Lcom/android/ims/ImsEcbmStateListener;

    #@0
    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->this$0:Lcom/android/ims/ImsEcbm;

    #@2
    invoke-direct {p0}, Lcom/android/ims/internal/IImsEcbmListener$Stub;-><init>()V

    #@5
    .line 88
    iput-object p2, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    #@7
    .line 87
    return-void
.end method


# virtual methods
.method public enteredECBM()V
    .locals 2

    #@0
    .prologue
    .line 93
    const-string/jumbo v0, "ImsEcbm"

    #@3
    const-string/jumbo v1, "enteredECBM ::"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 95
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 96
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    #@f
    invoke-virtual {v0}, Lcom/android/ims/ImsEcbmStateListener;->onECBMEntered()V

    #@12
    .line 92
    :cond_0
    return-void
.end method

.method public exitedECBM()V
    .locals 2

    #@0
    .prologue
    .line 102
    const-string/jumbo v0, "ImsEcbm"

    #@3
    const-string/jumbo v1, "exitedECBM ::"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 104
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 105
    iget-object v0, p0, Lcom/android/ims/ImsEcbm$ImsEcbmListenerProxy;->mListener:Lcom/android/ims/ImsEcbmStateListener;

    #@f
    invoke-virtual {v0}, Lcom/android/ims/ImsEcbmStateListener;->onECBMExited()V

    #@12
    .line 101
    :cond_0
    return-void
.end method
