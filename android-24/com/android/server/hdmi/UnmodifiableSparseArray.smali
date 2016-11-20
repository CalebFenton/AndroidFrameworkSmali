.class final Lcom/android/server/hdmi/UnmodifiableSparseArray;
.super Ljava/lang/Object;
.source "UnmodifiableSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImmutableSparseArray"


# instance fields
.field private final mArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 29
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    .local p1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    iput-object p1, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    #@5
    .line 29
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 38
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 42
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 54
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 46
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 34
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 59
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 50
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
