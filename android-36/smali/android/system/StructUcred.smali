.class public final Landroid/system/StructUcred;
.super Ljava/lang/Object;
.source "StructUcred.java"


# instance fields
.field public final greylist-max-o gid:I

.field public final greylist-max-o pid:I

.field public final greylist-max-o uid:I


# direct methods
.method public constructor greylist-max-o <init>(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/system/StructUcred;->pid:I

    .line 38
    iput p2, p0, Landroid/system/StructUcred;->uid:I

    .line 39
    iput p3, p0, Landroid/system/StructUcred;->gid:I

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 43
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
