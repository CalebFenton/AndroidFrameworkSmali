.class public final Landroid/media/tv/TunedInfo;
.super Ljava/lang/Object;
.source "TunedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TunedInfo$AppType;
    }
.end annotation


# static fields
.field public static final whitelist APP_TAG_SELF:I = 0x0

.field public static final whitelist APP_TYPE_NON_SYSTEM:I = 0x3

.field public static final whitelist APP_TYPE_SELF:I = 0x1

.field public static final whitelist APP_TYPE_SYSTEM:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TunedInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist TAG:Ljava/lang/String; = "TunedInfo"


# instance fields
.field private final blacklist mAppTag:I

.field private final blacklist mAppType:I

.field private final blacklist mChannelUri:Landroid/net/Uri;

.field private final blacklist mInputId:Ljava/lang/String;

.field private final blacklist mIsMainSession:Z

.field private final blacklist mIsRecordingSession:Z

.field private final blacklist mIsVisible:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/media/tv/TunedInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TunedInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TunedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "uriString":Ljava/lang/String;
    if-nez v0, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_15
    iput-object v1, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_21

    move v1, v3

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    iput-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_2c

    move v1, v3

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    iput-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_36

    move v2, v3

    :cond_36
    iput-boolean v2, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    .line 124
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/TunedInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TunedInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/net/Uri;ZZZII)V
    .registers 8
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "isRecordingSession"    # Z
    .param p4, "isVisible"    # Z
    .param p5, "isMainSession"    # Z
    .param p6, "appType"    # I
    .param p7, "appTag"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    .line 107
    iput-boolean p3, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    .line 108
    iput-boolean p4, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    .line 109
    iput-boolean p5, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    .line 110
    iput p6, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    .line 111
    iput p7, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    .line 112
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 218
    instance-of v0, p1, Landroid/media/tv/TunedInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 219
    return v1

    .line 222
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/media/tv/TunedInfo;

    .line 224
    .local v0, "other":Landroid/media/tv/TunedInfo;
    iget-object v2, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/media/tv/TunedInfo;->getInputId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    iget-object v3, v0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    .line 225
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-boolean v2, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    iget-boolean v3, v0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    if-ne v2, v3, :cond_3f

    iget-boolean v2, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    iget-boolean v3, v0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    if-ne v2, v3, :cond_3f

    iget-boolean v2, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    iget-boolean v3, v0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    if-ne v2, v3, :cond_3f

    iget v2, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    iget v3, v0, Landroid/media/tv/TunedInfo;->mAppType:I

    if-ne v2, v3, :cond_3f

    iget v2, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    iget v3, v0, Landroid/media/tv/TunedInfo;->mAppTag:I

    if-ne v2, v3, :cond_3f

    const/4 v1, 0x1

    goto :goto_40

    :cond_3f
    nop

    .line 224
    :goto_40
    return v1
.end method

.method public whitelist getAppTag()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    return v0
.end method

.method public whitelist getAppType()I
    .registers 2

    .line 185
    iget v0, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    return v0
.end method

.method public whitelist getChannelUri()Landroid/net/Uri;
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getInputId()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 235
    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    iget-boolean v2, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    .line 236
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v5, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    .line 237
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 235
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isMainSession()Z
    .registers 2

    .line 168
    iget-boolean v0, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    return v0
.end method

.method public whitelist isRecordingSession()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    return v0
.end method

.method public whitelist isVisible()Z
    .registers 2

    .line 159
    iget-boolean v0, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inputID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";channelUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";isRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";isMainSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";appType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";appTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 195
    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Landroid/media/tv/TunedInfo;->mChannelUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "uriString":Ljava/lang/String;
    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsRecordingSession:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsVisible:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-boolean v1, p0, Landroid/media/tv/TunedInfo;->mIsMainSession:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v1, p0, Landroid/media/tv/TunedInfo;->mAppType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v1, p0, Landroid/media/tv/TunedInfo;->mAppTag:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    return-void
.end method
