.class Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 287
    invoke-static {p1}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->-$$Nest$smfromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0

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

    .line 285
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 3
    .param p1, "size"    # I

    .line 291
    new-array v0, p1, [Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

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

    .line 285
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;->newArray(I)[Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p1

    return-object p1
.end method
