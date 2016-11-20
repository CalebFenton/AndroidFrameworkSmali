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

.field public static final REASON_CANCELED:I = 0x0

.field public static final REASON_CONSTRAINTS_NOT_SATISFIED:I = 0x1

.field public static final REASON_DEVICE_IDLE:I = 0x4

.field public static final REASON_PREEMPT:I = 0x2

.field public static final REASON_TIMEOUT:I = 0x3


# instance fields
.field private final callback:Landroid/os/IBinder;

.field private final extras:Landroid/os/PersistableBundle;

.field private final jobId:I

.field private final mTriggeredContentAuthorities:[Ljava/lang/String;

.field private final mTriggeredContentUris:[Landroid/net/Uri;

.field private final overrideDeadlineExpired:Z

.field private stopReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 158
    new-instance v0, Landroid/app/job/JobParameters$1;

    #@2
    invoke-direct {v0}, Landroid/app/job/JobParameters$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Z[Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "jobId"    # I
    .param p3, "extras"    # Landroid/os/PersistableBundle;
    .param p4, "overrideDeadlineExpired"    # Z
    .param p5, "triggeredContentUris"    # [Landroid/net/Uri;
    .param p6, "triggeredContentAuthorities"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    iput p2, p0, Landroid/app/job/JobParameters;->jobId:I

    #@5
    .line 57
    iput-object p3, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    #@7
    .line 58
    iput-object p1, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    #@9
    .line 59
    iput-boolean p4, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    #@b
    .line 60
    iput-object p5, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    #@d
    .line 61
    iput-object p6, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    #@f
    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Landroid/app/job/JobParameters;->jobId:I

    #@a
    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    #@10
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    #@16
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v1

    #@1a
    if-ne v1, v0, :cond_0

    #@1c
    :goto_0
    iput-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    #@1e
    .line 132
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, [Landroid/net/Uri;

    #@26
    iput-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    #@28
    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    #@2e
    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v0

    #@32
    iput v0, p0, Landroid/app/job/JobParameters;->stopReason:I

    #@34
    .line 127
    return-void

    #@35
    .line 131
    :cond_0
    const/4 v0, 0x0

    #@36
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
    .line 144
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCallback()Landroid/app/job/IJobCallback;
    .locals 1

    #@0
    .prologue
    .line 124
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
    .line 85
    iget-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    #@2
    return-object v0
.end method

.method public getJobId()I
    .locals 1

    #@0
    .prologue
    .line 68
    iget v0, p0, Landroid/app/job/JobParameters;->jobId:I

    #@2
    return v0
.end method

.method public getStopReason()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/app/job/JobParameters;->stopReason:I

    #@2
    return v0
.end method

.method public getTriggeredContentAuthorities()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTriggeredContentUris()[Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public isOverrideDeadlineExpired()Z
    .locals 1

    #@0
    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    #@2
    return v0
.end method

.method public setStopReason(I)V
    .locals 0
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 139
    iput p1, p0, Landroid/app/job/JobParameters;->stopReason:I

    #@2
    .line 138
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 149
    iget v0, p0, Landroid/app/job/JobParameters;->jobId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 150
    iget-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    #@a
    .line 151
    iget-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@f
    .line 152
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 153
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    #@19
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1c
    .line 154
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@21
    .line 155
    iget v0, p0, Landroid/app/job/JobParameters;->stopReason:I

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 148
    return-void

    #@27
    .line 152
    :cond_0
    const/4 v0, 0x0

    #@28
    goto :goto_0
.end method
