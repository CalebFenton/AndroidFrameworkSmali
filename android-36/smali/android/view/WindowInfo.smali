.class public Landroid/view/WindowInfo;
.super Ljava/lang/Object;
.source "WindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0xa

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o accessibilityIdOfAnchor:J

.field public greylist-max-o activityToken:Landroid/os/IBinder;

.field public greylist-max-o childTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist displayId:I

.field public greylist-max-o focused:Z

.field public blacklist hasFlagWatchOutsideTouch:Z

.field public greylist-max-o inPictureInPicture:Z

.field public greylist-max-o layer:I

.field public blacklist locales:Landroid/os/LocaleList;

.field public blacklist mMagnificationSpec:Landroid/view/MagnificationSpec;

.field public blacklist mTransformMatrix:[F

.field public greylist-max-o parentToken:Landroid/os/IBinder;

.field public blacklist regionInScreen:Landroid/graphics/Region;

.field public blacklist taskId:I

.field public greylist-max-o title:Ljava/lang/CharSequence;

.field public greylist-max-o token:Landroid/os/IBinder;

.field public greylist-max-o type:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$minitFromParcel(Landroid/view/WindowInfo;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/WindowInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 223
    new-instance v0, Landroid/view/WindowInfo$1;

    invoke-direct {v0}, Landroid/view/WindowInfo$1;-><init>()V

    sput-object v0, Landroid/view/WindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    .line 53
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowInfo;->displayId:I

    .line 57
    iput v0, p0, Landroid/view/WindowInfo;->taskId:I

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    .line 62
    new-instance v0, Landroid/view/MagnificationSpec;

    invoke-direct {v0}, Landroid/view/MagnificationSpec;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 64
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    .line 68
    return-void
.end method

.method private greylist-max-o clear()V
    .registers 5

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowInfo;->displayId:I

    .line 201
    iput v0, p0, Landroid/view/WindowInfo;->taskId:I

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowInfo;->type:I

    .line 203
    iput v0, p0, Landroid/view/WindowInfo;->layer:I

    .line 204
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 205
    iput-object v1, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 206
    iput-object v1, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 207
    iput-boolean v0, p0, Landroid/view/WindowInfo;->focused:Z

    .line 208
    iget-object v2, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 209
    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_21

    .line 210
    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 212
    :cond_21
    iput-boolean v0, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 213
    iput-boolean v0, p0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    iget-object v2, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    array-length v2, v2

    if-ge v0, v2, :cond_33

    .line 215
    iget-object v2, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 217
    .end local v0    # "i":I
    :cond_33
    iget-object v0, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    .line 218
    iput-object v1, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 219
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 220
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    .line 221
    return-void
.end method

.method private greylist-max-o initFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowInfo;->displayId:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowInfo;->taskId:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowInfo;->type:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowInfo;->layer:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_34

    move v0, v2

    goto :goto_35

    :cond_34
    move v0, v1

    :goto_35
    iput-boolean v0, p0, Landroid/view/WindowInfo;->focused:Z

    .line 182
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    iput-object v0, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_55

    move v0, v2

    goto :goto_56

    :cond_55
    move v0, v1

    :goto_56
    iput-boolean v0, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_60

    move v0, v2

    goto :goto_61

    :cond_60
    move v0, v1

    :goto_61
    iput-boolean v0, p0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 187
    iget-object v0, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_6f

    move v1, v2

    .line 189
    .local v1, "hasChildren":Z
    :cond_6f
    if-eqz v1, :cond_81

    .line 190
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v0, :cond_7c

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 193
    :cond_7c
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBinderList(Ljava/util/List;)V

    .line 195
    :cond_81
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MagnificationSpec;

    iput-object v0, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 196
    const/4 v0, 0x0

    const-class v2, Landroid/os/LocaleList;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    .line 197
    return-void
.end method

.method public static greylist-max-o obtain()Landroid/view/WindowInfo;
    .registers 2

    .line 71
    sget-object v0, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInfo;

    .line 72
    .local v0, "window":Landroid/view/WindowInfo;
    if-nez v0, :cond_10

    .line 73
    new-instance v1, Landroid/view/WindowInfo;

    invoke-direct {v1}, Landroid/view/WindowInfo;-><init>()V

    move-object v0, v1

    .line 75
    :cond_10
    return-object v0
.end method

.method public static greylist-max-o obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;
    .registers 5
    .param p0, "other"    # Landroid/view/WindowInfo;

    .line 79
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    .line 80
    .local v0, "window":Landroid/view/WindowInfo;
    iget v1, p0, Landroid/view/WindowInfo;->displayId:I

    iput v1, v0, Landroid/view/WindowInfo;->displayId:I

    .line 81
    iget v1, p0, Landroid/view/WindowInfo;->taskId:I

    iput v1, v0, Landroid/view/WindowInfo;->taskId:I

    .line 82
    iget v1, p0, Landroid/view/WindowInfo;->type:I

    iput v1, v0, Landroid/view/WindowInfo;->type:I

    .line 83
    iget v1, p0, Landroid/view/WindowInfo;->layer:I

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    .line 84
    iget-object v1, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 85
    iget-object v1, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 86
    iget-object v1, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 87
    iget-boolean v1, p0, Landroid/view/WindowInfo;->focused:Z

    iput-boolean v1, v0, Landroid/view/WindowInfo;->focused:Z

    .line 88
    iget-object v1, v0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    iget-object v2, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 89
    iget-object v1, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 90
    iget-wide v1, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    iput-wide v1, v0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 91
    iget-boolean v1, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    iput-boolean v1, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 92
    iget-boolean v1, p0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    iput-boolean v1, v0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    iget-object v2, v0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    array-length v2, v2

    if-ge v1, v2, :cond_4c

    .line 94
    iget-object v2, v0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    iget-object v3, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    aget v3, v3, v1

    aput v3, v2, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 97
    .end local v1    # "i":I
    :cond_4c
    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 98
    iget-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v1, :cond_66

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    goto :goto_6d

    .line 101
    :cond_66
    iget-object v1, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    :cond_6d
    :goto_6d
    iget-object v1, v0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v2, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, v2}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 105
    iget-object v1, p0, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    iput-object v1, v0, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    .line 106
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o recycle()V
    .registers 2

    .line 110
    invoke-direct {p0}, Landroid/view/WindowInfo;->clear()V

    .line 111
    sget-object v0, Landroid/view/WindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "WindowInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string/jumbo v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInfo;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInfo;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, ", layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ", accessibility anchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, ", pictureInPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, ", watchOutsideTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 165
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 166
    const-string v2, ", mTransformMatrix="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    const-string v2, ", mMagnificationSpec="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    const-string v2, ", locales="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 121
    iget v0, p0, Landroid/view/WindowInfo;->displayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Landroid/view/WindowInfo;->taskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Landroid/view/WindowInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 126
    iget-object v0, p0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 127
    iget-object v0, p0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 128
    iget-boolean v0, p0, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    iget-object v0, p0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 131
    iget-wide v0, p0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget-boolean v0, p0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-boolean v0, p0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 136
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto :goto_60

    .line 140
    :cond_5c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    :goto_60
    iget-object v0, p0, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1, p2}, Landroid/view/MagnificationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    .line 143
    iget-object v0, p0, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 144
    return-void
.end method
