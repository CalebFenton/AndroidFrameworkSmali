.class public Landroid/location/GeocoderParams;
.super Ljava/lang/Object;
.source "GeocoderParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GeocoderParams$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GeocoderParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Landroid/location/GeocoderParams;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/location/GeocoderParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/location/GeocoderParams;->mPackageName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 68
    new-instance v0, Landroid/location/GeocoderParams$1;

    #@2
    invoke-direct {v0}, Landroid/location/GeocoderParams$1;-><init>()V

    #@5
    .line 67
    sput-object v0, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    iput-object p2, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    #@5
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/location/GeocoderParams;->mPackageName:Ljava/lang/String;

    #@b
    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/location/GeocoderParams;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/location/GeocoderParams;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 85
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getClientPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Landroid/location/GeocoderParams;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    #@2
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9
    .line 90
    iget-object v0, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    #@b
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 91
    iget-object v0, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    #@14
    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 92
    iget-object v0, p0, Landroid/location/GeocoderParams;->mPackageName:Ljava/lang/String;

    #@1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@20
    .line 88
    return-void
.end method
