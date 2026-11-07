.class Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate$1;
.super Ljava/lang/Object;
.source "MatrixRotate.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Maker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist create(FFF)Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3;
    .registers 5
    .param p1, "v1"    # F
    .param p2, "v2"    # F
    .param p3, "v3"    # F

    .line 47
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;-><init>(FFF)V

    return-object v0
.end method
