.class public final Landroid/service/quicksettings/Tile;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quicksettings/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATE_ACTIVE:I = 0x2

.field public static final whitelist STATE_INACTIVE:I = 0x1

.field public static final whitelist STATE_UNAVAILABLE:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Tile"


# instance fields
.field private greylist-max-o mContentDescription:Ljava/lang/CharSequence;

.field private blacklist mDefaultLabel:Ljava/lang/CharSequence;

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private greylist-max-o mService:Landroid/service/quicksettings/IQSService;

.field private greylist-max-o mState:I

.field private blacklist mStateDescription:Ljava/lang/CharSequence;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private greylist-max-o mToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 311
    new-instance v0, Landroid/service/quicksettings/Tile$1;

    invoke-direct {v0}, Landroid/service/quicksettings/Tile$1;-><init>()V

    sput-object v0, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    .line 88
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    .line 81
    invoke-direct {p0, p1}, Landroid/service/quicksettings/Tile;->readFromParcel(Landroid/os/Parcel;)V

    .line 82
    return-void
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 294
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_14

    .line 296
    :cond_12
    iput-object v1, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    .line 298
    :goto_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_25

    .line 299
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mPendingIntent:Landroid/app/PendingIntent;

    goto :goto_27

    .line 301
    :cond_25
    iput-object v1, p0, Landroid/service/quicksettings/Tile;->mPendingIntent:Landroid/app/PendingIntent;

    .line 303
    :goto_27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    .line 304
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    .line 305
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mDefaultLabel:Ljava/lang/CharSequence;

    .line 306
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mSubtitle:Ljava/lang/CharSequence;

    .line 307
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    .line 308
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mStateDescription:Ljava/lang/CharSequence;

    .line 309
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActivityLaunchForClick()Landroid/app/PendingIntent;
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getCustomLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 146
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mDefaultLabel:Ljava/lang/CharSequence;

    :goto_9
    return-object v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 106
    iget v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    return v0
.end method

.method public whitelist getStateDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 203
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mStateDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist setActivityLaunchForClick(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 263
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_f

    .line 264
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 266
    :cond_f
    :goto_f
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mPendingIntent:Landroid/app/PendingIntent;

    .line 268
    return-void
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 214
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    .line 215
    return-void
.end method

.method public blacklist setDefaultLabel(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "defaultLabel"    # Ljava/lang/CharSequence;

    .line 161
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mDefaultLabel:Ljava/lang/CharSequence;

    .line 162
    return-void
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 139
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    .line 140
    return-void
.end method

.method public whitelist setLabel(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 172
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    .line 173
    return-void
.end method

.method public greylist-max-o setService(Landroid/service/quicksettings/IQSService;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Landroid/service/quicksettings/IQSService;
    .param p2, "stub"    # Landroid/os/IBinder;

    .line 94
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mService:Landroid/service/quicksettings/IQSService;

    .line 95
    iput-object p2, p0, Landroid/service/quicksettings/Tile;->mToken:Landroid/os/IBinder;

    .line 96
    return-void
.end method

.method public whitelist setState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 118
    iput p1, p0, Landroid/service/quicksettings/Tile;->mState:I

    .line 119
    return-void
.end method

.method public whitelist setStateDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;

    .line 225
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mStateDescription:Ljava/lang/CharSequence;

    .line 226
    return-void
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 188
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mSubtitle:Ljava/lang/CharSequence;

    .line 189
    return-void
.end method

.method public whitelist updateTile()V
    .registers 4

    .line 238
    :try_start_0
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v1, p0, Landroid/service/quicksettings/Tile;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1}, Landroid/service/quicksettings/IQSService;->updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 241
    goto :goto_10

    .line 239
    :catch_8
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Tile"

    const-string v2, "Couldn\'t update tile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 272
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 273
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 274
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 276
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 278
    :goto_12
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1f

    .line 279
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 280
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_22

    .line 282
    :cond_1f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 284
    :goto_22
    iget v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 286
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mDefaultLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 287
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 288
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 289
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mStateDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 290
    return-void
.end method
