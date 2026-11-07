.class public Landroid/app/Notification$Action;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$Action$SemanticAction;,
        Landroid/app/Notification$Action$WearableExtender;,
        Landroid/app/Notification$Action$Extender;,
        Landroid/app/Notification$Action$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EXTRA_DATA_ONLY_INPUTS:Ljava/lang/String; = "android.extra.DATA_ONLY_INPUTS"

.field public static final blacklist EXTRA_IS_ANIMATED:Ljava/lang/String; = "android.extra.IS_ANIMATED"

.field public static final whitelist SEMANTIC_ACTION_ARCHIVE:I = 0x5

.field public static final whitelist SEMANTIC_ACTION_CALL:I = 0xa

.field public static final whitelist SEMANTIC_ACTION_CONVERSATION_IS_PHISHING:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SEMANTIC_ACTION_DELETE:I = 0x4

.field public static final whitelist SEMANTIC_ACTION_MARK_AS_READ:I = 0x2

.field public static final whitelist SEMANTIC_ACTION_MARK_AS_UNREAD:I = 0x3

.field public static final whitelist SEMANTIC_ACTION_MARK_CONVERSATION_AS_PRIORITY:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SEMANTIC_ACTION_MUTE:I = 0x6

.field public static final whitelist SEMANTIC_ACTION_NONE:I = 0x0

.field public static final whitelist SEMANTIC_ACTION_REPLY:I = 0x1

.field public static final whitelist SEMANTIC_ACTION_THUMBS_DOWN:I = 0x9

.field public static final whitelist SEMANTIC_ACTION_THUMBS_UP:I = 0x8

.field public static final whitelist SEMANTIC_ACTION_UNMUTE:I = 0x7


# instance fields
.field public whitelist actionIntent:Landroid/app/PendingIntent;

.field public whitelist icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o mAllowGeneratedReplies:Z

.field private blacklist mAuthenticationRequired:Z

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-p mIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mIsContextual:Z

.field private final greylist-max-o mRemoteInputs:[Landroid/app/RemoteInput;

.field private final greylist-max-o mSemanticAction:I

.field public whitelist title:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/app/Notification$Action;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoteInputs(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mvisitUris(Landroid/app/Notification$Action;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$Action;->visitUris(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2445
    new-instance v0, Landroid/app/Notification$Action$1;

    invoke-direct {v0}, Landroid/app/Notification$Action$1;-><init>()V

    sput-object v0, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 15
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2040
    const-string v0, ""

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    .end local p2    # "title":Ljava/lang/CharSequence;
    .end local p3    # "intent":Landroid/app/PendingIntent;
    .local v3, "title":Ljava/lang/CharSequence;
    .local v4, "intent":Landroid/app/PendingIntent;
    invoke-direct/range {v1 .. v10}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V

    .line 2042
    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V
    .registers 12
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroid/app/RemoteInput;
    .param p6, "allowGeneratedReplies"    # Z
    .param p7, "semanticAction"    # I
    .param p8, "isContextual"    # Z
    .param p9, "requireAuth"    # Z

    .line 2048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1992
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 2049
    iput-object p1, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2050
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 2051
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$Action;->icon:I

    .line 2053
    :cond_17
    iput-object p2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 2054
    iput-object p3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 2055
    if-eqz p4, :cond_1f

    move-object v0, p4

    goto :goto_24

    :cond_1f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_24
    iput-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    .line 2056
    iput-object p5, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 2057
    iput-boolean p6, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 2058
    iput p7, p0, Landroid/app/Notification$Action;->mSemanticAction:I

    .line 2059
    iput-boolean p8, p0, Landroid/app/Notification$Action;->mIsContextual:Z

    .line 2060
    iput-boolean p9, p0, Landroid/app/Notification$Action;->mAuthenticationRequired:Z

    .line 2061
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZLandroid/app/Notification-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1992
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 2017
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_27

    .line 2018
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2019
    iget-object v1, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    .line 2020
    iget-object v1, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Action;->icon:I

    .line 2023
    :cond_27
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 2024
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_41

    .line 2025
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 2027
    :cond_41
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    .line 2028
    sget-object v1, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/RemoteInput;

    iput-object v1, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 2029
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_5e

    move v1, v0

    goto :goto_5f

    :cond_5e
    move v1, v2

    :goto_5f
    iput-boolean v1, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    .line 2030
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Action;->mSemanticAction:I

    .line 2031
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_6f

    move v1, v0

    goto :goto_70

    :cond_6f
    move v1, v2

    :goto_70
    iput-boolean v1, p0, Landroid/app/Notification$Action;->mIsContextual:Z

    .line 2032
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_79

    goto :goto_7a

    :cond_79
    move v0, v2

    :goto_7a
    iput-boolean v0, p0, Landroid/app/Notification$Action;->mAuthenticationRequired:Z

    .line 2033
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/Notification-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Notification$Action;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 2399
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/app/Notification;->-$$Nest$smvisitIconUri(Ljava/util/function/Consumer;Landroid/graphics/drawable/Icon;)V

    .line 2400
    return-void
.end method


# virtual methods
.method public whitelist clone()Landroid/app/Notification$Action;
    .registers 11

    .line 2404
    new-instance v0, Landroid/app/Notification$Action;

    .line 2405
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 2408
    iget-object v4, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    if-nez v4, :cond_14

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    goto :goto_1b

    :cond_14
    new-instance v4, Landroid/os/Bundle;

    iget-object v5, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2409
    :goto_1b
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    .line 2410
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v6

    .line 2411
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v7

    .line 2412
    invoke-virtual {p0}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v8

    .line 2413
    invoke-virtual {p0}, Landroid/app/Notification$Action;->isAuthenticationRequired()Z

    move-result v9

    invoke-direct/range {v0 .. v9}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZIZZ)V

    .line 2404
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1887
    invoke-virtual {p0}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2418
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAllowGeneratedReplies()Z
    .registers 2

    .line 2086
    iget-boolean v0, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    return v0
.end method

.method public whitelist getDataOnlyRemoteInputs()[Landroid/app/RemoteInput;
    .registers 4

    .line 2127
    iget-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    const-string v1, "android.extra.DATA_ONLY_INPUTS"

    const-class v2, Landroid/app/RemoteInput;

    invoke-static {v0, v1, v2}, Landroid/app/Notification;->-$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/app/RemoteInput;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 2078
    iget-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 3

    .line 2067
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_12

    iget v0, p0, Landroid/app/Notification$Action;->icon:I

    if-eqz v0, :cond_12

    .line 2069
    const-string v0, ""

    iget v1, p0, Landroid/app/Notification$Action;->icon:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2071
    :cond_12
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getRemoteInputs()[Landroid/app/RemoteInput;
    .registers 2

    .line 2095
    iget-object v0, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    return-object v0
.end method

.method public whitelist getSemanticAction()I
    .registers 2

    .line 2104
    iget v0, p0, Landroid/app/Notification$Action;->mSemanticAction:I

    return v0
.end method

.method public whitelist isAuthenticationRequired()Z
    .registers 2

    .line 2138
    iget-boolean v0, p0, Landroid/app/Notification$Action;->mAuthenticationRequired:Z

    return v0
.end method

.method public whitelist isContextual()Z
    .registers 2

    .line 2113
    iget-boolean v0, p0, Landroid/app/Notification$Action;->mIsContextual:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2423
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 2424
    .local v0, "ic":Landroid/graphics/drawable/Icon;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 2425
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2426
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 2428
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2430
    :goto_12
    iget-object v3, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2431
    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_24

    .line 2432
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2433
    iget-object v1, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 2435
    :cond_24
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2437
    :goto_27
    iget-object v1, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2438
    iget-object v1, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2439
    iget-boolean v1, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2440
    iget v1, p0, Landroid/app/Notification$Action;->mSemanticAction:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2441
    iget-boolean v1, p0, Landroid/app/Notification$Action;->mIsContextual:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2442
    iget-boolean v1, p0, Landroid/app/Notification$Action;->mAuthenticationRequired:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2443
    return-void
.end method
