.class Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;
.super Lcom/android/ims/internal/IImsExternalCallStateListener$Stub;
.source "ImsMultiEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsMultiEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsExternalCallStateListenerProxy"
.end annotation


# instance fields
.field private mListener:Lcom/android/ims/ImsExternalCallStateListener;

.field final synthetic this$0:Lcom/android/ims/ImsMultiEndpoint;


# direct methods
.method public constructor <init>(Lcom/android/ims/ImsMultiEndpoint;Lcom/android/ims/ImsExternalCallStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/ImsMultiEndpoint;
    .param p2, "listener"    # Lcom/android/ims/ImsExternalCallStateListener;

    #@0
    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;->this$0:Lcom/android/ims/ImsMultiEndpoint;

    #@2
    invoke-direct {p0}, Lcom/android/ims/internal/IImsExternalCallStateListener$Stub;-><init>()V

    #@5
    .line 41
    iput-object p2, p0, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;->mListener:Lcom/android/ims/ImsExternalCallStateListener;

    #@7
    .line 40
    return-void
.end method


# virtual methods
.method public onImsExternalCallStateUpdate(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    .local p1, "externalCallState":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsExternalCallState;>;"
    const-string/jumbo v0, "ImsMultiEndpoint"

    #@3
    const-string/jumbo v1, "onImsExternalCallStateUpdate"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 54
    iget-object v0, p0, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;->mListener:Lcom/android/ims/ImsExternalCallStateListener;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 55
    iget-object v0, p0, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;->mListener:Lcom/android/ims/ImsExternalCallStateListener;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsExternalCallStateListener;->onImsExternalCallStateUpdate(Ljava/util/List;)V

    #@12
    .line 51
    :cond_0
    return-void
.end method
