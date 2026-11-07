.class public final Landroid/app/ondeviceintelligence/TokenInfo;
.super Ljava/lang/Object;
.source "TokenInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ondeviceintelligence/TokenInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCount:J

.field private final blacklist mInfoParams:Landroid/os/PersistableBundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Landroid/app/ondeviceintelligence/TokenInfo$1;

    invoke-direct {v0}, Landroid/app/ondeviceintelligence/TokenInfo$1;-><init>()V

    sput-object v0, Landroid/app/ondeviceintelligence/TokenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(J)V
    .registers 4
    .param p1, "count"    # J

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mCount:J

    .line 53
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mInfoParams:Landroid/os/PersistableBundle;

    .line 54
    return-void
.end method

.method public constructor whitelist <init>(JLandroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "count"    # J
    .param p3, "persistableBundle"    # Landroid/os/PersistableBundle;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mCount:J

    .line 45
    iput-object p3, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mInfoParams:Landroid/os/PersistableBundle;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCount()J
    .registers 3

    .line 60
    iget-wide v0, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mCount:J

    return-wide v0
.end method

.method public whitelist getInfoParams()Landroid/os/PersistableBundle;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mInfoParams:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    iget-wide v0, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-object v0, p0, Landroid/app/ondeviceintelligence/TokenInfo;->mInfoParams:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 80
    return-void
.end method
