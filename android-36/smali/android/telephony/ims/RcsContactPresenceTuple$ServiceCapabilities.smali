.class public final Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
.super Ljava/lang/Object;
.source "RcsContactPresenceTuple.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsContactPresenceTuple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;,
        Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$DuplexMode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DUPLEX_MODE_FULL:Ljava/lang/String; = "full"

.field public static final whitelist DUPLEX_MODE_HALF:Ljava/lang/String; = "half"

.field public static final whitelist DUPLEX_MODE_RECEIVE_ONLY:Ljava/lang/String; = "receive-only"

.field public static final whitelist DUPLEX_MODE_SEND_ONLY:Ljava/lang/String; = "send-only"


# instance fields
.field private final blacklist mIsAudioCapable:Z

.field private final blacklist mIsVideoCapable:Z

.field private final blacklist mSupportedDuplexModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUnsupportedDuplexModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSupportedDuplexModeList(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mSupportedDuplexModeList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnsupportedDuplexModeList(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mUnsupportedDuplexModeList:Ljava/util/List;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 313
    new-instance v0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mSupportedDuplexModeList:Ljava/util/List;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mUnsupportedDuplexModeList:Ljava/util/List;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsAudioCapable:Z

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsVideoCapable:Z

    .line 296
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mSupportedDuplexModeList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 297
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mUnsupportedDuplexModeList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 298
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsContactPresenceTuple-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor blacklist <init>(ZZ)V
    .registers 4
    .param p1, "isAudioCapable"    # Z
    .param p2, "isVideoCapable"    # Z

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mSupportedDuplexModeList:Ljava/util/List;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mUnsupportedDuplexModeList:Ljava/util/List;

    .line 289
    iput-boolean p1, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsAudioCapable:Z

    .line 290
    iput-boolean p2, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsVideoCapable:Z

    .line 291
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSupportedDuplexModes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mSupportedDuplexModeList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUnsupportedDuplexModes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mUnsupportedDuplexModeList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isAudioCapable()Z
    .registers 2

    .line 331
    iget-boolean v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsAudioCapable:Z

    return v0
.end method

.method public whitelist isVideoCapable()Z
    .registers 2

    .line 339
    iget-boolean v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsVideoCapable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "servCaps{a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsAudioCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsVideoCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mSupportedDuplexModeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unsupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mUnsupportedDuplexModeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 302
    iget-boolean v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsAudioCapable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 303
    iget-boolean v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mIsVideoCapable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 304
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mSupportedDuplexModeList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 305
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->mUnsupportedDuplexModeList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 306
    return-void
.end method
