.class public final Landroid/telephony/mbms/StreamingServiceInfo;
.super Landroid/telephony/mbms/ServiceInfo;
.source "StreamingServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/mbms/StreamingServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Landroid/telephony/mbms/StreamingServiceInfo$1;

    invoke-direct {v0}, Landroid/telephony/mbms/StreamingServiceInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/mbms/StreamingServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0, p1}, Landroid/telephony/mbms/ServiceInfo;-><init>(Landroid/os/Parcel;)V

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/mbms/StreamingServiceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/mbms/StreamingServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .registers 7
    .param p2, "className"    # Ljava/lang/String;
    .param p4, "serviceId"    # Ljava/lang/String;
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
            ")V"
        }
    .end annotation

    .line 46
    .local p1, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/lang/String;>;"
    .local p3, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-direct/range {p0 .. p6}, Landroid/telephony/mbms/ServiceInfo;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    invoke-super {p0, p1, p2}, Landroid/telephony/mbms/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    return-void
.end method
