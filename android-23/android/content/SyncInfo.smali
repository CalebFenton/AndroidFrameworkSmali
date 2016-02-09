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


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final authority:Ljava/lang/String;

.field public final authorityId:I

.field public final startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 85
    new-instance v0, Landroid/content/SyncInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/SyncInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/content/SyncInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
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
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    iput p1, p0, Landroid/content/SyncInfo;->authorityId:I

    #@5
    .line 50
    iput-object p2, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    #@7
    .line 51
    iput-object p3, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    #@9
    .line 52
    iput-wide p4, p0, Landroid/content/SyncInfo;->startTime:J

    #@b
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/SyncInfo;)V
    .locals 3
    .param p1, "other"    # Landroid/content/SyncInfo;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iget v0, p1, Landroid/content/SyncInfo;->authorityId:I

    #@5
    iput v0, p0, Landroid/content/SyncInfo;->authorityId:I

    #@7
    .line 58
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
    .line 59
    iget-object v0, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    #@18
    iput-object v0, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    #@1a
    .line 60
    iget-wide v0, p1, Landroid/content/SyncInfo;->startTime:J

    #@1c
    iput-wide v0, p0, Landroid/content/SyncInfo;->startTime:J

    #@1e
    .line 56
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/content/SyncInfo;->authorityId:I

    #@9
    .line 79
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
    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    #@1d
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@20
    move-result-wide v0

    #@21
    iput-wide v0, p0, Landroid/content/SyncInfo;->startTime:J

    #@23
    .line 77
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 65
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
    .line 70
    iget v0, p0, Landroid/content/SyncInfo;->authorityId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 71
    iget-object v0, p0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    #@7
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@a
    .line 72
    iget-object v0, p0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 73
    iget-wide v0, p0, Landroid/content/SyncInfo;->startTime:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 69
    return-void
.end method
