.class public Landroid/media/internal/guava_common/util/concurrent/ExecutionError;
.super Ljava/lang/Error;
.source "ExecutionError.java"


# static fields
.field private static final whitelist serialVersionUID:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Error;)V
    .registers 2
    .param p1    # Ljava/lang/Error;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    return-void
.end method
