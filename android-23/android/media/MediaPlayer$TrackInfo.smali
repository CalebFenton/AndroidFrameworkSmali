.class public Landroid/media/MediaPlayer$TrackInfo;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$TrackInfo$1;
    }
.end annotation


# static fields
.field static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/MediaPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEDIA_TRACK_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TRACK_TYPE_METADATA:I = 0x5

.field public static final MEDIA_TRACK_TYPE_SUBTITLE:I = 0x4

.field public static final MEDIA_TRACK_TYPE_TIMEDTEXT:I = 0x3

.field public static final MEDIA_TRACK_TYPE_UNKNOWN:I = 0x0

.field public static final MEDIA_TRACK_TYPE_VIDEO:I = 0x1


# instance fields
.field final mFormat:Landroid/media/MediaFormat;

.field final mTrackType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2041
    new-instance v0, Landroid/media/MediaPlayer$TrackInfo$1;

    #@2
    invoke-direct {v0}, Landroid/media/MediaPlayer$TrackInfo$1;-><init>()V

    #@5
    .line 2040
    sput-object v0, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1923
    return-void
.end method

.method constructor <init>(ILandroid/media/MediaFormat;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 1981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1982
    iput p1, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    #@5
    .line 1983
    iput-object p2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    #@7
    .line 1981
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1966
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v2

    #@7
    iput v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    #@9
    .line 1969
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 1970
    .local v1, "mime":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 1971
    .local v0, "language":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/media/MediaFormat;->createSubtitleFormat(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaFormat;

    #@14
    move-result-object v2

    #@15
    iput-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    #@17
    .line 1973
    iget v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    #@19
    const/4 v3, 0x4

    #@1a
    if-ne v2, v3, :cond_0

    #@1c
    .line 1974
    iget-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    #@1e
    const-string/jumbo v3, "is-autoselect"

    #@21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v4

    #@25
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    #@28
    .line 1975
    iget-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    #@2a
    const-string/jumbo v3, "is-default"

    #@2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v4

    #@31
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    #@34
    .line 1976
    iget-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    #@36
    const-string/jumbo v3, "is-forced-subtitle"

    #@39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v4

    #@3d
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    #@40
    .line 1965
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1991
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getFormat()Landroid/media/MediaFormat;
    .locals 2

    #@0
    .prologue
    .line 1948
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    #@2
    const/4 v1, 0x3

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1949
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    #@7
    const/4 v1, 0x4

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 1950
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    #@c
    return-object v0

    #@d
    .line 1952
    :cond_1
    const/4 v0, 0x0

    #@e
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1939
    iget-object v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    #@2
    const-string/jumbo v2, "language"

    #@5
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 1940
    .local v0, "language":Ljava/lang/String;
    if-nez v0, :cond_0

    #@b
    const-string/jumbo v0, "und"

    #@e
    .end local v0    # "language":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    #@0
    .prologue
    .line 1929
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2012
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 2013
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/media/MediaPlayer$TrackInfo;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 2014
    const/16 v1, 0x7b

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 2015
    iget v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    #@19
    packed-switch v1, :pswitch_data_0

    #@1c
    .line 2029
    const-string/jumbo v1, "UNKNOWN"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 2032
    :goto_0
    const-string/jumbo v1, ", "

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    #@2b
    invoke-virtual {v2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    .line 2033
    const-string/jumbo v1, "}"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 2034
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    return-object v1

    #@3d
    .line 2017
    :pswitch_0
    const-string/jumbo v1, "VIDEO"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    goto :goto_0

    #@44
    .line 2020
    :pswitch_1
    const-string/jumbo v1, "AUDIO"

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    goto :goto_0

    #@4b
    .line 2023
    :pswitch_2
    const-string/jumbo v1, "TIMEDTEXT"

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    goto :goto_0

    #@52
    .line 2026
    :pswitch_3
    const-string/jumbo v1, "SUBTITLE"

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    goto :goto_0

    #@59
    .line 2015
    nop

    #@5a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1999
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 2000
    invoke-virtual {p0}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 2002
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    #@e
    const/4 v1, 0x4

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 2003
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    #@13
    const-string/jumbo v1, "mime"

    #@16
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 2004
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    #@1f
    const-string/jumbo v1, "is-autoselect"

    #@22
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    #@25
    move-result v0

    #@26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 2005
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    #@2b
    const-string/jumbo v1, "is-default"

    #@2e
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    #@31
    move-result v0

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 2006
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    #@37
    const-string/jumbo v1, "is-forced-subtitle"

    #@3a
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    #@3d
    move-result v0

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 1998
    :cond_0
    return-void
.end method
