.class Landroid/app/ActivityThread$ActivityClientRecord$1;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/view/ViewRootImpl$ActivityConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread$ActivityClientRecord;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread$ActivityClientRecord;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 740
    iput-object p1, p0, Landroid/app/ActivityThread$ActivityClientRecord$1;->this$0:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;)V
    .registers 10
    .param p1, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p2, "newDisplayId"    # I
    .param p3, "activityWindowInfo"    # Landroid/window/ActivityWindowInfo;

    .line 745
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord$1;->this$0:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_3c

    .line 749
    if-nez p3, :cond_2c

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received empty ActivityWindowInfo update for r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord$1;->this$0:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord$1;->this$0:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object p3

    move-object v4, p3

    goto :goto_2d

    .line 749
    :cond_2c
    move-object v4, p3

    .line 753
    .end local p3    # "activityWindowInfo":Landroid/window/ActivityWindowInfo;
    .local v4, "activityWindowInfo":Landroid/window/ActivityWindowInfo;
    :goto_2d
    iget-object p3, p0, Landroid/app/ActivityThread$ActivityClientRecord$1;->this$0:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object p3, p3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, p3, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord$1;->this$0:Landroid/app/ActivityThread$ActivityClientRecord;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    .end local p1    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p2    # "newDisplayId":I
    .local v2, "overrideConfig":Landroid/content/res/Configuration;
    .local v3, "newDisplayId":I
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;Z)V

    .line 757
    return-void

    .line 746
    .end local v2    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v3    # "newDisplayId":I
    .end local v4    # "activityWindowInfo":Landroid/window/ActivityWindowInfo;
    .restart local p1    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local p2    # "newDisplayId":I
    .restart local p3    # "activityWindowInfo":Landroid/window/ActivityWindowInfo;
    :cond_3c
    move-object v2, p1

    move v3, p2

    .end local p1    # "overrideConfig":Landroid/content/res/Configuration;
    .end local p2    # "newDisplayId":I
    .restart local v2    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local v3    # "newDisplayId":I
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Received config update for non-existing activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
