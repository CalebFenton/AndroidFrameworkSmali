.class public final Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;
.super Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;
.source "OdpParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice$1;

    invoke-direct {v0}, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice$1;-><init>()V

    sput-object v0, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 58
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 59
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

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

    .line 54
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;-><init>(Ljava/util/List;)V

    .line 55
    return-void
.end method

.method public static blacklist emptyList()Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()",
            "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<",
            "TT;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 5

    .line 71
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<TT;>;"
    const/4 v0, 0x0

    .line 72
    .local v0, "contents":I
    invoke-virtual {p0}, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a

    .line 74
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-interface {v3}, Landroid/os/Parcelable;->describeContents()I

    move-result v3

    or-int/2addr v0, v3

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 76
    .end local v2    # "i":I
    :cond_1a
    return v0
.end method

.method public bridge synthetic blacklist getList()Ljava/util/List;
    .registers 2

    .line 33
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<TT;>;"
    invoke-super {p0}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->getList()Ljava/util/List;

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

    .line 91
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<TT;>;"
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

    .line 33
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<TT;>;"
    invoke-super {p0, p1}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->setInlineCountLimit(I)V

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

    .line 81
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<TT;>;"
    .local p1, "parcelable":Landroid/os/Parcelable;, "TT;"
    invoke-interface {p1, p2, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
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

    .line 33
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<TT;>;"
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;->writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

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

    .line 86
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<TT;>;"
    .local p1, "parcelable":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    .line 87
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

    .line 33
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<TT;>;"
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2}, Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;->writeParcelableCreator(Landroid/os/Parcelable;Landroid/os/Parcel;)V

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

    .line 33
    .local p0, "this":Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice;, "Lcom/android/ondevicepersonalization/internal/util/OdpParceledListSlice<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/android/ondevicepersonalization/internal/util/BaseOdpParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
