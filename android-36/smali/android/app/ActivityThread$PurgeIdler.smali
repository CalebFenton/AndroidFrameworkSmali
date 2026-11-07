.class final Landroid/app/ActivityThread$PurgeIdler;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PurgeIdler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/ActivityThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2903
    iput-object p1, p0, Landroid/app/ActivityThread$PurgeIdler;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist queueIdle()Z
    .registers 2

    .line 2906
    iget-object v0, p0, Landroid/app/ActivityThread$PurgeIdler;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$mpurgePendingResources(Landroid/app/ActivityThread;)V

    .line 2907
    const/4 v0, 0x0

    return v0
.end method
