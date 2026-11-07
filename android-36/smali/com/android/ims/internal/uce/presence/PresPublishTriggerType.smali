.class public Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
.super Ljava/lang/Object;
.source "PresPublishTriggerType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o UCE_PRES_PUBLISH_TRIGGER_ETAG_EXPIRED:I = 0x0

.field public static final greylist-max-o UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_2G:I = 0x6

.field public static final greylist-max-o UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_3G:I = 0x5

.field public static final greylist-max-o UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_EHRPD:I = 0x3

.field public static final greylist-max-o UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_HSPAPLUS:I = 0x4

.field public static final greylist-max-o UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_IWLAN:I = 0x8

.field public static final greylist-max-o UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_LTE_VOPS_DISABLED:I = 0x1

.field public static final greylist-max-o UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_LTE_VOPS_ENABLED:I = 0x2

.field public static final blacklist UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_NR5G_VOPS_DISABLED:I = 0xa

.field public static final blacklist UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_NR5G_VOPS_ENABLED:I = 0xb

.field public static final greylist-max-o UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_WLAN:I = 0x7

.field public static final greylist-max-o UCE_PRES_PUBLISH_TRIGGER_UNKNOWN:I = 0x9


# instance fields
.field private greylist-max-o mPublishTriggerType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->mPublishTriggerType:I

    .line 85
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->mPublishTriggerType:I

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->readFromParcel(Landroid/os/Parcel;)V

    .line 115
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresPublishTriggerType-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getPublishTrigeerType()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->mPublishTriggerType:I

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->mPublishTriggerType:I

    .line 120
    return-void
.end method

.method public greylist-max-r setPublishTrigeerType(I)V
    .registers 2
    .param p1, "nPublishTriggerType"    # I

    .line 76
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->mPublishTriggerType:I

    .line 77
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->mPublishTriggerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    return-void
.end method
