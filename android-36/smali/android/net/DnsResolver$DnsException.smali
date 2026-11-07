.class public Landroid/net/DnsResolver$DnsException;
.super Ljava/lang/Exception;
.source "DnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsException"
.end annotation


# instance fields
.field public final whitelist code:I


# direct methods
.method public constructor whitelist <init>(ILjava/lang/Throwable;)V
    .registers 3
    .param p1, "code"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 177
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 178
    iput p1, p0, Landroid/net/DnsResolver$DnsException;->code:I

    .line 179
    return-void
.end method
