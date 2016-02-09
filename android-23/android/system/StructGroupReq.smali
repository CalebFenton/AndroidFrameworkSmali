.class public final Landroid/system/StructGroupReq;
.super Ljava/lang/Object;
.source "StructGroupReq.java"


# instance fields
.field public final gr_group:Ljava/net/InetAddress;

.field public final gr_interface:I


# direct methods
.method public constructor <init>(ILjava/net/InetAddress;)V
    .locals 0
    .param p1, "gr_interface"    # I
    .param p2, "gr_group"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput p1, p0, Landroid/system/StructGroupReq;->gr_interface:I

    #@5
    .line 33
    iput-object p2, p0, Landroid/system/StructGroupReq;->gr_group:Ljava/net/InetAddress;

    #@7
    .line 31
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 37
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
