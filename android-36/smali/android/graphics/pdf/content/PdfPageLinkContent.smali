.class public final Landroid/graphics/pdf/content/PdfPageLinkContent;
.super Ljava/lang/Object;
.source "PdfPageLinkContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/pdf/content/PdfPageLinkContent;",
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

.field private final blacklist mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/graphics/pdf/content/PdfPageLinkContent$1;

    invoke-direct {v0}, Landroid/graphics/pdf/content/PdfPageLinkContent$1;-><init>()V

    sput-object v0, Landroid/graphics/pdf/content/PdfPageLinkContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/content/PdfPageLinkContent;->mBounds:Ljava/util/List;

    .line 73
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/graphics/pdf/content/PdfPageLinkContent;->mUri:Landroid/net/Uri;

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/graphics/pdf/content/PdfPageLinkContent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/pdf/content/PdfPageLinkContent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;Landroid/net/Uri;)V
    .registers 5
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 63
    .local p1, "bounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "Bounds cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Link bounds cannot be empty"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 66
    const-string v0, "Uri cannot be null"

    invoke-static {p2, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Landroid/graphics/pdf/content/PdfPageLinkContent;->mBounds:Ljava/util/List;

    .line 68
    iput-object p2, p0, Landroid/graphics/pdf/content/PdfPageLinkContent;->mUri:Landroid/net/Uri;

    .line 69
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 109
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

    .line 90
    iget-object v0, p0, Landroid/graphics/pdf/content/PdfPageLinkContent;->mBounds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/graphics/pdf/content/PdfPageLinkContent;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 114
    iget-object v0, p0, Landroid/graphics/pdf/content/PdfPageLinkContent;->mBounds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Landroid/graphics/pdf/content/PdfPageLinkContent;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    return-void
.end method
