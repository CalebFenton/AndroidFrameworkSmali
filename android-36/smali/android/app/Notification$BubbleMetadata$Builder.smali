.class public final Landroid/app/Notification$BubbleMetadata$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$BubbleMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDeleteIntent:Landroid/app/PendingIntent;

.field private blacklist mDesiredHeight:I

.field private blacklist mDesiredHeightResId:I

.field private blacklist mFlags:I

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mShortcutId:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12885
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;)V
    .registers 5
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .line 12940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12941
    if-eqz p1, :cond_29

    .line 12944
    if-eqz p2, :cond_21

    .line 12947
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1c

    .line 12948
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1c

    .line 12949
    const-string v0, "Notification"

    const-string v1, "Bubbles work best with icons of TYPE_URI or TYPE_URI_ADAPTIVE_BITMAP. In the future, using an icon of this type will be required."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12953
    :cond_1c
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 12954
    iput-object p2, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 12955
    return-void

    .line 12945
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bubbles require non-null icon"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12942
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bubble requires non-null pending intent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 12913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12914
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 12917
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    .line 12918
    return-void

    .line 12915
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bubble requires a non-null shortcut id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/app/Notification$BubbleMetadata;
    .registers 11

    .line 13130
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 13131
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must supply pending intent or shortcut to bubble"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13134
    :cond_11
    :goto_11
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1a

    goto :goto_22

    .line 13135
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must supply an icon or shortcut for the bubble"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13138
    :cond_22
    :goto_22
    new-instance v2, Landroid/app/Notification$BubbleMetadata;

    iget-object v3, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    iget v6, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeight:I

    iget v7, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeightResId:I

    iget-object v8, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/app/Notification$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;Landroid/app/Notification-IA;)V

    .line 13140
    .local v2, "data":Landroid/app/Notification$BubbleMetadata;
    iget v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    invoke-virtual {v2, v0}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    .line 13141
    return-object v2
.end method

.method public whitelist setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 3
    .param p1, "shouldExpand"    # Z

    .line 13075
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 13076
    return-object p0
.end method

.method public whitelist setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 2
    .param p1, "deleteIntent"    # Landroid/app/PendingIntent;

    .line 13119
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 13120
    return-object p0
.end method

.method public whitelist setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 4
    .param p1, "height"    # I

    .line 13033
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeight:I

    .line 13034
    iput v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeightResId:I

    .line 13035
    return-object p0
.end method

.method public whitelist setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 3
    .param p1, "heightResId"    # I

    .line 13055
    iput p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeightResId:I

    .line 13056
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mDesiredHeight:I

    .line 13057
    return-object p0
.end method

.method public blacklist setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 5
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 13148
    if-eqz p2, :cond_8

    .line 13149
    iget v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    goto :goto_e

    .line 13151
    :cond_8
    iget v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mFlags:I

    .line 13153
    :goto_e
    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 12999
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 13004
    if-eqz p1, :cond_1e

    .line 13007
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1b

    .line 13008
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    .line 13009
    const-string v0, "Notification"

    const-string v1, "Bubbles work best with icons of TYPE_URI or TYPE_URI_ADAPTIVE_BITMAP. In the future, using an icon of this type will be required."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13013
    :cond_1b
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 13014
    return-object p0

    .line 13005
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bubbles require non-null icon"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13000
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Created as a shortcut bubble, cannot set an Icon. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 12970
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 12975
    if-eqz p1, :cond_9

    .line 12978
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 12979
    return-object p0

    .line 12976
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bubble requires non-null pending intent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12971
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Created as a shortcut bubble, cannot set a PendingIntent. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 3
    .param p1, "shouldSuppressNotif"    # Z

    .line 13091
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 13092
    return-object p0
.end method

.method public whitelist setSuppressableBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;
    .registers 3
    .param p1, "suppressBubble"    # Z

    .line 13108
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$BubbleMetadata$Builder;->setFlag(IZ)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 13109
    return-object p0
.end method
