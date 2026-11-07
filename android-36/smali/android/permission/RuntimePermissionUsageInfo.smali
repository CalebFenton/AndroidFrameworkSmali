.class public final Landroid/permission/RuntimePermissionUsageInfo;
.super Ljava/lang/Object;
.source "RuntimePermissionUsageInfo.java"

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
            "Landroid/permission/RuntimePermissionUsageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mNumUsers:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    new-instance v0, Landroid/permission/RuntimePermissionUsageInfo$1;

    invoke-direct {v0}, Landroid/permission/RuntimePermissionUsageInfo$1;-><init>()V

    sput-object v0, Landroid/permission/RuntimePermissionUsageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/permission/RuntimePermissionUsageInfo;-><init>(Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/permission/RuntimePermissionUsageInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/permission/RuntimePermissionUsageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numUsers"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 51
    iput-object p1, p0, Landroid/permission/RuntimePermissionUsageInfo;->mName:Ljava/lang/String;

    .line 52
    iput p2, p0, Landroid/permission/RuntimePermissionUsageInfo;->mNumUsers:I

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppAccessCount()I
    .registers 2

    .line 63
    iget v0, p0, Landroid/permission/RuntimePermissionUsageInfo;->mNumUsers:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/permission/RuntimePermissionUsageInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget-object v0, p0, Landroid/permission/RuntimePermissionUsageInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Landroid/permission/RuntimePermissionUsageInfo;->mNumUsers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return-void
.end method
