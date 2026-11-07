.class public final Landroid/service/pm/PackageProto;
.super Ljava/lang/Object;
.source "PackageProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/pm/PackageProto$UserPermissionsProto;,
        Landroid/service/pm/PackageProto$StatesProto;,
        Landroid/service/pm/PackageProto$InstallSourceProto;,
        Landroid/service/pm/PackageProto$UserInfoProto;,
        Landroid/service/pm/PackageProto$SplitProto;
    }
.end annotation


# static fields
.field public static final blacklist INSTALLER_NAME:J = 0x10900000007L

.field public static final blacklist INSTALL_SOURCE:J = 0x10b0000000aL

.field public static final blacklist NAME:J = 0x10900000001L

.field public static final blacklist SPLITS:J = 0x20b00000008L

.field public static final blacklist STATES:J = 0x10b0000000bL

.field public static final blacklist UID:J = 0x10500000002L

.field public static final blacklist UPDATE_TIME_MS:J = 0x10300000006L

.field public static final blacklist USERS:J = 0x20b00000009L

.field public static final blacklist USER_PERMISSIONS:J = 0x20b0000000cL

.field public static final blacklist VERSION_CODE:J = 0x10500000003L

.field public static final blacklist VERSION_STRING:J = 0x10900000004L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
