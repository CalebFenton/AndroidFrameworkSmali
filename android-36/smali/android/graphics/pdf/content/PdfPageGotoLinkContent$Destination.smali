.class public final Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;
.super Ljava/lang/Object;
.source "PdfPageGotoLinkContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/content/PdfPageGotoLinkContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Destination"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPageNumber:I

.field private final blacklist mXCoordinate:F

.field private final blacklist mYCoordinate:F

.field private final blacklist mZoom:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 123
    new-instance v0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination$1;

    invoke-direct {v0}, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination$1;-><init>()V

    sput-object v0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IFFF)V
    .registers 10
    .param p1, "pageNumber"    # I
    .param p2, "xCoordinate"    # F
    .param p3, "yCoordinate"    # F
    .param p4, "zoom"    # F

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const-string v3, "Page number must be greater than or equal to 0"

    invoke-static {v2, v3}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 157
    const/4 v2, 0x0

    cmpl-float v3, p2, v2

    if-ltz v3, :cond_16

    move v3, v0

    goto :goto_17

    :cond_16
    move v3, v1

    :goto_17
    const-string v4, "X coordinate must be greater than or equal to 0"

    invoke-static {v3, v4}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 159
    cmpl-float v3, p3, v2

    if-ltz v3, :cond_22

    move v3, v0

    goto :goto_23

    :cond_22
    move v3, v1

    :goto_23
    const-string v4, "Y coordinate must be greater than or equal to 0"

    invoke-static {v3, v4}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 161
    cmpl-float v2, p4, v2

    if-ltz v2, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    const-string v1, "Zoom factor number must be greater than or equal to 0"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 163
    iput p1, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mPageNumber:I

    .line 164
    iput p2, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mXCoordinate:F

    .line 165
    iput p3, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mYCoordinate:F

    .line 166
    iput p4, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mZoom:F

    .line 167
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mPageNumber:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mXCoordinate:F

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mYCoordinate:F

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mZoom:F

    .line 174
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/graphics/pdf/content/PdfPageGotoLinkContent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPageNumber()I
    .registers 2

    .line 184
    iget v0, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mPageNumber:I

    return v0
.end method

.method public whitelist getXCoordinate()F
    .registers 2

    .line 198
    iget v0, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mXCoordinate:F

    return v0
.end method

.method public whitelist getYCoordinate()F
    .registers 2

    .line 212
    iget v0, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mYCoordinate:F

    return v0
.end method

.method public whitelist getZoom()F
    .registers 2

    .line 226
    iget v0, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mZoom:F

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 236
    iget v0, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mPageNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mXCoordinate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 238
    iget v0, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mYCoordinate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 239
    iget v0, p0, Landroid/graphics/pdf/content/PdfPageGotoLinkContent$Destination;->mZoom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 240
    return-void
.end method
