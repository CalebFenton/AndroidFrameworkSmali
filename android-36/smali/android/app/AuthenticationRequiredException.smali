.class public final Landroid/app/AuthenticationRequiredException;
.super Ljava/lang/SecurityException;
.source "AuthenticationRequiredException.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AuthenticationRequiredException;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AuthenticationRequiredException"


# instance fields
.field private final greylist-max-o mUserAction:Landroid/app/PendingIntent;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Landroid/app/AuthenticationRequiredException$1;

    invoke-direct {v0}, Landroid/app/AuthenticationRequiredException$1;-><init>()V

    sput-object v0, Landroid/app/AuthenticationRequiredException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    new-instance v0, Ljava/lang/SecurityException;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-direct {p0, v0, v1}, Landroid/app/AuthenticationRequiredException;-><init>(Ljava/lang/Throwable;Landroid/app/PendingIntent;)V

    .line 47
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Throwable;Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "userAction"    # Landroid/app/PendingIntent;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/AuthenticationRequiredException;->mUserAction:Landroid/app/PendingIntent;

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getUserAction()Landroid/app/PendingIntent;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/app/AuthenticationRequiredException;->mUserAction:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    invoke-virtual {p0}, Landroid/app/AuthenticationRequiredException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Landroid/app/AuthenticationRequiredException;->mUserAction:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    return-void
.end method
