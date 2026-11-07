.class Lsun/nio/fs/UnixUserPrincipals$Group;
.super Lsun/nio/fs/UnixUserPrincipals$User;
.source "UnixUserPrincipals.java"

# interfaces
.implements Ljava/nio/file/attribute/GroupPrincipal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixUserPrincipals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Group"
.end annotation


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lsun/nio/fs/UnixUserPrincipals$User;-><init>(IZLjava/lang/String;Lsun/nio/fs/UnixUserPrincipals-IA;)V

    .line 111
    return-void
.end method
