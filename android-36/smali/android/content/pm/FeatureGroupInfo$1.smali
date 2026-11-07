.class Landroid/content/pm/FeatureGroupInfo$1;
.super Ljava/lang/Object;
.source "FeatureGroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/FeatureGroupInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/FeatureGroupInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/FeatureGroupInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 55
    new-instance v0, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 56
    .local v0, "group":Landroid/content/pm/FeatureGroupInfo;
    sget-object v1, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/FeatureInfo;

    iput-object v1, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 57
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Landroid/content/pm/FeatureGroupInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/FeatureGroupInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/pm/FeatureGroupInfo;
    .registers 3
    .param p1, "size"    # I

    .line 62
    new-array v0, p1, [Landroid/content/pm/FeatureGroupInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Landroid/content/pm/FeatureGroupInfo$1;->newArray(I)[Landroid/content/pm/FeatureGroupInfo;

    move-result-object p1

    return-object p1
.end method
