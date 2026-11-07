.class public final Landroid/health/connect/migration/MigrationEntity;
.super Ljava/lang/Object;
.source "MigrationEntity.java"

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
            "Landroid/health/connect/migration/MigrationEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEntityId:Ljava/lang/String;

.field private final blacklist mPayload:Landroid/health/connect/migration/MigrationPayload;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/health/connect/migration/MigrationEntity$1;

    invoke-direct {v0}, Landroid/health/connect/migration/MigrationEntity$1;-><init>()V

    sput-object v0, Landroid/health/connect/migration/MigrationEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/health/connect/migration/MigrationEntity;->mEntityId:Ljava/lang/String;

    .line 67
    const-class v0, Landroid/health/connect/migration/MigrationPayload;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/health/connect/migration/MigrationPayload;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/health/connect/migration/MigrationPayload;

    iput-object v0, p0, Landroid/health/connect/migration/MigrationEntity;->mPayload:Landroid/health/connect/migration/MigrationPayload;

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/migration/MigrationEntity-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/migration/MigrationEntity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/health/connect/migration/MigrationPayload;)V
    .registers 3
    .param p1, "entityId"    # Ljava/lang/String;
    .param p2, "payload"    # Landroid/health/connect/migration/MigrationPayload;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Landroid/health/connect/migration/MigrationEntity;->mEntityId:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Landroid/health/connect/migration/MigrationEntity;->mPayload:Landroid/health/connect/migration/MigrationPayload;

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEntityId()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/health/connect/migration/MigrationEntity;->mEntityId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPayload()Landroid/health/connect/migration/MigrationPayload;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/health/connect/migration/MigrationEntity;->mPayload:Landroid/health/connect/migration/MigrationPayload;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 93
    iget-object v0, p0, Landroid/health/connect/migration/MigrationEntity;->mEntityId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Landroid/health/connect/migration/MigrationEntity;->mPayload:Landroid/health/connect/migration/MigrationPayload;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 95
    return-void
.end method
