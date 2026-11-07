.class Landroid/service/voice/VoiceInteractionSession$3;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/voice/VoiceInteractionSession;


# direct methods
.method constructor blacklist <init>(Landroid/service/voice/VoiceInteractionSession;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/voice/VoiceInteractionSession;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1087
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 1089
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionSession;->onComputeInsets(Landroid/service/voice/VoiceInteractionSession$Insets;)V

    .line 1090
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1091
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1092
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1093
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    iget v0, v0, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableInsets:I

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 1094
    return-void
.end method
