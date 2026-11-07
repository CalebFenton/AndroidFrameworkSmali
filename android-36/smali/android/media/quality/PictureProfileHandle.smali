.class public final Landroid/media/quality/PictureProfileHandle;
.super Ljava/lang/Object;
.source "PictureProfileHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/PictureProfileHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NONE:Landroid/media/quality/PictureProfileHandle;


# instance fields
.field private final blacklist mId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 39
    new-instance v0, Landroid/media/quality/PictureProfileHandle;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/quality/PictureProfileHandle;-><init>(J)V

    sput-object v0, Landroid/media/quality/PictureProfileHandle;->NONE:Landroid/media/quality/PictureProfileHandle;

    .line 83
    new-instance v0, Landroid/media/quality/PictureProfileHandle$1;

    invoke-direct {v0}, Landroid/media/quality/PictureProfileHandle$1;-><init>()V

    sput-object v0, Landroid/media/quality/PictureProfileHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 3
    .param p1, "id"    # J

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Landroid/media/quality/PictureProfileHandle;->mId:J

    .line 46
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/quality/PictureProfileHandle;->mId:J

    .line 98
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/quality/PictureProfileHandle-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/quality/PictureProfileHandle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getId()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 61
    iget-wide v0, p0, Landroid/media/quality/PictureProfileHandle;->mId:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 69
    iget-wide v0, p0, Landroid/media/quality/PictureProfileHandle;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    return-void
.end method
