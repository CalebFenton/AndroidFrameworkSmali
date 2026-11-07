.class public interface abstract Lcom/android/internal/widget/remotecompose/core/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;,
        Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;
    }
.end annotation


# static fields
.field public static final blacklist None:Lcom/android/internal/widget/remotecompose/core/Platform;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/Platform$1;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/Platform$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/Platform;->None:Lcom/android/internal/widget/remotecompose/core/Platform;

    return-void
.end method


# virtual methods
.method public abstract blacklist getImageHeight(Ljava/lang/Object;)I
.end method

.method public abstract blacklist getImageWidth(Ljava/lang/Object;)I
.end method

.method public abstract blacklist imageToByteArray(Ljava/lang/Object;)[B
.end method

.method public abstract blacklist isAlpha8Image(Ljava/lang/Object;)Z
.end method

.method public abstract blacklist log(Lcom/android/internal/widget/remotecompose/core/Platform$LogCategory;Ljava/lang/String;)V
.end method

.method public abstract blacklist pathToFloatArray(Ljava/lang/Object;)[F
.end method
