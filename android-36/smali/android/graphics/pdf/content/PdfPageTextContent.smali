.class public final Landroid/graphics/pdf/content/PdfPageTextContent;
.super Ljava/lang/Object;
.source "PdfPageTextContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/pdf/content/PdfPageTextContent;",
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

.field private final blacklist mText:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/graphics/pdf/content/PdfPageTextContent$1;

    invoke-direct {v0}, Landroid/graphics/pdf/content/PdfPageTextContent$1;-><init>()V

    sput-object v0, Landroid/graphics/pdf/content/PdfPageTextContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/content/PdfPageTextContent;->mText:Ljava/lang/String;

    .line 70
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/content/PdfPageTextContent;->mBounds:Ljava/util/List;

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/graphics/pdf/content/PdfPageTextContent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/pdf/content/PdfPageTextContent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "Text cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Landroid/graphics/pdf/content/PdfPageTextContent;->mText:Ljava/lang/String;

    .line 49
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/content/PdfPageTextContent;->mBounds:Ljava/util/List;

    .line 50
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p2, "bounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "Text cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    const-string v0, "Bounds cannot be null"

    invoke-static {p2, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Bounds cannot be empty"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 64
    iput-object p1, p0, Landroid/graphics/pdf/content/PdfPageTextContent;->mText:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Landroid/graphics/pdf/content/PdfPageTextContent;->mBounds:Ljava/util/List;

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 112
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

    .line 107
    iget-object v0, p0, Landroid/graphics/pdf/content/PdfPageTextContent;->mBounds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/graphics/pdf/content/PdfPageTextContent;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget-object v0, p0, Landroid/graphics/pdf/content/PdfPageTextContent;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Landroid/graphics/pdf/content/PdfPageTextContent;->mBounds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 119
    return-void
.end method
