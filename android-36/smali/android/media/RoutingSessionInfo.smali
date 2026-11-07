.class public final Landroid/media/RoutingSessionInfo;
.super Ljava/lang/Object;
.source "RoutingSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RoutingSessionInfo$Builder;,
        Landroid/media/RoutingSessionInfo$TransferReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist KEY_GROUP_ROUTE:Ljava/lang/String; = "androidx.mediarouter.media.KEY_GROUP_ROUTE"

.field private static final blacklist KEY_VOLUME_HANDLING:Ljava/lang/String; = "volumeHandling"

.field public static final whitelist TRANSFER_REASON_APP:I = 0x2

.field public static final whitelist TRANSFER_REASON_FALLBACK:I = 0x0

.field public static final whitelist TRANSFER_REASON_SYSTEM_REQUEST:I = 0x1


# instance fields
.field final blacklist mClientPackageName:Ljava/lang/String;

.field final blacklist mControlHints:Landroid/os/Bundle;

.field final blacklist mDeselectableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mIsSystemSession:Z

.field final blacklist mName:Ljava/lang/CharSequence;

.field final blacklist mOriginalId:Ljava/lang/String;

.field final blacklist mOwnerPackageName:Ljava/lang/String;

.field final blacklist mProviderId:Ljava/lang/String;

.field final blacklist mSelectableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSelectedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mTransferInitiatorPackageName:Ljava/lang/String;

.field final blacklist mTransferInitiatorUserHandle:Landroid/os/UserHandle;

.field final blacklist mTransferReason:I

.field final blacklist mTransferableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mVolume:I

.field final blacklist mVolumeHandling:I

.field final blacklist mVolumeMax:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/media/RoutingSessionInfo$1;

    invoke-direct {v0}, Landroid/media/RoutingSessionInfo$1;-><init>()V

    sput-object v0, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/RoutingSessionInfo$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/media/RoutingSessionInfo$Builder;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const-string v0, "builder must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmOriginalId(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    .line 123
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    .line 124
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmOwnerPackageName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmClientPackageName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    .line 126
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmProviderId(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmSelectedRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-direct {p0, v0}, Landroid/media/RoutingSessionInfo;->convertToUniqueRouteIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    .line 130
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmSelectableRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Landroid/media/RoutingSessionInfo;->convertToUniqueRouteIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    .line 132
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmDeselectableRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-direct {p0, v0}, Landroid/media/RoutingSessionInfo;->convertToUniqueRouteIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    .line 134
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmTransferableRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-direct {p0, v0}, Landroid/media/RoutingSessionInfo;->convertToUniqueRouteIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    .line 137
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmVolumeMax(Landroid/media/RoutingSessionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    .line 138
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmVolume(Landroid/media/RoutingSessionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    .line 140
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmIsSystemSession(Landroid/media/RoutingSessionInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    .line 141
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmVolumeHandling(Landroid/media/RoutingSessionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    .line 143
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmControlHints(Landroid/media/RoutingSessionInfo$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    invoke-static {v0, v1}, Landroid/media/RoutingSessionInfo;->updateVolumeHandlingInHints(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    .line 144
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmTransferReason(Landroid/media/RoutingSessionInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    .line 145
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmTransferInitiatorUserHandle(Landroid/media/RoutingSessionInfo$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    .line 146
    invoke-static {p1}, Landroid/media/RoutingSessionInfo$Builder;->-$$Nest$fgetmTransferInitiatorPackageName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 153
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    .line 159
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    .line 172
    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    .line 174
    return-void
.end method

.method private blacklist convertToUniqueRouteIds(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 573
    .local p1, "routeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "RouteIds cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 576
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 580
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 582
    .local v2, "routeId":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/media/MediaRouter2Utils;->toUniqueId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    .end local v2    # "routeId":Ljava/lang/String;
    goto :goto_1c

    .line 584
    :cond_32
    return-object v0
.end method

.method private static blacklist ensureList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 205
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    if-eqz p0, :cond_7

    .line 206
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 208
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist ensureString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 200
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    const-string v0, ""

    :goto_6
    return-object v0
.end method

.method private static blacklist updateVolumeHandlingInHints(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 6
    .param p0, "controlHints"    # Landroid/os/Bundle;
    .param p1, "volumeHandling"    # I

    .line 181
    if-eqz p0, :cond_2f

    const-string v0, "androidx.mediarouter.media.KEY_GROUP_ROUTE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 182
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 184
    .local v1, "groupRoute":Landroid/os/Bundle;
    if-eqz v1, :cond_2f

    const-string v2, "volumeHandling"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 185
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq p1, v3, :cond_2f

    .line 187
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 188
    .local v3, "newGroupRoute":Landroid/os/Bundle;
    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 190
    .local v2, "newControlHints":Landroid/os/Bundle;
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 191
    return-object v2

    .line 195
    .end local v1    # "groupRoute":Landroid/os/Bundle;
    .end local v2    # "newControlHints":Landroid/os/Bundle;
    .end local v3    # "newGroupRoute":Landroid/os/Bundle;
    :cond_2f
    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RoutingSessionInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mOriginalId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mOwnerPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mClientPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mProviderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mSelectedRoutes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mSelectableRoutes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mDeselectableRoutes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mTransferableRoutes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    iget v3, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    iget v4, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    invoke-static {v2, v3, v4}, Landroid/media/MediaRoute2Info;->getVolumeString(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mControlHints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsSystemSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mTransferReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mtransferInitiatorUserHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mtransferInitiatorPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 479
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 480
    return v0

    .line 483
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 484
    return v1

    .line 486
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 487
    return v0

    .line 490
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 491
    .local v2, "other":Landroid/media/RoutingSessionInfo;
    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    .line 492
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    .line 493
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    .line 494
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    .line 495
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    iget-object v4, v2, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    .line 496
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    iget-object v4, v2, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    .line 497
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    iget-object v4, v2, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    .line 498
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    iget-object v4, v2, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    .line 499
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    iget v3, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    iget v4, v2, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    if-ne v3, v4, :cond_9e

    iget v3, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    iget v4, v2, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    if-ne v3, v4, :cond_9e

    iget v3, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    iget v4, v2, Landroid/media/RoutingSessionInfo;->mVolume:I

    if-ne v3, v4, :cond_9e

    iget v3, p0, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    iget v4, v2, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    if-ne v3, v4, :cond_9e

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    iget-object v4, v2, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    .line 504
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    .line 505
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    move v0, v1

    goto :goto_9f

    :cond_9e
    nop

    .line 491
    :goto_9f
    return v0
.end method

.method public whitelist getClientPackageName()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getControlHints()Landroid/os/Bundle;
    .registers 2

    .line 391
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getDeselectableRoutes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 3

    .line 222
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 223
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/media/MediaRouter2Utils;->toUniqueId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :cond_11
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getOriginalId()Ljava/lang/String;
    .registers 2

    .line 247
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOwnerPackageName()Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProviderId()Ljava/lang/String;
    .registers 2

    .line 274
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSelectableRoutes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSelectedRoutes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTransferInitiatorPackageName()Ljava/lang/String;
    .registers 2

    .line 419
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTransferInitiatorUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 413
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist getTransferReason()I
    .registers 2

    .line 407
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    return v0
.end method

.method public whitelist getTransferableRoutes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getVolume()I
    .registers 2

    .line 383
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    return v0
.end method

.method public whitelist getVolumeHandling()I
    .registers 2

    .line 364
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    return v0
.end method

.method public whitelist getVolumeMax()I
    .registers 2

    .line 371
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 16

    .line 511
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    iget-object v6, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    iget-object v7, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    iget-object v8, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    iget v9, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    .line 521
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    .line 522
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    .line 523
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, p0, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    .line 524
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    iget-object v14, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    filled-new-array/range {v0 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    .line 511
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSystemSession()Z
    .registers 2

    .line 400
    iget-boolean v0, p0, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    const-string v1, "RoutingSessionInfo{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 533
    const-string v1, "sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 535
    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 536
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 537
    const-string v1, ", clientPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 538
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 539
    const-string v1, ", selectedRoutes={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 540
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 541
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 542
    const-string v3, ", selectableRoutes={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 543
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 545
    const-string v3, ", deselectableRoutes={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 546
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 548
    const-string v3, ", transferableRoutes={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 549
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 551
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    iget v2, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    iget v3, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    .line 552
    invoke-static {v1, v2, v3}, Landroid/media/MediaRoute2Info;->getVolumeString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 553
    const-string v1, ", transferReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 554
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 555
    const-string v1, ", transferInitiatorUserHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 556
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 557
    const-string v1, ", transferInitiatorPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 558
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 559
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 429
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mOriginalId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 435
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 436
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 437
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 438
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 442
    iget-boolean v0, p0, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 443
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    invoke-static {v0, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    .line 445
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    return-void
.end method
