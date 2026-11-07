.class Lsun/nio/fs/UnixFileSystem$3;
.super Ljava/lang/Object;
.source "UnixFileSystem.java"

# interfaces
.implements Ljava/nio/file/PathMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/UnixFileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor blacklist <init>(Lsun/nio/fs/UnixFileSystem;Ljava/util/regex/Pattern;)V
    .registers 3
    .param p1, "this$0"    # Lsun/nio/fs/UnixFileSystem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 307
    iput-object p2, p0, Lsun/nio/fs/UnixFileSystem$3;->val$pattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api matches(Ljava/nio/file/Path;)Z
    .registers 4
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 310
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem$3;->val$pattern:Ljava/util/regex/Pattern;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
