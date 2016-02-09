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
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/voice/VoiceInteractionSession;

    #@0
    .prologue
    .line 914
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    #@0
    .prologue
    .line 916
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@4
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    #@6
    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionSession;->onComputeInsets(Landroid/service/voice/VoiceInteractionSession$Insets;)V

    #@9
    .line 917
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    #@b
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@d
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    #@f
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    #@11
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@14
    .line 918
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    #@16
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@18
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    #@1a
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    #@1c
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1f
    .line 919
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    #@21
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@23
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    #@25
    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableRegion:Landroid/graphics/Region;

    #@27
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@2a
    .line 920
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$3;->this$0:Landroid/service/voice/VoiceInteractionSession;

    #@2c
    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    #@2e
    iget v0, v0, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableInsets:I

    #@30
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    #@33
    .line 915
    return-void
.end method
