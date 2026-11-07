.class public final Landroid/system/StructRlimit;
.super Ljava/lang/Object;
.source "StructRlimit.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field public final greylist-max-o test-api rlim_cur:J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public final greylist-max-o rlim_max:J


# direct methods
.method public constructor greylist-max-o <init>(JJ)V
    .registers 5
    .param p1, "rlim_cur"    # J
    .param p3, "rlim_max"    # J

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Landroid/system/StructRlimit;->rlim_cur:J

    .line 55
    iput-wide p3, p0, Landroid/system/StructRlimit;->rlim_max:J

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 61
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
