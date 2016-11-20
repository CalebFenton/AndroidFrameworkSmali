.class public Lcom/android/ims/ImsExternalCallStateListener;
.super Ljava/lang/Object;
.source "ImsExternalCallStateListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onImsExternalCallStateUpdate(Ljava/util/List;)V
    .locals 0
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
    .line 33
    .local p1, "externalCallState":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/ImsExternalCallState;>;"
    return-void
.end method
