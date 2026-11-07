.class public final Landroid/media/internal/exo/metadata/id3/TextInformationFrame;
.super Landroid/media/internal/exo/metadata/id3/Id3Frame;
.source "TextInformationFrame.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/id3/TextInformationFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist description:Ljava/lang/String;

.field public final blacklist value:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 186
    new-instance v0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/id3/TextInformationFrame$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 35
    invoke-direct {p0, p1}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p2, p0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    .line 154
    const-class v2, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_31

    .line 157
    :cond_10
    check-cast p1, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    .line 158
    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 159
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    iget-object p1, p1, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    .line 160
    invoke-static {p0, p1}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    return v0

    :cond_31
    :goto_31
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 166
    iget-object v0, p0, Landroid/media/internal/exo/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 167
    iget-object v0, p0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 168
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_21
    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/internal/exo/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 181
    iget-object p2, p0, Landroid/media/internal/exo/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object p2, p0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
