.class public Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;
.super Ljava/lang/Object;
.source "EmbeddedPhotoPickerSessionResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mSession:Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

.field private blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse$1;

    invoke-direct {v0}, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse$1;-><init>()V

    sput-object v0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;->mSession:Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    .line 64
    const-class v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    iput-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 3
    .param p1, "session"    # Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;
    .param p2, "surfacePackage"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;->mSession:Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    .line 49
    iput-object p2, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSession()Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;->mSession:Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    return-object v0
.end method

.method public blacklist getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;->mSession:Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;

    invoke-interface {v0}, Landroid/widget/photopicker/IEmbeddedPhotoPickerSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 73
    iget-object v0, p0, Landroid/widget/photopicker/EmbeddedPhotoPickerSessionResponse;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    return-void
.end method
