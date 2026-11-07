.class public final Landroid/app/MissingForegroundServiceTypeException;
.super Landroid/app/ForegroundServiceTypeException;
.source "MissingForegroundServiceTypeException.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/MissingForegroundServiceTypeException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Landroid/app/MissingForegroundServiceTypeException$1;

    invoke-direct {v0}, Landroid/app/MissingForegroundServiceTypeException$1;-><init>()V

    sput-object v0, Landroid/app/MissingForegroundServiceTypeException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/ForegroundServiceTypeException;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypeException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 45
    invoke-virtual {p0}, Landroid/app/MissingForegroundServiceTypeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return-void
.end method
