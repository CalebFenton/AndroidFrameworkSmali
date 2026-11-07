.class public final Landroid/service/pm/PackageServiceDumpProto;
.super Ljava/lang/Object;
.source "PackageServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/pm/PackageServiceDumpProto$SharedUserProto;,
        Landroid/service/pm/PackageServiceDumpProto$SharedLibraryProto;,
        Landroid/service/pm/PackageServiceDumpProto$PackageShortProto;
    }
.end annotation


# static fields
.field public static final blacklist FEATURES:J = 0x20b00000004L

.field public static final blacklist MESSAGES:J = 0x20900000007L

.field public static final blacklist PACKAGES:J = 0x20b00000005L

.field public static final blacklist REQUIRED_VERIFIER_PACKAGE:J = 0x10b00000001L

.field public static final blacklist SHARED_LIBRARIES:J = 0x20b00000003L

.field public static final blacklist SHARED_USERS:J = 0x20b00000006L

.field public static final blacklist VERIFIER_PACKAGE:J = 0x10b00000002L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
