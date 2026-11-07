.class public Landroid/window/ConfigurationChangeSetting$FontScaleSetting;
.super Landroid/window/ConfigurationChangeSetting;
.source "ConfigurationChangeSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ConfigurationChangeSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontScaleSetting"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ConfigurationChangeSetting$FontScaleSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final blacklist mFontScaleFactor:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 251
    new-instance v0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting$1;

    invoke-direct {v0}, Landroid/window/ConfigurationChangeSetting$FontScaleSetting$1;-><init>()V

    sput-object v0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(F)V
    .registers 4
    .param p1, "fontScaleFactor"    # F

    .line 237
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/window/ConfigurationChangeSetting;-><init>(ILandroid/window/ConfigurationChangeSetting-IA;)V

    .line 238
    iput p1, p0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    .line 239
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;-><init>(F)V

    .line 243
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 265
    instance-of v0, p1, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;

    .line 268
    .local v0, "other":Landroid/window/ConfigurationChangeSetting$FontScaleSetting;
    iget v2, p0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    iget v3, v0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    .line 266
    .end local v0    # "other":Landroid/window/ConfigurationChangeSetting$FontScaleSetting;
    :cond_14
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 273
    iget v0, p0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 247
    invoke-super {p0, p1, p2}, Landroid/window/ConfigurationChangeSetting;->writeToParcel(Landroid/os/Parcel;I)V

    .line 248
    iget v0, p0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 249
    return-void
.end method
