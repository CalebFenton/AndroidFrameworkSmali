.class public final Landroid/graphics/pdf/models/selection/SelectionBoundary;
.super Ljava/lang/Object;
.source "SelectionBoundary.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/pdf/models/selection/SelectionBoundary;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIndex:I

.field private final blacklist mIsRtl:Z

.field private final blacklist mPoint:Landroid/graphics/Point;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/graphics/pdf/models/selection/SelectionBoundary$1;

    invoke-direct {v0}, Landroid/graphics/pdf/models/selection/SelectionBoundary$1;-><init>()V

    sput-object v0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 5
    .param p1, "index"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    if-ltz p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    const-string v2, "Index cannot be negative"

    invoke-static {v1, v2}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 81
    iput p1, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mIndex:I

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mPoint:Landroid/graphics/Point;

    .line 83
    iput-boolean v0, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mIsRtl:Z

    .line 84
    return-void
.end method

.method public constructor blacklist <init>(IZ)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "isRtl"    # Z

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-ltz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Index cannot be negative"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 64
    iput p1, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mIndex:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mPoint:Landroid/graphics/Point;

    .line 66
    iput-boolean p2, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mIsRtl:Z

    .line 67
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "point"    # Landroid/graphics/Point;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, "Point cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mIndex:I

    .line 111
    iput-object p1, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mPoint:Landroid/graphics/Point;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mIsRtl:Z

    .line 113
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Point;Z)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "isRtl"    # Z

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "Point cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mIndex:I

    .line 97
    iput-object p1, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mPoint:Landroid/graphics/Point;

    .line 98
    iput-boolean p2, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mIsRtl:Z

    .line 99
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mIndex:I

    .line 117
    const-class v0, Landroid/graphics/Point;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mPoint:Landroid/graphics/Point;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mIsRtl:Z

    .line 119
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/graphics/pdf/models/selection/SelectionBoundary-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/pdf/models/selection/SelectionBoundary;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIndex()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mIndex:I

    return v0
.end method

.method public whitelist getIsRtl()Z
    .registers 2

    .line 163
    iget-boolean v0, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mIsRtl:Z

    return v0
.end method

.method public whitelist getPoint()Landroid/graphics/Point;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 151
    iget v0, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mPoint:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 153
    iget-boolean v0, p0, Landroid/graphics/pdf/models/selection/SelectionBoundary;->mIsRtl:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 154
    return-void
.end method
