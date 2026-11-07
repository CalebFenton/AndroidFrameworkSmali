.class public Landroid/content/SyncInfo;
.super Ljava/lang/Object;
.source "SyncInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o REDACTED_ACCOUNT:Landroid/accounts/Account;


# instance fields
.field public final whitelist account:Landroid/accounts/Account;

.field public final whitelist authority:Ljava/lang/String;

.field public final greylist authorityId:I

.field public final whitelist startTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "*****"

    invoke-direct {v0, v1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/content/SyncInfo;->REDACTED_ACCOUNT:Landroid/accounts/Account;

    .line 109
    new-instance v0, Landroid/content/SyncInfo$1;

    invoke-direct {v0}, Landroid/content/SyncInfo$1;-><init>()V

    sput-object v0, Landroid/content/SyncInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(ILandroid/accounts/Account;Ljava/lang/String;J)V
    .registers 6
    .param p1, "authorityId"    # I
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "startTime"    # J

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Landroid/content/SyncInfo;->authorityId:I

    .line 72
    iput-object p2, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    .line 73
    iput-object p3, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 74
    iput-wide p4, p0, Landroid/content/SyncInfo;->startTime:J

    .line 75
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/SyncInfo;)V
    .registers 5
    .param p1, "other"    # Landroid/content/SyncInfo;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iget v0, p1, Landroid/content/SyncInfo;->authorityId:I

    iput v0, p0, Landroid/content/SyncInfo;->authorityId:I

    .line 80
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    .line 81
    iget-object v0, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 82
    iget-wide v0, p1, Landroid/content/SyncInfo;->startTime:J

    iput-wide v0, p0, Landroid/content/SyncInfo;->startTime:J

    .line 83
    return-void
.end method

.method constructor greylist-max-p <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/SyncInfo;->authorityId:I

    .line 102
    const-class v0, Landroid/accounts/Account;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/accounts/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncInfo;->startTime:J

    .line 105
    return-void
.end method

.method public static greylist-max-o createAccountRedacted(ILjava/lang/String;J)Landroid/content/SyncInfo;
    .registers 10
    .param p0, "authorityId"    # I
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .line 65
    new-instance v0, Landroid/content/SyncInfo;

    sget-object v2, Landroid/content/SyncInfo;->REDACTED_ACCOUNT:Landroid/accounts/Account;

    move v1, p0

    move-object v3, p1

    move-wide v4, p2

    .end local p0    # "authorityId":I
    .end local p1    # "authority":Ljava/lang/String;
    .end local p2    # "startTime":J
    .local v1, "authorityId":I
    .local v3, "authority":Ljava/lang/String;
    .local v4, "startTime":J
    invoke-direct/range {v0 .. v5}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 92
    iget v0, p0, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 94
    iget-object v0, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-wide v0, p0, Landroid/content/SyncInfo;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    return-void
.end method
