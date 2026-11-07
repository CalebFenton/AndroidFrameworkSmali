.class Ljava/nio/file/TempFileHelper$PosixPermissions;
.super Ljava/lang/Object;
.source "TempFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/TempFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PosixPermissions"
.end annotation


# static fields
.field static final blacklist dirPermissions:Ljava/nio/file/attribute/FileAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/attribute/FileAttribute<",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;>;"
        }
    .end annotation
.end field

.field static final blacklist filePermissions:Ljava/nio/file/attribute/FileAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/attribute/FileAttribute<",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 69
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 70
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/PosixFilePermissions;->asFileAttribute(Ljava/util/Set;)Ljava/nio/file/attribute/FileAttribute;

    move-result-object v0

    sput-object v0, Ljava/nio/file/TempFileHelper$PosixPermissions;->filePermissions:Ljava/nio/file/attribute/FileAttribute;

    .line 71
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 73
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 72
    invoke-static {v0}, Ljava/nio/file/attribute/PosixFilePermissions;->asFileAttribute(Ljava/util/Set;)Ljava/nio/file/attribute/FileAttribute;

    move-result-object v0

    sput-object v0, Ljava/nio/file/TempFileHelper$PosixPermissions;->dirPermissions:Ljava/nio/file/attribute/FileAttribute;

    .line 71
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
