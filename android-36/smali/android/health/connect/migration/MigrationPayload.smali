.class public abstract Landroid/health/connect/migration/MigrationPayload;
.super Ljava/lang/Object;
.source "MigrationPayload.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/migration/MigrationPayload;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist TYPE_APP_INFO:I = 0x3

.field static final blacklist TYPE_METADATA:I = 0x5

.field static final blacklist TYPE_PACKAGE_PERMISSIONS:I = 0x1

.field static final blacklist TYPE_PRIORITY:I = 0x4

.field static final blacklist TYPE_RECORD:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Landroid/health/connect/migration/MigrationPayload$1;

    invoke-direct {v0}, Landroid/health/connect/migration/MigrationPayload$1;-><init>()V

    sput-object v0, Landroid/health/connect/migration/MigrationPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method
