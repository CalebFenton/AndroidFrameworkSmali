.class Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationManagerCompat$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyTask"
.end annotation


# instance fields
.field final id:I

.field final notif:Landroid/app/Notification;

.field final packageName:Ljava/lang/String;

.field final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "notif"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 568
    iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;->packageName:Ljava/lang/String;

    #@5
    .line 569
    iput p2, p0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;->id:I

    #@7
    .line 570
    iput-object p3, p0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;->tag:Ljava/lang/String;

    #@9
    .line 571
    iput-object p4, p0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;->notif:Landroid/app/Notification;

    #@b
    .line 567
    return-void
.end method


# virtual methods
.method public send(Landroid/support/v4/app/INotificationSideChannel;)V
    .locals 4
    .param p1, "service"    # Landroid/support/v4/app/INotificationSideChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 576
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;->packageName:Ljava/lang/String;

    #@2
    iget v1, p0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;->id:I

    #@4
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;->tag:Ljava/lang/String;

    #@6
    iget-object v3, p0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;->notif:Landroid/app/Notification;

    #@8
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/support/v4/app/INotificationSideChannel;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    #@b
    .line 575
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "NotifyTask["

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 581
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "packageName:"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;->packageName:Ljava/lang/String;

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 582
    const-string/jumbo v1, ", id:"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget v2, p0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;->id:I

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 583
    const-string/jumbo v1, ", tag:"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;->tag:Ljava/lang/String;

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 584
    const-string/jumbo v1, "]"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    return-object v1
.end method
