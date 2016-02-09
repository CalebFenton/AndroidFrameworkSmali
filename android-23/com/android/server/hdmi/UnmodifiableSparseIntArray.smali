.class final Lcom/android/server/hdmi/UnmodifiableSparseIntArray;
.super Ljava/lang/Object;
.source "UnmodifiableSparseIntArray.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImmutableSparseIntArray"


# instance fields
.field private final mArray:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseIntArray;)V
    .locals 0
    .param p1, "array"    # Landroid/util/SparseIntArray;

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    iput-object p1, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    #@5
    .line 29
    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 1
    .param p1, "key"    # I

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public get(II)I
    .locals 1
    .param p1, "key"    # I
    .param p2, "valueIfKeyNotFound"    # I

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public indexOfValue(I)I
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

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
    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

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
    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

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
    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public valueAt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method
