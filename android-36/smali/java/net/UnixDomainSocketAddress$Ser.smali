.class final Ljava/net/UnixDomainSocketAddress$Ser;
.super Ljava/lang/Object;
.source "UnixDomainSocketAddress.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/UnixDomainSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Ser"
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = -0x6e6844dadac675a6L


# instance fields
.field private final blacklist pathname:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "pathname"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Ljava/net/UnixDomainSocketAddress$Ser;->pathname:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2

    .line 88
    iget-object v0, p0, Ljava/net/UnixDomainSocketAddress$Ser;->pathname:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/UnixDomainSocketAddress;->of(Ljava/lang/String;)Ljava/net/UnixDomainSocketAddress;

    move-result-object v0

    return-object v0
.end method
