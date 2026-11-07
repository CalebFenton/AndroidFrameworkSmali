.class public final Landroid/telephony/data/NetworkSlicingConfig;
.super Ljava/lang/Object;
.source "NetworkSlicingConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/NetworkSlicingConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSliceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/NetworkSliceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUrspRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/UrspRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/telephony/data/NetworkSlicingConfig$1;

    invoke-direct {v0}, Landroid/telephony/data/NetworkSlicingConfig$1;-><init>()V

    sput-object v0, Landroid/telephony/data/NetworkSlicingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/NetworkSlicingConfig;->mUrspRules:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/NetworkSlicingConfig;->mSliceInfo:Ljava/util/List;

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Landroid/telephony/data/UrspRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/NetworkSlicingConfig;->mUrspRules:Ljava/util/List;

    .line 50
    sget-object v0, Landroid/telephony/data/NetworkSliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/NetworkSlicingConfig;->mSliceInfo:Ljava/util/List;

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/UrspRule;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telephony/data/NetworkSliceInfo;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "urspRules":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/UrspRule;>;"
    .local p2, "sliceInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/NetworkSliceInfo;>;"
    invoke-direct {p0}, Landroid/telephony/data/NetworkSlicingConfig;-><init>()V

    .line 43
    iget-object v0, p0, Landroid/telephony/data/NetworkSlicingConfig;->mUrspRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    iget-object v0, p0, Landroid/telephony/data/NetworkSlicingConfig;->mSliceInfo:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 96
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_48

    .line 97
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/NetworkSlicingConfig;

    .line 98
    .local v2, "that":Landroid/telephony/data/NetworkSlicingConfig;
    iget-object v3, p0, Landroid/telephony/data/NetworkSlicingConfig;->mUrspRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/NetworkSlicingConfig;->mUrspRules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_46

    iget-object v3, p0, Landroid/telephony/data/NetworkSlicingConfig;->mUrspRules:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/NetworkSlicingConfig;->mUrspRules:Ljava/util/List;

    .line 99
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Landroid/telephony/data/NetworkSlicingConfig;->mSliceInfo:Ljava/util/List;

    .line 100
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/NetworkSlicingConfig;->mSliceInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_46

    iget-object v3, p0, Landroid/telephony/data/NetworkSlicingConfig;->mSliceInfo:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/NetworkSlicingConfig;->mSliceInfo:Ljava/util/List;

    .line 101
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_46

    goto :goto_47

    :cond_46
    move v0, v1

    .line 98
    :goto_47
    return v0

    .line 96
    .end local v2    # "that":Landroid/telephony/data/NetworkSlicingConfig;
    :cond_48
    :goto_48
    return v1
.end method

.method public whitelist getSliceInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/NetworkSliceInfo;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroid/telephony/data/NetworkSlicingConfig;->mSliceInfo:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getUrspRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/UrspRule;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Landroid/telephony/data/NetworkSlicingConfig;->mUrspRules:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 106
    iget-object v0, p0, Landroid/telephony/data/NetworkSlicingConfig;->mUrspRules:Ljava/util/List;

    iget-object v1, p0, Landroid/telephony/data/NetworkSlicingConfig;->mSliceInfo:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{.urspRules = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/NetworkSlicingConfig;->mUrspRules:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", .sliceInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/NetworkSlicingConfig;->mSliceInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 71
    iget-object v0, p0, Landroid/telephony/data/NetworkSlicingConfig;->mUrspRules:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 72
    iget-object v0, p0, Landroid/telephony/data/NetworkSlicingConfig;->mSliceInfo:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 73
    return-void
.end method
