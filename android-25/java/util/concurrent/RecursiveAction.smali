.class public abstract Ljava/util/concurrent/RecursiveAction;
.super Ljava/util/concurrent/ForkJoinTask;
.source "RecursiveAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ForkJoinTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x489d6925990753ceL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 136
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected abstract compute()V
.end method

.method protected final exec()Z
    .locals 1

    #@0
    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/util/concurrent/RecursiveAction;->compute()V

    #@3
    .line 161
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/util/concurrent/RecursiveAction;->getRawResult()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    #@0
    .prologue
    .line 149
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "mustBeNull"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 154
    check-cast p1, Ljava/lang/Void;

    #@2
    .end local p1    # "mustBeNull":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/RecursiveAction;->setRawResult(Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method protected final setRawResult(Ljava/lang/Void;)V
    .locals 0
    .param p1, "mustBeNull"    # Ljava/lang/Void;

    #@0
    .prologue
    .line 154
    return-void
.end method
