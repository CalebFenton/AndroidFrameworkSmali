.class public final Landroid/app/search/SearchTargetEvent;
.super Ljava/lang/Object;
.source "SearchTargetEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/search/SearchTargetEvent$Builder;,
        Landroid/app/search/SearchTargetEvent$FlagType;,
        Landroid/app/search/SearchTargetEvent$ActionType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DELETE:I = 0x9

.field public static final whitelist ACTION_DISMISS:I = 0xa

.field public static final whitelist ACTION_DRAGNDROP:I = 0x7

.field public static final whitelist ACTION_LAUNCH_KEYBOARD_FOCUS:I = 0x6

.field public static final whitelist ACTION_LAUNCH_TOUCH:I = 0x5

.field public static final whitelist ACTION_LONGPRESS:I = 0x4

.field public static final whitelist ACTION_SURFACE_INVISIBLE:I = 0x8

.field public static final whitelist ACTION_SURFACE_VISIBLE:I = 0x1

.field public static final whitelist ACTION_TAP:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/search/SearchTargetEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_IME_SHOWN:I = 0x1


# instance fields
.field private final blacklist mAction:I

.field private blacklist mFlags:I

.field private final blacklist mLocation:Ljava/lang/String;

.field private final blacklist mTargetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 212
    new-instance v0, Landroid/app/search/SearchTargetEvent$1;

    invoke-direct {v0}, Landroid/app/search/SearchTargetEvent$1;-><init>()V

    sput-object v0, Landroid/app/search/SearchTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    .line 141
    iget-object v0, p0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/search/SearchTargetEvent;->mAction:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/search/SearchTargetEvent;->mFlags:I

    .line 145
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/search/SearchTargetEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/search/SearchTargetEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Ljava/lang/String;II)V
    .registers 6
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "actionType"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 132
    .local p1, "targetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    .line 134
    iput-object p2, p0, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    .line 135
    iput p3, p0, Landroid/app/search/SearchTargetEvent;->mAction:I

    .line 136
    iput p4, p0, Landroid/app/search/SearchTargetEvent;->mFlags:I

    .line 137
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Ljava/lang/String;IILandroid/app/search/SearchTargetEvent-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/search/SearchTargetEvent;-><init>(Ljava/util/List;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 192
    :cond_14
    move-object v0, p1

    check-cast v0, Landroid/app/search/SearchTargetEvent;

    .line 196
    .local v0, "other":Landroid/app/search/SearchTargetEvent;
    iget-object v2, p0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    iget-object v3, v0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    .line 193
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget v2, p0, Landroid/app/search/SearchTargetEvent;->mAction:I

    iget v3, v0, Landroid/app/search/SearchTargetEvent;->mAction:I

    if-ne v2, v3, :cond_37

    iget v2, p0, Landroid/app/search/SearchTargetEvent;->mFlags:I

    iget v3, v0, Landroid/app/search/SearchTargetEvent;->mFlags:I

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_37

    .line 196
    iget-object v2, v0, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_3f

    const/4 v1, 0x1

    goto :goto_3f

    :cond_37
    iget-object v1, p0, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 193
    :cond_3f
    :goto_3f
    return v1
.end method

.method public whitelist getAction()I
    .registers 2

    .line 176
    iget v0, p0, Landroid/app/search/SearchTargetEvent;->mAction:I

    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/app/search/SearchTargetEvent;->mFlags:I

    return v0
.end method

.method public whitelist getLaunchLocation()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTargetId()Ljava/lang/String;
    .registers 3

    .line 152
    iget-object v0, p0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTargetIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 185
    iget-object v0, p0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/app/search/SearchTargetEvent;->mAction:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 206
    iget-object v0, p0, Landroid/app/search/SearchTargetEvent;->mTargetIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 207
    iget-object v0, p0, Landroid/app/search/SearchTargetEvent;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget v0, p0, Landroid/app/search/SearchTargetEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Landroid/app/search/SearchTargetEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    return-void
.end method
