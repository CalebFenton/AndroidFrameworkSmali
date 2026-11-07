.class public final Landroid/service/autofill/BatchUpdates;
.super Ljava/lang/Object;
.source "BatchUpdates.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/BatchUpdates$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/BatchUpdates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mTransformations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/service/autofill/InternalTransformation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUpdates:Landroid/widget/RemoteViews;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 191
    new-instance v0, Landroid/service/autofill/BatchUpdates$1;

    invoke-direct {v0}, Landroid/service/autofill/BatchUpdates$1;-><init>()V

    sput-object v0, Landroid/service/autofill/BatchUpdates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/service/autofill/BatchUpdates$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/service/autofill/BatchUpdates$Builder;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Landroid/service/autofill/BatchUpdates$Builder;->-$$Nest$fgetmTransformations(Landroid/service/autofill/BatchUpdates$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    .line 55
    invoke-static {p1}, Landroid/service/autofill/BatchUpdates$Builder;->-$$Nest$fgetmUpdates(Landroid/service/autofill/BatchUpdates$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/BatchUpdates;->mUpdates:Landroid/widget/RemoteViews;

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/BatchUpdates$Builder;Landroid/service/autofill/BatchUpdates-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/BatchUpdates;-><init>(Landroid/service/autofill/BatchUpdates$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getTransformations()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/service/autofill/InternalTransformation;",
            ">;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public greylist-max-o getUpdates()Landroid/widget/RemoteViews;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates;->mUpdates:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 156
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BatchUpdates: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    const-string v1, ", transformations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    iget-object v1, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    if-nez v1, :cond_1d

    const-string v1, "N/A"

    goto :goto_27

    :cond_1d
    iget-object v1, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    const-string v1, ", updates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/BatchUpdates;->mUpdates:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 175
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_37

    .line 178
    :cond_9
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 179
    .local v0, "size":I
    new-array v1, v0, [I

    .line 180
    .local v1, "ids":[I
    new-array v2, v0, [Landroid/service/autofill/InternalTransformation;

    .line 181
    .local v2, "values":[Landroid/service/autofill/InternalTransformation;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v0, :cond_31

    .line 182
    iget-object v4, p0, Landroid/service/autofill/BatchUpdates;->mTransformations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 183
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v3

    .line 184
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/service/autofill/InternalTransformation;

    aput-object v5, v2, v3

    .line 181
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 186
    .end local v3    # "i":I
    :cond_31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 187
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 189
    .end local v0    # "size":I
    .end local v1    # "ids":[I
    .end local v2    # "values":[Landroid/service/autofill/InternalTransformation;
    :goto_37
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates;->mUpdates:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 190
    return-void
.end method
