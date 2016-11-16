.class public Landroid/app/backup/BackupProgress;
.super Ljava/lang/Object;
.source "BackupProgress.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupProgress$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/backup/BackupProgress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bytesExpected:J

.field public final bytesTransferred:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 55
    new-instance v0, Landroid/app/backup/BackupProgress$1;

    #@2
    invoke-direct {v0}, Landroid/app/backup/BackupProgress$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/backup/BackupProgress;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "_bytesExpected"    # J
    .param p3, "_bytesTransferred"    # J

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-wide p1, p0, Landroid/app/backup/BackupProgress;->bytesExpected:J

    #@5
    .line 43
    iput-wide p3, p0, Landroid/app/backup/BackupProgress;->bytesTransferred:J

    #@7
    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/app/backup/BackupProgress;->bytesExpected:J

    #@9
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/app/backup/BackupProgress;->bytesTransferred:J

    #@f
    .line 65
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/backup/BackupProgress;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/backup/BackupProgress;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 51
    iget-wide v0, p0, Landroid/app/backup/BackupProgress;->bytesExpected:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 52
    iget-wide v0, p0, Landroid/app/backup/BackupProgress;->bytesTransferred:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 50
    return-void
.end method
