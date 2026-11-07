.class public abstract Landroid/gesture/GestureLibrary;
.super Ljava/lang/Object;
.source "GestureLibrary.java"


# instance fields
.field protected final whitelist mStore:Landroid/gesture/GestureStore;


# direct methods
.method protected constructor whitelist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/gesture/GestureStore;

    invoke-direct {v0}, Landroid/gesture/GestureStore;-><init>()V

    iput-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    .line 28
    return-void
.end method


# virtual methods
.method public whitelist addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .registers 4
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "gesture"    # Landroid/gesture/Gesture;

    .line 68
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {v0, p1, p2}, Landroid/gesture/GestureStore;->addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    .line 69
    return-void
.end method

.method public whitelist getGestureEntries()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {v0}, Landroid/gesture/GestureStore;->getGestureEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGestures(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Gesture;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {v0, p1}, Landroid/gesture/GestureStore;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getLearner()Landroid/gesture/Learner;
    .registers 2

    .line 40
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {v0}, Landroid/gesture/GestureStore;->getLearner()Landroid/gesture/Learner;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOrientationStyle()I
    .registers 2

    .line 48
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {v0}, Landroid/gesture/GestureStore;->getOrientationStyle()I

    move-result v0

    return v0
.end method

.method public whitelist getSequenceType()I
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {v0}, Landroid/gesture/GestureStore;->getSequenceType()I

    move-result v0

    return v0
.end method

.method public whitelist isReadOnly()Z
    .registers 2

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist load()Z
.end method

.method public whitelist recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "gesture"    # Landroid/gesture/Gesture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/gesture/Gesture;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {v0, p1}, Landroid/gesture/GestureStore;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist removeEntry(Ljava/lang/String;)V
    .registers 3
    .param p1, "entryName"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {v0, p1}, Landroid/gesture/GestureStore;->removeEntry(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public whitelist removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V
    .registers 4
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "gesture"    # Landroid/gesture/Gesture;

    .line 72
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {v0, p1, p2}, Landroid/gesture/GestureStore;->removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    .line 73
    return-void
.end method

.method public abstract whitelist save()Z
.end method

.method public whitelist setOrientationStyle(I)V
    .registers 3
    .param p1, "style"    # I

    .line 44
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {v0, p1}, Landroid/gesture/GestureStore;->setOrientationStyle(I)V

    .line 45
    return-void
.end method

.method public whitelist setSequenceType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 52
    iget-object v0, p0, Landroid/gesture/GestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {v0, p1}, Landroid/gesture/GestureStore;->setSequenceType(I)V

    .line 53
    return-void
.end method
