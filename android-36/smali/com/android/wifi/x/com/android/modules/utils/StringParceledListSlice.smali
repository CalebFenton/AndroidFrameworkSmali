.class public Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;
.super Lcom/android/wifi/x/com/android/modules/utils/BaseParceledListSlice;
.source "StringParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/wifi/x/com/android/modules/utils/BaseParceledListSlice<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice$1;

    invoke-direct {v0}, Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice$1;-><init>()V

    sput-object v0, Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/wifi/x/com/android/modules/utils/BaseParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 38
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/wifi/x/com/android/modules/utils/BaseParceledListSlice;-><init>(Ljava/util/List;)V

    .line 34
    return-void
.end method

.method public static blacklist emptyList()Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;
    .registers 2

    .line 41
    new-instance v0, Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic blacklist getList()Ljava/util/List;
    .registers 2

    .line 31
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

    .line 61
    sget-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 31
    invoke-super {p0, p1}, Lcom/android/wifi/x/com/android/modules/utils/BaseParceledListSlice;->setInlineCountLimit(I)V

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

    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;->writeElement(Ljava/lang/String;Landroid/os/Parcel;I)V

    return-void
.end method

.method protected blacklist writeElement(Ljava/lang/String;Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcelable"    # Ljava/lang/String;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "callFlags"    # I

    .line 51
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
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

    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/wifi/x/com/android/modules/utils/StringParceledListSlice;->writeParcelableCreator(Ljava/lang/String;Landroid/os/Parcel;)V

    return-void
.end method

.method protected blacklist writeParcelableCreator(Ljava/lang/String;Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcelable"    # Ljava/lang/String;
    .param p2, "dest"    # Landroid/os/Parcel;

    .line 56
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

    .line 31
    invoke-super {p0, p1, p2}, Lcom/android/wifi/x/com/android/modules/utils/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
