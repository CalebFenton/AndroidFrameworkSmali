.class Landroid/app/LocalActivityManager$LocalActivityRecord;
.super Landroid/os/Binder;
.source "LocalActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LocalActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalActivityRecord"
.end annotation


# instance fields
.field greylist-max-o activity:Landroid/app/Activity;

.field greylist-max-o activityInfo:Landroid/content/pm/ActivityInfo;

.field greylist-max-o curState:I

.field final greylist-max-o id:Ljava/lang/String;

.field greylist-max-o instanceState:Landroid/os/Bundle;

.field greylist-max-o intent:Landroid/content/Intent;

.field greylist-max-o window:Landroid/view/Window;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "_intent"    # Landroid/content/Intent;

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 56
    iput-object p1, p0, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 58
    return-void
.end method
