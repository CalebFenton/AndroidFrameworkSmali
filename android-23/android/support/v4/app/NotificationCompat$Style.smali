.class public abstract Landroid/support/v4/app/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1591
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z

    #@6
    .line 1587
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 2

    #@0
    .prologue
    .line 1603
    const/4 v0, 0x0

    #@1
    .line 1604
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1605
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    #@7
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    #@a
    move-result-object v0

    #@b
    .line 1607
    .end local v0    # "notification":Landroid/app/Notification;
    :cond_0
    return-object v0
.end method

.method public setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    #@0
    .prologue
    .line 1594
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1595
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    #@6
    .line 1596
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1597
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    #@c
    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    #@f
    .line 1593
    :cond_0
    return-void
.end method
