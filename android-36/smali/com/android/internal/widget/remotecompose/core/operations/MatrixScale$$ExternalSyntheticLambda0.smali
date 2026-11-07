.class public final synthetic Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Maker;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist create(FFFF)Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;
    .registers 6

    .line 0
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;-><init>(FFFF)V

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4;

    return-object v0
.end method
