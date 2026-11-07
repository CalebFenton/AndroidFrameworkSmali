.class public final synthetic Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;

.field public final synthetic blacklist f$1:Landroid/app/contextualsearch/ContextualSearchState;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;Landroid/app/contextualsearch/ContextualSearchState;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;

    iput-object p2, p0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda2;->f$1:Landroid/app/contextualsearch/ContextualSearchState;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;

    iget-object v1, p0, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper$$ExternalSyntheticLambda2;->f$1:Landroid/app/contextualsearch/ContextualSearchState;

    invoke-static {v0, v1}, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;->$r8$lambda$V3Z3yX6i-p3pR_-9k5yDTLa6rJI(Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;Landroid/app/contextualsearch/ContextualSearchState;)V

    return-void
.end method
