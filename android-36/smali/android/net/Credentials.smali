.class public Landroid/net/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# instance fields
.field private final greylist-max-o gid:I

.field private final greylist-max-o pid:I

.field private final greylist-max-o uid:I


# direct methods
.method public constructor whitelist <init>(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/net/Credentials;->pid:I

    .line 33
    iput p2, p0, Landroid/net/Credentials;->uid:I

    .line 34
    iput p3, p0, Landroid/net/Credentials;->gid:I

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist getGid()I
    .registers 2

    .line 46
    iget v0, p0, Landroid/net/Credentials;->gid:I

    return v0
.end method

.method public whitelist getPid()I
    .registers 2

    .line 38
    iget v0, p0, Landroid/net/Credentials;->pid:I

    return v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 42
    iget v0, p0, Landroid/net/Credentials;->uid:I

    return v0
.end method
