.class public Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;
.super Ljava/lang/Object;
.source "RemoteComposeDocument.java"


# instance fields
.field blacklist mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .registers 3
    .param p1, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 37
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 31
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 32
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRemoteComposeState()Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->fromInputStream(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    move-result-object v0

    .line 33
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->initFromBuffer(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist canBeDisplayed(IIJ)Z
    .registers 6
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .param p3, "capabilities"    # J

    .line 97
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->canBeDisplayed(IIJ)Z

    move-result v0

    return v0
.end method

.method public blacklist getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .registers 3
    .param p1, "id"    # I

    .line 131
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    return-object v0
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getNamedColors()[Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedColors()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedVariables(I)[Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStats()[Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    if-nez v0, :cond_8

    .line 140
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 142
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getStats()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getWidth()I

    move-result v0

    return v0
.end method

.method public blacklist hasSensorListeners([I)I
    .registers 3
    .param p1, "ids"    # [I

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 53
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 54
    return-void
.end method

.method public blacklist invalidate()V
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->invalidateMeasure()V

    .line 136
    return-void
.end method

.method public blacklist isUpdateDoc()Z
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->isUpdateDoc()Z

    move-result v0

    return v0
.end method

.method public blacklist needsRepaint()I
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    move-result v0

    return v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "theme"    # I

    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V

    .line 78
    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .registers 2
    .param p1, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 45
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 46
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Document{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
