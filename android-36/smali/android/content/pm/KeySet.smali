.class public Landroid/content/pm/KeySet;
.super Ljava/lang/Object;
.source "KeySet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/KeySet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o token:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;
    .registers 1

    invoke-static {p0}, Landroid/content/pm/KeySet;->readFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Landroid/content/pm/KeySet$1;

    invoke-direct {v0}, Landroid/content/pm/KeySet$1;-><init>()V

    sput-object v0, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_8

    .line 39
    iput-object p1, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    .line 40
    return-void

    .line 37
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null value for KeySet IBinder token"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o readFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 91
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 92
    .local v0, "token":Landroid/os/IBinder;
    new-instance v1, Landroid/content/pm/KeySet;

    invoke-direct {v1, v0}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 50
    instance-of v0, p1, Landroid/content/pm/KeySet;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 51
    move-object v0, p1

    check-cast v0, Landroid/content/pm/KeySet;

    .line 52
    .local v0, "ks":Landroid/content/pm/KeySet;
    iget-object v2, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 54
    .end local v0    # "ks":Landroid/content/pm/KeySet;
    :cond_10
    return v1
.end method

.method public greylist-max-o getToken()Landroid/os/IBinder;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 101
    return-void
.end method
