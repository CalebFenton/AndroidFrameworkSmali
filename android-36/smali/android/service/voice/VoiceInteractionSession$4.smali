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
.field final synthetic blacklist this$0:Landroid/service/voice/VoiceInteractionSession;

.field final synthetic blacklist val$showCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/VoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/service/voice/VoiceInteractionSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1179
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$4;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession$4;->val$showCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .registers 4

    .line 1182
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$4;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1184
    :try_start_b
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$4;->val$showCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onShown()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    .line 1187
    goto :goto_19

    .line 1185
    :catch_11
    move-exception v0

    .line 1186
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VoiceInteractionSession"

    const-string v2, "Error calling onShown"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_19
    const/4 v0, 0x1

    return v0
.end method
