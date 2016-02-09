.class public Landroid/content/SyncAdapterType;
.super Ljava/lang/Object;
.source "SyncAdapterType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncAdapterType$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accountType:Ljava/lang/String;

.field private final allowParallelSyncs:Z

.field public final authority:Ljava/lang/String;

.field private final isAlwaysSyncable:Z

.field public final isKey:Z

.field private final settingsActivity:Ljava/lang/String;

.field private final supportsUploading:Z

.field private final userVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 217
    new-instance v0, Landroid/content/SyncAdapterType$1;

    #@2
    invoke-direct {v0}, Landroid/content/SyncAdapterType$1;-><init>()V

    #@5
    sput-object v0, Landroid/content/SyncAdapterType;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_1

    #@10
    move v3, v0

    #@11
    .line 211
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_2

    #@17
    move v4, v0

    #@18
    .line 212
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_3

    #@1e
    move v5, v0

    #@1f
    .line 213
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v7

    #@23
    if-eqz v7, :cond_0

    #@25
    move v6, v0

    #@26
    .line 214
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@29
    move-result-object v7

    #@2a
    move-object v0, p0

    #@2b
    .line 207
    invoke-direct/range {v0 .. v7}, Landroid/content/SyncAdapterType;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    #@2e
    .line 206
    return-void

    #@2f
    :cond_1
    move v3, v6

    #@30
    .line 210
    goto :goto_0

    #@31
    :cond_2
    move v4, v6

    #@32
    .line 211
    goto :goto_1

    #@33
    :cond_3
    move v5, v6

    #@34
    .line 212
    goto :goto_2
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "the authority must not be empty: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 81
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v2, "the accountType must not be empty: "

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 84
    :cond_1
    iput-object p1, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@47
    .line 85
    iput-object p2, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    #@49
    .line 86
    iput-boolean v1, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    #@4b
    .line 87
    iput-boolean v1, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    #@4d
    .line 88
    iput-boolean v2, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    #@4f
    .line 89
    iput-boolean v2, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    #@51
    .line 90
    const/4 v0, 0x0

    #@52
    iput-object v0, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    #@54
    .line 91
    iput-boolean v1, p0, Landroid/content/SyncAdapterType;->isKey:Z

    #@56
    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "userVisible"    # Z
    .param p4, "supportsUploading"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "the authority must not be empty: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 42
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2c
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v2, "the accountType must not be empty: "

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    .line 45
    :cond_1
    iput-object p1, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@46
    .line 46
    iput-object p2, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    #@48
    .line 47
    iput-boolean p3, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    #@4a
    .line 48
    iput-boolean p4, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    #@4c
    .line 49
    iput-boolean v1, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    #@4e
    .line 50
    iput-boolean v1, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    #@50
    .line 51
    const/4 v0, 0x0

    #@51
    iput-object v0, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    #@53
    .line 52
    iput-boolean v1, p0, Landroid/content/SyncAdapterType;->isKey:Z

    #@55
    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "userVisible"    # Z
    .param p4, "supportsUploading"    # Z
    .param p5, "isAlwaysSyncable"    # Z
    .param p6, "allowParallelSyncs"    # Z
    .param p7, "settingsActivity"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "the authority must not be empty: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 64
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "the accountType must not be empty: "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0

    #@43
    .line 67
    :cond_1
    iput-object p1, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@45
    .line 68
    iput-object p2, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    #@47
    .line 69
    iput-boolean p3, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    #@49
    .line 70
    iput-boolean p4, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    #@4b
    .line 71
    iput-boolean p5, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    #@4d
    .line 72
    iput-boolean p6, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    #@4f
    .line 73
    iput-object p7, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    #@51
    .line 74
    const/4 v0, 0x0

    #@52
    iput-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    #@54
    .line 60
    return-void
.end method

.method public static newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;
    .locals 1
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "accountType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 152
    new-instance v0, Landroid/content/SyncAdapterType;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/content/SyncAdapterType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public allowParallelSyncs()Z
    .locals 2

    #@0
    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 118
    const-string/jumbo v1, "this method is not allowed to be called when this is a key"

    #@9
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 120
    :cond_0
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    #@f
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 189
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 156
    if-ne p1, p0, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 157
    :cond_0
    instance-of v2, p1, Landroid/content/SyncAdapterType;

    #@7
    if-nez v2, :cond_1

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 158
    check-cast v0, Landroid/content/SyncAdapterType;

    #@d
    .line 160
    .local v0, "other":Landroid/content/SyncAdapterType;
    iget-object v2, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@f
    iget-object v3, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    iget-object v1, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    #@19
    iget-object v2, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    :cond_2
    return v1
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 146
    const-string/jumbo v1, "this method is not allowed to be called when this is a key"

    #@9
    .line 145
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 148
    :cond_0
    iget-object v0, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    #@f
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 165
    iget-object v1, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v1

    #@6
    add-int/lit16 v0, v1, 0x20f

    #@8
    .line 166
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@a
    iget-object v2, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    #@c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@f
    move-result v2

    #@10
    add-int v0, v1, v2

    #@12
    .line 168
    return v0
.end method

.method public isAlwaysSyncable()Z
    .locals 2

    #@0
    .prologue
    .line 132
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 134
    const-string/jumbo v1, "this method is not allowed to be called when this is a key"

    #@9
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 136
    :cond_0
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    #@f
    return v0
.end method

.method public isUserVisible()Z
    .locals 2

    #@0
    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 105
    const-string/jumbo v1, "this method is not allowed to be called when this is a key"

    #@9
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 107
    :cond_0
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    #@f
    return v0
.end method

.method public supportsUploading()Z
    .locals 2

    #@0
    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    .line 97
    const-string/jumbo v1, "this method is not allowed to be called when this is a key"

    #@9
    .line 96
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 99
    :cond_0
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    #@f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 172
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "SyncAdapterType Key {name="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 174
    const-string/jumbo v1, ", type="

    #@19
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 174
    iget-object v1, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    #@1f
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 175
    const-string/jumbo v1, "}"

    #@26
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0

    #@2f
    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v1, "SyncAdapterType {name="

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    iget-object v1, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 178
    const-string/jumbo v1, ", type="

    #@44
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    .line 178
    iget-object v1, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    #@4a
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 179
    const-string/jumbo v1, ", userVisible="

    #@51
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    .line 179
    iget-boolean v1, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    #@57
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 180
    const-string/jumbo v1, ", supportsUploading="

    #@5e
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    .line 180
    iget-boolean v1, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    #@64
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    .line 181
    const-string/jumbo v1, ", isAlwaysSyncable="

    #@6b
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    .line 181
    iget-boolean v1, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    #@71
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    .line 182
    const-string/jumbo v1, ", allowParallelSyncs="

    #@78
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v0

    #@7c
    .line 182
    iget-boolean v1, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    #@7e
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    .line 183
    const-string/jumbo v1, ", settingsActivity="

    #@85
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    .line 183
    iget-object v1, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    #@8b
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    .line 184
    const-string/jumbo v1, "}"

    #@92
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v0

    #@9a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 193
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "keys aren\'t parcelable"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 197
    :cond_0
    iget-object v0, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 198
    iget-object v0, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 199
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    #@1b
    if-eqz v0, :cond_1

    #@1d
    move v0, v1

    #@1e
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 200
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    #@23
    if-eqz v0, :cond_2

    #@25
    move v0, v1

    #@26
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 201
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    #@2b
    if-eqz v0, :cond_3

    #@2d
    move v0, v1

    #@2e
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 202
    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    #@33
    if-eqz v0, :cond_4

    #@35
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 203
    iget-object v0, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    #@3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3d
    .line 192
    return-void

    #@3e
    :cond_1
    move v0, v2

    #@3f
    .line 199
    goto :goto_0

    #@40
    :cond_2
    move v0, v2

    #@41
    .line 200
    goto :goto_1

    #@42
    :cond_3
    move v0, v2

    #@43
    .line 201
    goto :goto_2

    #@44
    :cond_4
    move v1, v2

    #@45
    .line 202
    goto :goto_3
.end method
