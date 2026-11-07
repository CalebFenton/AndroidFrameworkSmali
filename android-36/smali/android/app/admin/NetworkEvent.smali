.class public abstract Landroid/app/admin/NetworkEvent;
.super Ljava/lang/Object;
.source "NetworkEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o PARCEL_TOKEN_CONNECT_EVENT:I = 0x2

.field static final greylist-max-o PARCEL_TOKEN_DNS_EVENT:I = 0x1


# instance fields
.field greylist-max-o mId:J

.field greylist-max-o mPackageName:Ljava/lang/String;

.field greylist-max-o mTimestamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Landroid/app/admin/NetworkEvent$1;

    invoke-direct {v0}, Landroid/app/admin/NetworkEvent$1;-><init>()V

    sput-object v0, Landroid/app/admin/NetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;J)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/app/admin/NetworkEvent;->mPackageName:Ljava/lang/String;

    .line 51
    iput-wide p2, p0, Landroid/app/admin/NetworkEvent;->mTimestamp:J

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getId()J
    .registers 3

    .line 80
    iget-wide v0, p0, Landroid/app/admin/NetworkEvent;->mId:J

    return-wide v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/app/admin/NetworkEvent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTimestamp()J
    .registers 3

    .line 67
    iget-wide v0, p0, Landroid/app/admin/NetworkEvent;->mTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o setId(J)V
    .registers 3
    .param p1, "id"    # J

    .line 72
    iput-wide p1, p0, Landroid/app/admin/NetworkEvent;->mId:J

    .line 73
    return-void
.end method

.method public abstract whitelist writeToParcel(Landroid/os/Parcel;I)V
.end method
