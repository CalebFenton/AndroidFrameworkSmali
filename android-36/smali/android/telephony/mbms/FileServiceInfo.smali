.class public final Landroid/telephony/mbms/FileServiceInfo;
.super Landroid/telephony/mbms/ServiceInfo;
.source "FileServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/mbms/FileServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/mbms/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Landroid/telephony/mbms/FileServiceInfo$1;

    invoke-direct {v0}, Landroid/telephony/mbms/FileServiceInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/mbms/FileServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0, p1}, Landroid/telephony/mbms/ServiceInfo;-><init>(Landroid/os/Parcel;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/mbms/FileServiceInfo;->files:Ljava/util/List;

    .line 61
    iget-object v0, p0, Landroid/telephony/mbms/FileServiceInfo;->files:Ljava/util/List;

    const-class v1, Landroid/telephony/mbms/FileInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/mbms/FileInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 62
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;)V
    .registers 10
    .param p2, "newClassName"    # Ljava/lang/String;
    .param p4, "newServiceId"    # Ljava/lang/String;
    .param p5, "start"    # Ljava/util/Date;
    .param p6, "end"    # Ljava/util/Date;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p1, "newNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/lang/String;>;"
    .local p3, "newLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .local p7, "newFiles":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/FileInfo;>;"
    invoke-direct/range {p0 .. p6}, Landroid/telephony/mbms/ServiceInfo;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 42
    move-object v0, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "newNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/lang/String;>;"
    .local v0, "end":Ljava/util/Date;
    .local p2, "newNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/lang/String;>;"
    .local p3, "newClassName":Ljava/lang/String;
    .local p4, "newLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .local p5, "newServiceId":Ljava/lang/String;
    .local p6, "start":Ljava/util/Date;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p1, Landroid/telephony/mbms/FileServiceInfo;->files:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/FileInfo;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/telephony/mbms/FileServiceInfo;->files:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 66
    invoke-super {p0, p1, p2}, Landroid/telephony/mbms/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    iget-object v0, p0, Landroid/telephony/mbms/FileServiceInfo;->files:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 68
    return-void
.end method
