.class public final Landroid/system/StructUcred;
.super Ljava/lang/Object;
.source "StructUcred.java"


# instance fields
.field public final gid:I

.field public final pid:I

.field public final uid:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput p1, p0, Landroid/system/StructUcred;->pid:I

    #@5
    .line 38
    iput p2, p0, Landroid/system/StructUcred;->uid:I

    #@7
    .line 39
    iput p3, p0, Landroid/system/StructUcred;->gid:I

    #@9
    .line 36
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 43
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
