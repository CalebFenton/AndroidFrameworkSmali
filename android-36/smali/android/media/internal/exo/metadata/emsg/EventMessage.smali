.class public final Landroid/media/internal/exo/metadata/emsg/EventMessage;
.super Ljava/lang/Object;
.source "EventMessage.java"

# interfaces
.implements Landroid/media/internal/exo/metadata/Metadata$Entry;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/emsg/EventMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ID3_FORMAT:Landroid/media/internal/exo/Format;

.field public static final blacklist ID3_SCHEME_ID_AOM:Ljava/lang/String; = "https://aomedia.org/emsg/ID3"

.field private static final blacklist SCTE35_FORMAT:Landroid/media/internal/exo/Format;

.field public static final blacklist SCTE35_SCHEME_ID:Ljava/lang/String; = "urn:scte:scte35:2014:bin"


# instance fields
.field public final blacklist durationMs:J

.field private blacklist hashCode:I

.field public final blacklist id:J

.field public final blacklist messageData:[B

.field public final blacklist schemeIdUri:Ljava/lang/String;

.field public final blacklist value:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    const-string v1, "application/id3"

    .line 53
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->ID3_FORMAT:Landroid/media/internal/exo/Format;

    .line 54
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    const-string v1, "application/x-scte35"

    .line 55
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->SCTE35_FORMAT:Landroid/media/internal/exo/Format;

    .line 177
    new-instance v0, Landroid/media/internal/exo/metadata/emsg/EventMessage$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/emsg/EventMessage$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->durationMs:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->id:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->messageData:[B

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V
    .registers 8

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    .line 86
    iput-wide p3, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->durationMs:J

    .line 87
    iput-wide p5, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->id:J

    .line 88
    iput-object p7, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->messageData:[B

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_41

    .line 138
    const-class v2, Landroid/media/internal/exo/metadata/emsg/EventMessage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_41

    .line 141
    :cond_10
    check-cast p1, Landroid/media/internal/exo/metadata/emsg/EventMessage;

    .line 142
    iget-wide v2, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->durationMs:J

    iget-wide v4, p1, Landroid/media/internal/exo/metadata/emsg/EventMessage;->durationMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_41

    iget-wide v2, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->id:J

    iget-wide v4, p1, Landroid/media/internal/exo/metadata/emsg/EventMessage;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_41

    iget-object v2, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 144
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    .line 145
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object p0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->messageData:[B

    iget-object p1, p1, Landroid/media/internal/exo/metadata/emsg/EventMessage;->messageData:[B

    .line 146
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_41

    return v0

    :cond_41
    :goto_41
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 121
    iget v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->hashCode:I

    if-nez v0, :cond_3c

    .line 123
    iget-object v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 124
    iget-object v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1c
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    .line 125
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->durationMs:J

    const/16 v3, 0x20

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 126
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->id:J

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 127
    iget-object v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->messageData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v2, v0

    .line 128
    iput v2, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->hashCode:I

    .line 130
    :cond_3c
    iget p0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->hashCode:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EMSG: scheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->durationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 170
    iget-object p2, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object p2, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->durationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    iget-wide v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 174
    iget-object p0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessage;->messageData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
