.class public Landroid/app/IActivityManager$WaitResult;
.super Ljava/lang/Object;
.source "IActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$WaitResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public result:I

.field public thisTime:J

.field public timeout:Z

.field public totalTime:J

.field public who:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 601
    new-instance v0, Landroid/app/IActivityManager$WaitResult$1;

    #@2
    invoke-direct {v0}, Landroid/app/IActivityManager$WaitResult$1;-><init>()V

    #@5
    .line 600
    sput-object v0, Landroid/app/IActivityManager$WaitResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 576
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Landroid/app/IActivityManager$WaitResult;->result:I

    #@a
    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    iput-boolean v0, p0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    #@13
    .line 616
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@19
    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1c
    move-result-wide v0

    #@1d
    iput-wide v0, p0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    #@1f
    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@22
    move-result-wide v0

    #@23
    iput-wide v0, p0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    #@25
    .line 613
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/IActivityManager$WaitResult;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/IActivityManager$WaitResult;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 588
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 593
    iget v0, p0, Landroid/app/IActivityManager$WaitResult;->result:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 594
    iget-boolean v0, p0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 595
    iget-object v0, p0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@f
    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@12
    .line 596
    iget-wide v0, p0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    #@14
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@17
    .line 597
    iget-wide v0, p0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    #@19
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@1c
    .line 592
    return-void

    #@1d
    .line 594
    :cond_0
    const/4 v0, 0x0

    #@1e
    goto :goto_0
.end method
