.class final Landroid/content/pm/FeatureGroupInfo$1;
.super Ljava/lang/Object;
.source "FeatureGroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/FeatureGroupInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/content/pm/FeatureGroupInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/FeatureGroupInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 55
    new-instance v0, Landroid/content/pm/FeatureGroupInfo;

    #@2
    invoke-direct {v0}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    #@5
    .line 56
    .local v0, "group":Landroid/content/pm/FeatureGroupInfo;
    sget-object v1, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, [Landroid/content/pm/FeatureInfo;

    #@d
    iput-object v1, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    #@f
    .line 57
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/content/pm/FeatureGroupInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/FeatureGroupInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/FeatureGroupInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 62
    new-array v0, p1, [Landroid/content/pm/FeatureGroupInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/content/pm/FeatureGroupInfo$1;->newArray(I)[Landroid/content/pm/FeatureGroupInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
