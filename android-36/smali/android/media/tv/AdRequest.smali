.class public final Landroid/media/tv/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/AdRequest$RequestType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/AdRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist KEY_AUDIO_METADATA:Ljava/lang/String; = "key_audio_metadata"

.field public static final blacklist KEY_VIDEO_METADATA:Ljava/lang/String; = "key_video_metadata"

.field public static final whitelist REQUEST_TYPE_START:I = 0x1

.field public static final whitelist REQUEST_TYPE_STOP:I = 0x2


# instance fields
.field private final blacklist mEchoInterval:J

.field private final blacklist mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mId:I

.field private final blacklist mMediaFileType:Ljava/lang/String;

.field private final blacklist mMetadata:Landroid/os/Bundle;

.field private final blacklist mRequestType:I

.field private final blacklist mStartTime:J

.field private final blacklist mStopTime:J

.field private final blacklist mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Landroid/media/tv/AdRequest$1;

    invoke-direct {v0}, Landroid/media/tv/AdRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILandroid/net/Uri;JJJLandroid/os/Bundle;)V
    .registers 24
    .param p1, "id"    # I
    .param p2, "requestType"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "startTime"    # J
    .param p6, "stopTime"    # J
    .param p8, "echoInterval"    # J
    .param p10, "metadata"    # Landroid/os/Bundle;

    .line 100
    const/4 v3, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Landroid/media/tv/AdRequest;-><init>(IILandroid/os/ParcelFileDescriptor;Landroid/net/Uri;JJJLjava/lang/String;Landroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method public constructor whitelist <init>(IILandroid/os/ParcelFileDescriptor;JJJLjava/lang/String;Landroid/os/Bundle;)V
    .registers 25
    .param p1, "id"    # I
    .param p2, "requestType"    # I
    .param p3, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "startTime"    # J
    .param p6, "stopTime"    # J
    .param p8, "echoInterval"    # J
    .param p10, "mediaFileType"    # Ljava/lang/String;
    .param p11, "metadata"    # Landroid/os/Bundle;

    .line 94
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroid/media/tv/AdRequest;-><init>(IILandroid/os/ParcelFileDescriptor;Landroid/net/Uri;JJJLjava/lang/String;Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method private constructor blacklist <init>(IILandroid/os/ParcelFileDescriptor;Landroid/net/Uri;JJJLjava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "id"    # I
    .param p2, "requestType"    # I
    .param p3, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "startTime"    # J
    .param p7, "stopTime"    # J
    .param p9, "echoInterval"    # J
    .param p11, "mediaFileType"    # Ljava/lang/String;
    .param p12, "metadata"    # Landroid/os/Bundle;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Landroid/media/tv/AdRequest;->mId:I

    .line 108
    iput p2, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    .line 109
    iput-object p3, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 110
    iput-wide p5, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    .line 111
    iput-wide p7, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    .line 112
    iput-wide p9, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    .line 113
    iput-object p11, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    .line 114
    iput-object p12, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    .line 115
    iput-object p4, p0, Landroid/media/tv/AdRequest;->mUri:Landroid/net/Uri;

    .line 116
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/AdRequest;->mId:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .local v0, "readInt":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_24

    .line 123
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 124
    iput-object v2, p0, Landroid/media/tv/AdRequest;->mUri:Landroid/net/Uri;

    goto :goto_3c

    .line 125
    :cond_24
    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "stringUri":Ljava/lang/String;
    if-nez v1, :cond_2f

    move-object v3, v2

    goto :goto_33

    :cond_2f
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_33
    iput-object v3, p0, Landroid/media/tv/AdRequest;->mUri:Landroid/net/Uri;

    .line 128
    iput-object v2, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 129
    .end local v1    # "stringUri":Ljava/lang/String;
    goto :goto_3c

    .line 130
    :cond_38
    iput-object v2, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 131
    iput-object v2, p0, Landroid/media/tv/AdRequest;->mUri:Landroid/net/Uri;

    .line 133
    :goto_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    .line 138
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/tv/AdRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/AdRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEchoIntervalMillis()J
    .registers 3

    .line 201
    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    return-wide v0
.end method

.method public whitelist getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/media/tv/AdRequest;->mId:I

    return v0
.end method

.method public whitelist getMediaFileType()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMetadata()Landroid/os/Bundle;
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getRequestType()I
    .registers 2

    .line 152
    iget v0, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    return v0
.end method

.method public whitelist getStartTimeMillis()J
    .registers 3

    .line 182
    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    return-wide v0
.end method

.method public whitelist getStopTimeMillis()J
    .registers 3

    .line 190
    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    return-wide v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 237
    iget v0, p0, Landroid/media/tv/AdRequest;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_18

    .line 240
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2e

    .line 242
    :cond_18
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2a

    .line 243
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "stringUri":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    .end local v0    # "stringUri":Ljava/lang/String;
    goto :goto_2e

    .line 247
    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    :goto_2e
    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 250
    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 252
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 254
    return-void
.end method
