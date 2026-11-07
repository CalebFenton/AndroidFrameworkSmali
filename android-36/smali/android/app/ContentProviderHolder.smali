.class public Landroid/app/ContentProviderHolder;
.super Ljava/lang/Object;
.source "ContentProviderHolder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ContentProviderHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o connection:Landroid/os/IBinder;

.field public final greylist info:Landroid/content/pm/ProviderInfo;

.field public blacklist mLocal:Z

.field public greylist-max-p noReleaseNeeded:Z

.field public greylist provider:Landroid/content/IContentProvider;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Landroid/app/ContentProviderHolder$1;

    invoke-direct {v0}, Landroid/app/ContentProviderHolder$1;-><init>()V

    sput-object v0, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/pm/ProviderInfo;)V
    .registers 2
    .param p1, "_info"    # Landroid/content/pm/ProviderInfo;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 50
    return-void
.end method

.method private constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    iput-object v0, p0, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 86
    nop

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/content/ContentProviderNative;->asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    move v0, v1

    goto :goto_29

    :cond_28
    move v0, v2

    :goto_29
    iput-boolean v0, p0, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    iput-boolean v1, p0, Landroid/app/ContentProviderHolder;->mLocal:Z

    .line 91
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ContentProviderHolder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ContentProviderHolder;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 59
    iget-object v0, p0, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    iget-object v0, p0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_14

    .line 61
    iget-object v0, p0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_18

    .line 63
    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 65
    :goto_18
    iget-object v0, p0, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 66
    iget-boolean v0, p0, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-boolean v0, p0, Landroid/app/ContentProviderHolder;->mLocal:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void
.end method
