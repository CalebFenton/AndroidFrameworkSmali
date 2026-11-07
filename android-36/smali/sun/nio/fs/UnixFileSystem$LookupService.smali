.class Lsun/nio/fs/UnixFileSystem$LookupService;
.super Ljava/lang/Object;
.source "UnixFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookupService"
.end annotation


# static fields
.field static final blacklist instance:Ljava/nio/file/attribute/UserPrincipalLookupService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 324
    new-instance v0, Lsun/nio/fs/UnixFileSystem$LookupService$1;

    invoke-direct {v0}, Lsun/nio/fs/UnixFileSystem$LookupService$1;-><init>()V

    sput-object v0, Lsun/nio/fs/UnixFileSystem$LookupService;->instance:Ljava/nio/file/attribute/UserPrincipalLookupService;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
