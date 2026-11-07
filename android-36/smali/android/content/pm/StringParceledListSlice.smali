.class public Landroid/content/pm/StringParceledListSlice;
.super Landroid/content/pm/BaseParceledListSlice;
.source "StringParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/BaseParceledListSlice<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Landroid/content/pm/StringParceledListSlice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Landroid/content/pm/StringParceledListSlice$1;

    invoke-direct {v0}, Landroid/content/pm/StringParceledListSlice$1;-><init>()V

    sput-object v0, Landroid/content/pm/StringParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/content/pm/BaseParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 40
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/content/pm/StringParceledListSlice-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/content/pm/StringParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/content/pm/BaseParceledListSlice;-><init>(Ljava/util/List;)V

    .line 36
    return-void
.end method

.method public static greylist-max-o emptyList()Landroid/content/pm/StringParceledListSlice;
    .registers 2

    .line 43
    new-instance v0, Landroid/content/pm/StringParceledListSlice;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/StringParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic greylist-max-r getList()Ljava/util/List;
    .registers 2

    .line 33
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

    .line 63
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

    .line 33
    invoke-super {p0, p1}, Landroid/content/pm/BaseParceledListSlice;->setInlineCountLimit(I)V

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
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/StringParceledListSlice;->writeElement(Ljava/lang/String;Landroid/os/Parcel;I)V

    return-void
.end method

.method protected greylist-max-o writeElement(Ljava/lang/String;Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcelable"    # Ljava/lang/String;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "callFlags"    # I

    .line 53
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
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
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/StringParceledListSlice;->writeParcelableCreator(Ljava/lang/String;Landroid/os/Parcel;)V

    return-void
.end method

.method protected greylist-max-o writeParcelableCreator(Ljava/lang/String;Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcelable"    # Ljava/lang/String;
    .param p2, "dest"    # Landroid/os/Parcel;

    .line 58
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
    invoke-super {p0, p1, p2}, Landroid/content/pm/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
