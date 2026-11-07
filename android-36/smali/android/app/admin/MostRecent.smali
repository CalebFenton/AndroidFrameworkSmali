.class public final Landroid/app/admin/MostRecent;
.super Landroid/app/admin/ResolutionMechanism;
.source "MostRecent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/admin/ResolutionMechanism<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/MostRecent<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final blacklist MOST_RECENT:Landroid/app/admin/MostRecent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/admin/MostRecent<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/app/admin/MostRecent;

    invoke-direct {v0}, Landroid/app/admin/MostRecent;-><init>()V

    sput-object v0, Landroid/app/admin/MostRecent;->MOST_RECENT:Landroid/app/admin/MostRecent;

    .line 67
    new-instance v0, Landroid/app/admin/MostRecent$1;

    invoke-direct {v0}, Landroid/app/admin/MostRecent$1;-><init>()V

    sput-object v0, Landroid/app/admin/MostRecent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    .local p0, "this":Landroid/app/admin/MostRecent;, "Landroid/app/admin/MostRecent<TV;>;"
    invoke-direct {p0}, Landroid/app/admin/ResolutionMechanism;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 60
    .local p0, "this":Landroid/app/admin/MostRecent;, "Landroid/app/admin/MostRecent<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 44
    .local p0, "this":Landroid/app/admin/MostRecent;, "Landroid/app/admin/MostRecent<TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 45
    :cond_4
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 50
    .local p0, "this":Landroid/app/admin/MostRecent;, "Landroid/app/admin/MostRecent<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 55
    .local p0, "this":Landroid/app/admin/MostRecent;, "Landroid/app/admin/MostRecent<TV;>;"
    const-string v0, "MostRecent {}"

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 64
    .local p0, "this":Landroid/app/admin/MostRecent;, "Landroid/app/admin/MostRecent<TV;>;"
    return-void
.end method
