.class public final Landroid/text/FontConfig$Font;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Font"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/FontConfig$Font$VarTypeAxes;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/FontConfig$Font;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist VAR_TYPE_AXES_ITAL:I = 0x2

.field public static final blacklist VAR_TYPE_AXES_NONE:I = 0x0

.field public static final blacklist VAR_TYPE_AXES_WGHT:I = 0x1


# instance fields
.field private final blacklist mFile:Ljava/io/File;

.field private final blacklist mFontFamilyName:Ljava/lang/String;

.field private final blacklist mFontVariationSettings:Ljava/lang/String;

.field private final blacklist mIndex:I

.field private final blacklist mOriginalFile:Ljava/io/File;

.field private final blacklist mPostScriptName:Ljava/lang/String;

.field private final blacklist mStyle:Landroid/graphics/fonts/FontStyle;

.field private final blacklist mVarTypeAxes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 298
    new-instance v0, Landroid/text/FontConfig$Font$1;

    invoke-direct {v0}, Landroid/text/FontConfig$Font$1;-><init>()V

    sput-object v0, Landroid/text/FontConfig$Font;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "originalFile"    # Ljava/io/File;
    .param p3, "postScriptName"    # Ljava/lang/String;
    .param p4, "style"    # Landroid/graphics/fonts/FontStyle;
    .param p5, "index"    # I
    .param p6, "fontVariationSettings"    # Ljava/lang/String;
    .param p7, "fontFamilyName"    # Ljava/lang/String;
    .param p8, "varTypeAxes"    # I

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Landroid/text/FontConfig$Font;->mFile:Ljava/io/File;

    .line 271
    iput-object p2, p0, Landroid/text/FontConfig$Font;->mOriginalFile:Ljava/io/File;

    .line 272
    iput-object p3, p0, Landroid/text/FontConfig$Font;->mPostScriptName:Ljava/lang/String;

    .line 273
    iput-object p4, p0, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    .line 274
    iput p5, p0, Landroid/text/FontConfig$Font;->mIndex:I

    .line 275
    iput-object p6, p0, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    .line 276
    iput-object p7, p0, Landroid/text/FontConfig$Font;->mFontFamilyName:Ljava/lang/String;

    .line 277
    iput p8, p0, Landroid/text/FontConfig$Font;->mVarTypeAxes:I

    .line 278
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 433
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 434
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_56

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_56

    .line 435
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/text/FontConfig$Font;

    .line 436
    .local v2, "font":Landroid/text/FontConfig$Font;
    iget v3, p0, Landroid/text/FontConfig$Font;->mIndex:I

    iget v4, v2, Landroid/text/FontConfig$Font;->mIndex:I

    if-ne v3, v4, :cond_54

    iget-object v3, p0, Landroid/text/FontConfig$Font;->mFile:Ljava/io/File;

    iget-object v4, v2, Landroid/text/FontConfig$Font;->mFile:Ljava/io/File;

    .line 437
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/text/FontConfig$Font;->mOriginalFile:Ljava/io/File;

    iget-object v4, v2, Landroid/text/FontConfig$Font;->mOriginalFile:Ljava/io/File;

    .line 438
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    iget-object v4, v2, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    .line 439
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    iget-object v4, v2, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    .line 440
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/text/FontConfig$Font;->mFontFamilyName:Ljava/lang/String;

    iget-object v4, v2, Landroid/text/FontConfig$Font;->mFontFamilyName:Ljava/lang/String;

    .line 441
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget v3, p0, Landroid/text/FontConfig$Font;->mVarTypeAxes:I

    iget v4, v2, Landroid/text/FontConfig$Font;->mVarTypeAxes:I

    if-ne v3, v4, :cond_54

    goto :goto_55

    :cond_54
    move v0, v1

    .line 436
    :goto_55
    return v0

    .line 434
    .end local v2    # "font":Landroid/text/FontConfig$Font;
    :cond_56
    :goto_56
    return v1
.end method

.method public greylist-max-r getAxes()[Landroid/graphics/fonts/FontVariationAxis;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 406
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFile()Ljava/io/File;
    .registers 2

    .line 327
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public whitelist getFontFamilyName()Ljava/lang/String;
    .registers 2

    .line 372
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFontFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFontVariationSettings()Ljava/lang/String;
    .registers 2

    .line 355
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOriginalFile()Ljava/io/File;
    .registers 2

    .line 340
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mOriginalFile:Ljava/io/File;

    return-object v0
.end method

.method public whitelist getPostScriptName()Ljava/lang/String;
    .registers 2

    .line 386
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mPostScriptName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStyle()Landroid/graphics/fonts/FontStyle;
    .registers 2

    .line 347
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    return-object v0
.end method

.method public whitelist getTtcIndex()I
    .registers 2

    .line 379
    iget v0, p0, Landroid/text/FontConfig$Font;->mIndex:I

    return v0
.end method

.method public blacklist getVarTypeAxes()I
    .registers 2

    .line 395
    iget v0, p0, Landroid/text/FontConfig$Font;->mVarTypeAxes:I

    return v0
.end method

.method public greylist-max-r getWeight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 417
    invoke-virtual {p0}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 447
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFile:Ljava/io/File;

    iget-object v1, p0, Landroid/text/FontConfig$Font;->mOriginalFile:Ljava/io/File;

    iget-object v2, p0, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    iget v3, p0, Landroid/text/FontConfig$Font;->mIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    iget-object v5, p0, Landroid/text/FontConfig$Font;->mFontFamilyName:Ljava/lang/String;

    iget v6, p0, Landroid/text/FontConfig$Font;->mVarTypeAxes:I

    .line 448
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 447
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-r isItalic()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    invoke-virtual {p0}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Font{mFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$Font;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOriginalFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$Font;->mOriginalFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/text/FontConfig$Font;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFontVariationSettings=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFontFamilyName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/text/FontConfig$Font;->mFontFamilyName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mVarTypeAxes=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/text/FontConfig$Font;->mVarTypeAxes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 287
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mOriginalFile:Ljava/io/File;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mOriginalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mPostScriptName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget v0, p0, Landroid/text/FontConfig$Font;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFontFamilyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 295
    iget v0, p0, Landroid/text/FontConfig$Font;->mVarTypeAxes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    return-void
.end method
