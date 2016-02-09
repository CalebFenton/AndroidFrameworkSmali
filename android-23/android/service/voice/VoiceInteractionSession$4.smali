.class Landroid/service/voice/VoiceInteractionSession$4;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/voice/VoiceInteractionSession;->doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession;

.field final synthetic val$showCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/voice/VoiceInteractionSession;
    .param p2, "val$showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@0
    .prologue
    .line 990
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$4;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession$4;->val$showCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    #@0
    .prologue
    .line 993
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$4;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    #@4
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@b
    .line 995
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$4;->val$showCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@d
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 999
    :goto_0
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 996
    :catch_0
    move-exception v0

    #@13
    .line 997
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VoiceInteractionSession"

    #@16
    const-string/jumbo v2, "Error calling onShown"

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0
.end method
