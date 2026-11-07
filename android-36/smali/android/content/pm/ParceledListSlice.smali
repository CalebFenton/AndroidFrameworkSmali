.class public Landroid/content/pm/ParceledListSlice;
.super Landroid/content/pm/BaseParceledListSlice;
.source "ParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Landroid/content/pm/BaseParceledListSlice<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final greylist-max-p CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Landroid/content/pm/ParceledListSlice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Landroid/content/pm/ParceledListSlice$1;

    invoke-direct {v0}, Landroid/content/pm/ParceledListSlice$1;-><init>()V

    sput-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 42
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/content/pm/BaseParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 43
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/content/pm/ParceledListSlice-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Landroid/content/pm/BaseParceledListSlice;-><init>(Ljava/util/List;)V

    .line 39
    return-void
.end method

.method public static greylist-max-o emptyList()Landroid/content/pm/ParceledListSlice;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()",
            "Landroid/content/pm/ParceledListSlice<",
            "TT;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 5

    .line 51
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    const/4 v0, 0x0

    .line 52
    .local v0, "contents":I
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a

    .line 54
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-interface {v3}, Landroid/os/Parcelable;->describeContents()I

    move-result v3

    or-int/2addr v0, v3

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 56
    .end local v2    # "i":I
    :cond_1a
    return v0
.end method

.method public bridge synthetic greylist-max-r getList()Ljava/util/List;
    .registers 2

    .line 35
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    invoke-super {p0}, Landroid/content/pm/BaseParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .registers 4
    .param p1, "from"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation

    .line 72
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist setInlineCountLimit(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    invoke-super {p0, p1}, Landroid/content/pm/BaseParceledListSlice;->setInlineCountLimit(I)V

    return-void
.end method

.method protected greylist-max-o writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .registers 4
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "callFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    .local p1, "parcelable":Landroid/os/Parcelable;, "TT;"
    invoke-interface {p1, p2, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    return-void
.end method

.method protected bridge synthetic blacklist writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 35
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/ParceledListSlice;->writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    return-void
.end method

.method protected greylist-max-r writeParcelableCreator(Landroid/os/Parcelable;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 67
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    .local p1, "parcelable":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    .line 68
    return-void
.end method

.method protected bridge synthetic greylist-max-r writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 35
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ParceledListSlice;->writeParcelableCreator(Landroid/os/Parcelable;Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 35
    .local p0, "this":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/content/pm/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
