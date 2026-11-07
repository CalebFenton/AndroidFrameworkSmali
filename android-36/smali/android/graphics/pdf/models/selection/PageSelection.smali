.class public final Landroid/graphics/pdf/models/selection/PageSelection;
.super Ljava/lang/Object;
.source "PageSelection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/pdf/models/selection/PageSelection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPage:I

.field private final blacklist mSelectedContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/pdf/content/PdfPageTextContent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStart:Landroid/graphics/pdf/models/selection/SelectionBoundary;

.field private final blacklist mStop:Landroid/graphics/pdf/models/selection/SelectionBoundary;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroid/graphics/pdf/models/selection/PageSelection$1;

    invoke-direct {v0}, Landroid/graphics/pdf/models/selection/PageSelection$1;-><init>()V

    sput-object v0, Landroid/graphics/pdf/models/selection/PageSelection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/graphics/pdf/models/selection/SelectionBoundary;Landroid/graphics/pdf/models/selection/SelectionBoundary;Ljava/util/List;)V
    .registers 7
    .param p1, "page"    # I
    .param p2, "start"    # Landroid/graphics/pdf/models/selection/SelectionBoundary;
    .param p3, "stop"    # Landroid/graphics/pdf/models/selection/SelectionBoundary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/pdf/models/selection/SelectionBoundary;",
            "Landroid/graphics/pdf/models/selection/SelectionBoundary;",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/content/PdfPageTextContent;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p4, "selectedContents":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/pdf/content/PdfPageTextContent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-ltz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Page number cannot be negative"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 69
    const-string v0, "Start boundary cannot be null"

    invoke-static {p2, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    const-string v0, "Stop boundary cannot be null"

    invoke-static {p3, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    const-string v0, "Selected text content cannot be null"

    invoke-static {p4, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iput-object p2, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mStart:Landroid/graphics/pdf/models/selection/SelectionBoundary;

    .line 73
    iput-object p3, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mStop:Landroid/graphics/pdf/models/selection/SelectionBoundary;

    .line 74
    iput p1, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mPage:I

    .line 75
    iput-object p4, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mSelectedContents:Ljava/util/List;

    .line 76
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mPage:I

    .line 80
    const-class v0, Landroid/graphics/pdf/models/selection/SelectionBoundary;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/pdf/models/selection/SelectionBoundary;

    iput-object v0, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mStart:Landroid/graphics/pdf/models/selection/SelectionBoundary;

    .line 81
    const-class v0, Landroid/graphics/pdf/models/selection/SelectionBoundary;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/pdf/models/selection/SelectionBoundary;

    iput-object v0, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mStop:Landroid/graphics/pdf/models/selection/SelectionBoundary;

    .line 82
    sget-object v0, Landroid/graphics/pdf/content/PdfPageTextContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mSelectedContents:Ljava/util/List;

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/graphics/pdf/models/selection/PageSelection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/pdf/models/selection/PageSelection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPage()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mPage:I

    return v0
.end method

.method public whitelist getSelectedTextContents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/content/PdfPageTextContent;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mSelectedContents:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getStart()Landroid/graphics/pdf/models/selection/SelectionBoundary;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mStart:Landroid/graphics/pdf/models/selection/SelectionBoundary;

    return-object v0
.end method

.method public whitelist getStop()Landroid/graphics/pdf/models/selection/SelectionBoundary;
    .registers 2

    .line 113
    iget-object v0, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mStop:Landroid/graphics/pdf/models/selection/SelectionBoundary;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 135
    iget v0, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mStart:Landroid/graphics/pdf/models/selection/SelectionBoundary;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 137
    iget-object v0, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mStop:Landroid/graphics/pdf/models/selection/SelectionBoundary;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 138
    iget-object v0, p0, Landroid/graphics/pdf/models/selection/PageSelection;->mSelectedContents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 139
    return-void
.end method
