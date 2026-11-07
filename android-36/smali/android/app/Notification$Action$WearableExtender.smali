.class public final Landroid/app/Notification$Action$WearableExtender;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/app/Notification$Action$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_FLAGS:I = 0x1

.field private static final greylist-max-o EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final greylist-max-o FLAG_AVAILABLE_OFFLINE:I = 0x1

.field private static final greylist-max-o FLAG_HINT_DISPLAY_INLINE:I = 0x4

.field private static final greylist-max-o FLAG_HINT_LAUNCHES_ACTIVITY:I = 0x2

.field private static final greylist-max-o KEY_CANCEL_LABEL:Ljava/lang/String; = "cancelLabel"

.field private static final greylist-max-o KEY_CONFIRM_LABEL:Ljava/lang/String; = "confirmLabel"

.field private static final greylist-max-o KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o KEY_IN_PROGRESS_LABEL:Ljava/lang/String; = "inProgressLabel"


# instance fields
.field private greylist-max-o mCancelLabel:Ljava/lang/CharSequence;

.field private greylist-max-o mConfirmLabel:Ljava/lang/CharSequence;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mInProgressLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 2510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2500
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    .line 2511
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Notification$Action;)V
    .registers 5
    .param p1, "action"    # Landroid/app/Notification$Action;

    .line 2518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2500
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    .line 2519
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 2520
    .local v1, "wearableBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_33

    .line 2521
    const-string v2, "flags"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    .line 2522
    const-string/jumbo v0, "inProgressLabel"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 2523
    const-string v0, "confirmLabel"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 2524
    const-string v0, "cancelLabel"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 2526
    :cond_33
    return-void
.end method

.method private greylist-max-o setFlag(IZ)V
    .registers 5
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 2586
    if-eqz p2, :cond_8

    .line 2587
    iget v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    goto :goto_e

    .line 2589
    :cond_8
    iget v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    .line 2591
    :goto_e
    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/app/Notification$Action$WearableExtender;
    .registers 3

    .line 2556
    new-instance v0, Landroid/app/Notification$Action$WearableExtender;

    invoke-direct {v0}, Landroid/app/Notification$Action$WearableExtender;-><init>()V

    .line 2557
    .local v0, "that":Landroid/app/Notification$Action$WearableExtender;
    iget v1, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    iput v1, v0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    .line 2558
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 2559
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 2560
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 2561
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2482
    invoke-virtual {p0}, Landroid/app/Notification$Action$WearableExtender;->clone()Landroid/app/Notification$Action$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public whitelist extend(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action$Builder;
    .registers 5
    .param p1, "builder"    # Landroid/app/Notification$Action$Builder;

    .line 2535
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2537
    .local v0, "wearableBundle":Landroid/os/Bundle;
    iget v1, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    .line 2538
    const-string v1, "flags"

    iget v2, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2540
    :cond_11
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1d

    .line 2541
    const-string/jumbo v1, "inProgressLabel"

    iget-object v2, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2543
    :cond_1d
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_28

    .line 2544
    const-string v1, "confirmLabel"

    iget-object v2, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2546
    :cond_28
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_33

    .line 2547
    const-string v1, "cancelLabel"

    iget-object v2, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2550
    :cond_33
    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2551
    return-object p1
.end method

.method public whitelist getCancelLabel()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2662
    iget-object v0, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getConfirmLabel()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2638
    iget-object v0, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getHintDisplayActionInline()Z
    .registers 2

    .line 2709
    iget v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getHintLaunchesActivity()Z
    .registers 2

    .line 2686
    iget v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getInProgressLabel()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2614
    iget-object v0, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist isAvailableOffline()Z
    .registers 3

    .line 2582
    iget v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist setAvailableOffline(Z)Landroid/app/Notification$Action$WearableExtender;
    .registers 3
    .param p1, "availableOffline"    # Z

    .line 2571
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Action$WearableExtender;->setFlag(IZ)V

    .line 2572
    return-object p0
.end method

.method public whitelist setCancelLabel(Ljava/lang/CharSequence;)Landroid/app/Notification$Action$WearableExtender;
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2650
    iput-object p1, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 2651
    return-object p0
.end method

.method public whitelist setConfirmLabel(Ljava/lang/CharSequence;)Landroid/app/Notification$Action$WearableExtender;
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2626
    iput-object p1, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 2627
    return-object p0
.end method

.method public whitelist setHintDisplayActionInline(Z)Landroid/app/Notification$Action$WearableExtender;
    .registers 3
    .param p1, "hintDisplayInline"    # Z

    .line 2698
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Action$WearableExtender;->setFlag(IZ)V

    .line 2699
    return-object p0
.end method

.method public whitelist setHintLaunchesActivity(Z)Landroid/app/Notification$Action$WearableExtender;
    .registers 3
    .param p1, "hintLaunchesActivity"    # Z

    .line 2674
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Action$WearableExtender;->setFlag(IZ)V

    .line 2675
    return-object p0
.end method

.method public whitelist setInProgressLabel(Ljava/lang/CharSequence;)Landroid/app/Notification$Action$WearableExtender;
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2602
    iput-object p1, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 2603
    return-object p0
.end method
