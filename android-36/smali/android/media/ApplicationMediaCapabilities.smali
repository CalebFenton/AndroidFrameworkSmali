.class public final Landroid/media/ApplicationMediaCapabilities;
.super Ljava/lang/Object;
.source "ApplicationMediaCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ApplicationMediaCapabilities$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/ApplicationMediaCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ApplicationMediaCapabilities"


# instance fields
.field private blacklist mIsSlowMotionSupported:Z

.field private blacklist mSupportedHdrTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupportedVideoMimeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnsupportedHdrTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnsupportedVideoMimeTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 204
    new-instance v0, Landroid/media/ApplicationMediaCapabilities$1;

    invoke-direct {v0}, Landroid/media/ApplicationMediaCapabilities$1;-><init>()V

    sput-object v0, Landroid/media/ApplicationMediaCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/ApplicationMediaCapabilities$Builder;)V
    .registers 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedVideoMimeTypes:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/ApplicationMediaCapabilities;->mUnsupportedVideoMimeTypes:Ljava/util/Set;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedHdrTypes:Ljava/util/Set;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/ApplicationMediaCapabilities;->mUnsupportedHdrTypes:Ljava/util/Set;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Landroid/media/ApplicationMediaCapabilities;->mIsSlowMotionSupported:Z

    .line 102
    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedVideoMimeTypes:Ljava/util/Set;

    invoke-static {p1}, Landroid/media/ApplicationMediaCapabilities$Builder;->-$$Nest$mgetSupportedVideoMimeTypes(Landroid/media/ApplicationMediaCapabilities$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 103
    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities;->mUnsupportedVideoMimeTypes:Ljava/util/Set;

    invoke-static {p1}, Landroid/media/ApplicationMediaCapabilities$Builder;->-$$Nest$mgetUnsupportedVideoMimeTypes(Landroid/media/ApplicationMediaCapabilities$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedHdrTypes:Ljava/util/Set;

    invoke-static {p1}, Landroid/media/ApplicationMediaCapabilities$Builder;->-$$Nest$mgetSupportedHdrTypes(Landroid/media/ApplicationMediaCapabilities$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities;->mUnsupportedHdrTypes:Ljava/util/Set;

    invoke-static {p1}, Landroid/media/ApplicationMediaCapabilities$Builder;->-$$Nest$mgetUnsupportedHdrTypes(Landroid/media/ApplicationMediaCapabilities$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 106
    invoke-static {p1}, Landroid/media/ApplicationMediaCapabilities$Builder;->-$$Nest$fgetmIsSlowMotionSupported(Landroid/media/ApplicationMediaCapabilities$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/media/ApplicationMediaCapabilities;->mIsSlowMotionSupported:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/ApplicationMediaCapabilities$Builder;Landroid/media/ApplicationMediaCapabilities-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Landroid/media/ApplicationMediaCapabilities;-><init>(Landroid/media/ApplicationMediaCapabilities$Builder;)V

    return-void
.end method

.method public static whitelist createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/media/ApplicationMediaCapabilities;
    .registers 2

    .line 314
    new-instance v0, Landroid/media/ApplicationMediaCapabilities$Builder;

    invoke-direct {v0}, Landroid/media/ApplicationMediaCapabilities$Builder;-><init>()V

    .line 315
    invoke-static {v0, p0}, Landroid/media/ApplicationMediaCapabilities$Builder;->-$$Nest$mparseXml(Landroid/media/ApplicationMediaCapabilities$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 316
    invoke-virtual {v0}, Landroid/media/ApplicationMediaCapabilities$Builder;->build()Landroid/media/ApplicationMediaCapabilities;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getSupportedHdrTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedHdrTypes:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getSupportedVideoMimeTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedVideoMimeTypes:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getUnsupportedHdrTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/media/ApplicationMediaCapabilities;->mUnsupportedHdrTypes:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getUnsupportedVideoMimeTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/media/ApplicationMediaCapabilities;->mUnsupportedVideoMimeTypes:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist isFormatSpecified(Ljava/lang/String;)Z
    .registers 3

    .line 153
    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedVideoMimeTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities;->mUnsupportedVideoMimeTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedHdrTypes:Ljava/util/Set;

    .line 154
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object p0, p0, Landroid/media/ApplicationMediaCapabilities;->mUnsupportedHdrTypes:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist isHdrTypeSupported(Ljava/lang/String;)Z
    .registers 2

    .line 138
    iget-object p0, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedHdrTypes:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isSlowMotionSupported()Z
    .registers 1

    .line 286
    iget-boolean p0, p0, Landroid/media/ApplicationMediaCapabilities;->mIsSlowMotionSupported:Z

    return p0
.end method

.method public whitelist isVideoMimeTypeSupported(Ljava/lang/String;)Z
    .registers 2

    .line 121
    iget-object p0, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedVideoMimeTypes:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 194
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported Video MimeTypes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedVideoMimeTypes:Ljava/util/Set;

    .line 195
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Unsupported Video MimeTypes: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities;->mUnsupportedVideoMimeTypes:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Supported HDR types: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedHdrTypes:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Unsupported HDR types: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/media/ApplicationMediaCapabilities;->mUnsupportedHdrTypes:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Supported slow motion: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/media/ApplicationMediaCapabilities;->mIsSlowMotionSupported:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 169
    iget-object p2, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedVideoMimeTypes:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object p2, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedVideoMimeTypes:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_f

    .line 174
    :cond_1f
    iget-object p2, p0, Landroid/media/ApplicationMediaCapabilities;->mUnsupportedVideoMimeTypes:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object p2, p0, Landroid/media/ApplicationMediaCapabilities;->mUnsupportedVideoMimeTypes:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2e

    .line 179
    :cond_3e
    iget-object p2, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedHdrTypes:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object p2, p0, Landroid/media/ApplicationMediaCapabilities;->mSupportedHdrTypes:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4d

    .line 184
    :cond_5d
    iget-object p2, p0, Landroid/media/ApplicationMediaCapabilities;->mUnsupportedHdrTypes:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object p2, p0, Landroid/media/ApplicationMediaCapabilities;->mUnsupportedHdrTypes:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6c

    .line 189
    :cond_7c
    iget-boolean p0, p0, Landroid/media/ApplicationMediaCapabilities;->mIsSlowMotionSupported:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
