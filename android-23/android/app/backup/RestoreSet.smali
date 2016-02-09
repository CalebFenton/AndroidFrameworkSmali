.class public Landroid/app/backup/RestoreSet;
.super Ljava/lang/Object;
.source "RestoreSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/RestoreSet$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/backup/RestoreSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public device:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public token:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 74
    new-instance v0, Landroid/app/backup/RestoreSet$1;

    #@2
    invoke-direct {v0}, Landroid/app/backup/RestoreSet$1;-><init>()V

    #@5
    .line 73
    sput-object v0, Landroid/app/backup/RestoreSet;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    #@9
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/app/backup/RestoreSet;->device:Ljava/lang/String;

    #@f
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Landroid/app/backup/RestoreSet;->token:J

    #@15
    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/backup/RestoreSet;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/backup/RestoreSet;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_dev"    # Ljava/lang/String;
    .param p3, "_token"    # J

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    #@5
    .line 57
    iput-object p2, p0, Landroid/app/backup/RestoreSet;->device:Ljava/lang/String;

    #@7
    .line 58
    iput-wide p3, p0, Landroid/app/backup/RestoreSet;->token:J

    #@9
    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 64
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 69
    iget-object v0, p0, Landroid/app/backup/RestoreSet;->device:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 70
    iget-wide v0, p0, Landroid/app/backup/RestoreSet;->token:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 67
    return-void
.end method
