.class Ljava/nio/file/Files$1;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/DirectoryStream$Filter<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$matcher:Ljava/nio/file/PathMatcher;


# direct methods
.method constructor blacklist <init>(Ljava/nio/file/PathMatcher;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Ljava/nio/file/Files$1;->val$matcher:Ljava/nio/file/PathMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Ljava/nio/file/Files$1;->accept(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public blacklist accept(Ljava/nio/file/Path;)Z
    .registers 4
    .param p1, "entry"    # Ljava/nio/file/Path;

    .line 522
    iget-object v0, p0, Ljava/nio/file/Files$1;->val$matcher:Ljava/nio/file/PathMatcher;

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method
