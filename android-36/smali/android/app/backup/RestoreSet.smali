.class public Landroid/app/backup/RestoreSet;
.super Ljava/lang/Object;
.source "RestoreSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/backup/RestoreSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final whitelist backupTransportFlags:I

.field public whitelist device:Ljava/lang/String;

.field public whitelist name:Ljava/lang/String;

.field public whitelist token:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 111
    new-instance v0, Landroid/app/backup/RestoreSet$1;

    invoke-direct {v0}, Landroid/app/backup/RestoreSet$1;-><init>()V

    sput-object v0, Landroid/app/backup/RestoreSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/backup/RestoreSet;->backupTransportFlags:I

    .line 67
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/RestoreSet;->device:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/backup/RestoreSet;->token:J

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/backup/RestoreSet;->backupTransportFlags:I

    .line 127
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/backup/RestoreSet-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/backup/RestoreSet;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "token"    # J

    .line 77
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "device":Ljava/lang/String;
    .end local p3    # "token":J
    .local v1, "name":Ljava/lang/String;
    .local v2, "device":Ljava/lang/String;
    .local v3, "token":J
    invoke-direct/range {v0 .. v5}, Landroid/app/backup/RestoreSet;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 78
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "token"    # J
    .param p5, "backupTransportFlags"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Landroid/app/backup/RestoreSet;->device:Ljava/lang/String;

    .line 95
    iput-wide p3, p0, Landroid/app/backup/RestoreSet;->token:J

    .line 96
    iput p5, p0, Landroid/app/backup/RestoreSet;->backupTransportFlags:I

    .line 97
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    iget-object v0, p0, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Landroid/app/backup/RestoreSet;->device:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-wide v0, p0, Landroid/app/backup/RestoreSet;->token:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget v0, p0, Landroid/app/backup/RestoreSet;->backupTransportFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return-void
.end method
