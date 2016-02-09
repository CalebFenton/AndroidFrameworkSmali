.class final Landroid/support/v4/app/NotificationCompat$Action$1;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompatBase$Action$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 7
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "actionIntent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@0
    .prologue
    .line 2176
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;

    #@2
    move-object v5, p5

    #@3
    .line 2177
    check-cast v5, [Landroid/support/v4/app/RemoteInput;

    #@5
    .line 2176
    const/4 v6, 0x0

    #@6
    move v1, p1

    #@7
    move-object v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object v4, p4

    #@a
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;Landroid/support/v4/app/NotificationCompat$Action;)V

    #@d
    return-object v0
.end method

.method public bridge synthetic build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "actionIntent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@0
    .prologue
    .line 2173
    invoke-virtual/range {p0 .. p5}, Landroid/support/v4/app/NotificationCompat$Action$1;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/support/v4/app/NotificationCompat$Action;
    .locals 1
    .param p1, "length"    # I

    #@0
    .prologue
    .line 2182
    new-array v0, p1, [Landroid/support/v4/app/NotificationCompat$Action;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 1
    .param p1, "length"    # I

    #@0
    .prologue
    .line 2181
    invoke-virtual {p0, p1}, Landroid/support/v4/app/NotificationCompat$Action$1;->newArray(I)[Landroid/support/v4/app/NotificationCompat$Action;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
