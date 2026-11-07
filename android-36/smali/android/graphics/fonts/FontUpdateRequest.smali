.class public final Landroid/graphics/fonts/FontUpdateRequest;
.super Ljava/lang/Object;
.source "FontUpdateRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontUpdateRequest$Family;,
        Landroid/graphics/fonts/FontUpdateRequest$Font;,
        Landroid/graphics/fonts/FontUpdateRequest$Type;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_UPDATE_FONT_FAMILY:I = 0x1

.field public static final blacklist TYPE_UPDATE_FONT_FILE:I


# instance fields
.field private final blacklist mFd:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mFontFamily:Landroid/graphics/fonts/FontUpdateRequest$Family;

.field private final blacklist mSignature:[B

.field private final blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetAttributeValueInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/fonts/FontUpdateRequest;->getAttributeValueInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 326
    new-instance v0, Landroid/graphics/fonts/FontUpdateRequest$1;

    invoke-direct {v0}, Landroid/graphics/fonts/FontUpdateRequest$1;-><init>()V

    sput-object v0, Landroid/graphics/fonts/FontUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/fonts/FontUpdateRequest$Family;)V
    .registers 3
    .param p1, "fontFamily"    # Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mType:I

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 359
    iput-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mSignature:[B

    .line 360
    iput-object p1, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFontFamily:Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 361
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mType:I

    .line 383
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mSignature:[B

    .line 385
    const-class v0, Landroid/text/FontConfig$FontFamily;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/FontUpdateRequest$Family;

    iput-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFontFamily:Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 386
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;[B)V
    .registers 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "signature"    # [B

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mType:I

    .line 351
    iput-object p1, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 352
    iput-object p2, p0, Landroid/graphics/fonts/FontUpdateRequest;->mSignature:[B

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFontFamily:Landroid/graphics/fonts/FontUpdateRequest$Family;

    .line 354
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "familyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;",
            ">;)V"
        }
    .end annotation

    .line 365
    .local p2, "variations":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;>;"
    invoke-static {p1, p2}, Landroid/graphics/fonts/FontUpdateRequest;->createFontFamily(Ljava/lang/String;Ljava/util/List;)Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/fonts/FontUpdateRequest;-><init>(Landroid/graphics/fonts/FontUpdateRequest$Family;)V

    .line 366
    return-void
.end method

.method private static blacklist createFontFamily(Ljava/lang/String;Ljava/util/List;)Landroid/graphics/fonts/FontUpdateRequest$Family;
    .registers 10
    .param p0, "familyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;",
            ">;)",
            "Landroid/graphics/fonts/FontUpdateRequest$Family;"
        }
    .end annotation

    .line 370
    .local p1, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    .local v0, "updateFonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontUpdateRequest$Font;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;

    .line 372
    .local v2, "font":Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;
    new-instance v3, Landroid/graphics/fonts/FontUpdateRequest$Font;

    .line 373
    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v4

    .line 374
    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v5

    .line 375
    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->getIndex()I

    move-result v6

    .line 376
    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->getAxes()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/fonts/FontVariationAxis;->toFontVariationSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/fonts/FontUpdateRequest$Font;-><init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;)V

    .line 372
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v2    # "font":Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;
    goto :goto_d

    .line 378
    :cond_36
    new-instance v1, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-direct {v1, p0, v0}, Landroid/graphics/fonts/FontUpdateRequest$Family;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method private static blacklist getAttributeValueInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 423
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 425
    return p2

    .line 427
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_c} :catch_d

    return v1

    .line 428
    .end local v0    # "value":Ljava/lang/String;
    :catch_d
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 409
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist getFd()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 394
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;
    .registers 2

    .line 404
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFontFamily:Landroid/graphics/fonts/FontUpdateRequest$Family;

    return-object v0
.end method

.method public blacklist getSignature()[B
    .registers 2

    .line 399
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mSignature:[B

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 389
    iget v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 414
    iget v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 416
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mSignature:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 417
    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFontFamily:Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 418
    return-void
.end method
