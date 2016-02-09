.class public Landroid/location/GpsNavigationMessageEvent;
.super Ljava/lang/Object;
.source "GpsNavigationMessageEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsNavigationMessageEvent$Listener;,
        Landroid/location/GpsNavigationMessageEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GpsNavigationMessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static STATUS_GPS_LOCATION_DISABLED:I

.field public static STATUS_NOT_SUPPORTED:I

.field public static STATUS_READY:I


# instance fields
.field private final mNavigationMessage:Landroid/location/GpsNavigationMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 39
    const/4 v0, 0x0

    #@1
    sput v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_NOT_SUPPORTED:I

    #@3
    .line 45
    const/4 v0, 0x1

    #@4
    sput v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_READY:I

    #@6
    .line 50
    const/4 v0, 0x2

    #@7
    sput v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_GPS_LOCATION_DISABLED:I

    #@9
    .line 88
    new-instance v0, Landroid/location/GpsNavigationMessageEvent$1;

    #@b
    invoke-direct {v0}, Landroid/location/GpsNavigationMessageEvent$1;-><init>()V

    #@e
    .line 87
    sput-object v0, Landroid/location/GpsNavigationMessageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/location/GpsNavigationMessage;)V
    .locals 2
    .param p1, "message"    # Landroid/location/GpsNavigationMessage;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    if-nez p1, :cond_0

    #@5
    .line 77
    new-instance v0, Ljava/security/InvalidParameterException;

    #@7
    const-string/jumbo v1, "Parameter \'message\' must not be null."

    #@a
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 79
    :cond_0
    iput-object p1, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    #@10
    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 104
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getNavigationMessage()Landroid/location/GpsNavigationMessage;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "[ GpsNavigationMessageEvent:\n\n"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 115
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    #@a
    invoke-virtual {v1}, Landroid/location/GpsNavigationMessage;->toString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 116
    const-string/jumbo v1, "\n]"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 108
    return-void
.end method
