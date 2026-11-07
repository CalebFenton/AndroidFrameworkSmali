.class public final Landroid/os/strictmode/ContentUriWithoutPermissionViolation;
.super Landroid/os/strictmode/Violation;
.source "ContentUriWithoutPermissionViolation.java"


# direct methods
.method public constructor greylist-max-o <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "location"    # Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exposed beyond app through "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission grant flags; did you forget FLAG_GRANT_READ_URI_PERMISSION?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method
