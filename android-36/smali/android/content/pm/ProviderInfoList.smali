.class public final Landroid/content/pm/ProviderInfoList;
.super Ljava/lang/Object;
.source "ProviderInfoList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ProviderInfoList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Landroid/content/pm/ProviderInfoList$1;

    invoke-direct {v0}, Landroid/content/pm/ProviderInfoList$1;-><init>()V

    sput-object v0, Landroid/content/pm/ProviderInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    sget-object v1, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 38
    iput-object v0, p0, Landroid/content/pm/ProviderInfoList;->mList:Ljava/util/List;

    .line 39
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ProviderInfoList-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/ProviderInfoList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/content/pm/ProviderInfoList;->mList:Ljava/util/List;

    .line 43
    return-void
.end method

.method public static blacklist fromList(Ljava/util/List;)Landroid/content/pm/ProviderInfoList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)",
            "Landroid/content/pm/ProviderInfoList;"
        }
    .end annotation

    .line 85
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    new-instance v0, Landroid/content/pm/ProviderInfoList;

    invoke-direct {v0, p0}, Landroid/content/pm/ProviderInfoList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/content/pm/ProviderInfoList;->mList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->allowSquashing()Z

    move-result v0

    .line 54
    .local v0, "prevAllowSquashing":Z
    iget-object v1, p0, Landroid/content/pm/ProviderInfoList;->mList:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    .line 56
    return-void
.end method
