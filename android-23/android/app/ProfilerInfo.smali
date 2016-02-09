.class public Landroid/app/ProfilerInfo;
.super Ljava/lang/Object;
.source "ProfilerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ProfilerInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ProfilerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final autoStopProfiler:Z

.field public profileFd:Landroid/os/ParcelFileDescriptor;

.field public final profileFile:Ljava/lang/String;

.field public final samplingInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 70
    new-instance v0, Landroid/app/ProfilerInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/ProfilerInfo$1;-><init>()V

    #@5
    .line 69
    sput-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    #@a
    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    #@18
    :goto_0
    iput-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@1a
    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    #@20
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_1

    #@26
    const/4 v0, 0x1

    #@27
    :goto_1
    iput-boolean v0, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    #@29
    .line 80
    return-void

    #@2a
    .line 82
    :cond_0
    const/4 v0, 0x0

    #@2b
    goto :goto_0

    #@2c
    :cond_1
    move v0, v1

    #@2d
    .line 84
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ProfilerInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ProfilerInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZ)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "interval"    # I
    .param p4, "autoStop"    # Z

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    #@5
    .line 44
    iput-object p2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@7
    .line 45
    iput p3, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    #@9
    .line 46
    iput-boolean p4, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    #@b
    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 51
    iget-object v0, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 53
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 58
    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 59
    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 61
    iget-object v2, p0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    #@10
    invoke-virtual {v2, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@13
    .line 65
    :goto_0
    iget v2, p0, Landroid/app/ProfilerInfo;->samplingInterval:I

    #@15
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 66
    iget-boolean v2, p0, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    #@1a
    if-eqz v2, :cond_1

    #@1c
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 57
    return-void

    #@20
    .line 63
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    goto :goto_0

    #@24
    :cond_1
    move v0, v1

    #@25
    .line 66
    goto :goto_1
.end method
