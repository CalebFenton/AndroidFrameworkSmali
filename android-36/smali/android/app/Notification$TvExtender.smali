.class public final Landroid/app/Notification$TvExtender;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/app/Notification$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvExtender"
.end annotation


# static fields
.field private static final greylist-max-o EXTRA_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field static final greylist-max-o EXTRA_CONTENT_INTENT:Ljava/lang/String; = "content_intent"

.field static final greylist-max-o EXTRA_DELETE_INTENT:Ljava/lang/String; = "delete_intent"

.field private static final greylist-max-o EXTRA_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o EXTRA_SUPPRESS_SHOW_OVER_APPS:Ljava/lang/String; = "suppressShowOverApps"

.field private static final greylist-max-o EXTRA_TV_EXTENDER:Ljava/lang/String; = "android.tv.EXTENSIONS"

.field private static final greylist-max-o FLAG_AVAILABLE_ON_TV:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TvExtender"


# instance fields
.field private greylist-max-o mChannelId:Ljava/lang/String;

.field private greylist-max-o mContentIntent:Landroid/app/PendingIntent;

.field private greylist-max-o mDeleteIntent:Landroid/app/PendingIntent;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mSuppressShowOverApps:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 14517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14518
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$TvExtender;->mFlags:I

    .line 14519
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Notification;)V
    .registers 5
    .param p1, "notif"    # Landroid/app/Notification;

    .line 14526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14527
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_9

    .line 14528
    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.tv.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 14529
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_11
    if-eqz v0, :cond_44

    .line 14530
    const-string v1, "flags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$TvExtender;->mFlags:I

    .line 14531
    const-string v1, "channel_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    .line 14532
    const-string/jumbo v1, "suppressShowOverApps"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$TvExtender;->mSuppressShowOverApps:Z

    .line 14533
    const-string v1, "content_intent"

    const-class v2, Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    .line 14534
    const-string v1, "delete_intent"

    const-class v2, Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 14536
    :cond_44
    return-void
.end method


# virtual methods
.method public whitelist extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .registers 5
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .line 14546
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14548
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "flags"

    iget v2, p0, Landroid/app/Notification$TvExtender;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14549
    const-string v1, "channel_id"

    iget-object v2, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14550
    const-string/jumbo v1, "suppressShowOverApps"

    iget-boolean v2, p0, Landroid/app/Notification$TvExtender;->mSuppressShowOverApps:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14551
    iget-object v1, p0, Landroid/app/Notification$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_26

    .line 14552
    const-string v1, "content_intent"

    iget-object v2, p0, Landroid/app/Notification$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 14555
    :cond_26
    iget-object v1, p0, Landroid/app/Notification$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_31

    .line 14556
    const-string v1, "delete_intent"

    iget-object v2, p0, Landroid/app/Notification$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 14559
    :cond_31
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.tv.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14560
    return-object p1
.end method

.method public greylist getChannel()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14604
    iget-object v0, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getChannelId()Ljava/lang/String;
    .registers 2

    .line 14612
    iget-object v0, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContentIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 14637
    iget-object v0, p0, Landroid/app/Notification$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getDeleteIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 14662
    iget-object v0, p0, Landroid/app/Notification$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getSuppressShowOverApps()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14686
    iget-boolean v0, p0, Landroid/app/Notification$TvExtender;->mSuppressShowOverApps:Z

    return v0
.end method

.method public whitelist isAvailableOnTv()Z
    .registers 3

    .line 14568
    iget v0, p0, Landroid/app/Notification$TvExtender;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist isSuppressShowOverApps()Z
    .registers 2

    .line 14694
    iget-boolean v0, p0, Landroid/app/Notification$TvExtender;->mSuppressShowOverApps:Z

    return v0
.end method

.method public whitelist setChannel(Ljava/lang/String;)Landroid/app/Notification$TvExtender;
    .registers 2
    .param p1, "channelId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14580
    iput-object p1, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    .line 14581
    return-object p0
.end method

.method public whitelist setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;
    .registers 2
    .param p1, "channelId"    # Ljava/lang/String;

    .line 14593
    iput-object p1, p0, Landroid/app/Notification$TvExtender;->mChannelId:Ljava/lang/String;

    .line 14594
    return-object p0
.end method

.method public whitelist setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;
    .registers 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 14625
    iput-object p1, p0, Landroid/app/Notification$TvExtender;->mContentIntent:Landroid/app/PendingIntent;

    .line 14626
    return-object p0
.end method

.method public whitelist setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;
    .registers 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 14650
    iput-object p1, p0, Landroid/app/Notification$TvExtender;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 14651
    return-object p0
.end method

.method public whitelist setSuppressShowOverApps(Z)Landroid/app/Notification$TvExtender;
    .registers 2
    .param p1, "suppress"    # Z

    .line 14674
    iput-boolean p1, p0, Landroid/app/Notification$TvExtender;->mSuppressShowOverApps:Z

    .line 14675
    return-object p0
.end method
