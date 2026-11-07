.class public final synthetic Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/radio/ProgramList$OnCompleteListener;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Landroid/hardware/radio/ProgramList$OnCompleteListener;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$OnCompleteListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/radio/ProgramList$OnCompleteListener;

    return-void
.end method


# virtual methods
.method public final whitelist onComplete()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/radio/ProgramList$OnCompleteListener;

    invoke-static {v0, v1}, Landroid/hardware/radio/ProgramList;->lambda$addOnCompleteListener$0(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    return-void
.end method
