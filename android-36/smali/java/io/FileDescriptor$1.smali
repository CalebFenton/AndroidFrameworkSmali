.class Ljava/io/FileDescriptor$1;
.super Ljava/lang/Object;
.source "FileDescriptor.java"

# interfaces
.implements Ljdk/internal/access/JavaIOFileDescriptorAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/FileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get(Ljava/io/FileDescriptor;)I
    .registers 3
    .param p1, "obj"    # Ljava/io/FileDescriptor;

    .line 277
    invoke-static {p1}, Ljava/io/FileDescriptor;->-$$Nest$fgetdescriptor(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method public blacklist getAppend(Ljava/io/FileDescriptor;)Z
    .registers 3
    .param p1, "fdo"    # Ljava/io/FileDescriptor;

    .line 282
    invoke-static {p1}, Ljava/io/FileDescriptor;->-$$Nest$fgetappend(Ljava/io/FileDescriptor;)Z

    move-result v0

    return v0
.end method

.method public blacklist getHandle(Ljava/io/FileDescriptor;)J
    .registers 3
    .param p1, "obj"    # Ljava/io/FileDescriptor;

    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist set(Ljava/io/FileDescriptor;I)V
    .registers 3
    .param p1, "obj"    # Ljava/io/FileDescriptor;
    .param p2, "fd"    # I

    .line 273
    invoke-static {p1, p2}, Ljava/io/FileDescriptor;->-$$Nest$fputdescriptor(Ljava/io/FileDescriptor;I)V

    .line 274
    return-void
.end method

.method public blacklist setHandle(Ljava/io/FileDescriptor;J)V
    .registers 5
    .param p1, "obj"    # Ljava/io/FileDescriptor;
    .param p2, "handle"    # J

    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
