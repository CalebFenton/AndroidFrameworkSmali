.class public final Landroid/health/connect/migration/RecordMigrationPayload$Builder;
.super Ljava/lang/Object;
.source "RecordMigrationPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/migration/RecordMigrationPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mOriginAppName:Ljava/lang/String;

.field private blacklist mOriginPackageName:Ljava/lang/String;

.field private blacklist mRecord:Landroid/health/connect/datatypes/Record;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/health/connect/datatypes/Record;)V
    .registers 4
    .param p1, "originPackageName"    # Ljava/lang/String;
    .param p2, "originAppName"    # Ljava/lang/String;
    .param p3, "record"    # Landroid/health/connect/datatypes/Record;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iput-object p1, p0, Landroid/health/connect/migration/RecordMigrationPayload$Builder;->mOriginPackageName:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Landroid/health/connect/migration/RecordMigrationPayload$Builder;->mOriginAppName:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Landroid/health/connect/migration/RecordMigrationPayload$Builder;->mRecord:Landroid/health/connect/datatypes/Record;

    .line 137
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/migration/RecordMigrationPayload;
    .registers 6

    .line 168
    new-instance v0, Landroid/health/connect/migration/RecordMigrationPayload;

    iget-object v1, p0, Landroid/health/connect/migration/RecordMigrationPayload$Builder;->mOriginPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/health/connect/migration/RecordMigrationPayload$Builder;->mOriginAppName:Ljava/lang/String;

    iget-object v3, p0, Landroid/health/connect/migration/RecordMigrationPayload$Builder;->mRecord:Landroid/health/connect/datatypes/Record;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/migration/RecordMigrationPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/health/connect/datatypes/Record;Landroid/health/connect/migration/RecordMigrationPayload-IA;)V

    return-object v0
.end method

.method public whitelist setOriginAppName(Ljava/lang/String;)Landroid/health/connect/migration/RecordMigrationPayload$Builder;
    .registers 2
    .param p1, "originAppName"    # Ljava/lang/String;

    .line 150
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iput-object p1, p0, Landroid/health/connect/migration/RecordMigrationPayload$Builder;->mOriginAppName:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public whitelist setOriginPackageName(Ljava/lang/String;)Landroid/health/connect/migration/RecordMigrationPayload$Builder;
    .registers 2
    .param p1, "originPackageName"    # Ljava/lang/String;

    .line 142
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iput-object p1, p0, Landroid/health/connect/migration/RecordMigrationPayload$Builder;->mOriginPackageName:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public whitelist setRecord(Landroid/health/connect/datatypes/Record;)Landroid/health/connect/migration/RecordMigrationPayload$Builder;
    .registers 2
    .param p1, "record"    # Landroid/health/connect/datatypes/Record;

    .line 158
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iput-object p1, p0, Landroid/health/connect/migration/RecordMigrationPayload$Builder;->mRecord:Landroid/health/connect/datatypes/Record;

    .line 160
    return-object p0
.end method
