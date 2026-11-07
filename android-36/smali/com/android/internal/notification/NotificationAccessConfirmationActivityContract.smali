.class public final Lcom/android/internal/notification/NotificationAccessConfirmationActivityContract;
.super Ljava/lang/Object;
.source "NotificationAccessConfirmationActivityContract.java"


# static fields
.field public static final blacklist EXTRA_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field public static final blacklist EXTRA_USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist launcherIntent(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;

    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    const v1, 0x10402a0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 40
    const-string v1, "component_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 36
    return-object v0
.end method
