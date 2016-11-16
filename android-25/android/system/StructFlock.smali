.class public final Landroid/system/StructFlock;
.super Ljava/lang/Object;
.source "StructFlock.java"


# instance fields
.field public l_len:J

.field public l_pid:I

.field public l_start:J

.field public l_type:S

.field public l_whence:S


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 45
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
