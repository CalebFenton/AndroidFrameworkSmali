.class public Landroid/content/UndoOwner;
.super Ljava/lang/Object;
.source "UndoOwner.java"


# instance fields
.field mData:Ljava/lang/Object;

.field final mManager:Landroid/content/UndoManager;

.field mOpCount:I

.field mSavedIdx:I

.field mStateSeq:I

.field final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/UndoManager;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "manager"    # Landroid/content/UndoManager;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    if-nez p1, :cond_0

    #@5
    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "tag can\'t be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 39
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "manager can\'t be null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 42
    :cond_1
    iput-object p1, p0, Landroid/content/UndoOwner;->mTag:Ljava/lang/String;

    #@1b
    .line 43
    iput-object p2, p0, Landroid/content/UndoOwner;->mManager:Landroid/content/UndoManager;

    #@1d
    .line 35
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Landroid/content/UndoOwner;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "UndoOwner:[mTag="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/content/UndoOwner;->mTag:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 68
    const-string/jumbo v1, " mManager="

    #@15
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 68
    iget-object v1, p0, Landroid/content/UndoOwner;->mManager:Landroid/content/UndoManager;

    #@1b
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 69
    const-string/jumbo v1, " mData="

    #@22
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 69
    iget-object v1, p0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    #@28
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 70
    const-string/jumbo v1, " mData="

    #@2f
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 70
    iget-object v1, p0, Landroid/content/UndoOwner;->mData:Ljava/lang/Object;

    #@35
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 71
    const-string/jumbo v1, " mOpCount="

    #@3c
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 71
    iget v1, p0, Landroid/content/UndoOwner;->mOpCount:I

    #@42
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 72
    const-string/jumbo v1, " mStateSeq="

    #@49
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 72
    iget v1, p0, Landroid/content/UndoOwner;->mStateSeq:I

    #@4f
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 73
    const-string/jumbo v1, " mSavedIdx="

    #@56
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 73
    iget v1, p0, Landroid/content/UndoOwner;->mSavedIdx:I

    #@5c
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 73
    const-string/jumbo v1, "]"

    #@63
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    return-object v0
.end method
