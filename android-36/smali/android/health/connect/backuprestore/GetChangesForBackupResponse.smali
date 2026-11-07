.class public final Landroid/health/connect/backuprestore/GetChangesForBackupResponse;
.super Ljava/lang/Object;
.source "GetChangesForBackupResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/backuprestore/GetChangesForBackupResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/health/connect/backuprestore/BackupChange;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCurrentVersion:I

.field private final blacklist mNextChangeToken:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse$1;

    invoke-direct {v0}, Landroid/health/connect/backuprestore/GetChangesForBackupResponse$1;-><init>()V

    sput-object v0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/List;Ljava/lang/String;)V
    .registers 4
    .param p1, "currentVersion"    # I
    .param p3, "nextChangeToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/health/connect/backuprestore/BackupChange;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    .local p2, "changes":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/backuprestore/BackupChange;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mCurrentVersion:I

    .line 59
    iput-object p2, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mChanges:Ljava/util/List;

    .line 60
    iput-object p3, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mNextChangeToken:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mCurrentVersion:I

    .line 65
    sget-object v0, Landroid/health/connect/backuprestore/BackupChange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mChanges:Ljava/util/List;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mNextChangeToken:Ljava/lang/String;

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/backuprestore/GetChangesForBackupResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 71
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 72
    :cond_4
    instance-of v1, p1, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    move-object v1, p1

    check-cast v1, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;

    .line 73
    .local v1, "that":Landroid/health/connect/backuprestore/GetChangesForBackupResponse;
    iget v3, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mCurrentVersion:I

    iget v4, v1, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mCurrentVersion:I

    if-ne v3, v4, :cond_27

    iget-object v3, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mChanges:Ljava/util/List;

    iget-object v4, v1, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mChanges:Ljava/util/List;

    .line 74
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mNextChangeToken:Ljava/lang/String;

    iget-object v4, v1, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mNextChangeToken:Ljava/lang/String;

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_28

    :cond_27
    move v0, v2

    .line 73
    :goto_28
    return v0

    .line 72
    .end local v1    # "that":Landroid/health/connect/backuprestore/GetChangesForBackupResponse;
    :cond_29
    return v2
.end method

.method public blacklist getChanges()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/health/connect/backuprestore/BackupChange;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mChanges:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getCurrentVersion()I
    .registers 2

    .line 104
    iget v0, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mCurrentVersion:I

    return v0
.end method

.method public blacklist getNextChangeToken()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mNextChangeToken:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 80
    iget v0, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mCurrentVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mChanges:Ljava/util/List;

    iget-object v2, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mNextChangeToken:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    iget v0, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mCurrentVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mChanges:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Landroid/health/connect/backuprestore/GetChangesForBackupResponse;->mNextChangeToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    return-void
.end method
