.class Landroid/app/Activity$1;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Landroid/view/Window$WindowControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
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

    .line 1086
    iput-object p1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enterPictureInPictureModeIfPossible()V
    .registers 2

    .line 1105
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1106
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->enterPictureInPictureMode()V

    .line 1108
    :cond_f
    return-void
.end method

.method public blacklist isTaskRoot()Z
    .registers 4

    .line 1112
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/Activity;->-$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    if-ltz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public blacklist toggleFreeformWindowingMode()V
    .registers 3

    .line 1095
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/Activity;->-$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 1096
    return-void
.end method

.method public blacklist updateNavigationBarColor(I)V
    .registers 4
    .param p1, "color"    # I

    .line 1142
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    .line 1143
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1144
    return-void
.end method

.method public blacklist updateStatusBarColor(I)V
    .registers 4
    .param p1, "color"    # I

    .line 1122
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    .line 1123
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1124
    return-void
.end method

.method public blacklist updateSystemBarsAppearance(I)V
    .registers 4
    .param p1, "appearance"    # I

    .line 1132
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->setSystemBarsAppearance(I)V

    .line 1133
    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iget-object v1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v1}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1134
    return-void
.end method
