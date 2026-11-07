.class public final Lsun/security/jca/ServiceId;
.super Ljava/lang/Object;
.source "ServiceId.java"


# instance fields
.field public final blacklist algorithm:Ljava/lang/String;

.field public final blacklist type:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lsun/security/jca/ServiceId;->type:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lsun/security/jca/ServiceId;->algorithm:Ljava/lang/String;

    .line 43
    return-void
.end method
