.class final Landroid/view/contentcapture/ChildContentCaptureSession;
.super Landroid/view/contentcapture/ContentCaptureSession;
.source "ChildContentCaptureSession.java"


# instance fields
.field private final blacklist mParent:Landroid/view/contentcapture/ContentCaptureSession;


# direct methods
.method protected constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/contentcapture/ContentCaptureContext;)V
    .registers 3
    .param p1, "parent"    # Landroid/view/contentcapture/ContentCaptureSession;
    .param p2, "clientContext"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 44
    invoke-direct {p0, p2}, Landroid/view/contentcapture/ContentCaptureSession;-><init>(Landroid/view/contentcapture/ContentCaptureContext;)V

    .line 45
    iput-object p1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    .line 46
    return-void
.end method


# virtual methods
.method blacklist flush(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 78
    iget-object v0, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->flush(I)V

    .line 79
    return-void
.end method

.method blacklist getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    return-object v0
.end method

.method blacklist internalNotifyChildSessionFinished(II)V
    .registers 4
    .param p1, "parentSessionId"    # I
    .param p2, "childSessionId"    # I

    .line 100
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyChildSessionFinished(II)V

    .line 101
    return-void
.end method

.method blacklist internalNotifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V
    .registers 5
    .param p1, "parentSessionId"    # I
    .param p2, "childSessionId"    # I
    .param p3, "clientContext"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 94
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V

    .line 96
    return-void
.end method

.method blacklist internalNotifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "context"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 105
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V

    .line 106
    return-void
.end method

.method blacklist internalNotifySessionFlushEvent(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 146
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionFlushEvent(I)V

    .line 147
    return-void
.end method

.method blacklist internalNotifySessionPaused()V
    .registers 2

    .line 141
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionPaused()V

    .line 142
    return-void
.end method

.method blacklist internalNotifySessionResumed()V
    .registers 2

    .line 136
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionResumed()V

    .line 137
    return-void
.end method

.method blacklist internalNotifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "node"    # Landroid/view/contentcapture/ViewNode$ViewStructureImpl;

    .line 110
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    .line 111
    return-void
.end method

.method blacklist internalNotifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;

    .line 115
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V

    .line 116
    return-void
.end method

.method blacklist internalNotifyViewInsetsChanged(ILandroid/graphics/Insets;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "viewInsets"    # Landroid/graphics/Insets;

    .line 126
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewInsetsChanged(ILandroid/graphics/Insets;)V

    .line 127
    return-void
.end method

.method blacklist internalNotifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "text"    # Ljava/lang/CharSequence;

    .line 121
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method public blacklist internalNotifyViewTreeEvent(IZ)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "started"    # Z

    .line 131
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(IZ)V

    .line 132
    return-void
.end method

.method blacklist isContentCaptureEnabled()Z
    .registers 2

    .line 151
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method blacklist isDisabled()Z
    .registers 2

    .line 61
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->isDisabled()Z

    move-result v0

    return v0
.end method

.method blacklist newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
    .registers 5
    .param p1, "clientContext"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 71
    new-instance v0, Landroid/view/contentcapture/ChildContentCaptureSession;

    invoke-direct {v0, p0, p1}, Landroid/view/contentcapture/ChildContentCaptureSession;-><init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/contentcapture/ContentCaptureContext;)V

    .line 72
    .local v0, "child":Landroid/view/contentcapture/ContentCaptureSession;
    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    iget v2, v0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v1, v2, p1}, Landroid/view/contentcapture/ChildContentCaptureSession;->internalNotifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V

    .line 73
    return-object v0
.end method

.method public blacklist notifyContentCaptureEvents(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 162
    .local p1, "contentCaptureEvents":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->notifyContentCaptureEvents(Landroid/util/SparseArray;)V

    .line 163
    return-void
.end method

.method public blacklist notifyWindowBoundsChanged(ILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 156
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->notifyWindowBoundsChanged(ILandroid/graphics/Rect;)V

    .line 157
    return-void
.end method

.method blacklist onDestroy()V
    .registers 3

    .line 88
    iget-object v0, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    iget v0, v0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, v1}, Landroid/view/contentcapture/ChildContentCaptureSession;->internalNotifyChildSessionFinished(II)V

    .line 89
    return-void
.end method

.method blacklist setDisabled(Z)Z
    .registers 3
    .param p1, "disabled"    # Z

    .line 66
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->setDisabled(Z)Z

    move-result v0

    return v0
.end method

.method blacklist start(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "shareableActivityToken"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "flags"    # I

    .line 56
    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/contentcapture/ContentCaptureSession;->start(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 57
    return-void
.end method

.method public blacklist updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
    .registers 3
    .param p1, "context"    # Landroid/view/contentcapture/ContentCaptureContext;

    .line 83
    iget v0, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/ChildContentCaptureSession;->internalNotifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V

    .line 84
    return-void
.end method
