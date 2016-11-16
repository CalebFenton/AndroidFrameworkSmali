.class public final Landroid/view/DragAndDropPermissions;
.super Ljava/lang/Object;
.source "DragAndDropPermissions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DragAndDropPermissions$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/DragAndDropPermissions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

.field private mPermissionOwnerToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 122
    new-instance v0, Landroid/view/DragAndDropPermissions$1;

    #@2
    invoke-direct {v0}, Landroid/view/DragAndDropPermissions$1;-><init>()V

    #@5
    .line 121
    sput-object v0, Landroid/view/DragAndDropPermissions;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IDragAndDropPermissions;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    #@d
    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/view/DragAndDropPermissions;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@13
    .line 145
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/DragAndDropPermissions;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/DragAndDropPermissions;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/view/IDragAndDropPermissions;)V
    .locals 0
    .param p1, "dragAndDropPermissions"    # Lcom/android/internal/view/IDragAndDropPermissions;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    iput-object p1, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    #@5
    .line 75
    return-void
.end method

.method public static obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;
    .locals 2
    .param p0, "dragEvent"    # Landroid/view/DragEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 68
    invoke-virtual {p0}, Landroid/view/DragEvent;->getDragAndDropPermissions()Lcom/android/internal/view/IDragAndDropPermissions;

    #@4
    move-result-object v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 69
    return-object v1

    #@8
    .line 71
    :cond_0
    new-instance v0, Landroid/view/DragAndDropPermissions;

    #@a
    invoke-virtual {p0}, Landroid/view/DragEvent;->getDragAndDropPermissions()Lcom/android/internal/view/IDragAndDropPermissions;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Landroid/view/DragAndDropPermissions;-><init>(Lcom/android/internal/view/IDragAndDropPermissions;)V

    #@11
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    #@2
    invoke-interface {v1}, Lcom/android/internal/view/IDragAndDropPermissions;->release()V

    #@5
    .line 116
    const/4 v1, 0x0

    #@6
    iput-object v1, p0, Landroid/view/DragAndDropPermissions;->mPermissionOwnerToken:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 113
    :goto_0
    return-void

    #@9
    .line 117
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public take(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/view/IDragAndDropPermissions;->take(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 91
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 88
    :catch_0
    move-exception v0

    #@8
    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public takeTransient()Z
    .locals 3

    #@0
    .prologue
    .line 101
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 102
    const-string/jumbo v2, "drop"

    #@7
    .line 101
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Landroid/view/DragAndDropPermissions;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@d
    .line 103
    iget-object v1, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    #@f
    iget-object v2, p0, Landroid/view/DragAndDropPermissions;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@11
    invoke-interface {v1, v2}, Lcom/android/internal/view/IDragAndDropPermissions;->takeTransient(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 107
    const/4 v1, 0x1

    #@15
    return v1

    #@16
    .line 104
    :catch_0
    move-exception v0

    #@17
    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@18
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/view/DragAndDropPermissions;->mDragAndDropPermissions:Lcom/android/internal/view/IDragAndDropPermissions;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    #@5
    .line 142
    iget-object v0, p0, Landroid/view/DragAndDropPermissions;->mPermissionOwnerToken:Landroid/os/IBinder;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@a
    .line 140
    return-void
.end method
