.class public Landroid/hardware/camera2/utils/LongParcelable;
.super Ljava/lang/Object;
.source "LongParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/LongParcelable$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/utils/LongParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private number:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    new-instance v0, Landroid/hardware/camera2/utils/LongParcelable$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/camera2/utils/LongParcelable$1;-><init>()V

    #@5
    .line 35
    sput-object v0, Landroid/hardware/camera2/utils/LongParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "number"    # J

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-wide p1, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    #@5
    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/utils/LongParcelable;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/camera2/utils/LongParcelable;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/LongParcelable;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 54
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getNumber()J
    .locals 2

    #@0
    .prologue
    .line 67
    iget-wide v0, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    #@2
    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    #@6
    .line 62
    return-void
.end method

.method public setNumber(J)V
    .locals 1
    .param p1, "number"    # J

    #@0
    .prologue
    .line 71
    iput-wide p1, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    #@2
    .line 70
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 59
    iget-wide v0, p0, Landroid/hardware/camera2/utils/LongParcelable;->number:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 58
    return-void
.end method
