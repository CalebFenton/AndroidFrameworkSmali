.class Landroid/app/jank/JankTracker$4;
.super Ljava/lang/Object;
.source "JankTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/jank/JankTracker;->registerForJankData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/jank/JankTracker;


# direct methods
.method constructor blacklist <init>(Landroid/app/jank/JankTracker;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/jank/JankTracker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 292
    iput-object p1, p0, Landroid/app/jank/JankTracker$4;->this$0:Landroid/app/jank/JankTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/app/jank/JankTracker$4;->this$0:Landroid/app/jank/JankTracker;

    invoke-static {v0}, Landroid/app/jank/JankTracker;->-$$Nest$mregisterJankDataListener(Landroid/app/jank/JankTracker;)V

    .line 296
    return-void
.end method
