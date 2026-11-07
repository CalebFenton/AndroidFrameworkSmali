.class Landroid/hardware/radio/ProgramList$Chunk$1;
.super Ljava/lang/Object;
.source "ProgramList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ProgramList$Chunk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/ProgramList$Chunk;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/ProgramList$Chunk;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 555
    new-instance v0, Landroid/hardware/radio/ProgramList$Chunk;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramList-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 553
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ProgramList$Chunk$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/ProgramList$Chunk;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/radio/ProgramList$Chunk;
    .registers 3
    .param p1, "size"    # I

    .line 559
    new-array v0, p1, [Landroid/hardware/radio/ProgramList$Chunk;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 553
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ProgramList$Chunk$1;->newArray(I)[Landroid/hardware/radio/ProgramList$Chunk;

    move-result-object p1

    return-object p1
.end method
