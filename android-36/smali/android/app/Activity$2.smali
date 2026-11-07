.class Landroid/app/Activity$2;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Lcom/android/internal/policy/DecorView$AppJankStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->startAppJankTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/Activity;


# direct methods
.method constructor blacklist <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10065
    iput-object p1, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAppJankTracker()Landroid/app/jank/JankTracker;
    .registers 2

    .line 10068
    iget-object v0, p0, Landroid/app/Activity$2;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$fgetmJankTracker(Landroid/app/Activity;)Landroid/app/jank/JankTracker;

    move-result-object v0

    return-object v0
.end method
