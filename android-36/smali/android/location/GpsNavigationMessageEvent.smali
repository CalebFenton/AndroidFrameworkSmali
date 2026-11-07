.class public Landroid/location/GpsNavigationMessageEvent;
.super Ljava/lang/Object;
.source "GpsNavigationMessageEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsNavigationMessageEvent$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsNavigationMessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist STATUS_GPS_LOCATION_DISABLED:I

.field public static whitelist STATUS_NOT_SUPPORTED:I

.field public static whitelist STATUS_READY:I


# instance fields
.field private final greylist-max-o mNavigationMessage:Landroid/location/GpsNavigationMessage;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const/4 v0, 0x0

    sput v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_NOT_SUPPORTED:I

    .line 48
    const/4 v0, 0x1

    sput v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_READY:I

    .line 53
    const/4 v0, 0x2

    sput v0, Landroid/location/GpsNavigationMessageEvent;->STATUS_GPS_LOCATION_DISABLED:I

    .line 90
    new-instance v0, Landroid/location/GpsNavigationMessageEvent$1;

    invoke-direct {v0}, Landroid/location/GpsNavigationMessageEvent$1;-><init>()V

    sput-object v0, Landroid/location/GpsNavigationMessageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/GpsNavigationMessage;)V
    .registers 4
    .param p1, "message"    # Landroid/location/GpsNavigationMessage;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-eqz p1, :cond_8

    .line 82
    iput-object p1, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    .line 83
    return-void

    .line 80
    :cond_8
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter \'message\' must not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getNavigationMessage()Landroid/location/GpsNavigationMessage;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ GpsNavigationMessageEvent:\n\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    invoke-virtual {v1}, Landroid/location/GpsNavigationMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 112
    iget-object v0, p0, Landroid/location/GpsNavigationMessageEvent;->mNavigationMessage:Landroid/location/GpsNavigationMessage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 113
    return-void
.end method
