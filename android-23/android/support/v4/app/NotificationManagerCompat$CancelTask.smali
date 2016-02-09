.class Landroid/support/v4/app/NotificationManagerCompat$CancelTask;
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
    name = "CancelTask"
.end annotation


# instance fields
.field final all:Z

.field final id:I

.field final packageName:Ljava/lang/String;

.field final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 596
    iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->packageName:Ljava/lang/String;

    #@5
    .line 597
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->id:I

    #@8
    .line 598
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->tag:Ljava/lang/String;

    #@b
    .line 599
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->all:Z

    #@e
    .line 595
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 603
    iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->packageName:Ljava/lang/String;

    #@5
    .line 604
    iput p2, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->id:I

    #@7
    .line 605
    iput-object p3, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->tag:Ljava/lang/String;

    #@9
    .line 606
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->all:Z

    #@c
    .line 602
    return-void
.end method


# virtual methods
.method public send(Landroid/support/v4/app/INotificationSideChannel;)V
    .locals 3
    .param p1, "service"    # Landroid/support/v4/app/INotificationSideChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 611
    iget-boolean v0, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->all:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 612
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->packageName:Ljava/lang/String;

    #@6
    invoke-interface {p1, v0}, Landroid/support/v4/app/INotificationSideChannel;->cancelAll(Ljava/lang/String;)V

    #@9
    .line 610
    :goto_0
    return-void

    #@a
    .line 614
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->packageName:Ljava/lang/String;

    #@c
    iget v1, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->id:I

    #@e
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->tag:Ljava/lang/String;

    #@10
    invoke-interface {p1, v0, v1, v2}, Landroid/support/v4/app/INotificationSideChannel;->cancel(Ljava/lang/String;ILjava/lang/String;)V

    #@13
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "CancelTask["

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 620
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "packageName:"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->packageName:Ljava/lang/String;

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 621
    const-string/jumbo v1, ", id:"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget v2, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->id:I

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 622
    const-string/jumbo v1, ", tag:"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->tag:Ljava/lang/String;

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 623
    const-string/jumbo v1, ", all:"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    iget-boolean v2, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->all:Z

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@38
    .line 624
    const-string/jumbo v1, "]"

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 625
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    return-object v1
.end method
