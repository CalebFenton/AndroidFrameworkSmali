.class public Landroid/adservices/common/CallerMetadata;
.super Ljava/lang/Object;
.source "CallerMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/CallerMetadata$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/CallerMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBinderElapsedTimestamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/adservices/common/CallerMetadata$1;

    invoke-direct {v0}, Landroid/adservices/common/CallerMetadata$1;-><init>()V

    sput-object v0, Landroid/adservices/common/CallerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .registers 3
    .param p1, "binderElapsedTimestamp"    # J

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Landroid/adservices/common/CallerMetadata;->mBinderElapsedTimestamp:J

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/adservices/common/CallerMetadata-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/adservices/common/CallerMetadata;-><init>(J)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/common/CallerMetadata;->mBinderElapsedTimestamp:J

    .line 39
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/CallerMetadata-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/CallerMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBinderElapsedTimestamp()J
    .registers 3

    .line 68
    iget-wide v0, p0, Landroid/adservices/common/CallerMetadata;->mBinderElapsedTimestamp:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 63
    iget-wide v0, p0, Landroid/adservices/common/CallerMetadata;->mBinderElapsedTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    return-void
.end method
