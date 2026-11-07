.class Lsun/nio/ch/Net$1;
.super Ljava/lang/Object;
.source "Net.java"

# interfaces
.implements Ljava/net/ProtocolFamily;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Net;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 48
    const-string v0, "UNSPEC"

    return-object v0
.end method
