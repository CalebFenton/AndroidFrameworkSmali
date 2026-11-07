.class public final Landroid/text/FontConfig$FontFamily;
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
    name = "FontFamily"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/FontConfig$FontFamily$Variant;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist VARIANT_COMPACT:I = 0x1

.field public static final whitelist VARIANT_DEFAULT:I = 0x0

.field public static final whitelist VARIANT_ELEGANT:I = 0x2


# instance fields
.field private final blacklist mFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocaleList:Landroid/os/LocaleList;

.field private final blacklist mVariant:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 689
    new-instance v0, Landroid/text/FontConfig$FontFamily$1;

    invoke-direct {v0}, Landroid/text/FontConfig$FontFamily$1;-><init>()V

    sput-object v0, Landroid/text/FontConfig$FontFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Landroid/os/LocaleList;I)V
    .registers 4
    .param p2, "localeList"    # Landroid/os/LocaleList;
    .param p3, "variant"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;",
            "Landroid/os/LocaleList;",
            "I)V"
        }
    .end annotation

    .line 623
    .local p1, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iput-object p1, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    .line 625
    iput-object p2, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    .line 626
    iput p3, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    .line 627
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 730
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 731
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 732
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/text/FontConfig$FontFamily;

    .line 733
    .local v2, "that":Landroid/text/FontConfig$FontFamily;
    iget v3, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    iget v4, v2, Landroid/text/FontConfig$FontFamily;->mVariant:I

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    iget-object v4, v2, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    .line 734
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    iget-object v4, v2, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    .line 735
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 733
    :goto_31
    return v0

    .line 731
    .end local v2    # "that":Landroid/text/FontConfig$FontFamily;
    :cond_32
    :goto_32
    return v1
.end method

.method public whitelist getFontList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-r getFonts()[Landroid/text/FontConfig$Font;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 715
    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/text/FontConfig$Font;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/FontConfig$Font;

    return-object v0
.end method

.method public blacklist getLanguages()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 725
    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocaleList()Landroid/os/LocaleList;
    .registers 2

    .line 667
    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 657
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVariant()I
    .registers 2

    .line 674
    iget v0, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 740
    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    iget-object v1, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    iget v2, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontFamily{mFonts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocaleList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 684
    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mFonts:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 685
    iget-object v0, p0, Landroid/text/FontConfig$FontFamily;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 686
    iget v0, p0, Landroid/text/FontConfig$FontFamily;->mVariant:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    return-void
.end method
