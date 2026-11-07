.class public final Landroid/health/connect/backuprestore/BackupChange;
.super Ljava/lang/Object;
.source "BackupChange.java"

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
            "Landroid/health/connect/backuprestore/BackupChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChangeId:Ljava/lang/String;

.field private final blacklist mData:[B

.field private final blacklist mIsDeletion:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Landroid/health/connect/backuprestore/BackupChange$1;

    invoke-direct {v0}, Landroid/health/connect/backuprestore/BackupChange$1;-><init>()V

    sput-object v0, Landroid/health/connect/backuprestore/BackupChange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/backuprestore/BackupChange;->mChangeId:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Landroid/health/connect/backuprestore/BackupChange;->mIsDeletion:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/backuprestore/BackupChange;->mData:[B

    .line 110
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/backuprestore/BackupChange-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/backuprestore/BackupChange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Z[B)V
    .registers 4
    .param p1, "changeId"    # Ljava/lang/String;
    .param p2, "isDeletion"    # Z
    .param p3, "data"    # [B

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/health/connect/backuprestore/BackupChange;->mChangeId:Ljava/lang/String;

    .line 86
    iput-boolean p2, p0, Landroid/health/connect/backuprestore/BackupChange;->mIsDeletion:Z

    .line 87
    iput-object p3, p0, Landroid/health/connect/backuprestore/BackupChange;->mData:[B

    .line 88
    return-void
.end method

.method public static blacklist ofDeletion(Ljava/lang/String;)Landroid/health/connect/backuprestore/BackupChange;
    .registers 4
    .param p0, "changeId"    # Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/health/connect/backuprestore/BackupChange;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/health/connect/backuprestore/BackupChange;-><init>(Ljava/lang/String;Z[B)V

    return-object v0
.end method

.method public static blacklist ofUpsertion(Ljava/lang/String;[B)Landroid/health/connect/backuprestore/BackupChange;
    .registers 4
    .param p0, "changeId"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .line 75
    new-instance v0, Landroid/health/connect/backuprestore/BackupChange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Landroid/health/connect/backuprestore/BackupChange;-><init>(Ljava/lang/String;Z[B)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 93
    :cond_4
    instance-of v1, p1, Landroid/health/connect/backuprestore/BackupChange;

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    move-object v1, p1

    check-cast v1, Landroid/health/connect/backuprestore/BackupChange;

    .line 94
    .local v1, "that":Landroid/health/connect/backuprestore/BackupChange;
    iget-boolean v3, p0, Landroid/health/connect/backuprestore/BackupChange;->mIsDeletion:Z

    iget-boolean v4, v1, Landroid/health/connect/backuprestore/BackupChange;->mIsDeletion:Z

    if-ne v3, v4, :cond_27

    iget-object v3, p0, Landroid/health/connect/backuprestore/BackupChange;->mChangeId:Ljava/lang/String;

    iget-object v4, v1, Landroid/health/connect/backuprestore/BackupChange;->mChangeId:Ljava/lang/String;

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroid/health/connect/backuprestore/BackupChange;->mData:[B

    iget-object v4, v1, Landroid/health/connect/backuprestore/BackupChange;->mData:[B

    .line 96
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_28

    :cond_27
    move v0, v2

    .line 94
    :goto_28
    return v0

    .line 93
    .end local v1    # "that":Landroid/health/connect/backuprestore/BackupChange;
    :cond_29
    return v2
.end method

.method public blacklist getChangeId()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Landroid/health/connect/backuprestore/BackupChange;->mChangeId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getData()[B
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/health/connect/backuprestore/BackupChange;->mData:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 101
    iget-object v0, p0, Landroid/health/connect/backuprestore/BackupChange;->mChangeId:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/health/connect/backuprestore/BackupChange;->mIsDeletion:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 102
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/health/connect/backuprestore/BackupChange;->mData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 103
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public blacklist isDeletion()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Landroid/health/connect/backuprestore/BackupChange;->mIsDeletion:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 161
    iget-object v0, p0, Landroid/health/connect/backuprestore/BackupChange;->mChangeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-boolean v0, p0, Landroid/health/connect/backuprestore/BackupChange;->mIsDeletion:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 163
    iget-object v0, p0, Landroid/health/connect/backuprestore/BackupChange;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 164
    return-void
.end method
