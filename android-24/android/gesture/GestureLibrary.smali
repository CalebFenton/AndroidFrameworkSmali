.class public abstract Landroid/gesture/GestureLibrary;
.super Ljava/lang/Object;
.source "GestureLibrary.java"


# instance fields
.field protected final mStore:Landroid/gesture/GestureStore;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    new-instance v0, Landroid/gesture/GestureStore;

    #@5
    invoke-direct {v0}, Landroid/gesture/GestureStore;-><init>()V

    #@8
    iput-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@a
    .line 26
    return-void
.end method


# virtual methods
.method public addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .locals 1
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "gesture"    # Landroid/gesture/Gesture;

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/gesture/GestureStore;->addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    #@5
    .line 67
    return-void
.end method

.method public getGestureEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@2
    invoke-virtual {v0}, Landroid/gesture/GestureStore;->getGestureEntries()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getGestures(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Gesture;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@2
    invoke-virtual {v0, p1}, Landroid/gesture/GestureStore;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLearner()Landroid/gesture/Learner;
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@2
    invoke-virtual {v0}, Landroid/gesture/GestureStore;->getLearner()Landroid/gesture/Learner;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOrientationStyle()I
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@2
    invoke-virtual {v0}, Landroid/gesture/GestureStore;->getOrientationStyle()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSequenceType()I
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@2
    invoke-virtual {v0}, Landroid/gesture/GestureStore;->getSequenceType()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 35
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract load()Z
.end method

.method public recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "gesture"    # Landroid/gesture/Gesture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/gesture/Gesture;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@2
    invoke-virtual {v0, p1}, Landroid/gesture/GestureStore;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public removeEntry(Ljava/lang/String;)V
    .locals 1
    .param p1, "entryName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@2
    invoke-virtual {v0, p1}, Landroid/gesture/GestureStore;->removeEntry(Ljava/lang/String;)V

    #@5
    .line 75
    return-void
.end method

.method public removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .locals 1
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "gesture"    # Landroid/gesture/Gesture;

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/gesture/GestureStore;->removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    #@5
    .line 71
    return-void
.end method

.method public abstract save()Z
.end method

.method public setOrientationStyle(I)V
    .locals 1
    .param p1, "style"    # I

    #@0
    .prologue
    .line 44
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@2
    invoke-virtual {v0, p1}, Landroid/gesture/GestureStore;->setOrientationStyle(I)V

    #@5
    .line 43
    return-void
.end method

.method public setSequenceType(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@2
    invoke-virtual {v0, p1}, Landroid/gesture/GestureStore;->setSequenceType(I)V

    #@5
    .line 51
    return-void
.end method
