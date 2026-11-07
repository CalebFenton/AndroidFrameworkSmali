.class Ljava/nio/file/attribute/PosixFilePermissions$1;
.super Ljava/lang/Object;
.source "PosixFilePermissions.java"

# interfaces
.implements Ljava/nio/file/attribute/FileAttribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/file/attribute/PosixFilePermissions;->asFileAttribute(Ljava/util/Set;)Ljava/nio/file/attribute/FileAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/attribute/FileAttribute<",
        "Ljava/util/Set<",
        "Ljava/nio/file/attribute/PosixFilePermission;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$value:Ljava/util/Set;


# direct methods
.method constructor blacklist <init>(Ljava/util/Set;)V
    .registers 2

    .line 169
    iput-object p1, p0, Ljava/nio/file/attribute/PosixFilePermissions$1;->val$value:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 172
    const-string v0, "posix:permissions"

    return-object v0
.end method

.method public bridge synthetic whitelist test-api value()Ljava/lang/Object;
    .registers 2

    .line 169
    invoke-virtual {p0}, Ljava/nio/file/attribute/PosixFilePermissions$1;->value()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist value()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Ljava/nio/file/attribute/PosixFilePermissions$1;->val$value:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
