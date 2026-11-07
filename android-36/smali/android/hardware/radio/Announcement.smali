.class public final Landroid/hardware/radio/Announcement;
.super Ljava/lang/Object;
.source "Announcement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/Announcement$OnListUpdatedListener;,
        Landroid/hardware/radio/Announcement$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/Announcement;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_EMERGENCY:I = 0x1

.field public static final whitelist TYPE_EVENT:I = 0x6

.field public static final whitelist TYPE_MISC:I = 0x8

.field public static final whitelist TYPE_NEWS:I = 0x5

.field public static final whitelist TYPE_SPORT:I = 0x7

.field public static final whitelist TYPE_TRAFFIC:I = 0x3

.field public static final whitelist TYPE_WARNING:I = 0x2

.field public static final whitelist TYPE_WEATHER:I = 0x4


# instance fields
.field private final greylist-max-o mSelector:Landroid/hardware/radio/ProgramSelector;

.field private final greylist-max-o mType:I

.field private final greylist-max-o mVendorInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 111
    new-instance v0, Landroid/hardware/radio/Announcement$1;

    invoke-direct {v0}, Landroid/hardware/radio/Announcement$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/Announcement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/radio/ProgramSelector;ILjava/util/Map;)V
    .registers 5
    .param p1, "selector"    # Landroid/hardware/radio/ProgramSelector;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/ProgramSelector;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p3, "vendorInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, "Program selector cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    iput-object v0, p0, Landroid/hardware/radio/Announcement;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 89
    iput p2, p0, Landroid/hardware/radio/Announcement;->mType:I

    .line 90
    const-string v0, "Vendor info cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroid/hardware/radio/Announcement;->mVendorInfo:Ljava/util/Map;

    .line 91
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    iput-object v0, p0, Landroid/hardware/radio/Announcement;->mSelector:Landroid/hardware/radio/ProgramSelector;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/Announcement;->mType:I

    .line 96
    invoke-static {p1}, Landroid/hardware/radio/Utils;->readStringMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/Announcement;->mVendorInfo:Ljava/util/Map;

    .line 97
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/Announcement-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/Announcement;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSelector()Landroid/hardware/radio/ProgramSelector;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/hardware/radio/Announcement;->mSelector:Landroid/hardware/radio/ProgramSelector;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/hardware/radio/Announcement;->mType:I

    return v0
.end method

.method public whitelist getVendorInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Landroid/hardware/radio/Announcement;->mVendorInfo:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 101
    iget-object v0, p0, Landroid/hardware/radio/Announcement;->mSelector:Landroid/hardware/radio/ProgramSelector;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 102
    iget v0, p0, Landroid/hardware/radio/Announcement;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Landroid/hardware/radio/Announcement;->mVendorInfo:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 104
    return-void
.end method
