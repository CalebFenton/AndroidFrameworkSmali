.class public Landroid/content/pm/PathPermission;
.super Landroid/os/PatternMatcher;
.source "PathPermission.java"


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PathPermission;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mReadPermission:Ljava/lang/String;

.field private final greylist-max-o mWritePermission:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Landroid/content/pm/PathPermission$1;

    invoke-direct {v0}, Landroid/content/pm/PathPermission$1;-><init>()V

    sput-object v0, Landroid/content/pm/PathPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 54
    invoke-direct {p0, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PathPermission;->mReadPermission:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PathPermission;->mWritePermission:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "readPermission"    # Ljava/lang/String;
    .param p4, "writePermission"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Landroid/content/pm/PathPermission;->mReadPermission:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Landroid/content/pm/PathPermission;->mWritePermission:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist getReadPermission()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Landroid/content/pm/PathPermission;->mReadPermission:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWritePermission()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/content/pm/PathPermission;->mWritePermission:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 48
    invoke-super {p0, p1, p2}, Landroid/os/PatternMatcher;->writeToParcel(Landroid/os/Parcel;I)V

    .line 49
    iget-object v0, p0, Landroid/content/pm/PathPermission;->mReadPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Landroid/content/pm/PathPermission;->mWritePermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return-void
.end method
