.class public interface abstract Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;
.super Ljava/lang/Object;
.source "CollectionsAccess.java"


# virtual methods
.method public abstract blacklist getFloatValue(II)F
.end method

.method public abstract blacklist getFloats(I)[F
.end method

.method public abstract blacklist getId(II)I
.end method

.method public blacklist getIntValue(II)I
    .registers 4
    .param p1, "listId"    # I
    .param p2, "index"    # I

    .line 69
    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;->getFloatValue(II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public abstract blacklist getListLength(I)I
.end method
