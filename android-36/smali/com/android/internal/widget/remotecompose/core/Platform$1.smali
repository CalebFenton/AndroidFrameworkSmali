.class Lcom/android/internal/widget/remotecompose/core/Platform$1;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/Platform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getImageHeight(Ljava/lang/Object;)I
    .registers 3
    .param p1, "image"    # Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getImageWidth(Ljava/lang/Object;)I
    .registers 3
    .param p1, "image"    # Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist imageToByteArray(Ljava/lang/Object;)[B
    .registers 3
    .param p1, "image"    # Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist isAlpha8Image(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "image"    # Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist log(Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;Ljava/lang/String;)V
    .registers 3
    .param p1, "category"    # Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;
    .param p2, "message"    # Ljava/lang/String;

    .line 131
    return-void
.end method

.method public blacklist pathToFloatArray(Ljava/lang/Object;)[F
    .registers 3
    .param p1, "path"    # Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
