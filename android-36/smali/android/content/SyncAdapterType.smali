.class public Landroid/content/SyncAdapterType;
.super Ljava/lang/Object;
.source "SyncAdapterType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final whitelist accountType:Ljava/lang/String;

.field private final greylist-max-r allowParallelSyncs:Z

.field public final whitelist authority:Ljava/lang/String;

.field private final greylist-max-r isAlwaysSyncable:Z

.field public final whitelist isKey:Z

.field private final greylist-max-o packageName:Ljava/lang/String;

.field private final greylist-max-r settingsActivity:Ljava/lang/String;

.field private final greylist-max-p supportsUploading:Z

.field private final greylist-max-p userVisible:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 246
    new-instance v0, Landroid/content/SyncAdapterType$1;

    invoke-direct {v0}, Landroid/content/SyncAdapterType$1;-><init>()V

    sput-object v0, Landroid/content/SyncAdapterType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "source"    # Landroid/os/Parcel;

    .line 235
    nop

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_13

    move v0, v3

    goto :goto_15

    :cond_13
    move v0, v3

    move v3, v4

    .line 239
    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    move v5, v4

    move v4, v0

    goto :goto_1f

    :cond_1e
    move v5, v4

    .line 240
    :goto_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    move v6, v5

    move v5, v0

    goto :goto_29

    :cond_28
    move v6, v5

    .line 241
    :goto_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_30

    move v6, v0

    .line 242
    :cond_30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 235
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/content/SyncAdapterType;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method private constructor greylist-max-p <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 95
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 98
    iput-object p1, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    .line 101
    iput-boolean v0, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    .line 103
    iput-boolean v1, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    .line 105
    iput-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    .line 106
    iput-object v1, p0, Landroid/content/SyncAdapterType;->packageName:Ljava/lang/String;

    .line 107
    return-void

    .line 96
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the accountType must not be empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the authority must not be empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 8
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "userVisible"    # Z
    .param p4, "supportsUploading"    # Z

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 52
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 55
    iput-object p1, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    .line 57
    iput-boolean p3, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    .line 58
    iput-boolean p4, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    .line 60
    iput-boolean v0, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    .line 62
    iput-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    .line 63
    iput-object v1, p0, Landroid/content/SyncAdapterType;->packageName:Ljava/lang/String;

    .line 64
    return-void

    .line 53
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the accountType must not be empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the authority must not be empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "userVisible"    # Z
    .param p4, "supportsUploading"    # Z
    .param p5, "isAlwaysSyncable"    # Z
    .param p6, "allowParallelSyncs"    # Z
    .param p7, "settingsActivity"    # Ljava/lang/String;
    .param p8, "packageName"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 76
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 79
    iput-object p1, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    .line 81
    iput-boolean p3, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    .line 82
    iput-boolean p4, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    .line 83
    iput-boolean p5, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    .line 84
    iput-boolean p6, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    .line 85
    iput-object p7, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    .line 87
    iput-object p8, p0, Landroid/content/SyncAdapterType;->packageName:Ljava/lang/String;

    .line 88
    return-void

    .line 77
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the accountType must not be empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the authority must not be empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;
    .registers 3
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "accountType"    # Ljava/lang/String;

    .line 178
    new-instance v0, Landroid/content/SyncAdapterType;

    invoke-direct {v0, p0, p1}, Landroid/content/SyncAdapterType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist allowParallelSyncs()Z
    .registers 3

    .line 131
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    if-nez v0, :cond_7

    .line 135
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    return v0

    .line 132
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method is not allowed to be called when this is a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 182
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 183
    :cond_4
    instance-of v1, p1, Landroid/content/SyncAdapterType;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 184
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/content/SyncAdapterType;

    .line 186
    .local v1, "other":Landroid/content/SyncAdapterType;
    iget-object v3, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public greylist-max-o getPackageName()Ljava/lang/String;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/content/SyncAdapterType;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSettingsActivity()Ljava/lang/String;
    .registers 3

    .line 159
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    if-nez v0, :cond_7

    .line 163
    iget-object v0, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    return-object v0

    .line 160
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method is not allowed to be called when this is a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 190
    const/16 v0, 0x11

    .line 191
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 192
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 194
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist isAlwaysSyncable()Z
    .registers 3

    .line 147
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    if-nez v0, :cond_7

    .line 151
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    return v0

    .line 148
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method is not allowed to be called when this is a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isUserVisible()Z
    .registers 3

    .line 118
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    if-nez v0, :cond_7

    .line 122
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    return v0

    .line 119
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method is not allowed to be called when this is a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist supportsUploading()Z
    .registers 3

    .line 110
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    if-nez v0, :cond_7

    .line 114
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    return v0

    .line 111
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method is not allowed to be called when this is a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 198
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    const-string/jumbo v1, "}"

    const-string v2, ", type="

    if-eqz v0, :cond_2d

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncAdapterType Key {name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 203
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncAdapterType {name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", userVisible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", supportsUploading="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isAlwaysSyncable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", allowParallelSyncs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", settingsActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/SyncAdapterType;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 220
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    if-nez v0, :cond_2d

    .line 224
    iget-object v0, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v0, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Landroid/content/SyncAdapterType;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    return-void

    .line 221
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "keys aren\'t parcelable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
