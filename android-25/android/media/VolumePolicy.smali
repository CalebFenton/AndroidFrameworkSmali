.class public final Landroid/media/VolumePolicy;
.super Ljava/lang/Object;
.source "VolumePolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumePolicy$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/VolumePolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Landroid/media/VolumePolicy;


# instance fields
.field public final doNotDisturbWhenSilent:Z

.field public final vibrateToSilentDebounce:I

.field public final volumeDownToEnterSilent:Z

.field public final volumeUpToExitSilent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 26
    new-instance v0, Landroid/media/VolumePolicy;

    #@3
    const/4 v1, 0x1

    #@4
    const/16 v2, 0x190

    #@6
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    #@9
    sput-object v0, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    #@b
    .line 88
    new-instance v0, Landroid/media/VolumePolicy$1;

    #@d
    invoke-direct {v0}, Landroid/media/VolumePolicy$1;-><init>()V

    #@10
    .line 87
    sput-object v0, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12
    .line 25
    return-void
.end method

.method public constructor <init>(ZZZI)V
    .locals 0
    .param p1, "volumeDownToEnterSilent"    # Z
    .param p2, "volumeUpToExitSilent"    # Z
    .param p3, "doNotDisturbWhenSilent"    # Z
    .param p4, "vibrateToSilentDebounce"    # I

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-boolean p1, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    #@5
    .line 44
    iput-boolean p2, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    #@7
    .line 45
    iput-boolean p3, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    #@9
    .line 46
    iput p4, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    #@b
    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 65
    instance-of v3, p1, Landroid/media/VolumePolicy;

    #@4
    if-nez v3, :cond_0

    #@6
    return v2

    #@7
    .line 66
    :cond_0
    if-ne p1, p0, :cond_1

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 67
    check-cast v0, Landroid/media/VolumePolicy;

    #@d
    .line 68
    .local v0, "other":Landroid/media/VolumePolicy;
    iget-boolean v3, v0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    #@f
    iget-boolean v4, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    #@11
    if-ne v3, v4, :cond_3

    #@13
    .line 69
    iget-boolean v3, v0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    #@15
    iget-boolean v4, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 70
    iget-boolean v3, v0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    #@1b
    iget-boolean v4, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    #@1d
    if-ne v3, v4, :cond_3

    #@1f
    .line 71
    iget v3, v0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    #@21
    iget v4, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    #@23
    if-ne v3, v4, :cond_2

    #@25
    .line 68
    :goto_0
    return v1

    #@26
    :cond_2
    move v1, v2

    #@27
    .line 71
    goto :goto_0

    #@28
    :cond_3
    move v1, v2

    #@29
    .line 68
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 59
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    #@5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    #@e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    iget-boolean v1, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    #@17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 60
    iget v1, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x3

    #@25
    aput-object v1, v0, v2

    #@27
    .line 59
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@2a
    move-result v0

    #@2b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "VolumePolicy[volumeDownToEnterSilent="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 52
    const-string/jumbo v1, ",volumeUpToExitSilent="

    #@15
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 52
    iget-boolean v1, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    #@1b
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 53
    const-string/jumbo v1, ",doNotDisturbWhenSilent="

    #@22
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 53
    iget-boolean v1, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    #@28
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 54
    const-string/jumbo v1, ",vibrateToSilentDebounce="

    #@2f
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 54
    iget v1, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    #@35
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 54
    const-string/jumbo v1, "]"

    #@3c
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 81
    iget-boolean v0, p0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 82
    iget-boolean v0, p0, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    move v0, v1

    #@f
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 83
    iget-boolean v0, p0, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 84
    iget v0, p0, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 80
    return-void

    #@1f
    :cond_0
    move v0, v2

    #@20
    .line 81
    goto :goto_0

    #@21
    :cond_1
    move v0, v2

    #@22
    .line 82
    goto :goto_1

    #@23
    :cond_2
    move v1, v2

    #@24
    .line 83
    goto :goto_2
.end method
