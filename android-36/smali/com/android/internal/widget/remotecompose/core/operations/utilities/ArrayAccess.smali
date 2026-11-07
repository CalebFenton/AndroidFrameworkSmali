.class public interface abstract Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;
.super Ljava/lang/Object;
.source "ArrayAccess.java"


# virtual methods
.method public abstract blacklist getFloatValue(I)F
.end method

.method public abstract blacklist getFloats()[F
.end method

.method public blacklist getId(I)I
    .registers 3
    .param p1, "index"    # I

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIntValue(I)I
    .registers 3
    .param p1, "index"    # I

    .line 66
    invoke-interface {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;->getFloatValue(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public abstract blacklist getLength()I
.end method
