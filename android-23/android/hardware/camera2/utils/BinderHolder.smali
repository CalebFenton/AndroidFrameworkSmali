.class public Landroid/hardware/camera2/utils/BinderHolder;
.super Ljava/lang/Object;
.source "BinderHolder.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/BinderHolder$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/utils/BinderHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 44
    new-instance v0, Landroid/hardware/camera2/utils/BinderHolder$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/camera2/utils/BinderHolder$1;-><init>()V

    #@5
    .line 43
    sput-object v0, Landroid/hardware/camera2/utils/BinderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    #@6
    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    #@6
    .line 67
    iput-object p1, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    #@8
    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    #@6
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    #@c
    .line 70
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/utils/BinderHolder;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/BinderHolder;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 31
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    #@6
    .line 39
    return-void
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 61
    iput-object p1, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    #@2
    .line 60
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Landroid/hardware/camera2/utils/BinderHolder;->mBinder:Landroid/os/IBinder;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@5
    .line 35
    return-void
.end method
