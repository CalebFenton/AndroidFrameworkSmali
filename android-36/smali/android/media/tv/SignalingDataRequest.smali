.class public final Landroid/media/tv/SignalingDataRequest;
.super Landroid/media/tv/BroadcastInfoRequest;
.source "SignalingDataRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/SignalingDataRequest$SignalingMetadata;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/SignalingDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REQUEST_TYPE:I = 0x9

.field public static final whitelist SIGNALING_DATA_NO_GROUP_ID:I = -0x1

.field public static final whitelist SIGNALING_METADATA_AEAT:Ljava/lang/String; = "AEAT"

.field public static final whitelist SIGNALING_METADATA_AEI:Ljava/lang/String; = "AEI"

.field public static final whitelist SIGNALING_METADATA_APD:Ljava/lang/String; = "APD"

.field public static final whitelist SIGNALING_METADATA_ASD:Ljava/lang/String; = "ASD"

.field public static final whitelist SIGNALING_METADATA_ASPD:Ljava/lang/String; = "ASPD"

.field public static final whitelist SIGNALING_METADATA_CAD:Ljava/lang/String; = "CAD"

.field public static final whitelist SIGNALING_METADATA_CDT:Ljava/lang/String; = "CDT"

.field public static final whitelist SIGNALING_METADATA_CRIT:Ljava/lang/String; = "CRIT"

.field public static final whitelist SIGNALING_METADATA_DCIT:Ljava/lang/String; = "DCIT"

.field public static final whitelist SIGNALING_METADATA_DWD:Ljava/lang/String; = "DWD"

.field public static final whitelist SIGNALING_METADATA_EMSG:Ljava/lang/String; = "EMSG"

.field public static final whitelist SIGNALING_METADATA_EVTI:Ljava/lang/String; = "EVTI"

.field public static final whitelist SIGNALING_METADATA_HELD:Ljava/lang/String; = "HELD"

.field public static final whitelist SIGNALING_METADATA_IED:Ljava/lang/String; = "IED"

.field public static final whitelist SIGNALING_METADATA_MPD:Ljava/lang/String; = "MPD"

.field public static final whitelist SIGNALING_METADATA_MPIT:Ljava/lang/String; = "MPIT"

.field public static final whitelist SIGNALING_METADATA_MPT:Ljava/lang/String; = "MPT"

.field public static final whitelist SIGNALING_METADATA_OSN:Ljava/lang/String; = "OSN"

.field public static final whitelist SIGNALING_METADATA_PAT:Ljava/lang/String; = "PAT"

.field public static final whitelist SIGNALING_METADATA_RDT:Ljava/lang/String; = "RDT"

.field public static final whitelist SIGNALING_METADATA_RRT:Ljava/lang/String; = "RRT"

.field public static final whitelist SIGNALING_METADATA_RSAT:Ljava/lang/String; = "RSAT"

.field public static final whitelist SIGNALING_METADATA_SLT:Ljava/lang/String; = "SLT"

.field public static final whitelist SIGNALING_METADATA_SMT:Ljava/lang/String; = "SMT"

.field public static final whitelist SIGNALING_METADATA_SSD:Ljava/lang/String; = "SSD"

.field public static final whitelist SIGNALING_METADATA_STSID:Ljava/lang/String; = "STSID"

.field public static final whitelist SIGNALING_METADATA_STT:Ljava/lang/String; = "STT"

.field public static final whitelist SIGNALING_METADATA_USBD:Ljava/lang/String; = "USBD"

.field public static final whitelist SIGNALING_METADATA_USD:Ljava/lang/String; = "USD"

.field public static final whitelist SIGNALING_METADATA_VSPD:Ljava/lang/String; = "VSPD"


# instance fields
.field private final blacklist mGroup:I

.field private final blacklist mSignalingDataTypes:Ljava/util/List;
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

    .line 43
    new-instance v0, Landroid/media/tv/SignalingDataRequest$1;

    invoke-direct {v0}, Landroid/media/tv/SignalingDataRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/SignalingDataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIILjava/util/List;)V
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "option"    # I
    .param p3, "group"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p4, "signalingDataTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    .line 211
    iput p3, p0, Landroid/media/tv/SignalingDataRequest;->mGroup:I

    .line 212
    iput-object p4, p0, Landroid/media/tv/SignalingDataRequest;->mSignalingDataTypes:Ljava/util/List;

    .line 213
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/tv/SignalingDataRequest;->mSignalingDataTypes:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 260
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 263
    .local v0, "group":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v1, "signalingDataTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 266
    iput v0, p0, Landroid/media/tv/SignalingDataRequest;->mGroup:I

    .line 267
    iput-object v1, p0, Landroid/media/tv/SignalingDataRequest;->mSignalingDataTypes:Ljava/util/List;

    .line 268
    const-class v2, Landroid/annotation/NonNull;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/media/tv/SignalingDataRequest;->mSignalingDataTypes:Ljava/util/List;

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/SignalingDataRequest;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 218
    new-instance v0, Landroid/media/tv/SignalingDataRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/SignalingDataRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGroup()I
    .registers 2

    .line 232
    iget v0, p0, Landroid/media/tv/SignalingDataRequest;->mGroup:I

    return v0
.end method

.method public whitelist getSignalingDataTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Landroid/media/tv/SignalingDataRequest;->mSignalingDataTypes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 254
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 255
    iget v0, p0, Landroid/media/tv/SignalingDataRequest;->mGroup:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-object v0, p0, Landroid/media/tv/SignalingDataRequest;->mSignalingDataTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 257
    return-void
.end method
