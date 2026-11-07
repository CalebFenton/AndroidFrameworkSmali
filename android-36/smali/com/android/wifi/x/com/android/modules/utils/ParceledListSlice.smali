.class public Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
.super Lcom/android/wifi/x/com/android/modules/utils/BaseParceledListSlice;
.source "ParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Lcom/android/wifi/x/com/android/modules/utils/BaseParceledListSlice<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice$1;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice$1;-><init>()V

    sput-object v0, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 38
    .local p0, "this":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/wifi/x/com/android/modules/utils/BaseParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 39
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/wifi/x/com/android/modules/utils/BaseParceledListSlice;-><init>(Ljava/util/List;)V

    .line 35
    return-void
.end method

.method public static blacklist emptyList()Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "TT;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 5

    .line 47
    .local p0, "this":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<TT;>;"
    const/4 v0, 0x0

    .line 48
    .local v0, "contents":I
    invoke-virtual {p0}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a

    .line 50
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-interface {v3}, Landroid/os/Parcelable;->describeContents()I

    move-result v3

    or-int/2addr v0, v3

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 52
    .end local v2    # "i":I
    :cond_1a
    return v0
.end method

.method public bridge synthetic blacklist getList()Ljava/util/List;
    .registers 2

    .line 32
    .local p0, "this":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<TT;>;"
    invoke-super {p0}, Lcom/android/wifi/x/com/android/modules/utils/BaseParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
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

    .line 67
    .local p0, "this":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<TT;>;"
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

    .line 32
    .local p0, "this":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<TT;>;"
    invoke-super {p0, p1}, Lcom/android/wifi/x/com/android/modules/utils/BaseParceledListSlice;->setInlineCountLimit(I)V

    return-void
.end method

.method protected blacklist writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
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

    .line 57
    .local p0, "this":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<TT;>;"
    .local p1, "parcelable":Landroid/os/Parcelable;, "TT;"
    invoke-interface {p1, p2, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
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

    .line 32
    .local p0, "this":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<TT;>;"
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    return-void
.end method

.method protected blacklist writeParcelableCreator(Landroid/os/Parcelable;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<TT;>;"
    .local p1, "parcelable":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    .line 63
    return-void
.end method

.method protected bridge synthetic blacklist writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V
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

    .line 32
    .local p0, "this":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<TT;>;"
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->writeParcelableCreator(Landroid/os/Parcelable;Landroid/os/Parcel;)V

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

    .line 32
    .local p0, "this":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/android/wifi/x/com/android/modules/utils/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
