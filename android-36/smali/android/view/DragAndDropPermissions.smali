.class public final Landroid/view/DragAndDropPermissions;
.super Ljava/lang/Object;
.source "DragAndDropPermissions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DragAndDropPermissions;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DragAndDrop"


# instance fields
.field private final greylist-max-o mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 146
    new-instance v0, Landroid/view/DragAndDropPermissions$1;

    invoke-direct {v0}, Landroid/view/DragAndDropPermissions$1;-><init>()V

    sput-object v0, Landroid/view/DragAndDropPermissions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IDragAndDropPermissions;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    .line 171
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/DragAndDropPermissions-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/DragAndDropPermissions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Lcom/android/internal/view/IDragAndDropPermissions;)V
    .registers 2
    .param p1, "dragAndDropPermissions"    # Lcom/android/internal/view/IDragAndDropPermissions;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    .line 84
    return-void
.end method

.method public static greylist-max-o obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .registers 3
    .param p0, "dragEvent"    # Landroid/view/DragEvent;

    .line 75
    invoke-virtual {p0}, Landroid/view/DragEvent;->getDragAndDropPermissions()Lcom/android/internal/view/IDragAndDropPermissions;

    move-result-object v0

    if-nez v0, :cond_8

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_8
    new-instance v0, Landroid/view/DragAndDropPermissions;

    invoke-virtual {p0}, Landroid/view/DragEvent;->getDragAndDropPermissions()Lcom/android/internal/view/IDragAndDropPermissions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/DragAndDropPermissions;-><init>(Lcom/android/internal/view/IDragAndDropPermissions;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist release()V
    .registers 3

    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    invoke-interface {v0}, Lcom/android/internal/view/IDragAndDropPermissions;->release()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 143
    nop

    .line 144
    return-void

    .line 141
    :catch_7
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o take(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 103
    :try_start_0
    iget-object v0, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IDragAndDropPermissions;->take(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    .line 107
    nop

    .line 108
    const/4 v0, 0x1

    return v0

    .line 104
    :catch_8
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": take() failed with a RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DragAndDrop"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o takeTransient()Z
    .registers 4

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    invoke-interface {v0}, Lcom/android/internal/view/IDragAndDropPermissions;->takeTransient()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    .line 131
    nop

    .line 132
    const/4 v0, 0x1

    return v0

    .line 128
    :catch_8
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": takeTransient() failed with a RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DragAndDrop"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 166
    iget-object v0, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 167
    return-void
.end method
