.class public final Landroid/window/WindowContainerToken;
.super Ljava/lang/Object;
.source "WindowContainerToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContainerToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRealToken:Landroid/window/IWindowContainerToken;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Landroid/window/WindowContainerToken$1;

    invoke-direct {v0}, Landroid/window/WindowContainerToken$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/IWindowContainerToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IWindowContainerToken;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerToken;->mRealToken:Landroid/window/IWindowContainerToken;

    .line 43
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/WindowContainerToken-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/WindowContainerToken;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/IWindowContainerToken;)V
    .registers 2
    .param p1, "realToken"    # Landroid/window/IWindowContainerToken;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/window/WindowContainerToken;->mRealToken:Landroid/window/IWindowContainerToken;

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 47
    iget-object v0, p0, Landroid/window/WindowContainerToken;->mRealToken:Landroid/window/IWindowContainerToken;

    invoke-interface {v0}, Landroid/window/IWindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 86
    instance-of v0, p1, Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 87
    return v1

    .line 89
    :cond_6
    iget-object v0, p0, Landroid/window/WindowContainerToken;->mRealToken:Landroid/window/IWindowContainerToken;

    invoke-interface {v0}, Landroid/window/IWindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Landroid/window/WindowContainerToken;

    invoke-virtual {v2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v0, v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/window/WindowContainerToken;->mRealToken:Landroid/window/IWindowContainerToken;

    invoke-interface {v0}, Landroid/window/IWindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WCT{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerToken;->mRealToken:Landroid/window/IWindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    iget-object v0, p0, Landroid/window/WindowContainerToken;->mRealToken:Landroid/window/IWindowContainerToken;

    invoke-interface {v0}, Landroid/window/IWindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 53
    return-void
.end method
