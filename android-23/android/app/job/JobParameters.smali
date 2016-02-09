.class public Landroid/app/job/JobParameters;
.super Ljava/lang/Object;
.source "JobParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobParameters$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final callback:Landroid/os/IBinder;

.field private final extras:Landroid/os/PersistableBundle;

.field private final jobId:I

.field private final overrideDeadlineExpired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 96
    new-instance v0, Landroid/app/job/JobParameters$1;

    #@2
    invoke-direct {v0}, Landroid/app/job/JobParameters$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Z)V
    .locals 0
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "jobId"    # I
    .param p3, "extras"    # Landroid/os/PersistableBundle;
    .param p4, "overrideDeadlineExpired"    # Z

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput p2, p0, Landroid/app/job/JobParameters;->jobId:I

    #@5
    .line 40
    iput-object p3, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    #@7
    .line 41
    iput-object p1, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    #@9
    .line 42
    iput-boolean p4, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    #@b
    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Landroid/app/job/JobParameters;->jobId:I

    #@a
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    #@10
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    #@16
    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    if-ne v1, v0, :cond_0

    #@1c
    :goto_0
    iput-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    #@1e
    .line 76
    return-void

    #@1f
    .line 80
    :cond_0
    const/4 v0, 0x0

    #@20
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/job/JobParameters;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 85
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCallback()Landroid/app/job/IJobCallback;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    #@2
    invoke-static {v0}, Landroid/app/job/IJobCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobCallback;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    #@2
    return-object v0
.end method

.method public getJobId()I
    .locals 1

    #@0
    .prologue
    .line 49
    iget v0, p0, Landroid/app/job/JobParameters;->jobId:I

    #@2
    return v0
.end method

.method public isOverrideDeadlineExpired()Z
    .locals 1

    #@0
    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 90
    iget v0, p0, Landroid/app/job/JobParameters;->jobId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 91
    iget-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    #@a
    .line 92
    iget-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@f
    .line 93
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 89
    return-void

    #@18
    .line 93
    :cond_0
    const/4 v0, 0x0

    #@19
    goto :goto_0
.end method
