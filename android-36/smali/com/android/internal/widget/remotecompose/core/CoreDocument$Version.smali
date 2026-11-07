.class Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;
.super Ljava/lang/Object;
.source "CoreDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/CoreDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Version"
.end annotation


# instance fields
.field public final blacklist major:I

.field public final blacklist minor:I

.field public final blacklist patchLevel:I


# direct methods
.method constructor blacklist <init>(III)V
    .registers 4
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patchLevel"    # I

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->major:I

    .line 651
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->minor:I

    .line 652
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->patchLevel:I

    .line 653
    return-void
.end method


# virtual methods
.method public blacklist supportsVersion(III)Z
    .registers 7
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patch"    # I

    .line 664
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->major:I

    const/4 v1, 0x0

    if-le p1, v0, :cond_6

    .line 665
    return v1

    .line 667
    :cond_6
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->major:I

    const/4 v2, 0x1

    if-ge p1, v0, :cond_c

    .line 668
    return v2

    .line 671
    :cond_c
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->minor:I

    if-le p2, v0, :cond_11

    .line 672
    return v1

    .line 674
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->minor:I

    if-ge p2, v0, :cond_16

    .line 675
    return v2

    .line 678
    :cond_16
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->patchLevel:I

    if-gt p3, v0, :cond_1b

    move v1, v2

    :cond_1b
    return v1
.end method
