.class public final Landroid/app/appsearch/aidl/AppSearchAttributionSource;
.super Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api31Impl;,
        Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;,
        Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appsearch/aidl/AppSearchAttributionSource;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INVALID_PID:I = -0x1


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mCallingPackageName:Ljava/lang/String;

.field private blacklist mCallingPid:I

.field private final blacklist mCallingUid:I

.field private final blacklist mCompat:Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchAttributionSourceCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/aidl/AppSearchAttributionSourceCreator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCompat:Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;

    .line 15
    invoke-interface {p1}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mAttributionSource:Landroid/content/AttributionSource;

    .line 16
    invoke-interface {p1}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCallingPackageName:Ljava/lang/String;

    .line 17
    invoke-interface {p1}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;->getUid()I

    move-result v0

    iput v0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCallingUid:I

    .line 18
    invoke-interface {p1}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;->getPid()I

    move-result p1

    iput p1, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCallingPid:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/AttributionSource;Ljava/lang/String;II)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mAttributionSource:Landroid/content/AttributionSource;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCallingPackageName:Ljava/lang/String;

    .line 4
    iput p3, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCallingUid:I

    .line 5
    iput p4, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCallingPid:I

    if-eqz p1, :cond_18

    .line 6
    new-instance p2, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api31Impl;

    invoke-direct {p2, p1, p4}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api31Impl;-><init>(Landroid/content/AttributionSource;I)V

    iput-object p2, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCompat:Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;

    return-void

    .line 7
    :cond_18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    if-nez p1, :cond_21

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCallingPid:I

    .line 9
    :cond_21
    new-instance p1, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;

    iget p4, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCallingPid:I

    invoke-direct {p1, p2, p3, p4}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;-><init>(Ljava/lang/String;II)V

    .line 10
    invoke-static {p1}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->-$$Nest$menforceCallingUid(Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;)V

    .line 11
    invoke-static {p1}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;->-$$Nest$menforceCallingPid(Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;)V

    .line 12
    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCompat:Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 6

    .line 19
    invoke-direct {p0}, Landroid/app/appsearch/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCallingPackageName:Ljava/lang/String;

    .line 21
    iput p2, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCallingUid:I

    .line 22
    iput p3, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCallingPid:I

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    new-instance v1, Landroid/content/AttributionSource$Builder;

    invoke-direct {v1, p2}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 25
    invoke-virtual {v1, p1}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    move-result-object p1

    const/16 p2, 0x22

    if-lt v0, p2, :cond_1e

    .line 26
    invoke-virtual {p1, p3}, Landroid/content/AttributionSource$Builder;->setPid(I)Landroid/content/AttributionSource$Builder;

    .line 27
    :cond_1e
    invoke-virtual {p1}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mAttributionSource:Landroid/content/AttributionSource;

    .line 28
    new-instance p2, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api31Impl;

    iget p3, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCallingPid:I

    invoke-direct {p2, p1, p3}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api31Impl;-><init>(Landroid/content/AttributionSource;I)V

    iput-object p2, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCompat:Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;

    return-void
.end method

.method public static blacklist createAttributionSource(Landroid/content/Context;I)Landroid/app/appsearch/aidl/AppSearchAttributionSource;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->toAppSearchAttributionSource(Landroid/content/AttributionSource;I)Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static blacklist toAppSearchAttributionSource(Landroid/content/AttributionSource;I)Landroid/app/appsearch/aidl/AppSearchAttributionSource;
    .registers 4

    .line 1
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    new-instance v1, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api31Impl;

    invoke-direct {v1, p0, p1}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api31Impl;-><init>(Landroid/content/AttributionSource;I)V

    invoke-direct {v0, v1}, Landroid/app/appsearch/aidl/AppSearchAttributionSource;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;)V

    return-object v0
.end method

.method private static blacklist toAppSearchAttributionSource(Ljava/lang/String;II)Landroid/app/appsearch/aidl/AppSearchAttributionSource;
    .registers 5

    .line 2
    new-instance v0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    new-instance v1, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Api19Impl;-><init>(Ljava/lang/String;II)V

    invoke-direct {v0, v1}, Landroid/app/appsearch/aidl/AppSearchAttributionSource;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2e

    .line 3
    .line 4
    instance-of v1, p1, Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 5
    .line 6
    if-nez v1, :cond_8

    .line 7
    .line 8
    goto :goto_2e

    .line 9
    :cond_8
    check-cast p1, Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 10
    .line 11
    iget-object v1, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCompat:Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;

    .line 12
    .line 13
    invoke-interface {v1}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;->getAttributionSource()Landroid/content/AttributionSource;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->getAttributionSource()Landroid/content/AttributionSource;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2e

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->getPid()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCompat:Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;

    .line 38
    .line 39
    invoke-interface {p0}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;->getPid()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-ne p1, p0, :cond_2e

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_2e
    :goto_2e
    return v0
.end method

.method public blacklist getAttributionSource()Landroid/content/AttributionSource;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCompat:Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;->getAttributionSource()Landroid/content/AttributionSource;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCompat:Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public blacklist getPid()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCompat:Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;->getPid()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public blacklist getUid()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCompat:Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;->getUid()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->mCompat:Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/app/appsearch/aidl/AppSearchAttributionSource$Compat;->getAttributionSource()Landroid/content/AttributionSource;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroid/app/appsearch/aidl/AppSearchAttributionSourceCreator;->writeToParcel(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
