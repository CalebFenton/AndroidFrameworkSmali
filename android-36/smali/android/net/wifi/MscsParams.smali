.class public final Landroid/net/wifi/MscsParams;
.super Ljava/lang/Object;
.source "MscsParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/MscsParams$Builder;,
        Landroid/net/wifi/MscsParams$FrameClassifierField;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/MscsParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_FRAME_CLASSIFIER_FIELDS:I = 0x5f

.field public static final blacklist DEFAULT_USER_PRIORITY_BITMAP:I = 0xc0

.field public static final blacklist DEFAULT_USER_PRIORITY_LIMIT:I = 0x7

.field public static final whitelist FRAME_CLASSIFIER_DSCP:I = 0x20

.field public static final whitelist FRAME_CLASSIFIER_DST_IP_ADDR:I = 0x4

.field public static final whitelist FRAME_CLASSIFIER_DST_PORT:I = 0x10

.field public static final whitelist FRAME_CLASSIFIER_FLOW_LABEL:I = 0x80

.field public static final whitelist FRAME_CLASSIFIER_IP_VERSION:I = 0x1

.field public static final whitelist FRAME_CLASSIFIER_PROTOCOL_NEXT_HDR:I = 0x40

.field public static final whitelist FRAME_CLASSIFIER_SRC_IP_ADDR:I = 0x2

.field public static final whitelist FRAME_CLASSIFIER_SRC_PORT:I = 0x8

.field public static final blacklist MAX_STREAM_TIMEOUT_US:I = 0x3938700


# instance fields
.field private final blacklist mFrameClassifierFields:I

.field private final blacklist mStreamTimeoutUs:I

.field private final blacklist mUserPriorityBitmap:I

.field private final blacklist mUserPriorityLimit:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 203
    new-instance v0, Landroid/net/wifi/MscsParams$1;

    invoke-direct {v0}, Landroid/net/wifi/MscsParams$1;-><init>()V

    sput-object v0, Landroid/net/wifi/MscsParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIII)V
    .registers 5
    .param p1, "frameClassifierFields"    # I
    .param p2, "userPriorityBitmap"    # I
    .param p3, "userPriorityLimit"    # I
    .param p4, "streamTimeoutUs"    # I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Landroid/net/wifi/MscsParams;->mFrameClassifierFields:I

    .line 111
    iput p2, p0, Landroid/net/wifi/MscsParams;->mUserPriorityBitmap:I

    .line 112
    iput p3, p0, Landroid/net/wifi/MscsParams;->mUserPriorityLimit:I

    .line 113
    iput p4, p0, Landroid/net/wifi/MscsParams;->mStreamTimeoutUs:I

    .line 114
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIILandroid/net/wifi/MscsParams-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/MscsParams;-><init>(IIII)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/MscsParams;->mFrameClassifierFields:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/MscsParams;->mUserPriorityBitmap:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/MscsParams;->mUserPriorityLimit:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/MscsParams;->mStreamTimeoutUs:I

    .line 200
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 162
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 163
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 164
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/wifi/MscsParams;

    .line 165
    .local v2, "that":Landroid/net/wifi/MscsParams;
    iget v3, p0, Landroid/net/wifi/MscsParams;->mFrameClassifierFields:I

    iget v4, v2, Landroid/net/wifi/MscsParams;->mFrameClassifierFields:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/net/wifi/MscsParams;->mUserPriorityBitmap:I

    iget v4, v2, Landroid/net/wifi/MscsParams;->mUserPriorityBitmap:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/net/wifi/MscsParams;->mUserPriorityLimit:I

    iget v4, v2, Landroid/net/wifi/MscsParams;->mUserPriorityLimit:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/net/wifi/MscsParams;->mStreamTimeoutUs:I

    iget v4, v2, Landroid/net/wifi/MscsParams;->mStreamTimeoutUs:I

    if-ne v3, v4, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    .line 163
    .end local v2    # "that":Landroid/net/wifi/MscsParams;
    :cond_30
    :goto_30
    return v1
.end method

.method public whitelist getFrameClassifierFields()I
    .registers 2

    .line 124
    iget v0, p0, Landroid/net/wifi/MscsParams;->mFrameClassifierFields:I

    return v0
.end method

.method public whitelist getStreamTimeoutUs()I
    .registers 2

    .line 156
    iget v0, p0, Landroid/net/wifi/MscsParams;->mStreamTimeoutUs:I

    return v0
.end method

.method public whitelist getUserPriorityBitmap()I
    .registers 2

    .line 134
    iget v0, p0, Landroid/net/wifi/MscsParams;->mUserPriorityBitmap:I

    return v0
.end method

.method public whitelist getUserPriorityLimit()I
    .registers 2

    .line 145
    iget v0, p0, Landroid/net/wifi/MscsParams;->mUserPriorityLimit:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 174
    iget v0, p0, Landroid/net/wifi/MscsParams;->mFrameClassifierFields:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/MscsParams;->mUserPriorityBitmap:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/MscsParams;->mUserPriorityLimit:I

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/MscsParams;->mStreamTimeoutUs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 174
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 188
    iget v0, p0, Landroid/net/wifi/MscsParams;->mFrameClassifierFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Landroid/net/wifi/MscsParams;->mUserPriorityBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Landroid/net/wifi/MscsParams;->mUserPriorityLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Landroid/net/wifi/MscsParams;->mStreamTimeoutUs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    return-void
.end method
