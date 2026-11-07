.class Landroid/content/pm/StringParceledListSlice$1;
.super Ljava/lang/Object;
.source "StringParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/StringParceledListSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/content/pm/StringParceledListSlice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/StringParceledListSlice;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 70
    new-instance v0, Landroid/content/pm/StringParceledListSlice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroid/content/pm/StringParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/content/pm/StringParceledListSlice-IA;)V

    return-object v0
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/content/pm/StringParceledListSlice;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 75
    new-instance v0, Landroid/content/pm/StringParceledListSlice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/content/pm/StringParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/content/pm/StringParceledListSlice-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Landroid/content/pm/StringParceledListSlice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/StringParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
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

    .line 68
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/StringParceledListSlice$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/content/pm/StringParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/pm/StringParceledListSlice;
    .registers 3
    .param p1, "size"    # I

    .line 80
    new-array v0, p1, [Landroid/content/pm/StringParceledListSlice;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Landroid/content/pm/StringParceledListSlice$1;->newArray(I)[Landroid/content/pm/StringParceledListSlice;

    move-result-object p1

    return-object p1
.end method
