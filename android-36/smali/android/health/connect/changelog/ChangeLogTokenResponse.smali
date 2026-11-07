.class public final Landroid/health/connect/changelog/ChangeLogTokenResponse;
.super Ljava/lang/Object;
.source "ChangeLogTokenResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/changelog/ChangeLogTokenResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mToken:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Landroid/health/connect/changelog/ChangeLogTokenResponse$1;

    invoke-direct {v0}, Landroid/health/connect/changelog/ChangeLogTokenResponse$1;-><init>()V

    sput-object v0, Landroid/health/connect/changelog/ChangeLogTokenResponse;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Landroid/health/connect/changelog/ChangeLogTokenResponse;->mToken:Ljava/lang/String;

    .line 47
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/changelog/ChangeLogTokenResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/changelog/ChangeLogTokenResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "token"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Landroid/health/connect/changelog/ChangeLogTokenResponse;->mToken:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getToken()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/health/connect/changelog/ChangeLogTokenResponse;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget-object v0, p0, Landroid/health/connect/changelog/ChangeLogTokenResponse;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return-void
.end method
