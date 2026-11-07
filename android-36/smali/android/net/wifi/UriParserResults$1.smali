.class Landroid/net/wifi/UriParserResults$1;
.super Ljava/lang/Object;
.source "UriParserResults.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/UriParserResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/UriParserResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/UriParserResults;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 166
    new-instance v0, Landroid/net/wifi/UriParserResults;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/net/wifi/WifiConfiguration;

    .line 170
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/wifi/UriParserResults;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 166
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

    .line 164
    invoke-virtual {p0, p1}, Landroid/net/wifi/UriParserResults$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/UriParserResults;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/UriParserResults;
    .registers 3
    .param p1, "size"    # I

    .line 174
    new-array v0, p1, [Landroid/net/wifi/UriParserResults;

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

    .line 164
    invoke-virtual {p0, p1}, Landroid/net/wifi/UriParserResults$1;->newArray(I)[Landroid/net/wifi/UriParserResults;

    move-result-object p1

    return-object p1
.end method
