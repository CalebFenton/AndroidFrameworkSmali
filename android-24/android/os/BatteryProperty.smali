.class public Landroid/os/BatteryProperty;
.super Ljava/lang/Object;
.source "BatteryProperty.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryProperty$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/BatteryProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValueLong:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 64
    new-instance v0, Landroid/os/BatteryProperty$1;

    #@2
    invoke-direct {v0}, Landroid/os/BatteryProperty$1;-><init>()V

    #@5
    .line 63
    sput-object v0, Landroid/os/BatteryProperty;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    const-wide/high16 v0, -0x8000000000000000L

    #@5
    iput-wide v0, p0, Landroid/os/BatteryProperty;->mValueLong:J

    #@7
    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    invoke-virtual {p0, p1}, Landroid/os/BatteryProperty;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/BatteryProperty;)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/os/BatteryProperty;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 75
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLong()J
    .locals 2

    #@0
    .prologue
    .line 43
    iget-wide v0, p0, Landroid/os/BatteryProperty;->mValueLong:J

    #@2
    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Landroid/os/BatteryProperty;->mValueLong:J

    #@6
    .line 55
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 60
    iget-wide v0, p0, Landroid/os/BatteryProperty;->mValueLong:J

    #@2
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@5
    .line 59
    return-void
.end method
