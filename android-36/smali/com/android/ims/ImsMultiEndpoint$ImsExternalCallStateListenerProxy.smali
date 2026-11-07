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
.field private blacklist mListener:Lcom/android/ims/ImsExternalCallStateListener;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/ImsMultiEndpoint;Lcom/android/ims/ImsExternalCallStateListener;)V
    .registers 3
    .param p2, "listener"    # Lcom/android/ims/ImsExternalCallStateListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/android/ims/internal/IImsExternalCallStateListener$Stub;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;->mListener:Lcom/android/ims/ImsExternalCallStateListener;

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist onImsExternalCallStateUpdate(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p1, "externalCallState":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    const-string v0, "ImsMultiEndpoint"

    const-string v1, "onImsExternalCallStateUpdate"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;->mListener:Lcom/android/ims/ImsExternalCallStateListener;

    if-eqz v0, :cond_10

    .line 57
    iget-object v0, p0, Lcom/android/ims/ImsMultiEndpoint$ImsExternalCallStateListenerProxy;->mListener:Lcom/android/ims/ImsExternalCallStateListener;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsExternalCallStateListener;->onImsExternalCallStateUpdate(Ljava/util/List;)V

    .line 59
    :cond_10
    return-void
.end method
