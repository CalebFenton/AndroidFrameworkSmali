.class public final Landroid/credentials/ListEnabledProvidersResponse;
.super Ljava/lang/Object;
.source "ListEnabledProvidersResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/ListEnabledProvidersResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Landroid/credentials/ListEnabledProvidersResponse$1;

    invoke-direct {v0}, Landroid/credentials/ListEnabledProvidersResponse$1;-><init>()V

    sput-object v0, Landroid/credentials/ListEnabledProvidersResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/ListEnabledProvidersResponse;->mProviders:Ljava/util/List;

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/ListEnabledProvidersResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/ListEnabledProvidersResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/credentials/ListEnabledProvidersResponse;->mProviders:Ljava/util/List;

    .line 52
    return-void
.end method

.method public static blacklist create(Ljava/util/List;)Landroid/credentials/ListEnabledProvidersResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/credentials/ListEnabledProvidersResponse;"
        }
    .end annotation

    .line 45
    .local p0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "providers must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v0, "providers"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 47
    new-instance v0, Landroid/credentials/ListEnabledProvidersResponse;

    invoke-direct {v0, p0}, Landroid/credentials/ListEnabledProvidersResponse;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getProviderComponentNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/credentials/ListEnabledProvidersResponse;->mProviders:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    iget-object v0, p0, Landroid/credentials/ListEnabledProvidersResponse;->mProviders:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 79
    return-void
.end method
