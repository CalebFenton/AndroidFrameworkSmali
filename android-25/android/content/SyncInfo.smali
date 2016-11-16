.class public Landroid/content/SyncInfo;
.super Ljava/lang/Object;
.source "SyncInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final REDACTED_ACCOUNT:Landroid/accounts/Account;


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final authority:Ljava/lang/String;

.field public final authorityId:I

.field public final startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 32
    new-instance v0, Landroid/accounts/Account;

    #@2
    const-string/jumbo v1, "*****"

    #@5
    const-string/jumbo v2, "*****"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    sput-object v0, Landroid/content/SyncInfo;->REDACTED_ACCOUNT:Landroid/accounts/Account;

    #@d
    .line 103
    new-instance v0, Landroid/content/SyncInfo$1;

    #@f
    invoke-direct {v0}, Landroid/content/SyncInfo$1;-><init>()V

    #@12
    sput-object v0, Landroid/content/SyncInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14
    .line 26
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;J)V
    .locals 0
    .param p1, "authorityId"    # I
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "startTime"    # J

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput p1, p0, Landroid/content/SyncInfo;->authorityId:I

    #@5
    .line 68
    iput-object p2, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    #@7
    .line 69
    iput-object p3, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    #@9
    .line 70
    iput-wide p4, p0, Landroid/content/SyncInfo;->startTime:J

    #@b
    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/SyncInfo;)V
    .locals 3
    .param p1, "other"    # Landroid/content/SyncInfo;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    iget v0, p1, Landroid/content/SyncInfo;->authorityId:I

    #@5
    iput v0, p0, Landroid/content/SyncInfo;->authorityId:I

    #@7
    .line 76
    new-instance v0, Landroid/accounts/Account;

    #@9
    iget-object v1, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    #@b
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@d
    iget-object v2, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    #@f
    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@11
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    iput-object v0, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    #@16
    .line 77
    iget-object v0, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    #@18
    iput-object v0, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    #@1a
    .line 78
    iget-wide v0, p1, Landroid/content/SyncInfo;->startTime:J

    #@1c
    iput-wide v0, p0, Landroid/content/SyncInfo;->startTime:J

    #@1e
    .line 74
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/content/SyncInfo;->authorityId:I

    #@9
    .line 97
    const-class v0, Landroid/accounts/Account;

    #@b
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/accounts/Account;

    #@15
    iput-object v0, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    #@17
    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    #@1d
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@20
    move-result-wide v0

    #@21
    iput-wide v0, p0, Landroid/content/SyncInfo;->startTime:J

    #@23
    .line 95
    return-void
.end method

.method public static createAccountRedacted(ILjava/lang/String;J)Landroid/content/SyncInfo;
    .locals 6
    .param p0, "authorityId"    # I
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    #@0
    .prologue
    .line 62
    new-instance v0, Landroid/content/SyncInfo;

    #@2
    sget-object v2, Landroid/content/SyncInfo;->REDACTED_ACCOUNT:Landroid/accounts/Account;

    #@4
    move v1, p0

    #@5
    move-object v3, p1

    #@6
    move-wide v4, p2

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    #@a
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 88
    iget v0, p0, Landroid/content/SyncInfo;->authorityId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 89
    iget-object v0, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    #@7
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@a
    .line 90
    iget-object v0, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 91
    iget-wide v0, p0, Landroid/content/SyncInfo;->startTime:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 87
    return-void
.end method
