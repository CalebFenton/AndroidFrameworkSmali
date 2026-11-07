.class Landroid/app/search/SearchContext$1;
.super Ljava/lang/Object;
.source "SearchContext.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/search/SearchContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/search/SearchContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/search/SearchContext;
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 136
    new-instance v0, Landroid/app/search/SearchContext;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/search/SearchContext;-><init>(Landroid/os/Parcel;Landroid/app/search/SearchContext-IA;)V

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

    .line 134
    invoke-virtual {p0, p1}, Landroid/app/search/SearchContext$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/search/SearchContext;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/search/SearchContext;
    .registers 3
    .param p1, "size"    # I

    .line 140
    new-array v0, p1, [Landroid/app/search/SearchContext;

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

    .line 134
    invoke-virtual {p0, p1}, Landroid/app/search/SearchContext$1;->newArray(I)[Landroid/app/search/SearchContext;

    move-result-object p1

    return-object p1
.end method
