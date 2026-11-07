.class Landroid/net/connectivity/org/chromium/base/ApplicationStatus$3$1;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/base/ApplicationStatus$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$3;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/base/ApplicationStatus$3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onApplicationStateChange(I)V
    .registers 3
    .param p1, "newState"    # I

    .line 752
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatusJni;->get()Landroid/net/connectivity/org/chromium/base/ApplicationStatus$Natives;

    move-result-object v0

    .line 753
    invoke-interface {v0, p1}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus$Natives;->onApplicationStateChange(I)V

    .line 754
    return-void
.end method
