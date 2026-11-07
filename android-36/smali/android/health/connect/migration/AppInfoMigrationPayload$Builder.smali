.class public final Landroid/health/connect/migration/AppInfoMigrationPayload$Builder;
.super Ljava/lang/Object;
.source "AppInfoMigrationPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/migration/AppInfoMigrationPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppIcon:[B

.field private blacklist mAppName:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iput-object p1, p0, Landroid/health/connect/migration/AppInfoMigrationPayload$Builder;->mPackageName:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Landroid/health/connect/migration/AppInfoMigrationPayload$Builder;->mAppName:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/migration/AppInfoMigrationPayload;
    .registers 6

    .line 147
    new-instance v0, Landroid/health/connect/migration/AppInfoMigrationPayload;

    iget-object v1, p0, Landroid/health/connect/migration/AppInfoMigrationPayload$Builder;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/health/connect/migration/AppInfoMigrationPayload$Builder;->mAppName:Ljava/lang/String;

    iget-object v3, p0, Landroid/health/connect/migration/AppInfoMigrationPayload$Builder;->mAppIcon:[B

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/migration/AppInfoMigrationPayload;-><init>(Ljava/lang/String;Ljava/lang/String;[BLandroid/health/connect/migration/AppInfoMigrationPayload-IA;)V

    return-object v0
.end method

.method public whitelist setAppIcon([B)Landroid/health/connect/migration/AppInfoMigrationPayload$Builder;
    .registers 2
    .param p1, "appIcon"    # [B

    .line 138
    iput-object p1, p0, Landroid/health/connect/migration/AppInfoMigrationPayload$Builder;->mAppIcon:[B

    .line 139
    return-object p0
.end method

.method public whitelist setAppName(Ljava/lang/String;)Landroid/health/connect/migration/AppInfoMigrationPayload$Builder;
    .registers 2
    .param p1, "appName"    # Ljava/lang/String;

    .line 129
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iput-object p1, p0, Landroid/health/connect/migration/AppInfoMigrationPayload$Builder;->mAppName:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/health/connect/migration/AppInfoMigrationPayload$Builder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 121
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iput-object p1, p0, Landroid/health/connect/migration/AppInfoMigrationPayload$Builder;->mPackageName:Ljava/lang/String;

    .line 123
    return-object p0
.end method
