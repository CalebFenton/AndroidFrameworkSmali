.class public final Landroid/graphics/pdf/content/PdfPageImageContent;
.super Ljava/lang/Object;
.source "PdfPageImageContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/pdf/content/PdfPageImageContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAltText:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Landroid/graphics/pdf/content/PdfPageImageContent$1;

    invoke-direct {v0}, Landroid/graphics/pdf/content/PdfPageImageContent$1;-><init>()V

    sput-object v0, Landroid/graphics/pdf/content/PdfPageImageContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/content/PdfPageImageContent;->mAltText:Ljava/lang/String;

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/graphics/pdf/content/PdfPageImageContent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/pdf/content/PdfPageImageContent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "altText"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "Alternate text cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Landroid/graphics/pdf/content/PdfPageImageContent;->mAltText:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAltText()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/graphics/pdf/content/PdfPageImageContent;->mAltText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    iget-object v0, p0, Landroid/graphics/pdf/content/PdfPageImageContent;->mAltText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return-void
.end method
