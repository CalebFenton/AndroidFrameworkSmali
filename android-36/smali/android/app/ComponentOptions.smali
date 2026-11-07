.class public Landroid/app/ComponentOptions;
.super Ljava/lang/Object;
.source "ComponentOptions.java"


# static fields
.field public static final blacklist KEY_PENDING_INTENT_BACKGROUND_ACTIVITY_ALLOWED:Ljava/lang/String; = "android.pendingIntent.backgroundActivityAllowed"


# instance fields
.field private blacklist mPendingIntentBalAllowed:Ljava/lang/Integer;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    .line 56
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "opts"    # Landroid/os/Bundle;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    .line 61
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 63
    nop

    .line 64
    const-string v1, "android.pendingIntent.backgroundActivityAllowed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    .line 66
    return-void
.end method

.method public static blacklist fromBundle(Landroid/os/Bundle;)Landroid/app/ComponentOptions;
    .registers 2
    .param p0, "options"    # Landroid/os/Bundle;

    .line 146
    if-eqz p0, :cond_8

    new-instance v0, Landroid/app/ComponentOptions;

    invoke-direct {v0, p0}, Landroid/app/ComponentOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method


# virtual methods
.method public blacklist getPendingIntentBackgroundActivityStartMode()I
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist isPendingIntentBackgroundActivityLaunchAllowed()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    iget-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist setPendingIntentBackgroundActivityLaunchAllowed(Z)V
    .registers 3
    .param p1, "allowed"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    .line 78
    :cond_4
    const/4 v0, 0x2

    .line 77
    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    .line 79
    return-void
.end method

.method public blacklist setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ComponentOptions;
    .registers 3
    .param p1, "state"    # I

    .line 107
    packed-switch p1, :pswitch_data_14

    .line 118
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    goto :goto_12

    .line 114
    :pswitch_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    .line 115
    nop

    .line 121
    :goto_12
    return-object p0

    nop

    :pswitch_data_14
    .packed-switch -0x1
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .registers 4

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_18

    .line 139
    iget-object v1, p0, Landroid/app/ComponentOptions;->mPendingIntentBalAllowed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "android.pendingIntent.backgroundActivityAllowed"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    :cond_18
    return-object v0
.end method
