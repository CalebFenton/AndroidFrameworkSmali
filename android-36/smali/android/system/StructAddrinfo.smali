.class public final Landroid/system/StructAddrinfo;
.super Ljava/lang/Object;
.source "StructAddrinfo.java"


# instance fields
.field public greylist-max-o ai_addr:Ljava/net/InetAddress;

.field public greylist-max-o ai_family:I

.field public greylist-max-o ai_flags:I

.field public greylist-max-o ai_next:Landroid/system/StructAddrinfo;

.field public greylist-max-o ai_protocol:I

.field public greylist-max-o ai_socktype:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 56
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
