.class public abstract Ljava/util/concurrent/RecursiveAction;
.super Ljava/util/concurrent/ForkJoinTask;
.source "RecursiveAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x489d6925990753ceL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 171
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract whitelist test-api compute()V
.end method

.method protected final whitelist test-api exec()Z
    .registers 2

    .line 194
    invoke-virtual {p0}, Ljava/util/concurrent/RecursiveAction;->compute()V

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2

    .line 165
    invoke-virtual {p0}, Ljava/util/concurrent/RecursiveAction;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getRawResult()Ljava/lang/Void;
    .registers 2

    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic whitelist test-api setRawResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 165
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/RecursiveAction;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method protected final whitelist test-api setRawResult(Ljava/lang/Void;)V
    .registers 2
    .param p1, "mustBeNull"    # Ljava/lang/Void;

    .line 188
    return-void
.end method
