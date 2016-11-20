.class public Landroid/content/SyncRequest;
.super Ljava/lang/Object;
.source "SyncRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncRequest$1;,
        Landroid/content/SyncRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncRequest"


# instance fields
.field private final mAccountToSync:Landroid/accounts/Account;

.field private final mAuthority:Ljava/lang/String;

.field private final mDisallowMetered:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mIsAuthority:Z

.field private final mIsExpedited:Z

.field private final mIsPeriodic:Z

.field private final mSyncFlexTimeSecs:J

.field private final mSyncRunTimeSecs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 118
    new-instance v0, Landroid/content/SyncRequest$1;

    #@2
    invoke-direct {v0}, Landroid/content/SyncRequest$1;-><init>()V

    #@5
    sput-object v0, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/content/SyncRequest$Builder;)V
    .locals 6
    .param p1, "b"    # Landroid/content/SyncRequest$Builder;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 163
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get6(Landroid/content/SyncRequest$Builder;)J

    #@8
    move-result-wide v4

    #@9
    iput-wide v4, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    #@b
    .line 164
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get7(Landroid/content/SyncRequest$Builder;)J

    #@e
    move-result-wide v4

    #@f
    iput-wide v4, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    #@11
    .line 165
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get0(Landroid/content/SyncRequest$Builder;)Landroid/accounts/Account;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    #@17
    .line 166
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get1(Landroid/content/SyncRequest$Builder;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    #@1d
    .line 167
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get9(Landroid/content/SyncRequest$Builder;)I

    #@20
    move-result v0

    #@21
    if-ne v0, v1, :cond_0

    #@23
    move v0, v1

    #@24
    :goto_0
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    #@26
    .line 168
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get8(Landroid/content/SyncRequest$Builder;)I

    #@29
    move-result v0

    #@2a
    const/4 v3, 0x2

    #@2b
    if-ne v0, v3, :cond_1

    #@2d
    :goto_1
    iput-boolean v1, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    #@2f
    .line 169
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get4(Landroid/content/SyncRequest$Builder;)Z

    #@32
    move-result v0

    #@33
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    #@35
    .line 170
    new-instance v0, Landroid/os/Bundle;

    #@37
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get2(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@3e
    iput-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    #@40
    .line 173
    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    #@42
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get5(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@49
    .line 174
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-get3(Landroid/content/SyncRequest$Builder;)Z

    #@4c
    move-result v0

    #@4d
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    #@4f
    .line 162
    return-void

    #@50
    :cond_0
    move v0, v2

    #@51
    .line 167
    goto :goto_0

    #@52
    :cond_1
    move v1, v2

    #@53
    .line 168
    goto :goto_1
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    #@f
    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v4

    #@13
    iput-wide v4, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    #@15
    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@18
    move-result-wide v4

    #@19
    iput-wide v4, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    #@1b
    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    move v0, v1

    #@22
    :goto_0
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    #@24
    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    move v0, v1

    #@2b
    :goto_1
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    #@2d
    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_2

    #@33
    move v0, v1

    #@34
    :goto_2
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    #@36
    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_3

    #@3c
    :goto_3
    iput-boolean v1, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    #@3e
    .line 157
    const/4 v0, 0x0

    #@3f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Landroid/accounts/Account;

    #@45
    iput-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    #@47
    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    iput-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    #@4d
    .line 149
    return-void

    #@4e
    :cond_0
    move v0, v2

    #@4f
    .line 153
    goto :goto_0

    #@50
    :cond_1
    move v0, v2

    #@51
    .line 154
    goto :goto_1

    #@52
    :cond_2
    move v0, v2

    #@53
    .line 155
    goto :goto_2

    #@54
    :cond_3
    move v1, v2

    #@55
    .line 156
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/SyncRequest;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/SyncRequest;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 133
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    #@2
    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSyncFlexTime()J
    .locals 2

    #@0
    .prologue
    .line 108
    iget-wide v0, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    #@2
    return-wide v0
.end method

.method public getSyncRunTime()J
    .locals 2

    #@0
    .prologue
    .line 115
    iget-wide v0, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    #@2
    return-wide v0
.end method

.method public isExpedited()Z
    .locals 1

    #@0
    .prologue
    .line 70
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    #@2
    return v0
.end method

.method public isPeriodic()Z
    .locals 1

    #@0
    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 138
    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@7
    .line 139
    iget-wide v4, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    #@9
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@c
    .line 140
    iget-wide v4, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    #@e
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@11
    .line 141
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    move v0, v1

    #@16
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 142
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    #@1b
    if-eqz v0, :cond_1

    #@1d
    move v0, v1

    #@1e
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 143
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    #@23
    if-eqz v0, :cond_2

    #@25
    move v0, v1

    #@26
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 144
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    #@2b
    if-eqz v0, :cond_3

    #@2d
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 145
    iget-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    #@32
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@35
    .line 146
    iget-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    #@37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3a
    .line 137
    return-void

    #@3b
    :cond_0
    move v0, v2

    #@3c
    .line 141
    goto :goto_0

    #@3d
    :cond_1
    move v0, v2

    #@3e
    .line 142
    goto :goto_1

    #@3f
    :cond_2
    move v0, v2

    #@40
    .line 143
    goto :goto_2

    #@41
    :cond_3
    move v1, v2

    #@42
    .line 144
    goto :goto_3
.end method
