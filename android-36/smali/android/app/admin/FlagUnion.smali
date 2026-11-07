.class public final Landroid/app/admin/FlagUnion;
.super Landroid/app/admin/ResolutionMechanism;
.source "FlagUnion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/admin/ResolutionMechanism<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/FlagUnion;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_UNION:Landroid/app/admin/FlagUnion;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/app/admin/FlagUnion;

    invoke-direct {v0}, Landroid/app/admin/FlagUnion;-><init>()V

    sput-object v0, Landroid/app/admin/FlagUnion;->FLAG_UNION:Landroid/app/admin/FlagUnion;

    .line 69
    new-instance v0, Landroid/app/admin/FlagUnion$1;

    invoke-direct {v0}, Landroid/app/admin/FlagUnion$1;-><init>()V

    sput-object v0, Landroid/app/admin/FlagUnion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Landroid/app/admin/ResolutionMechanism;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 47
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

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 57
    const-string v0, "FlagUnion {}"

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 66
    return-void
.end method
