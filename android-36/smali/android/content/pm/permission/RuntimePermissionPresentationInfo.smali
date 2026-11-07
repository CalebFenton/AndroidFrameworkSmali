.class public final Landroid/content/pm/permission/RuntimePermissionPresentationInfo;
.super Ljava/lang/Object;
.source "RuntimePermissionPresentationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/permission/RuntimePermissionPresentationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FLAG_GRANTED:I = 0x1

.field private static final greylist-max-o FLAG_STANDARD:I = 0x2


# instance fields
.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mLabel:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 104
    new-instance v0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo$1;

    invoke-direct {v0}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mLabel:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mFlags:I

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/permission/RuntimePermissionPresentationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;ZZ)V
    .registers 5
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "granted"    # Z
    .param p3, "standard"    # Z

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mLabel:Ljava/lang/CharSequence;

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "flags":I
    if-eqz p2, :cond_a

    .line 57
    or-int/lit8 v0, v0, 0x1

    .line 59
    :cond_a
    if-eqz p3, :cond_e

    .line 60
    or-int/lit8 v0, v0, 0x2

    .line 62
    :cond_e
    iput v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mFlags:I

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist isGranted()Z
    .registers 3

    .line 74
    iget v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist isStandard()Z
    .registers 2

    .line 81
    iget v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 101
    iget v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method
