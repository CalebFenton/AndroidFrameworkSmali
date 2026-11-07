.class public final Landroid/os/PowerMonitor;
.super Ljava/lang/Object;
.source "PowerMonitor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerMonitor$PowerMonitorType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PowerMonitor;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist POWER_MONITOR_TYPE_CONSUMER:I = 0x0

.field public static final whitelist POWER_MONITOR_TYPE_MEASUREMENT:I = 0x1


# instance fields
.field public final blacklist index:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 131
    new-instance v0, Landroid/os/PowerMonitor$1;

    invoke-direct {v0}, Landroid/os/PowerMonitor$1;-><init>()V

    sput-object v0, Landroid/os/PowerMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Landroid/os/PowerMonitor;->index:I

    .line 87
    iput p2, p0, Landroid/os/PowerMonitor;->mType:I

    .line 88
    iput-object p3, p0, Landroid/os/PowerMonitor;->mName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PowerMonitor;->index:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PowerMonitor;->mType:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PowerMonitor;->mName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/PowerMonitor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/PowerMonitor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/os/PowerMonitor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/os/PowerMonitor;->mType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    iget v0, p0, Landroid/os/PowerMonitor;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroid/os/PowerMonitor;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Landroid/os/PowerMonitor;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 121
    return-void
.end method
