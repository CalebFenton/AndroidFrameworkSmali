.class public Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
.super Landroid/app/ApplicationErrorReport$CrashInfo;
.source "ApplicationErrorReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationErrorReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableCrashInfo"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 513
    new-instance v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo$1;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo$1;-><init>()V

    sput-object v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 495
    invoke-direct {p0}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>()V

    .line 496
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 506
    invoke-direct {p0, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 507
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 502
    invoke-direct {p0, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 503
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 510
    const/4 v0, 0x0

    return v0
.end method
