.class Landroid/hardware/radio/ProgramList$1;
.super Landroid/hardware/radio/ProgramList$ListCallback;
.source "ProgramList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/radio/ProgramList;->registerListCallback(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$ListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/hardware/radio/ProgramList$ListCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/radio/ProgramList;Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$ListCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/hardware/radio/ProgramList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 104
    iput-object p2, p0, Landroid/hardware/radio/ProgramList$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/hardware/radio/ProgramList$1;->val$callback:Landroid/hardware/radio/ProgramList$ListCallback;

    invoke-direct {p0}, Landroid/hardware/radio/ProgramList$ListCallback;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onItemChanged$0(Landroid/hardware/radio/ProgramList$ListCallback;Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 2
    .param p0, "callback"    # Landroid/hardware/radio/ProgramList$ListCallback;
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 106
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ProgramList$ListCallback;->onItemChanged(Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method

.method static synthetic blacklist lambda$onItemRemoved$1(Landroid/hardware/radio/ProgramList$ListCallback;Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 2
    .param p0, "callback"    # Landroid/hardware/radio/ProgramList$ListCallback;
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 110
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ProgramList$ListCallback;->onItemRemoved(Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method


# virtual methods
.method public whitelist onItemChanged(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 5
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 106
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$1;->val$callback:Landroid/hardware/radio/ProgramList$ListCallback;

    new-instance v2, Landroid/hardware/radio/ProgramList$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/hardware/radio/ProgramList$1$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/radio/ProgramList$ListCallback;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method public whitelist onItemRemoved(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .registers 5
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 110
    iget-object v0, p0, Landroid/hardware/radio/ProgramList$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/radio/ProgramList$1;->val$callback:Landroid/hardware/radio/ProgramList$ListCallback;

    new-instance v2, Landroid/hardware/radio/ProgramList$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/hardware/radio/ProgramList$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/radio/ProgramList$ListCallback;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method
