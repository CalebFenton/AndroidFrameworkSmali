.class public final Landroid/health/connect/changelog/ChangeLogsRequest;
.super Ljava/lang/Object;
.source "ChangeLogsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/changelog/ChangeLogsRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/changelog/ChangeLogsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPageSize:I

.field private final blacklist mToken:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Landroid/health/connect/changelog/ChangeLogsRequest$1;

    invoke-direct {v0}, Landroid/health/connect/changelog/ChangeLogsRequest$1;-><init>()V

    sput-object v0, Landroid/health/connect/changelog/ChangeLogsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/changelog/ChangeLogsRequest;->mToken:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/changelog/ChangeLogsRequest;->mPageSize:I

    .line 48
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/changelog/ChangeLogsRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/changelog/ChangeLogsRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "pageSize"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Landroid/health/connect/changelog/ChangeLogsRequest;->mToken:Ljava/lang/String;

    .line 42
    iput p2, p0, Landroid/health/connect/changelog/ChangeLogsRequest;->mPageSize:I

    .line 43
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/health/connect/changelog/ChangeLogsRequest-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/health/connect/changelog/ChangeLogsRequest;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPageSize()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/health/connect/changelog/ChangeLogsRequest;->mPageSize:I

    return v0
.end method

.method public whitelist getToken()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/health/connect/changelog/ChangeLogsRequest;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget-object v0, p0, Landroid/health/connect/changelog/ChangeLogsRequest;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Landroid/health/connect/changelog/ChangeLogsRequest;->mPageSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return-void
.end method
