.class public final Landroid/system/StructCapUserHeader;
.super Ljava/lang/Object;
.source "StructCapUserHeader.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field public final greylist-max-o pid:I

.field public greylist-max-o version:I


# direct methods
.method public constructor greylist-max-o test-api <init>(II)V
    .registers 3
    .param p1, "version"    # I
    .param p2, "pid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/system/StructCapUserHeader;->version:I

    .line 65
    iput p2, p0, Landroid/system/StructCapUserHeader;->pid:I

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 72
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
