.class public final synthetic Landroid/service/notification/StatusBarNotification$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/notification/StatusBarNotification;

.field public final synthetic blacklist f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/notification/StatusBarNotification$$ExternalSyntheticLambda0;->f$0:Landroid/service/notification/StatusBarNotification;

    iput-object p2, p0, Landroid/service/notification/StatusBarNotification$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification$$ExternalSyntheticLambda0;->f$0:Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Landroid/service/notification/StatusBarNotification;->$r8$lambda$yqtKczzsguE1wf1XWsW0TWXv_40(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;Ljava/lang/Integer;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method
