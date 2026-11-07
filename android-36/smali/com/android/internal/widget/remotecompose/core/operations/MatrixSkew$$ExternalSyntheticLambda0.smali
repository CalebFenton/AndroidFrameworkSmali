.class public final synthetic Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Maker;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist create(FF)Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;
    .registers 4

    .line 0
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;-><init>(FF)V

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2;

    return-object v0
.end method
