.class public final Landroid/graphics/pdf/models/PageMatchBounds;
.super Ljava/lang/Object;
.source "PageMatchBounds.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/pdf/models/PageMatchBounds;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTextStartIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/graphics/pdf/models/PageMatchBounds$1;

    invoke-direct {v0}, Landroid/graphics/pdf/models/PageMatchBounds$1;-><init>()V

    sput-object v0, Landroid/graphics/pdf/models/PageMatchBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/models/PageMatchBounds;->mBounds:Ljava/util/List;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/models/PageMatchBounds;->mTextStartIndex:I

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/graphics/pdf/models/PageMatchBounds-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/pdf/models/PageMatchBounds;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;I)V
    .registers 6
    .param p2, "textStartIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;I)V"
        }
    .end annotation

    .line 60
    .local p1, "bounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "Bounds cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Match bounds cannot be empty"

    invoke-static {v0, v2}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 63
    if-ltz p2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    const-string v0, "Index cannot be negative"

    invoke-static {v1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 64
    iput-object p1, p0, Landroid/graphics/pdf/models/PageMatchBounds;->mBounds:Ljava/util/List;

    .line 65
    iput p2, p0, Landroid/graphics/pdf/models/PageMatchBounds;->mTextStartIndex:I

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBounds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroid/graphics/pdf/models/PageMatchBounds;->mBounds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTextStartIndex()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/graphics/pdf/models/PageMatchBounds;->mTextStartIndex:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    iget-object v0, p0, Landroid/graphics/pdf/models/PageMatchBounds;->mBounds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 107
    iget v0, p0, Landroid/graphics/pdf/models/PageMatchBounds;->mTextStartIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return-void
.end method
