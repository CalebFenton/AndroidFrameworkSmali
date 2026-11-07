.class Ljava/nio/file/Files$AcceptAllFilter;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcceptAllFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/DirectoryStream$Filter<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# static fields
.field static final greylist-max-o FILTER:Ljava/nio/file/Files$AcceptAllFilter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 420
    new-instance v0, Ljava/nio/file/Files$AcceptAllFilter;

    invoke-direct {v0}, Ljava/nio/file/Files$AcceptAllFilter;-><init>()V

    sput-object v0, Ljava/nio/file/Files$AcceptAllFilter;->FILTER:Ljava/nio/file/Files$AcceptAllFilter;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 415
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

    .line 412
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Ljava/nio/file/Files$AcceptAllFilter;->accept(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o accept(Ljava/nio/file/Path;)Z
    .registers 3
    .param p1, "entry"    # Ljava/nio/file/Path;

    .line 418
    const/4 v0, 0x1

    return v0
.end method
