.class public final synthetic Lcom/android/internal/widget/LockPatternChecker$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    return-void
.end method


# virtual methods
.method public final blacklist onEarlyMatched()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onEarlyMatched()V

    return-void
.end method
