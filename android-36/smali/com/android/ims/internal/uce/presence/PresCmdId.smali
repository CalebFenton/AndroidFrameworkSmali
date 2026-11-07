.class public Lcom/android/ims/internal/uce/presence/PresCmdId;
.super Ljava/lang/Object;
.source "PresCmdId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresCmdId;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o UCE_PRES_CMD_GETCONTACTCAP:I = 0x2

.field public static final greylist-max-o UCE_PRES_CMD_GETCONTACTLISTCAP:I = 0x3

.field public static final greylist-max-o UCE_PRES_CMD_GET_VERSION:I = 0x0

.field public static final greylist-max-o UCE_PRES_CMD_PUBLISHMYCAP:I = 0x1

.field public static final greylist-max-o UCE_PRES_CMD_REENABLE_SERVICE:I = 0x5

.field public static final greylist-max-o UCE_PRES_CMD_SETNEWFEATURETAG:I = 0x4

.field public static final greylist-max-o UCE_PRES_CMD_UNKNOWN:I = 0x6


# instance fields
.field private greylist-max-o mCmdId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresCmdId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdId;->mCmdId:I

    .line 73
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdId;->mCmdId:I

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCmdId;->readFromParcel(Landroid/os/Parcel;)V

    .line 105
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresCmdId-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCmdId()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdId;->mCmdId:I

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdId;->mCmdId:I

    .line 110
    return-void
.end method

.method public greylist-max-r setCmdId(I)V
    .registers 2
    .param p1, "nCmdId"    # I

    .line 64
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresCmdId;->mCmdId:I

    .line 65
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 84
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdId;->mCmdId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-void
.end method
