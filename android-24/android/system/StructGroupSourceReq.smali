.class public final Landroid/system/StructGroupSourceReq;
.super Ljava/lang/Object;
.source "StructGroupSourceReq.java"


# instance fields
.field public final gsr_group:Ljava/net/InetAddress;

.field public final gsr_interface:I

.field public final gsr_source:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(ILjava/net/InetAddress;Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "gsr_interface"    # I
    .param p2, "gsr_group"    # Ljava/net/InetAddress;
    .param p3, "gsr_source"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput p1, p0, Landroid/system/StructGroupSourceReq;->gsr_interface:I

    #@5
    .line 34
    iput-object p2, p0, Landroid/system/StructGroupSourceReq;->gsr_group:Ljava/net/InetAddress;

    #@7
    .line 35
    iput-object p3, p0, Landroid/system/StructGroupSourceReq;->gsr_source:Ljava/net/InetAddress;

    #@9
    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 39
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
