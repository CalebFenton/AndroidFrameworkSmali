.class public Landroid/view/RemoteAnimationAdapter;
.super Ljava/lang/Object;
.source "RemoteAnimationAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/RemoteAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCallingApplication:Landroid/app/IApplicationThread;

.field private greylist-max-o mCallingPid:I

.field private blacklist mCallingUid:I

.field private final blacklist mChangeNeedsSnapshot:Z

.field private final greylist-max-o mDuration:J

.field private final greylist-max-o mRunner:Landroid/view/IRemoteAnimationRunner;

.field private final greylist-max-o mStatusBarTransitionDelay:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 164
    new-instance v0, Landroid/view/RemoteAnimationAdapter$1;

    invoke-direct {v0}, Landroid/view/RemoteAnimationAdapter$1;-><init>()V

    sput-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IRemoteAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    iput-object v0, p0, Landroid/view/RemoteAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mDuration:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mStatusBarTransitionDelay:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/RemoteAnimationAdapter;->mChangeNeedsSnapshot:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/RemoteAnimationAdapter;->mCallingApplication:Landroid/app/IApplicationThread;

    .line 101
    return-void
.end method

.method public constructor greylist <init>(Landroid/view/IRemoteAnimationRunner;JJ)V
    .registers 13
    .param p1, "runner"    # Landroid/view/IRemoteAnimationRunner;
    .param p2, "duration"    # J
    .param p4, "statusBarTransitionDelay"    # J

    .line 85
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "runner":Landroid/view/IRemoteAnimationRunner;
    .end local p2    # "duration":J
    .end local p4    # "statusBarTransitionDelay":J
    .local v1, "runner":Landroid/view/IRemoteAnimationRunner;
    .local v2, "duration":J
    .local v4, "statusBarTransitionDelay":J
    invoke-direct/range {v0 .. v6}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJZ)V

    .line 86
    return-void
.end method

.method public constructor greylist <init>(Landroid/view/IRemoteAnimationRunner;JJLandroid/app/IApplicationThread;)V
    .registers 14
    .param p1, "runner"    # Landroid/view/IRemoteAnimationRunner;
    .param p2, "duration"    # J
    .param p4, "statusBarTransitionDelay"    # J
    .param p6, "callingApplication"    # Landroid/app/IApplicationThread;

    .line 91
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "runner":Landroid/view/IRemoteAnimationRunner;
    .end local p2    # "duration":J
    .end local p4    # "statusBarTransitionDelay":J
    .local v1, "runner":Landroid/view/IRemoteAnimationRunner;
    .local v2, "duration":J
    .local v4, "statusBarTransitionDelay":J
    invoke-direct/range {v0 .. v6}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJZ)V

    .line 92
    iput-object p6, v0, Landroid/view/RemoteAnimationAdapter;->mCallingApplication:Landroid/app/IApplicationThread;

    .line 93
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/view/IRemoteAnimationRunner;JJZ)V
    .registers 7
    .param p1, "runner"    # Landroid/view/IRemoteAnimationRunner;
    .param p2, "duration"    # J
    .param p4, "statusBarTransitionDelay"    # J
    .param p6, "changeNeedsSnapshot"    # Z

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/view/RemoteAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    .line 77
    iput-wide p2, p0, Landroid/view/RemoteAnimationAdapter;->mDuration:J

    .line 78
    iput-boolean p6, p0, Landroid/view/RemoteAnimationAdapter;->mChangeNeedsSnapshot:Z

    .line 79
    iput-wide p4, p0, Landroid/view/RemoteAnimationAdapter;->mStatusBarTransitionDelay:J

    .line 80
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallingApplication()Landroid/app/IApplicationThread;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/view/RemoteAnimationAdapter;->mCallingApplication:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method public greylist-max-o getCallingPid()I
    .registers 2

    .line 131
    iget v0, p0, Landroid/view/RemoteAnimationAdapter;->mCallingPid:I

    return v0
.end method

.method public blacklist getCallingUid()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/view/RemoteAnimationAdapter;->mCallingUid:I

    return v0
.end method

.method public blacklist getChangeNeedsSnapshot()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Landroid/view/RemoteAnimationAdapter;->mChangeNeedsSnapshot:Z

    return v0
.end method

.method public greylist-max-o getDuration()J
    .registers 3

    .line 108
    iget-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mDuration:J

    return-wide v0
.end method

.method public greylist-max-o getRunner()Landroid/view/IRemoteAnimationRunner;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/view/RemoteAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    return-object v0
.end method

.method public greylist-max-o getStatusBarTransitionDelay()J
    .registers 3

    .line 112
    iget-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mStatusBarTransitionDelay:J

    return-wide v0
.end method

.method public blacklist setCallingPidUid(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 123
    iput p1, p0, Landroid/view/RemoteAnimationAdapter;->mCallingPid:I

    .line 124
    iput p2, p0, Landroid/view/RemoteAnimationAdapter;->mCallingUid:I

    .line 125
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 157
    iget-object v0, p0, Landroid/view/RemoteAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 158
    iget-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget-wide v0, p0, Landroid/view/RemoteAnimationAdapter;->mStatusBarTransitionDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    iget-boolean v0, p0, Landroid/view/RemoteAnimationAdapter;->mChangeNeedsSnapshot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 161
    iget-object v0, p0, Landroid/view/RemoteAnimationAdapter;->mCallingApplication:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 162
    return-void
.end method
