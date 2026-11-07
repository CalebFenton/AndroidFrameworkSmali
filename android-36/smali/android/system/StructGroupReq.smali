.class public final Landroid/system/StructGroupReq;
.super Ljava/lang/Object;
.source "StructGroupReq.java"


# instance fields
.field public final greylist-max-o gr_group:Ljava/net/InetAddress;

.field public final greylist-max-o gr_interface:I


# direct methods
.method public constructor greylist-max-o <init>(ILjava/net/InetAddress;)V
    .registers 3
    .param p1, "gr_interface"    # I
    .param p2, "gr_group"    # Ljava/net/InetAddress;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/system/StructGroupReq;->gr_interface:I

    .line 33
    iput-object p2, p0, Landroid/system/StructGroupReq;->gr_group:Ljava/net/InetAddress;

    .line 34
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 37
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
