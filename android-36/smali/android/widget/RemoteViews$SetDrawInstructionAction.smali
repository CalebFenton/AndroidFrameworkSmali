.class Landroid/widget/RemoteViews$SetDrawInstructionAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDrawInstructionAction"
.end annotation


# instance fields
.field private final blacklist mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public static synthetic blacklist $r8$lambda$pOE8o2FvmfqExVPt5TJgnSJQGNA(Landroid/widget/RemoteViews$SetDrawInstructionAction;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$SetDrawInstructionAction;->lambda$apply$1(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;ILjava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 4
    .param p2, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 5902
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5903
    invoke-static {}, Landroid/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5904
    invoke-static {p2}, Landroid/widget/RemoteViews$DrawInstructions;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews$DrawInstructions;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    goto :goto_15

    .line 5906
    :cond_13
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    .line 5908
    :goto_15
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$DrawInstructions;)V
    .registers 3
    .param p2, "instructions"    # Landroid/widget/RemoteViews$DrawInstructions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 5898
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5899
    iput-object p2, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    .line 5900
    return-void
.end method

.method static synthetic blacklist lambda$apply$0(ILjava/lang/String;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/RemoteViews$Action;)V
    .registers 9
    .param p0, "viewId"    # I
    .param p1, "metadata"    # Ljava/lang/String;
    .param p2, "player"    # Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;
    .param p4, "action"    # Landroid/widget/RemoteViews$Action;

    .line 5930
    iget v0, p4, Landroid/widget/RemoteViews$Action;->mViewId:I

    if-ne p0, v0, :cond_2a

    instance-of v0, p4, Landroid/widget/RemoteViews$SetOnClickResponse;

    if-eqz v0, :cond_2a

    .line 5931
    move-object v0, p4

    check-cast v0, Landroid/widget/RemoteViews$SetOnClickResponse;

    .line 5932
    .local v0, "setOnClickResponse":Landroid/widget/RemoteViews$SetOnClickResponse;
    iget-object v1, v0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    .line 5933
    .local v1, "response":Landroid/widget/RemoteViews$RemoteResponse;
    invoke-static {v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 5934
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v2}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fputmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;Landroid/content/Intent;)V

    .line 5936
    :cond_1b
    invoke-static {v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "remotecompose_metadata"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5938
    iget-object v2, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-static {v1, p2, v2}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 5940
    .end local v0    # "setOnClickResponse":Landroid/widget/RemoteViews$SetOnClickResponse;
    .end local v1    # "response":Landroid/widget/RemoteViews$RemoteResponse;
    :cond_2a
    return-void
.end method

.method private synthetic blacklist lambda$apply$1(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;ILjava/lang/String;)V
    .registers 7
    .param p1, "player"    # Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
    .param p2, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;
    .param p3, "viewId"    # I
    .param p4, "metadata"    # Ljava/lang/String;

    .line 5929
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5941
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "params"    # Landroid/widget/RemoteViews$ActionApplyParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 5920
    invoke-static {}, Landroid/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    if-eqz v0, :cond_4e

    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    if-eqz v0, :cond_4e

    .line 5921
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    .line 5922
    .local v0, "player":Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
    iget-object v1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    iget-object v1, v1, Landroid/widget/RemoteViews$DrawInstructions;->mInstructions:Ljava/util/List;

    .line 5923
    .local v1, "bytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 5924
    return-void

    .line 5926
    :cond_1c
    :try_start_1c
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_28} :catch_46

    .line 5927
    .local v2, "is":Ljava/io/ByteArrayInputStream;
    :try_start_28
    new-instance v3, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-direct {v3, v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    .line 5928
    new-instance v3, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p3}, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$SetDrawInstructionAction;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addIdActionListener(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;)V
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_3c

    .line 5942
    :try_start_38
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_46

    .line 5944
    .end local v2    # "is":Ljava/io/ByteArrayInputStream;
    goto :goto_4e

    .line 5926
    .restart local v2    # "is":Ljava/io/ByteArrayInputStream;
    :catchall_3c
    move-exception v3

    :try_start_3d
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v4

    :try_start_42
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "player":Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
    .end local v1    # "bytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local p0    # "this":Landroid/widget/RemoteViews$SetDrawInstructionAction;
    .end local p1    # "root":Landroid/view/View;
    .end local p2    # "rootParent":Landroid/view/ViewGroup;
    .end local p3    # "params":Landroid/widget/RemoteViews$ActionApplyParams;
    :goto_45
    throw v3
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_46

    .line 5942
    .end local v2    # "is":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "player":Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
    .restart local v1    # "bytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local p0    # "this":Landroid/widget/RemoteViews$SetDrawInstructionAction;
    .restart local p1    # "root":Landroid/view/View;
    .restart local p2    # "rootParent":Landroid/view/ViewGroup;
    .restart local p3    # "params":Landroid/widget/RemoteViews$ActionApplyParams;
    :catch_46
    move-exception v2

    .line 5943
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "RemoteViews"

    const-string v4, "Failed to render draw instructions"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5946
    .end local v0    # "player":Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
    .end local v1    # "bytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4e
    :goto_4e
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 5955
    invoke-static {}, Landroid/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v0

    return v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 5950
    const/16 v0, 0x23

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 5912
    invoke-static {}, Landroid/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5913
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    invoke-static {v0, p1, p2}, Landroid/widget/RemoteViews$DrawInstructions;->-$$Nest$smwriteToParcel(Landroid/widget/RemoteViews$DrawInstructions;Landroid/os/Parcel;I)V

    .line 5915
    :cond_b
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 10
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appResources"    # Landroid/content/res/Resources;

    .line 5960
    invoke-static {}, Landroid/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 5961
    :cond_7
    const-wide v0, 0x10b00000016L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5962
    .local v0, "token":J
    iget-object v2, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    if-eqz v2, :cond_31

    .line 5963
    iget-object v2, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    iget-object v2, v2, Landroid/widget/RemoteViews$DrawInstructions;->mInstructions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 5964
    .local v3, "bytes":[B
    const-wide v4, 0x20c00000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 5965
    .end local v3    # "bytes":[B
    goto :goto_1c

    .line 5967
    :cond_31
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5968
    return-void
.end method
