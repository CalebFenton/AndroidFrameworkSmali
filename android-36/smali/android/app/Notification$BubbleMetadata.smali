.class public final Landroid/app/Notification$BubbleMetadata;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BubbleMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$BubbleMetadata$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Notification$BubbleMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_AUTO_EXPAND_BUBBLE:I = 0x1

.field public static final blacklist FLAG_SUPPRESSABLE_BUBBLE:I = 0x4

.field public static final blacklist FLAG_SUPPRESS_BUBBLE:I = 0x8

.field public static final blacklist FLAG_SUPPRESS_NOTIFICATION:I = 0x2


# instance fields
.field private blacklist mDeleteIntent:Landroid/app/PendingIntent;

.field private blacklist mDesiredHeight:I

.field private blacklist mDesiredHeightResId:I

.field private blacklist mFlags:I

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mShortcutId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12823
    new-instance v0, Landroid/app/Notification$BubbleMetadata$1;

    invoke-direct {v0}, Landroid/app/Notification$BubbleMetadata$1;-><init>()V

    sput-object v0, Landroid/app/Notification$BubbleMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;)V
    .registers 7
    .param p1, "expandIntent"    # Landroid/app/PendingIntent;
    .param p2, "deleteIntent"    # Landroid/app/PendingIntent;
    .param p3, "icon"    # Landroid/graphics/drawable/Icon;
    .param p4, "height"    # I
    .param p5, "heightResId"    # I
    .param p6, "shortcutId"    # Ljava/lang/String;

    .line 12636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12637
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    .line 12638
    iput-object p3, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    .line 12639
    iput p4, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    .line 12640
    iput p5, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    .line 12641
    iput-object p2, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 12642
    iput-object p6, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    .line 12643
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;Landroid/app/Notification-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/app/Notification$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 12645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12646
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 12647
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    .line 12649
    :cond_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 12650
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    .line 12652
    :cond_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    .line 12653
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    .line 12654
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    .line 12655
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 12657
    :cond_3f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    .line 12658
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_51

    .line 12659
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    .line 12661
    :cond_51
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/Notification-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Notification$BubbleMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 12839
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAutoExpandBubble()Z
    .registers 3

    .line 12727
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist getDeleteIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 12688
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getDesiredHeight()I
    .registers 2

    .line 12708
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    return v0
.end method

.method public whitelist getDesiredHeightResId()I
    .registers 2

    .line 12718
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    return v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 12820
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    return v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 12698
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 12680
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getShortcutId()Ljava/lang/String;
    .registers 2

    .line 12670
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isBubbleSuppressable()Z
    .registers 2

    .line 12767
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isBubbleSuppressed()Z
    .registers 2

    .line 12776
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isNotificationSuppressed()Z
    .registers 2

    .line 12750
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 12813
    iput p1, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    .line 12814
    return-void
.end method

.method public blacklist setSuppressBubble(Z)V
    .registers 3
    .param p1, "suppressed"    # Z

    .line 12802
    if-eqz p1, :cond_9

    .line 12803
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    goto :goto_f

    .line 12805
    :cond_9
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    .line 12807
    :goto_f
    return-void
.end method

.method public blacklist setSuppressNotification(Z)V
    .registers 3
    .param p1, "suppressed"    # Z

    .line 12787
    if-eqz p1, :cond_9

    .line 12788
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    goto :goto_f

    .line 12790
    :cond_9
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    .line 12792
    :goto_f
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 12844
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12845
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_15

    .line 12846
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 12848
    :cond_15
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12849
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_28

    .line 12850
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 12852
    :cond_28
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12853
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12854
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_38

    move v0, v1

    goto :goto_39

    :cond_38
    move v0, v2

    :goto_39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12855
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_45

    .line 12856
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 12858
    :cond_45
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12859
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12860
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 12861
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 12863
    :cond_61
    return-void
.end method
