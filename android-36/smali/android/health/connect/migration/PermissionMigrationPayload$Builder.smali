.class public final Landroid/health/connect/migration/PermissionMigrationPayload$Builder;
.super Ljava/lang/Object;
.source "PermissionMigrationPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/migration/PermissionMigrationPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFirstGrantTime:Ljava/time/Instant;

.field private blacklist mHoldingPackageName:Ljava/lang/String;

.field private final blacklist mPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/time/Instant;)V
    .registers 4
    .param p1, "holdingPackageName"    # Ljava/lang/String;
    .param p2, "firstGrantTime"    # Ljava/time/Instant;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/health/connect/migration/PermissionMigrationPayload$Builder;->mPermissions:Ljava/util/List;

    .line 115
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iput-object p1, p0, Landroid/health/connect/migration/PermissionMigrationPayload$Builder;->mHoldingPackageName:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Landroid/health/connect/migration/PermissionMigrationPayload$Builder;->mFirstGrantTime:Ljava/time/Instant;

    .line 120
    return-void
.end method


# virtual methods
.method public whitelist addPermission(Ljava/lang/String;)Landroid/health/connect/migration/PermissionMigrationPayload$Builder;
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 141
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Landroid/health/connect/migration/PermissionMigrationPayload$Builder;->mPermissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-object p0
.end method

.method public whitelist build()Landroid/health/connect/migration/PermissionMigrationPayload;
    .registers 6

    .line 152
    new-instance v0, Landroid/health/connect/migration/PermissionMigrationPayload;

    iget-object v1, p0, Landroid/health/connect/migration/PermissionMigrationPayload$Builder;->mHoldingPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/health/connect/migration/PermissionMigrationPayload$Builder;->mFirstGrantTime:Ljava/time/Instant;

    iget-object v3, p0, Landroid/health/connect/migration/PermissionMigrationPayload$Builder;->mPermissions:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/migration/PermissionMigrationPayload;-><init>(Ljava/lang/String;Ljava/time/Instant;Ljava/util/List;Landroid/health/connect/migration/PermissionMigrationPayload-IA;)V

    return-object v0
.end method

.method public whitelist setFirstGrantTime(Ljava/time/Instant;)Landroid/health/connect/migration/PermissionMigrationPayload$Builder;
    .registers 2
    .param p1, "firstGrantTime"    # Ljava/time/Instant;

    .line 133
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iput-object p1, p0, Landroid/health/connect/migration/PermissionMigrationPayload$Builder;->mFirstGrantTime:Ljava/time/Instant;

    .line 135
    return-object p0
.end method

.method public whitelist setHoldingPackageName(Ljava/lang/String;)Landroid/health/connect/migration/PermissionMigrationPayload$Builder;
    .registers 2
    .param p1, "holdingPackageName"    # Ljava/lang/String;

    .line 125
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iput-object p1, p0, Landroid/health/connect/migration/PermissionMigrationPayload$Builder;->mHoldingPackageName:Ljava/lang/String;

    .line 127
    return-object p0
.end method
