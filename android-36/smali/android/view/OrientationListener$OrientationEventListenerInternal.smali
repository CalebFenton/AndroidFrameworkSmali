.class Landroid/view/OrientationListener$OrientationEventListenerInternal;
.super Landroid/view/OrientationEventListener;
.source "OrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrientationEventListenerInternal"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/OrientationListener;


# direct methods
.method constructor blacklist <init>(Landroid/view/OrientationListener;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/OrientationListener;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 63
    iput-object p1, p0, Landroid/view/OrientationListener$OrientationEventListenerInternal;->this$0:Landroid/view/OrientationListener;

    .line 64
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method constructor blacklist <init>(Landroid/view/OrientationListener;Landroid/content/Context;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/view/OrientationListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rate"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Landroid/view/OrientationListener$OrientationEventListenerInternal;->this$0:Landroid/view/OrientationListener;

    .line 68
    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 70
    invoke-virtual {p0, p1}, Landroid/view/OrientationListener$OrientationEventListenerInternal;->registerListener(Landroid/view/OrientationListener;)V

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist onOrientationChanged(I)V
    .registers 3
    .param p1, "orientation"    # I

    .line 74
    iget-object v0, p0, Landroid/view/OrientationListener$OrientationEventListenerInternal;->this$0:Landroid/view/OrientationListener;

    invoke-virtual {v0, p1}, Landroid/view/OrientationListener;->onOrientationChanged(I)V

    .line 75
    return-void
.end method
