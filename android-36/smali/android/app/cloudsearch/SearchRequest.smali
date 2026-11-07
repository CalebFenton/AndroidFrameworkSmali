.class public final Landroid/app/cloudsearch/SearchRequest;
.super Ljava/lang/Object;
.source "SearchRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/cloudsearch/SearchRequest$Builder;,
        Landroid/app/cloudsearch/SearchRequest$SearchConstraintKey;
    }
.end annotation


# static fields
.field public static final whitelist CONSTRAINT_IS_PRESUBMIT_SUGGESTION:Ljava/lang/String; = "android.app.cloudsearch.IS_PRESUBMIT_SUGGESTION"

.field public static final whitelist CONSTRAINT_SEARCH_PROVIDER_FILTER:Ljava/lang/String; = "android.app.cloudsearch.SEARCH_PROVIDER_FILTER"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/cloudsearch/SearchRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Landroid/app/cloudsearch/SearchRequest$1;

    invoke-direct {v0}, Landroid/app/cloudsearch/SearchRequest$1;-><init>()V

    sput-object v0, Landroid/app/cloudsearch/SearchRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/cloudsearch/SearchRequest-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/cloudsearch/SearchRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallerPackageName()Ljava/lang/String;
    .registers 2

    .line 98
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getMaxLatencyMillis()F
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getQuery()Ljava/lang/String;
    .registers 2

    .line 71
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getRequestId()Ljava/lang/String;
    .registers 2

    .line 104
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getResultNumber()I
    .registers 2

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getResultOffset()I
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSearchConstraints()Landroid/os/Bundle;
    .registers 2

    .line 92
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCallerPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 113
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 147
    const-string v0, ""

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 133
    return-void
.end method
