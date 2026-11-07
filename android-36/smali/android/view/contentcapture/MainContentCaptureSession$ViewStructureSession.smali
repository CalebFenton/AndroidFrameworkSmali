.class final Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;
.super Ljava/lang/Object;
.source "MainContentCaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/MainContentCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewStructureSession"
.end annotation


# instance fields
.field private blacklist mSession:Landroid/view/contentcapture/ContentCaptureSession;

.field private blacklist mStructure:Landroid/view/ViewStructure;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist notifyViewAppeared()V
    .registers 3

    .line 1192
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;->mSession:Landroid/view/contentcapture/ContentCaptureSession;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;->mStructure:Landroid/view/ViewStructure;

    if-eqz v0, :cond_f

    .line 1193
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;->mSession:Landroid/view/contentcapture/ContentCaptureSession;

    iget-object v1, p0, Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;->mStructure:Landroid/view/ViewStructure;

    invoke-virtual {v0, v1}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewAppeared(Landroid/view/ViewStructure;)V

    .line 1195
    :cond_f
    return-void
.end method

.method blacklist setSession(Landroid/view/contentcapture/ContentCaptureSession;)V
    .registers 2
    .param p1, "session"    # Landroid/view/contentcapture/ContentCaptureSession;

    .line 1180
    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;->mSession:Landroid/view/contentcapture/ContentCaptureSession;

    .line 1181
    return-void
.end method

.method blacklist setStructure(Landroid/view/ViewStructure;)V
    .registers 2
    .param p1, "struct"    # Landroid/view/ViewStructure;

    .line 1184
    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSession$ViewStructureSession;->mStructure:Landroid/view/ViewStructure;

    .line 1185
    return-void
.end method
