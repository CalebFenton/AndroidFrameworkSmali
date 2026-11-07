.class public final Landroid/app/cloudsearch/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/cloudsearch/SearchResult$Builder;,
        Landroid/app/cloudsearch/SearchResult$SearchResultExtraInfoKey;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/cloudsearch/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRAINFO_ACTION_APP_CARD:Ljava/lang/String; = "android.app.cloudsearch.ACTION_APP_CARD"

.field public static final whitelist EXTRAINFO_ACTION_BUTTON_IMAGE_PREREGISTERING:Ljava/lang/String; = "android.app.cloudsearch.ACTION_BUTTON_IMAGE"

.field public static final whitelist EXTRAINFO_ACTION_BUTTON_TEXT_PREREGISTERING:Ljava/lang/String; = "android.app.cloudsearch.ACTION_BUTTON_TEXT"

.field public static final whitelist EXTRAINFO_ACTION_INSTALL_BUTTON:Ljava/lang/String; = "android.app.cloudsearch.ACTION_INSTALL_BUTTON"

.field public static final whitelist EXTRAINFO_APP_BADGES:Ljava/lang/String; = "android.app.cloudsearch.APP_BADGES"

.field public static final whitelist EXTRAINFO_APP_CONTAINS_ADS_DISCLAIMER:Ljava/lang/String; = "android.app.cloudsearch.APP_CONTAINS_ADS_DISCLAIMER"

.field public static final whitelist EXTRAINFO_APP_CONTAINS_IAP_DISCLAIMER:Ljava/lang/String; = "android.app.cloudsearch.APP_CONTAINS_IAP_DISCLAIMER"

.field public static final whitelist EXTRAINFO_APP_DEVELOPER_NAME:Ljava/lang/String; = "android.app.cloudsearch.APP_DEVELOPER_NAME"

.field public static final whitelist EXTRAINFO_APP_DOMAIN_URL:Ljava/lang/String; = "android.app.cloudsearch.APP_DOMAIN_URL"

.field public static final whitelist EXTRAINFO_APP_IARC:Ljava/lang/String; = "android.app.cloudsearch.APP_IARC"

.field public static final whitelist EXTRAINFO_APP_ICON:Ljava/lang/String; = "android.app.cloudsearch.APP_ICON"

.field public static final whitelist EXTRAINFO_APP_INSTALL_COUNT:Ljava/lang/String; = "android.app.cloudsearch.APP_INSTALL_COUNT"

.field public static final whitelist EXTRAINFO_APP_PACKAGE_NAME:Ljava/lang/String; = "android.app.cloudsearch.APP_PACKAGE_NAME"

.field public static final whitelist EXTRAINFO_APP_REVIEW_COUNT:Ljava/lang/String; = "android.app.cloudsearch.APP_REVIEW_COUNT"

.field public static final whitelist EXTRAINFO_APP_SIZE_BYTES:Ljava/lang/String; = "android.app.cloudsearch.APP_SIZE_BYTES"

.field public static final whitelist EXTRAINFO_APP_STAR_RATING:Ljava/lang/String; = "android.app.cloudsearch.APP_STAR_RATING"

.field public static final whitelist EXTRAINFO_LONG_DESCRIPTION:Ljava/lang/String; = "android.app.cloudsearch.LONG_DESCRIPTION"

.field public static final whitelist EXTRAINFO_SCREENSHOTS:Ljava/lang/String; = "android.app.cloudsearch.SCREENSHOTS"

.field public static final whitelist EXTRAINFO_SHORT_DESCRIPTION:Ljava/lang/String; = "android.app.cloudsearch.SHORT_DESCRIPTION"

.field public static final whitelist EXTRAINFO_WEB_ICON:Ljava/lang/String; = "android.app.cloudsearch.WEB_ICON"

.field public static final whitelist EXTRAINFO_WEB_URL:Ljava/lang/String; = "android.app.cloudsearch.WEB_URL"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 164
    new-instance v0, Landroid/app/cloudsearch/SearchResult$1;

    invoke-direct {v0}, Landroid/app/cloudsearch/SearchResult$1;-><init>()V

    sput-object v0, Landroid/app/cloudsearch/SearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/cloudsearch/SearchResult-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/cloudsearch/SearchResult;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtraInfos()Landroid/os/Bundle;
    .registers 2

    .line 157
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getScore()F
    .registers 2

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSnippet()Ljava/lang/String;
    .registers 2

    .line 146
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .registers 2

    .line 140
    const-string v0, ""

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 178
    return-void
.end method
