.class public Landroid/hardware/location/ActivityChangedEvent;
.super Ljava/lang/Object;
.source "ActivityChangedEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ActivityChangedEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/ActivityChangedEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityRecognitionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/location/ActivityRecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 50
    new-instance v0, Landroid/hardware/location/ActivityChangedEvent$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/location/ActivityChangedEvent$1;-><init>()V

    #@5
    .line 49
    sput-object v0, Landroid/hardware/location/ActivityChangedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>([Landroid/hardware/location/ActivityRecognitionEvent;)V
    .locals 2
    .param p1, "activityRecognitionEvents"    # [Landroid/hardware/location/ActivityRecognitionEvent;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    if-nez p1, :cond_0

    #@5
    .line 37
    new-instance v0, Ljava/security/InvalidParameterException;

    #@7
    .line 38
    const-string/jumbo v1, "Parameter \'activityRecognitionEvents\' must not be null."

    #@a
    .line 37
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 41
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/hardware/location/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    #@14
    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getActivityRecognitionEvents()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/hardware/location/ActivityRecognitionEvent;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/location/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v3, "[ ActivityChangedEvent:"

    #@5
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 84
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/hardware/location/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .local v2, "event$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid/hardware/location/ActivityRecognitionEvent;

    #@1a
    .line 85
    .local v1, "event":Landroid/hardware/location/ActivityRecognitionEvent;
    const-string/jumbo v3, "\n    "

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 86
    invoke-virtual {v1}, Landroid/hardware/location/ActivityRecognitionEvent;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    goto :goto_0

    #@28
    .line 88
    .end local v1    # "event":Landroid/hardware/location/ActivityRecognitionEvent;
    :cond_0
    const-string/jumbo v3, "\n]"

    #@2b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 75
    iget-object v1, p0, Landroid/hardware/location/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    #@2
    const/4 v2, 0x0

    #@3
    new-array v2, v2, [Landroid/hardware/location/ActivityRecognitionEvent;

    #@5
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Landroid/hardware/location/ActivityRecognitionEvent;

    #@b
    .line 76
    .local v0, "activityRecognitionEventArray":[Landroid/hardware/location/ActivityRecognitionEvent;
    array-length v1, v0

    #@c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@12
    .line 73
    return-void
.end method
