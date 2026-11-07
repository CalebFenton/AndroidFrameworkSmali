.class Landroid/inputmethodservice/InputMethodService$2;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4714
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dumpToProto(Landroid/util/proto/ProtoOutputStream;[B)V
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "icProto"    # [B

    .line 4720
    const-wide v0, 0x10b00000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4721
    .local v0, "token":J
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/inputmethodservice/SoftInputWindow;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4722
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mViewsCreated:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4723
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mDecorViewVisible:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4724
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mDecorViewWasVisible:Z

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4725
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4726
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4727
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4728
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4729
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4730
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    const-wide v3, 0x1080000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4731
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    const-wide v3, 0x1080000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4732
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    const-wide v3, 0x1080000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4733
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_bd

    .line 4734
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-wide v3, 0x10b0000000dL

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/inputmethod/EditorInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4736
    :cond_bd
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    const-wide v3, 0x1080000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4737
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    const-wide v3, 0x1080000000fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4738
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    const-wide v3, 0x10500000012L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4739
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    const-wide v3, 0x10500000013L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4740
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    const-wide v3, 0x10800000014L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4741
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    const-wide v3, 0x10800000015L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4742
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    const-wide v3, 0x10800000016L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4743
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    const-wide v3, 0x10500000017L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4744
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v2, v2, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    const-wide v3, 0x10800000018L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4745
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    const-wide v3, 0x10500000019L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4746
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    const-wide v3, 0x10b0000001aL

    invoke-static {v2, p1, v3, v4}, Landroid/inputmethodservice/InputMethodService$Insets;->-$$Nest$mdumpDebug(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/util/proto/ProtoOutputStream;J)V

    .line 4747
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$2;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->-$$Nest$fgetmSettingsObserver(Landroid/inputmethodservice/InputMethodService;)Landroid/inputmethodservice/InputMethodService$SettingsObserver;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x1090000001bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4748
    if-eqz p2, :cond_15d

    .line 4749
    const-wide v2, 0x10b0000001cL

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 4751
    :cond_15d
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4752
    return-void
.end method
