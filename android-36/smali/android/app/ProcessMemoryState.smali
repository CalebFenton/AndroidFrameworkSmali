.class public final Landroid/app/ProcessMemoryState;
.super Ljava/lang/Object;
.source "ProcessMemoryState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ProcessMemoryState$HostingComponentType;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ProcessMemoryState;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HOSTING_COMPONENT_TYPE_ACTIVITY:I = 0x10

.field public static final blacklist HOSTING_COMPONENT_TYPE_BACKUP:I = 0x4

.field public static final blacklist HOSTING_COMPONENT_TYPE_BOUND_SERVICE:I = 0x200

.field public static final blacklist HOSTING_COMPONENT_TYPE_BROADCAST_RECEIVER:I = 0x20

.field public static final blacklist HOSTING_COMPONENT_TYPE_EMPTY:I = 0x0

.field public static final blacklist HOSTING_COMPONENT_TYPE_FOREGROUND_SERVICE:I = 0x100

.field public static final blacklist HOSTING_COMPONENT_TYPE_INSTRUMENTATION:I = 0x8

.field public static final blacklist HOSTING_COMPONENT_TYPE_PERSISTENT:I = 0x2

.field public static final blacklist HOSTING_COMPONENT_TYPE_PROVIDER:I = 0x40

.field public static final blacklist HOSTING_COMPONENT_TYPE_STARTED_SERVICE:I = 0x80

.field public static final blacklist HOSTING_COMPONENT_TYPE_SYSTEM:I = 0x1


# instance fields
.field public final blacklist hasForegroundServices:Z

.field public final blacklist mHistoricalHostingComponentTypes:I

.field public final blacklist mHostingComponentTypes:I

.field public final greylist-max-o oomScore:I

.field public final blacklist pid:I

.field public final greylist-max-o processName:Ljava/lang/String;

.field public final greylist-max-o uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 166
    new-instance v0, Landroid/app/ProcessMemoryState$1;

    invoke-direct {v0}, Landroid/app/ProcessMemoryState$1;-><init>()V

    sput-object v0, Landroid/app/ProcessMemoryState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;IZII)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "oomScore"    # I
    .param p5, "hasForegroundServices"    # Z
    .param p6, "hostingComponentTypes"    # I
    .param p7, "historicalHostingComponentTypes"    # I

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Landroid/app/ProcessMemoryState;->uid:I

    .line 148
    iput p2, p0, Landroid/app/ProcessMemoryState;->pid:I

    .line 149
    iput-object p3, p0, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    .line 150
    iput p4, p0, Landroid/app/ProcessMemoryState;->oomScore:I

    .line 151
    iput-boolean p5, p0, Landroid/app/ProcessMemoryState;->hasForegroundServices:Z

    .line 152
    iput p6, p0, Landroid/app/ProcessMemoryState;->mHostingComponentTypes:I

    .line 153
    iput p7, p0, Landroid/app/ProcessMemoryState;->mHistoricalHostingComponentTypes:I

    .line 154
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProcessMemoryState;->uid:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProcessMemoryState;->pid:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProcessMemoryState;->oomScore:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    iput-boolean v1, p0, Landroid/app/ProcessMemoryState;->hasForegroundServices:Z

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProcessMemoryState;->mHostingComponentTypes:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProcessMemoryState;->mHistoricalHostingComponentTypes:I

    .line 164
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ProcessMemoryState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ProcessMemoryState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 185
    iget v0, p0, Landroid/app/ProcessMemoryState;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v0, p0, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v0, p0, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget v0, p0, Landroid/app/ProcessMemoryState;->oomScore:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-boolean v0, p0, Landroid/app/ProcessMemoryState;->hasForegroundServices:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Landroid/app/ProcessMemoryState;->mHostingComponentTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Landroid/app/ProcessMemoryState;->mHistoricalHostingComponentTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    return-void
.end method
